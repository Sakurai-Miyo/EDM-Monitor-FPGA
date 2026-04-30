`timescale 1ns/1ps

module slide_window_tb;

  // ===== Clock and Timeout Parameters =====
  localparam integer CLK_PERIOD_NS    = 5;           // 200MHz
  localparam integer SAMPLE_COUNT     = 200;
  localparam integer GAP_US           = 200;
  localparam integer WAIT_MAX_CYCLES  = 20000;
  localparam integer TB_WATCHDOG_NS   = 20_000_000; // 20ms

  // ===== Test Parameters =====
  parameter [31:0] POWER_A = 32'd20000; // 100*20000 > threshold -> SPARK
  parameter [31:0] POWER_B = 32'd5000;  // 100*5000  < threshold -> ARC

  localparam [4:0] ST_SPARK = 5'b00100;
  localparam [4:0] ST_ARC   = 5'b01000;

  reg         clk;
  reg         sys_rst_n;
  reg         enable;
  reg [31:0]  s_axis_tdata;
  reg         s_axis_tvalid;
  wire        s_axis_tready;

  wire        stop_signal;
  wire        result_valid;
  reg         result_ready;
  wire [63:0] result_energy;
  wire [4:0]  result_status;
  wire        result_stop;

  integer s_hs_cnt;
  integer m_hs_cnt;
  integer pass_cnt;
  integer fail_cnt;

  // DUT
  slide_window dut (
    .clk(clk),
    .sys_rst_n(sys_rst_n),
    .enable(enable),
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tready(s_axis_tready),
    .stop_signal(stop_signal),
    .result_valid(result_valid),
    .result_ready(result_ready),
    .result_energy(result_energy),
    .result_status(result_status),
    .result_stop(result_stop)
  );

  // 200MHz clock
  initial begin
    clk = 1'b0;
    forever #(CLK_PERIOD_NS/2) clk = ~clk;
  end

  // Global Watchdog
  initial begin
    #(TB_WATCHDOG_NS);
    $fatal(1, "[TB TIMEOUT] exceeded %0d ns", TB_WATCHDOG_NS);
  end

  // Input handshake counting
  always @(posedge clk) begin
    if (!sys_rst_n) begin
      s_hs_cnt <= 0;
    end else if (s_axis_tvalid && s_axis_tready) begin
      s_hs_cnt <= s_hs_cnt + 1;
    end
  end

  // Output handshake counting (custom valid/ready)
  always @(posedge clk) begin
    if (!sys_rst_n) begin
      m_hs_cnt <= 0;
    end else if (result_valid && result_ready) begin
      m_hs_cnt <= m_hs_cnt + 1;
      $display("[%0t ns] OUT_HS status=%b energy=%0d stop=%b",
               $time, result_status, result_energy, result_stop);
    end
  end

  // AXIS check: enable=0 should not handshake
  always @(posedge clk) begin
    if (sys_rst_n && !enable && s_axis_tvalid && s_axis_tready) begin
      fail_cnt <= fail_cnt + 1;
      $error("[AXI FAIL] input handshake happened while enable=0");
    end
  end

  // Send power burst (with gaps)
  task automatic send_power_burst_with_gaps;
    input [31:0] pwr;
    input integer n;
    input integer gap_every;
    integer i, w;
    begin
      enable        <= 1'b1;
      s_axis_tvalid <= 1'b1;

      for (i = 0; i < n; i = i + 1) begin
        s_axis_tdata <= pwr;

        w = 0;
        while (!s_axis_tready && w < WAIT_MAX_CYCLES) begin
          @(posedge clk);
          w = w + 1;
        end
        if (!s_axis_tready) begin
          $fatal(1, "[TB TIMEOUT] wait s_axis_tready timeout at sample %0d", i);
        end

        @(posedge clk);

        if ((gap_every > 0) && (((i + 1) % gap_every) == 0)) begin
          s_axis_tvalid <= 1'b0;
          s_axis_tdata  <= 32'd0;
          @(posedge clk);
          s_axis_tvalid <= 1'b1;
        end
      end

      s_axis_tvalid <= 1'b0;
      s_axis_tdata  <= 32'd0;
      enable        <= 1'b0;  // trigger DUT output phase
      @(posedge clk);
    end
  endtask

  // Backpressure check for custom interface
  task automatic hold_and_check_output;
    input integer hold_cycles;
    input [4:0] exp_status;
    input [63:0] exp_energy;
    input       exp_stop;
    reg   [4:0] hold_status;
    reg  [63:0] hold_energy;
    reg         hold_stop;
    integer k, w;
    begin
      result_ready <= 1'b0;

      w = 0;
      while (!result_valid && w < WAIT_MAX_CYCLES) begin
        @(posedge clk);
        w = w + 1;
      end
      if (!result_valid) begin
        $fatal(1, "[TB TIMEOUT] wait result_valid timeout");
      end

      #1;
      hold_status = result_status;
      hold_energy = result_energy;
      hold_stop   = result_stop;

      // First beat check
      if (hold_status !== exp_status) begin
        fail_cnt = fail_cnt + 1;
        $error("[CHECK FAIL] status exp=%b got=%b", exp_status, hold_status);
      end else pass_cnt = pass_cnt + 1;

      if (hold_energy !== exp_energy) begin
        fail_cnt = fail_cnt + 1;
        $error("[CHECK FAIL] energy exp=%0d got=%0d", exp_energy, hold_energy);
      end else pass_cnt = pass_cnt + 1;

      if (hold_stop !== exp_stop) begin
        fail_cnt = fail_cnt + 1;
        $error("[CHECK FAIL] stop exp=%b got=%b", exp_stop, hold_stop);
      end else pass_cnt = pass_cnt + 1;

      // Hold check
      for (k = 0; k < hold_cycles; k = k + 1) begin
        @(posedge clk);
        #1;
        if (!result_valid) begin
          fail_cnt = fail_cnt + 1;
          $error("[IO FAIL] result_valid dropped during backpressure");
        end
        if (result_status !== hold_status || result_energy !== hold_energy) begin
          fail_cnt = fail_cnt + 1;
          $error("[IO FAIL] IO payload changed during backpressure");
        end
      end

      // Release ready
      result_ready <= 1'b1;
      w = 0;
      while (!(result_valid && result_ready) && w < WAIT_MAX_CYCLES) begin
        @(posedge clk);
        w = w + 1;
      end
      if (!(result_valid && result_ready)) begin
        $fatal(1, "[TB TIMEOUT] wait output handshake timeout after release");
      end
      @(posedge clk);
    end
  endtask

  integer round_idx;
  initial begin
    $dumpfile("tb_slide_window.vcd");
    $dumpvars(0, slide_window_tb);

    // init/reset
    enable        = 1'b0;
    s_axis_tvalid = 1'b0;
    s_axis_tdata  = 32'd0;
    result_ready  = 1'b1;
    s_hs_cnt      = 0;
    m_hs_cnt      = 0;
    pass_cnt      = 0;
    fail_cnt      = 0;

    sys_rst_n = 1'b0;
    repeat (10) @(posedge clk);
    sys_rst_n = 1'b1;
    repeat (5)  @(posedge clk);

    s_axis_tvalid = 1'b1;
    s_axis_tdata  = POWER_A;
    repeat (4) @(posedge clk);
    if (s_hs_cnt != 0) begin
      fail_cnt = fail_cnt + 1;
      $error("[AXI FAIL] got %0d handshakes while enable=0", s_hs_cnt);
    end
    s_axis_tvalid = 1'b0;
    s_axis_tdata  = 32'd0;
    @(posedge clk);

    for (round_idx = 0; round_idx < 2; round_idx = round_idx + 1) begin
      $display("\n=== Round %0d: Burst A (expect SPARK) ===", round_idx + 1);
      send_power_burst_with_gaps(POWER_A, SAMPLE_COUNT, 7);
      hold_and_check_output(6, ST_SPARK, 64'd2000000, 1'b0);

      #(GAP_US * 1000);

      $display("=== Round %0d: Burst B (expect ARC) ===", round_idx + 1);
      send_power_burst_with_gaps(POWER_B, SAMPLE_COUNT, 5);
      hold_and_check_output(3, ST_ARC, 64'd500000, 1'b1);

      #(GAP_US * 1000);
    end

    $display("\n[SUMMARY] in_hs=%0d out_hs=%0d pass=%0d fail=%0d",
             s_hs_cnt, m_hs_cnt, pass_cnt, fail_cnt);

    if (fail_cnt == 0) $display("[TB PASS] slide_window\n");
    else               $fatal(1, "[TB FAIL] fail_cnt=%0d", fail_cnt);

    repeat (20) @(posedge clk);
    $finish;
  end

endmodule