`timescale 1ns / 1ps

module Control_FSM_tb ();

  // ===== 参数定义（便于修改） =====
  localparam CLK_PERIOD = 5;                    // 200MHz 时钟周期 = 5ns
  localparam SYS_FREQ = 200_000_000;            // 系统频率
  localparam VOLTAGE_OPEN_CIRCUIT = 16'hFFFF;  // 开路：电压一直高于阈值
  localparam VOLTAGE_SPARK = 16'h6000;         // 火花：低于阈值
  localparam VOLTAGE_ARC = 16'h4000;           // 电弧：低于阈值
  localparam VOLTAGE_SHORT = 16'h2000;         // 短路：低于阈值（更低）
  localparam VOLTAGE_THRESHOLD = 16'h8000;     // 阈值
  
  localparam BREAKDOWN_DELAY_US = 5;           // 击穿后延时 (us)，模拟 BREAK_DELAY
  localparam BREAKDOWN_DELAY_CYCLES = (SYS_FREQ / 1_000_000) * BREAKDOWN_DELAY_US; // 转换为时钟周期
  
  localparam PULSE_WIDTH_US = 50;              // 脉冲宽度 (us)
  localparam PULSE_WIDTH_CYCLES = (SYS_FREQ / 1_000_000) * PULSE_WIDTH_US;
  
  localparam WAIT_AFTER_PULSE_US = 300;        // 单次脉冲后等待时间 (us)
  localparam WAIT_AFTER_PULSE_CYCLES = (SYS_FREQ / 1_000_000) * WAIT_AFTER_PULSE_US;
  
  localparam SHORT_CIRCUIT_THRESHOLD = 10;     // 短路判定时间阈值 (时钟周期)
  localparam WAIT_SEND_TIMEOUT_CYCLES = 50000; // 等待axi_send_en超时保护

  // ===== 信号声明 =====
  reg clk;
  reg sys_rst_n;
  reg power_trig;
  reg [15:0] input_voltage;
  reg sw_result_valid;
  wire sw_result_ready;
  reg [4:0] sw_result_status;
  reg [63:0] sw_result_energy;
  reg axi_send_done;

  wire slide_window_en;
  wire axi_send_en;
  wire [4:0] dis_status;
  wire [63:0] energy_init_latched;



  // ===== DUT 实例化 =====
  Control_FSM#(
    .breakdown_voltage_threshold(VOLTAGE_THRESHOLD),
    .Short_Circuit_Time_threshold(SHORT_CIRCUIT_THRESHOLD)
  ) dut (
      .clk(clk),
      .sys_rst_n(sys_rst_n),
      .power_trig(power_trig),
      .input_voltage(input_voltage),
    .sw_result_valid(sw_result_valid),
    .sw_result_ready(sw_result_ready),
    .sw_result_status(sw_result_status),
    .sw_result_energy(sw_result_energy),
      .axi_send_done(axi_send_done),
      .slide_window_en(slide_window_en),
      .axi_send_en(axi_send_en),
    .dis_status(dis_status),
    .energy_init_latched(energy_init_latched)
  );

  // ===== 时钟生成 =====
  initial begin
    clk = 1'b0;
    forever #(CLK_PERIOD / 2) clk = ~clk;
  end

  // ===== 主测试流程 =====
  initial begin
    // 初始化
    sys_rst_n = 1'b0;
    power_trig = 1'b0;
    input_voltage = VOLTAGE_THRESHOLD;
  sw_result_valid = 1'b0;
  sw_result_status = 5'b00000;
  sw_result_energy = 64'd0;
    axi_send_done = 1'b0;

    // 复位
    #(CLK_PERIOD * 10);
    sys_rst_n = 1'b1;
    #(CLK_PERIOD * 10);

    // ===== 循环两次，每次三种放电场景 =====
    repeat (2) begin
      // 第一次放电：开路（电压始终高于阈值）
  $display("\n========== Test 1: Open Circuit ==========");
      test_open_circuit();
      #(CLK_PERIOD * WAIT_AFTER_PULSE_CYCLES);

      // 第二次放电：正常放电（SPARK）
      $display("\n========== Test 2A: Normal Discharge (SPARK) ==========");
      test_normal_discharge(5'b00100, VOLTAGE_SPARK, 64'd123456);
      #(CLK_PERIOD * WAIT_AFTER_PULSE_CYCLES);

      // 第三次放电：正常放电（ARC）
      $display("\n========== Test 2B: Normal Discharge (ARC) ==========");
      test_normal_discharge(5'b01000, VOLTAGE_ARC, 64'd654321);
      #(CLK_PERIOD * WAIT_AFTER_PULSE_CYCLES);

      // 第四次放电：短路（立即低电压）
      $display("\n========== Test 3: Short Circuit ==========");
      test_short_circuit();
      #(CLK_PERIOD * WAIT_AFTER_PULSE_CYCLES);
    end

  $display("\n========== All tests completed ==========");
    $stop;
  end

  // ===== 任务 1: 开路测试 =====
  task wait_axi_send_en;
    input integer timeout_cycles;
    integer w;
    begin
      w = 0;
      while ( !axi_send_en && ( w < timeout_cycles ) )
        begin
          @(posedge clk);
          w = w + 1;
        end

      if ( !axi_send_en )
        begin
          $fatal(1, "[TB TIMEOUT] axi_send_en did not assert within %0d cycles", timeout_cycles);
        end
    end
  endtask

  task complete_axi_send;
    integer w;
    begin

      // 发送完成握手
      axi_send_done = 1'b1;
      @(posedge clk);
      axi_send_done = 1'b0;

      // done 后应退出发送状态
      w = 0;
      while ( axi_send_en && ( w < 20 ) )
        begin
          @(posedge clk);
          w = w + 1;
        end
      if ( axi_send_en )
        begin
          $fatal(1, "[TB FAIL] axi_send_en keeps asserted after axi_send_done");
        end
    end
  endtask

  // ===== 任务 1: 开路测试 =====
  task test_open_circuit();
    integer i;
    begin
      input_voltage = VOLTAGE_OPEN_CIRCUIT; // 保持高电压
  sw_result_valid = 1'b0;
  sw_result_status = 5'b00000;
  sw_result_energy = 64'd0;
      axi_send_done = 1'b0;

      // 拉高 power_trig，开始触发
      power_trig = 1'b1;
  $display("[%0t] power_trig asserted, open-circuit test starts", $time);

      // 维持触发一段时间（模拟脉冲宽度）
      #(CLK_PERIOD * PULSE_WIDTH_CYCLES);

      // 拉低 power_trig，结束触发
      power_trig = 1'b0;
  $display("[%0t] power_trig deasserted, trigger ends", $time);

      // 等待状态机处理并触发发送
      wait_axi_send_en(WAIT_SEND_TIMEOUT_CYCLES);
      if ( dis_status !== 5'b00010 )
        begin
          $fatal(1, "[TB FAIL] open-circuit dis_status=%b, expected=00010", dis_status);
        end
      $display("[%0t] dis_status = %b (expected: OPEN_CIRCUIT 5'b00010)", $time, dis_status);
      complete_axi_send();
    end
  endtask

  // ===== 任务 2: 正常放电测试（可注入 SPARK/ARC） =====
  task test_normal_discharge(
    input [4:0] expected_status,
    input [15:0] discharge_voltage,
    input [63:0] injected_energy
  );
    integer i;
    integer breakdown_time;
    begin
      breakdown_time = 2 * PULSE_WIDTH_CYCLES / 5; // 脉冲宽度的 40% 处发生击穿
      input_voltage = VOLTAGE_THRESHOLD; // 初始高电压
      sw_result_valid = 1'b0;
      sw_result_status = expected_status;
      sw_result_energy = injected_energy;
      axi_send_done = 1'b0;

      // 拉高 power_trig
      power_trig = 1'b1;
  $display("[%0t] power_trig asserted, normal discharge starts", $time);

      // 等待一段时间后电压掉下来（模拟击穿）
      #(CLK_PERIOD * breakdown_time);
      input_voltage = discharge_voltage;
  $display("[%0t] voltage drops below threshold (breakdown), entering DIS_START -> BREAK_DELAY", $time);

      // 继续维持触发，直到脉冲宽度结束
      #(CLK_PERIOD * (PULSE_WIDTH_CYCLES - breakdown_time));

      // 拉低 power_trig
      power_trig = 1'b0;
      input_voltage = VOLTAGE_THRESHOLD; // 恢复高电压
  $display("[%0t] power_trig deasserted, trigger ends", $time);

      // 模拟slide_window结果送入FSM
      while ( !sw_result_ready )
        begin
          @(posedge clk);
        end
      @(posedge clk);
      sw_result_valid = 1'b1;
      @(posedge clk);
      sw_result_valid = 1'b0;

      // 等待状态机触发发送
      wait_axi_send_en(WAIT_SEND_TIMEOUT_CYCLES);
      if ( dis_status !== expected_status )
        begin
          $fatal(1, "[TB FAIL] normal-discharge dis_status=%b, expected=%b", dis_status, expected_status);
        end
      $display("[%0t] dis_status = %b (expected=%b), energy=%0d", $time, dis_status, expected_status, energy_init_latched);
      if ( energy_init_latched !== injected_energy )
        begin
          $fatal(1, "[TB FAIL] latched energy=%0d, expected=%0d", energy_init_latched, injected_energy);
        end
      complete_axi_send();
    end
  endtask

  // ===== 任务 3: 短路测试 =====
  task test_short_circuit();
    integer i;
    begin
      input_voltage = VOLTAGE_SHORT; // 立即低电压，模拟短路
      sw_result_valid = 1'b0;
      sw_result_status = 5'b00000;
      sw_result_energy = 64'd0;
      axi_send_done = 1'b0;

      // 拉高 power_trig
      power_trig = 1'b1;
  $display("[%0t] power_trig asserted, short-circuit test starts (voltage immediately below threshold)", $time);

      // 维持一个较短的时间（远小于 SHORT_CIRCUIT_TIME_THRESHOLD）
      #(CLK_PERIOD * 5);

      // 拉低 power_trig（在短路判定时间之前）
      power_trig = 1'b0;
  $display("[%0t] power_trig deasserted, should be classified as short-circuit", $time);

      // 等待状态机处理并触发发送
      wait_axi_send_en(WAIT_SEND_TIMEOUT_CYCLES);
      if ( dis_status !== 5'b10000 )
        begin
          $fatal(1, "[TB FAIL] short-circuit dis_status=%b, expected=10000", dis_status);
        end
      $display("[%0t] dis_status = %b (expected: SHORT_CIRCUIT 5'b10000)", $time, dis_status);
      complete_axi_send();
    end
  endtask

endmodule