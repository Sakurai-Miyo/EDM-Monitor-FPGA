`timescale 1ns/1ps

module axis_package_tb;

  localparam CLK_PERIOD_NS = 5;
  localparam WAIT_MAX_CYCLES = 2000;

  reg clk;
  reg sys_rst_n;

  reg send_req;
  wire send_ack;

  reg [63:0] energy_data;
  reg [4:0] status_data;
  reg [15:0] time_bd_data;
  reg [15:0] time_energy_data;

  wire m_axis_tvalid;
  reg  m_axis_tready;
  wire m_axis_tlast;
  wire [127:0] m_axis_tdata;

  integer pass_cnt;
  integer fail_cnt;

  axis_package dut (
    .clk(clk),
    .sys_rst_n(sys_rst_n),
    .send_req(send_req),
    .send_ack(send_ack),
    .energy_data(energy_data),
    .status_data(status_data),
    .time_bd_data(time_bd_data),
    .time_energy_data(time_energy_data),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tready(m_axis_tready),
    .m_axis_tlast(m_axis_tlast),
    .m_axis_tdata(m_axis_tdata)
  );

  initial begin
    clk = 1'b0;
    forever #(CLK_PERIOD_NS/2) clk = ~clk;
  end

  task automatic expect_equal_128;
    input [127:0] exp;
    input [127:0] got;
    begin
      if (got !== exp) begin
        fail_cnt = fail_cnt + 1;
        $error("[CHECK FAIL] m_axis_tdata exp=%h got=%h", exp, got);
      end else begin
        pass_cnt = pass_cnt + 1;
      end
    end
  endtask

  task automatic wait_valid_with_timeout;
    integer w;
    begin
      w = 0;
      while (!m_axis_tvalid && (w < WAIT_MAX_CYCLES)) begin
        @(posedge clk);
        w = w + 1;
      end
      if (!m_axis_tvalid) begin
        $fatal(1, "[TB TIMEOUT] wait m_axis_tvalid timeout");
      end
    end
  endtask

  task automatic wait_ack_with_timeout;
    input integer timeout_cycles;
    integer w;
    begin
      w = 0;
      while (!send_ack && (w < timeout_cycles)) begin
        @(posedge clk);
        w = w + 1;
      end
      if (!send_ack) begin
        $fatal(1, "[TB TIMEOUT] wait send_ack timeout");
      end
    end
  endtask

  task automatic send_one_event_and_get_tlast;
    output reg got_tlast;
    begin
      send_req = 1'b1;
      @(posedge clk);
      send_req = 1'b0;

      wait_valid_with_timeout();
      got_tlast = m_axis_tlast;

      // ready默认已经拉高，等待发送完成ack
      wait_ack_with_timeout(4);
    end
  endtask

  task automatic test_single_send;
    reg [127:0] exp;
    begin
      $display("\n=== test_single_send ===");
      energy_data      = 64'h0123_4567_89AB_CDEF;
      time_energy_data = 16'h1357;
      time_bd_data     = 16'h2468;
      status_data      = 5'b00100;
      exp = {11'd0, 16'd0, 5'b00100, 16'h2468, 16'h1357, 64'h0123_4567_89AB_CDEF};

      send_req = 1'b1;
      @(posedge clk);
      send_req = 1'b0;

      wait_valid_with_timeout();
      if (m_axis_tlast) begin
        fail_cnt = fail_cnt + 1;
        $error("[CHECK FAIL] first beat should not assert tlast when FRAME_DATA_COUNT=128");
      end else pass_cnt = pass_cnt + 1;

      expect_equal_128(exp, m_axis_tdata);

      // ready已经为1，应在短时间内握手并回ack
      wait_ack_with_timeout(4);
      pass_cnt = pass_cnt + 1;
    end
  endtask

  task automatic test_tlast_every_128;
    integer i;
    integer tlast_cnt;
    reg got_tlast;
    begin
      $display("\n=== test_tlast_every_128 ===");

      tlast_cnt = 0;
      for (i = 0; i < 128; i = i + 1) begin
        energy_data      = 64'hA000_0000_0000_0000 + i;
        time_energy_data = i[15:0];
  time_bd_data     = i + 16'd1;
        status_data      = 5'b00100;

        send_one_event_and_get_tlast(got_tlast);
        if (got_tlast) tlast_cnt = tlast_cnt + 1;
      end

      if (tlast_cnt != 1) begin
        fail_cnt = fail_cnt + 1;
        $error("[CHECK FAIL] tlast count in 128 beats should be 1, got %0d", tlast_cnt);
      end else pass_cnt = pass_cnt + 1;
    end
  endtask

  task automatic test_backpressure_hold;
    reg [127:0] hold_data;
    integer i;
    begin
      $display("\n=== test_backpressure_hold ===");
      energy_data      = 64'hAAAA_BBBB_CCCC_DDDD;
      time_energy_data = 16'h0002;
      time_bd_data     = 16'h0001;
      status_data      = 5'b01000;

      m_axis_tready = 1'b0;
      send_req = 1'b1;
      @(posedge clk);
      send_req = 1'b0;

      wait_valid_with_timeout();
      hold_data = m_axis_tdata;

      // 背压期间保持稳定
      for (i = 0; i < 6; i = i + 1) begin
        @(posedge clk);
        if (!m_axis_tvalid) begin
          fail_cnt = fail_cnt + 1;
          $error("[CHECK FAIL] m_axis_tvalid dropped during backpressure");
        end
        if (m_axis_tdata !== hold_data) begin
          fail_cnt = fail_cnt + 1;
          $error("[CHECK FAIL] m_axis_tdata changed during backpressure");
        end
      end
      pass_cnt = pass_cnt + 1;

      m_axis_tready = 1'b1;
      wait_ack_with_timeout(4);
      pass_cnt = pass_cnt + 1;
    end
  endtask

  task automatic test_no_repeat_when_req_held_high;
    integer ack_cnt;
    begin
      $display("\n=== test_no_repeat_when_req_held_high ===");
      energy_data      = 64'h1111_2222_3333_4444;
      time_energy_data = 16'h00AA;
      time_bd_data     = 16'h0055;
      status_data      = 5'b10000;

  // 避免统计到上一个测试尾部残留ack
  @(posedge clk);

      ack_cnt = 0;
      send_req = 1'b1;
      repeat (8) begin
        @(posedge clk);
        if (send_ack) ack_cnt = ack_cnt + 1;
      end
      send_req = 1'b0;
      @(posedge clk);

      if (ack_cnt != 1) begin
        fail_cnt = fail_cnt + 1;
        $error("[CHECK FAIL] expected one ack while send_req held high, got %0d", ack_cnt);
      end else pass_cnt = pass_cnt + 1;
    end
  endtask

  initial begin
    $dumpfile("tb_axis_package.vcd");
    $dumpvars(0, axis_package_tb);

    sys_rst_n = 1'b0;
    send_req = 1'b0;
    energy_data = 64'd0;
    status_data = 5'd0;
    time_bd_data = 16'd0;
    time_energy_data = 16'd0;
    m_axis_tready = 1'b1;
    pass_cnt = 0;
    fail_cnt = 0;

    repeat (10) @(posedge clk);
    sys_rst_n = 1'b1;
    repeat (4) @(posedge clk);

    test_single_send();
  test_tlast_every_128();
    test_backpressure_hold();
    test_no_repeat_when_req_held_high();

    $display("\n[SUMMARY] pass=%0d fail=%0d", pass_cnt, fail_cnt);
    if (fail_cnt == 0) $display("[TB PASS] axis_package");
    else               $fatal(1, "[TB FAIL] axis_package fail=%0d", fail_cnt);

    repeat (10) @(posedge clk);
    $finish;
  end

endmodule
