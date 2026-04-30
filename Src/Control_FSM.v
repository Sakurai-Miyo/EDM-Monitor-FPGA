`default_nettype none

//`include "Library/discharge_state.vh"
`define DEFAULT 5'b00001
`define OPEN_CIRCUIT 5'b00010
`define SPARK 5'b00100
`define ARC 5'b01000
`define SHORT_CIRCUIT 5'b10000

module Control_FSM (
         input wire clk,
         input wire sys_rst_n,

         input wire power_trig_async,

         input wire [ 15: 0 ] input_voltage,

         // slide_window 普通结果接口
         input wire sw_result_valid,
         output wire sw_result_ready,
         input wire [ 4: 0 ] sw_result_status,
         input wire [ 63: 0 ] sw_result_energy,

         input wire axi_send_done,

         input wire [15:0]breakdown_voltage_threshold,
         input wire cfg_update_toggle,

         output reg slide_window_en,                  // FIR 滑动窗口使能信号
         output reg axi_send_en,                       // AXI 发送使能信号
         output reg [ 4: 0 ] dis_status,
         output reg [ 63: 0 ] energy_init_latched,

         output reg[ 15: 0 ] time_bd_buff,
         output reg[ 15: 0 ] time_energy_buff
       );

localparam IDLE = 5'b00001;
localparam DIS_START = 5'b00010;
localparam BREAK_DELAY = 5'b00100;
localparam POWER_CALC = 5'b01000;
localparam REPORT = 5'b10000;

//parameter breakdown_voltage_threshold = 16'h8000; // 击穿电压阈值

//时域计数器使能信号
reg time_bd_counter_en;
reg time_energy_counter_en;
reg time_delay_counter_en;

parameter SYS_FREQ = 200_000_000;
parameter Max_Pulse_Width = 50;         //最大脉冲宽度（us）
parameter Max_Pulse_Cycles = ( SYS_FREQ / 1_000_000 ) * Max_Pulse_Width - 1 ; // 计算最大脉冲宽度对应的时钟周期数

parameter FIR_Startup_Cycles = 26;              // FIR 滤波器的计算周期数
parameter FIR_Latency_Cycles = 139/2;            // FIR 滤波器的计算延迟周期数
parameter Break_Delay_Cycles = FIR_Startup_Cycles + FIR_Latency_Cycles; // 计算击穿延迟的总周期数

parameter Short_Circuit_Time_threshold = 10; // 短路判定时间阈值（cycles）
parameter Start_Protect_Cycles = 20;         // 起始保护窗周期（应对ADC FIFO与FIR流水线的首发废数据废时）

reg [ 4: 0 ] current_state;
reg [ 4: 0 ] next_state;

reg [ 15: 0 ] time_delay_counter;

reg [ 15: 0 ] time_bd_counter;
reg [ 15: 0 ] time_energy_counter;


reg [ 4: 0 ] sw_status_latched;
reg sw_result_seen;

assign sw_result_ready = ( current_state == POWER_CALC ) || ( current_state == REPORT );

reg power_trig_reg1;
reg power_trig_reg2;
reg power_trig;

reg power_trig_d;
wire power_trig_pos;

reg [ 3: 0 ] breakdown_cnt; // 连续击穿计数器

reg cfg_update_meta;
reg cfg_update_sync;
reg cfg_update_sync_d;
reg cfg_update_pending;
reg [15:0] breakdown_voltage_threshold_active;

// =========================================================================
// 触发信号处理与边沿检测逻辑
// =========================================================================
// 1. 异步信号打拍同步（消除亚稳态）
always @( posedge clk or negedge sys_rst_n )
  begin
    if ( !sys_rst_n )
      begin
        power_trig_reg1 <= 1'b0;
        power_trig_reg2 <= 1'b0;
        power_trig <= 1'b0;
      end
    else
      begin
        power_trig_reg1 <= power_trig_async;
        power_trig_reg2 <= power_trig_reg1;
        power_trig <= power_trig_reg2; // 同步后的触发信号
      end
  end

// 2. 触发信号打拍延迟（用于边沿提取）
always @( posedge clk or negedge sys_rst_n )
  begin
    if ( !sys_rst_n )
      begin
        power_trig_d <= 1'b0;
      end
    else
      begin
        power_trig_d <= power_trig;
      end
  end

// 3. 提取上升沿（用于触发空闲状态的起跳）
assign power_trig_pos = power_trig & ~power_trig_d;


// =========================================================================
// 特征检测逻辑
// =========================================================================
// 连续击穿打拍过滤（抗突发噪声毛刺）
always @( posedge clk or negedge sys_rst_n )
  begin
    if ( !sys_rst_n )
      begin
        breakdown_cnt <= 4'd0;
      end
    else
      begin
        // 只有在 DIS_START 状态且过了保护窗后，才开始验证击穿连拍
        if ( current_state == DIS_START && time_bd_counter >= Start_Protect_Cycles )
          begin
            if ( input_voltage < breakdown_voltage_threshold_active )
              begin
                breakdown_cnt <= breakdown_cnt + 4'd1;
              end
            else
              begin
                breakdown_cnt <= 4'd0;
              end
          end
        else
          begin
            breakdown_cnt <= 4'd0;
          end
      end
  end

// =========================================================================
// 配置更新同步与生效逻辑（AXI 100MHz -> FSM 250MHz）
// 规则：检测 cfg_update_toggle 翻转后，仅在 IDLE 状态应用新阈值
// =========================================================================
always @( posedge clk or negedge sys_rst_n )
  begin
    if ( !sys_rst_n )
      begin
        cfg_update_meta <= 1'b0;
        cfg_update_sync <= 1'b0;
        cfg_update_sync_d <= 1'b0;
        cfg_update_pending <= 1'b0;
        breakdown_voltage_threshold_active <= 16'h8000;
      end
    else
      begin
        cfg_update_meta <= cfg_update_toggle;
        cfg_update_sync <= cfg_update_meta;
        cfg_update_sync_d <= cfg_update_sync;

        if ( cfg_update_sync ^ cfg_update_sync_d )
          begin
            cfg_update_pending <= 1'b1;
          end

        if ( cfg_update_pending && ( current_state == IDLE ) )
          begin
            breakdown_voltage_threshold_active <= breakdown_voltage_threshold;
            cfg_update_pending <= 1'b0;
          end
      end
  end

always @( posedge clk or negedge sys_rst_n )                 //状态机第一段：状态转移
  begin
    if ( !sys_rst_n )
      begin
        current_state <= IDLE;
      end
    else
      begin
        current_state <= next_state;
      end
  end


always@( * )                                               //状态机第二段：状态转移条件
  begin
    // 默认值：避免组合逻辑漏赋值导致锁存器推断
    next_state = current_state;

    case ( current_state )
      IDLE:
        begin
          if ( power_trig_pos )  // 仅沿触发，阻止持续高电平时死循环连发
            begin
              next_state = DIS_START;
            end
          else
            begin
              next_state = IDLE;
            end
        end

      DIS_START:
        begin
          if ( !power_trig )           //提前开路脱离脉冲
            begin
              next_state = REPORT;
            end
          else if ( time_bd_counter < Start_Protect_Cycles )
            begin
              next_state = DIS_START;  //起始保护窗内，强制废弃输入数据，等待流水线翻新
            end
          else if ( breakdown_cnt >= 4'd3 )
            begin
              //连续3拍确认击穿发生，抵挡单次毛刺
              if ( ( time_bd_counter - Start_Protect_Cycles ) < Short_Circuit_Time_threshold )
                begin
                  next_state = REPORT; //过早击穿短路
                end
              else
                begin
                  next_state = BREAK_DELAY; //正常延迟，火花/电弧前奏
                end
            end
          else
            begin
              next_state = DIS_START; //无击穿，死等
            end
        end

      BREAK_DELAY:
        begin
          if ( !power_trig )
            begin
              next_state = REPORT;
            end
          else if ( time_delay_counter >= Break_Delay_Cycles )
            begin
              next_state = POWER_CALC;
            end
          else
            begin
              next_state = BREAK_DELAY;
            end
        end

      POWER_CALC:
        if ( !power_trig )    // || ( time_bd_counter + time_energy_counter ) > Max_Pulse_Cycles )
          begin
            next_state = REPORT;
          end
        else
          begin
            next_state = POWER_CALC;
          end

      REPORT:
        if ( axi_send_done )
          begin
            next_state = IDLE;
          end
        else
          begin
            next_state = REPORT;
          end
      default:
        begin
          next_state = IDLE;
        end

    endcase
  end


always @( posedge clk or negedge sys_rst_n )                          //状态机第三段：输出逻辑
  begin
    if ( !sys_rst_n )
      begin
        time_bd_counter_en <= 1'b0;
        time_energy_counter_en <= 1'b0;
        time_delay_counter_en <= 1'b0;
        slide_window_en <= 1'b0;
        axi_send_en <= 1'b0;
      end
    else
      begin
        time_bd_counter_en <= 1'b0;
        time_energy_counter_en <= 1'b0;
        time_delay_counter_en <= 1'b0;
        slide_window_en <= 1'b0;
        axi_send_en <= 1'b0;
        case ( current_state )
          IDLE:
            begin

            end

          DIS_START:
            begin
              time_bd_counter_en <= 1'b1;
            end

          BREAK_DELAY:
            begin
              time_energy_counter_en <= 1'b1;
              time_delay_counter_en <= 1'b1;
            end

          POWER_CALC:
            begin
              time_energy_counter_en <= 1'b1;
              slide_window_en <= 1'b1;
            end

          REPORT:
            if ( ( dis_status == `OPEN_CIRCUIT ) || ( dis_status == `SHORT_CIRCUIT ) || ( sw_result_seen == 1'b1 ) )
              begin
                axi_send_en <= 1'b1;
              end
            else
              begin
                axi_send_en <= 1'b0;
              end

        endcase
      end
  end


//短路/开路状态判断
always @( posedge clk or negedge sys_rst_n )
  begin
    if ( !sys_rst_n )
      begin
        dis_status <= `DEFAULT;
      end
    else
      begin
        // 下一次脉冲前清零，准备下一次判断
        if ( current_state == IDLE )
          begin
            dis_status <= `DEFAULT;
          end

        // 从 DIS_START 退出时
        else if ( current_state == DIS_START && next_state == REPORT )
          begin
            if ( !power_trig )
              begin
                dis_status <= `OPEN_CIRCUIT;
              end
            else
              begin
                dis_status <= `SHORT_CIRCUIT;
              end   // 没等到击穿就超时的判定
          end

        // 从 BREAK_DELAY 异常退出时
        else if ( current_state == BREAK_DELAY && next_state == REPORT )
          begin
            if ( !power_trig )
              begin
                dis_status <= `OPEN_CIRCUIT;
              end
          end

        // 从 POWER_CALC 正常结束放电时：使用滑窗结果并统一到dis_status
        else if ( current_state == POWER_CALC && next_state == REPORT )
          begin
            if ( sw_result_seen && ( ( sw_status_latched == `SPARK ) || ( sw_status_latched == `ARC ) ) )
              begin
                dis_status <= sw_status_latched;
              end
            else
              begin
                dis_status <= `DEFAULT;
              end
          end

        // 滑窗结果在REPORT阶段迟到时，允许回填正常放电判定
        else if ( current_state == REPORT && dis_status == `DEFAULT &&
                  sw_result_seen && ( ( sw_status_latched == `SPARK ) || ( sw_status_latched == `ARC ) ) )
          begin
            dis_status <= sw_status_latched;
          end
      end
  end

