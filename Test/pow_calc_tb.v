`timescale 1ns/1ps

module pow_calc_tb;

	// ===== 时钟参数 =====
	localparam integer CLK_PERIOD_NS = 5;   // 200MHz
	localparam integer WAIT_MAX_CYCLES = 2000;
	localparam integer TB_WATCHDOG_NS  = 5_000_000;

	// ===== DUT接口 =====
	reg                    clk;
	reg                    sys_rst_n;

	reg                    s_axis_tvalid;
	wire                   s_axis_tready;
	reg signed [15:0]      s_axis_tdata;

	wire                   m_axis_tvalid;
	reg                    m_axis_tready;
	wire [31:0]            m_axis_tdata;

	// ===== 统计与检查 =====
	integer in_hs_cnt;
	integer out_hs_cnt;
	integer pass_cnt;
	integer fail_cnt;

	// DUT
	pow_calc dut (
		.clk(clk),
		.sys_rst_n(sys_rst_n),
		.s_axis_tvalid(s_axis_tvalid),
		.s_axis_tready(s_axis_tready),
		.s_axis_tdata(s_axis_tdata),
		.m_axis_tvalid(m_axis_tvalid),
		.m_axis_tready(m_axis_tready),
		.m_axis_tdata(m_axis_tdata)
	);

	// ===== 200MHz clock =====
	initial begin
		clk = 1'b0;
		forever #(CLK_PERIOD_NS/2) clk = ~clk;
	end

	// ===== 握手计数 =====
	always @(posedge clk) begin
		if (!sys_rst_n) begin
			in_hs_cnt  <= 0;
			out_hs_cnt <= 0;
		end else begin
			if (s_axis_tvalid && s_axis_tready) in_hs_cnt  <= in_hs_cnt + 1;
			if (m_axis_tvalid && m_axis_tready) out_hs_cnt <= out_hs_cnt + 1;
		end
	end

	// ===== 全局超时看门狗（防止卡死） =====
	initial begin
		#(TB_WATCHDOG_NS);
		$fatal(1, "[TB TIMEOUT] Simulation exceeded %0d ns", TB_WATCHDOG_NS);
	end

	// ===== 任务：发送一个输入样本 =====
	task automatic send_one_sample;
		input signed [15:0] din;
		integer w;
		begin
			s_axis_tdata  <= din;
			s_axis_tvalid <= 1'b1;
			w = 0;
			while (!s_axis_tready && w < WAIT_MAX_CYCLES) begin
				@(posedge clk);
				w = w + 1;
			end
			if (!s_axis_tready) begin
				$fatal(1, "[TB TIMEOUT] wait s_axis_tready timeout in send_one_sample, din=%0d", din);
			end
			@(posedge clk); // 在该拍发生输入握手
			s_axis_tvalid <= 1'b0;
			s_axis_tdata  <= 16'sd0;
		end
	endtask

	// ===== 任务：等待并检查一次输出握手 =====
	task automatic wait_and_check_output;
		input [31:0] expected;
		integer w;
		begin
			w = 0;
			while (!(m_axis_tvalid && m_axis_tready) && w < WAIT_MAX_CYCLES) begin
				@(posedge clk);
				w = w + 1;
			end
			if (!(m_axis_tvalid && m_axis_tready)) begin
				$fatal(1, "[TB TIMEOUT] wait output handshake timeout, expected=%0d", expected);
			end

			if (m_axis_tdata !== expected) begin
				fail_cnt = fail_cnt + 1;
				$error("[CHECK FAIL] expected=%0d got=%0d", expected, m_axis_tdata);
			end else begin
				pass_cnt = pass_cnt + 1;
				$display("[CHECK PASS] expected=%0d got=%0d", expected, m_axis_tdata);
			end

			@(posedge clk);
		end
	endtask

	// ===== 任务：输出背压保持检查 =====
	task automatic check_output_hold_under_backpressure;
		input integer hold_cycles;
		input [31:0] expected;
		reg [31:0] hold_data;
		integer k;
		integer w;
		begin
			// 关键：先施加背压，再等待输出有效，避免首拍被提前握手取走
			m_axis_tready = 1'b0;

			w = 0;
			while (!m_axis_tvalid && w < WAIT_MAX_CYCLES) begin
				@(posedge clk);
				w = w + 1;
			end
			if (!m_axis_tvalid) begin
				$fatal(1, "[TB TIMEOUT] wait m_axis_tvalid timeout in backpressure test");
			end
			#1;
			hold_data = m_axis_tdata;

			if (hold_data !== expected) begin
				fail_cnt = fail_cnt + 1;
				$error("[AXI FAIL] first held data mismatch: expected=%0d got=%0d", expected, hold_data);
			end

			for (k = 0; k < hold_cycles; k = k + 1) begin
				@(posedge clk);
				#1; // 等待DUT在该拍的NBA更新完成
				if (!m_axis_tvalid) begin
					fail_cnt = fail_cnt + 1;
					$error("[AXI FAIL] m_axis_tvalid dropped during backpressure");
				end
				if (m_axis_tdata !== hold_data) begin
					fail_cnt = fail_cnt + 1;
					$error("[AXI FAIL] m_axis_tdata changed during backpressure: hold=%0d now=%0d", hold_data, m_axis_tdata);
				end
			end

			m_axis_tready = 1'b1;
			w = 0;
			while (!(m_axis_tvalid && m_axis_tready) && w < WAIT_MAX_CYCLES) begin
				@(posedge clk);
				w = w + 1;
			end
			if (!(m_axis_tvalid && m_axis_tready)) begin
				$fatal(1, "[TB TIMEOUT] wait output handshake timeout after releasing backpressure");
			end
			#1;
			pass_cnt = pass_cnt + 1;
			$display("[AXI PASS] output held stable for %0d cycles under backpressure", hold_cycles);
			@(posedge clk);
		end
	endtask

	// ===== 主测试流程 =====
	initial begin
		// 波形
		$dumpfile("tb_pow_calc.vcd");
		$dumpvars(0, pow_calc_tb);

		// init
		sys_rst_n     = 1'b0;
		s_axis_tvalid = 1'b0;
		s_axis_tdata  = 16'sd0;
		m_axis_tready = 1'b1;
		pass_cnt      = 0;
		fail_cnt      = 0;

		repeat (10) @(posedge clk);
		sys_rst_n = 1'b1;
		repeat (5) @(posedge clk);

		// ------------------------------
		// 1) 计算功能测试（平方）
		// ------------------------------
		$display("\n=== TEST-1: calc function ===");
		send_one_sample(16'sd0);
		wait_and_check_output(32'd0);

		send_one_sample(16'sd7);
		wait_and_check_output(32'd49);

		send_one_sample(-16'sd8);
		wait_and_check_output(32'd64);

		send_one_sample(16'sd123);
		wait_and_check_output(32'd15129);

		send_one_sample(-16'sd300);
		wait_and_check_output(32'd90000);

		send_one_sample(16'sd32767);
		wait_and_check_output(32'd1073676289);

		send_one_sample(-16'sd32768);
		wait_and_check_output(32'd1073741824);

		// ------------------------------
		// 2) AXI输入握手测试
		//    (tvalid有空拍、连续输入)
		// ------------------------------
		$display("\n=== TEST-2: AXI input handshake ===");

		// 空拍场景
		@(posedge clk);
		s_axis_tvalid <= 1'b0;
		s_axis_tdata  <= 16'sd111;
		@(posedge clk);
		s_axis_tdata  <= 16'sd222;
		@(posedge clk);

		// 连续两个有效输入
		send_one_sample(16'sd10);
		send_one_sample(16'sd11);
		wait_and_check_output(32'd100);
		wait_and_check_output(32'd121);

		// ------------------------------
		// 3) AXI输出背压测试
		// ------------------------------
		$display("\n=== TEST-3: AXI output backpressure ===");
		send_one_sample(16'sd25); // 625
		check_output_hold_under_backpressure(6, 32'd625);

		// 收尾统计
		repeat (10) @(posedge clk);
		$display("\n=== SUMMARY ===");
		$display("in_hs_cnt=%0d, out_hs_cnt=%0d", in_hs_cnt, out_hs_cnt);
		$display("pass=%0d, fail=%0d", pass_cnt, fail_cnt);

		if (fail_cnt == 0) begin
			$display("pow_calc_tb: ALL CHECKS PASSED");
		end else begin
			$display("pow_calc_tb: CHECK FAILED");
		end

		$stop; // 按你的习惯，不用$finish
	end

endmodule

