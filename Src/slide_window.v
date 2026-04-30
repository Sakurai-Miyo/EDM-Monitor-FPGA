`default_nettype none

`define DEFAULT 5'b00001
`define OPEN_CIRCUIT 5'b00010
`define SPARK 5'b00100
`define ARC 5'b01000
`define SHORT_CIRCUIT 5'b10000

module slide_window(
         input wire clk,
         input wire sys_rst_n,
         input wire enable,

         input wire [63:0] ENERGY_THRESHOLD,
         input wire cfg_update_toggle,

         // AXI4-Stream Slave (接收 pow_calc 的功率数据)
         input wire s_axis_tvalid,
         output wire s_axis_tready,
         input wire [ 31: 0 ] s_axis_tdata,

         output reg stop_signal,

         // 普通输出接口（替代 AXI4-Stream Master）
         output reg result_valid,
         input wire result_ready,
         output wire [ 63: 0 ] result_energy,
         output wire [ 4: 0 ] result_status,
         output wire result_stop
       );

localparam DEPTH = 100;
localparam WIDTH = 32;

// AXI4-Stream 从机握手信号
assign s_axis_tready = 1'b1;   //从机始终接收数据避免堵塞通路；仅在enable到来时，才处理数据
wire sample_fire = s_axis_tvalid & s_axis_tready & enable; //信号表示双方都准备好，可以接收数据


reg [ WIDTH - 1 : 0 ] window_pipe [ DEPTH - 1 : 0 ];

integer i;
//SRLC32E 构建Pipe模型
always @( posedge clk )
  begin
    if ( sample_fire )
      begin
        // 新计算出的瞬时功率塞入管口
        window_pipe[ 0 ] <= s_axis_tdata;
        // 整个管道向后移位,综合为SRLC32E
        for ( i = 0; i < DEPTH - 1; i = i + 1 )
          begin
            window_pipe[ i + 1 ] <= window_pipe[ i ];
          end
      end
  end

wire [ WIDTH - 1 : 0 ] p_n_oldest;
assign p_n_oldest = window_pipe[ DEPTH - 1 ];


reg [ $clog2( DEPTH + 1 ) - 1 : 0 ] shift_count;
reg [ $clog2( DEPTH + 1 ) - 1 : 0 ] shift_count_d;
localparam SHIFT_COUNT_MAX = DEPTH ;
wire shift_count_max_reached = ( shift_count == SHIFT_COUNT_MAX ) && ( shift_count_d != SHIFT_COUNT_MAX );

reg [ 63: 0 ] energy_accumulator;
reg [ 63: 0 ] energy_init;
reg [ 4: 0 ] status;
reg [63:0] energy_threshold_active;

reg cfg_update_meta;
reg cfg_update_sync;
reg cfg_update_sync_d;
reg cfg_update_pending;

assign result_energy = energy_init;
assign result_status = status;
assign result_stop = stop_signal;

//填充计数器逻辑，计数Pipe是否填满
always @( posedge clk or negedge sys_rst_n )
  begin
    if ( !sys_rst_n )
      begin
        shift_count <= 0;
        shift_count_d <= 0;
      end
    else if ( sample_fire )
      begin
        shift_count_d <= shift_count;
        if ( shift_count < SHIFT_COUNT_MAX )
          begin
            shift_count <= shift_count + 1'b1;
          end
        else
          begin
            shift_count <= SHIFT_COUNT_MAX; // 饱和保持
          end
      end
    else if ( !enable )
      begin
        shift_count <= 0;
        shift_count_d <= 0;
      end
  end

//能量累加
always @( posedge clk or negedge sys_rst_n )
  begin
    if ( !sys_rst_n )
      begin
        energy_accumulator <= 0;
      end
    else if ( sample_fire )
      begin
        if ( shift_count == SHIFT_COUNT_MAX )
          begin
            energy_accumulator <= energy_accumulator - p_n_oldest + s_axis_tdata;  //填满后递归计算
          end
        else
          begin
            energy_accumulator <= energy_accumulator + s_axis_tdata; //未填满前直接累加（不清理旧数据，防止SRLC32E被优化）
          end
      end
    else if ( !enable )
      begin
        energy_accumulator <= 0;
      end
  end

always @( posedge clk or negedge sys_rst_n )      //能量初始值锁存
  begin
    if ( !sys_rst_n )
      begin
        energy_init <= 0;
      end
    else if ( shift_count_max_reached )
      begin
        energy_init <= energy_accumulator;
      end
  end

// 配置更新同步与生效：仅在窗口未使能阶段应用，避免一次放电内判据突变
always @( posedge clk or negedge sys_rst_n )
  begin
    if ( !sys_rst_n )
      begin
        cfg_update_meta <= 1'b0;
        cfg_update_sync <= 1'b0;
        cfg_update_sync_d <= 1'b0;
        cfg_update_pending <= 1'b0;
        energy_threshold_active <= 64'h0000_0000_000F_FFFF;
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

        if ( cfg_update_pending && !enable )
          begin
            energy_threshold_active <= ENERGY_THRESHOLD;
            cfg_update_pending <= 1'b0;
          end
      end
  end

reg enable_d;

always @( posedge clk or negedge sys_rst_n )
  begin
    if ( !sys_rst_n )     //系统复位
      begin
        status <= `DEFAULT;
        stop_signal <= 1'b0;
      end
    else if ( !enable )     //休眠期，保持状态以供读取
      begin
        status <= status;
        stop_signal <= 1'b0;
      end
    else if ( !enable_d )  //隐含：enable&&!enable_d，即 enable 的上升沿，刚开始填充窗口,清空状态
      begin
        status <= `DEFAULT;
        stop_signal <= 1'b0;
      end
    else if ( sample_fire && ( shift_count == SHIFT_COUNT_MAX ) )    //当接收到新数据且窗口满时判断状态
      begin
        if ( energy_accumulator > energy_threshold_active )
          begin
            status <= `SPARK;
            stop_signal <= 1'b0;
          end
        else
          begin
            status <= `ARC;
            stop_signal <= 1'b1;
          end
      end
  end

always @( posedge clk or negedge sys_rst_n )
  begin
    if ( !sys_rst_n )
      begin
        enable_d <= 1'b0;
        result_valid <= 1'b0;
      end
    else
      begin
        enable_d <= enable; // 延迟一拍
        if ( enable_d && !enable )  // enable下降沿，输出结果
          begin
            result_valid <= 1'b1;
          end
        else if ( result_valid && result_ready )   // 结果被FSM取走后清除valid
          begin
            result_valid <= 1'b0;
          end
      end
  end

endmodule

`default_nettype wire