// 优化后的时序计数器与锁存逻辑

// 1. 计数器主逻辑：IDLE 状态全局钳位清零，非 IDLE 状态按使能累加
always @( posedge clk or negedge sys_rst_n )
  begin
    if ( !sys_rst_n )
      begin
        time_bd_counter <= 16'd0;
        time_energy_counter <= 16'd0;
        time_delay_counter <= 16'd0;
      end
    else
      begin
        if ( current_state == IDLE )
          begin
            // 全局同步清零：只要脉冲没来，系统处于空闲，所有计数器就被死死“钳位”在 0
            time_bd_counter <= 16'd0;
            time_energy_counter <= 16'd0;
            time_delay_counter <= 16'd0;
          end
        else
          begin
            // 脉冲到来，脱离 IDLE，各计数器听从各自的 enable 信号指挥
            if ( time_bd_counter_en )
              begin
                time_bd_counter <= time_bd_counter + 16'd1;
              end

            if ( time_energy_counter_en )
              begin
                time_energy_counter <= time_energy_counter + 16'd1;
              end

            if ( time_delay_counter_en )
              begin
                time_delay_counter <= time_delay_counter + 16'd1;
              end
          end
      end
  end

// 2. 特征锁存逻辑：利用 next_state 的“预判”属性，在切入 REPORT 的瞬间抓拍
always @( posedge clk or negedge sys_rst_n )
  begin
    if ( !sys_rst_n )
      begin
        time_bd_buff <= 16'd0;
        time_energy_buff <= 16'd0;
        sw_status_latched <= `DEFAULT;
        energy_init_latched <= 64'd0;
        sw_result_seen <= 1'b0;
      end
    else
      begin
        if ( current_state == IDLE )
          begin
            sw_result_seen <= 1'b0;
          end

        if ( sw_result_valid && sw_result_ready )
          begin
            sw_status_latched <= sw_result_status;
            energy_init_latched <= sw_result_energy;
            sw_result_seen <= 1'b1;
          end

        if ( current_state != REPORT && next_state == REPORT )
          begin
            time_bd_buff <= time_bd_counter;
            time_energy_buff <= time_energy_counter;
          end
      end
  end

endmodule

`default_nettype wire
