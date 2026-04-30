`timescale 1ns/1ps
`default_nettype none

module EDM_Monitor_tb;

localparam real CLK_P_PERIOD_NS = 5.0;   // 200MHz
localparam real ADC_DCO_PERIOD_NS = 4.0; // 250MHz
localparam real PS_CLK_PERIOD_NS = 10.0;  // 100MHz

localparam [4:0] SPARK = 5'b00100;
localparam [4:0] ARC   = 5'b01000;
localparam [4:0] OPEN  = 5'b00010;
localparam [4:0] SHORT = 5'b10000;

// slide_window 参数（用于构造判定激励）
localparam integer SW_DEPTH = 100;
localparam [63:0] SW_THRESHOLD = 64'h0000_0000_000F_FFFF;

// FIR is low-pass (passband<=10MHz). Use in-band tone for SPARK/ARC cases.
// ADC DCO = 250MHz, period_samples=50 -> 5MHz tone (in passband)
localparam integer TONE_PERIOD_SAMPLES = 50;
localparam integer AMP_HIGH = 600;   // high energy target for SPARK
localparam integer AMP_LOW  = 80;    // low energy target for ARC
localparam integer FRAME_DATA_COUNT_TB = 6;
localparam integer TLAST_TEST_PULSES = 18;

reg clk_p;
wire clk_n;
reg rst_n_async;

reg [11:0] adc_data_p;
reg [11:0] adc_data_n;
reg adc_dco_p;
wire adc_dco_n;

wire div_param_od0;

reg power_trig_async;
reg ps_clk;

reg [15:0] cfg_breakdown;
reg [63:0] cfg_energy_threshold;
reg cfg_update_toggle;

wire power_stop_signal;
wire axi_fifo_m_axis_tvalid;
reg  axi_fifo_m_axis_tready;
wire [127:0] axi_fifo_m_axis_tdata;
wire axi_fifo_m_axis_tlast;

reg [11:0] adc_code_cur;

integer pass_cnt;
integer fail_cnt;
integer dma_beat_cnt;
integer axis_handshake_cnt;
integer axis_tlast_cnt;
integer axis_beat_idx;
reg [4:0] last_dma_status;
reg       last_dma_stop;
reg       stop_signal_latched;
reg       power_trig_tb_q;

reg       backpressure_en;
integer   bp_cycle_cnt;

reg       axis_hold_active;
reg [127:0] axis_hold_tdata;
reg         axis_hold_tlast;
integer     discharge_idx;

EDM_Monitor dut(
							.clk_p ( clk_p ),
							.clk_n ( clk_n ),
							.rst_n_async ( rst_n_async ),
							.adc_data_p ( adc_data_p ),
							.adc_data_n ( adc_data_n ),
							.adc_dco_p ( adc_dco_p ),
							.adc_dco_n ( adc_dco_n ),
							.div_param_od0 ( div_param_od0 ),
							.power_trig_async ( power_trig_async ),
							.cfg_breakdown ( cfg_breakdown ),
							.cfg_energy_threshold ( cfg_energy_threshold ),
							.cfg_update_toggle ( cfg_update_toggle ),
							.ps_clk ( ps_clk ),
							.power_stop_signal ( power_stop_signal ),
							.axi_fifo_m_axis_tvalid ( axi_fifo_m_axis_tvalid ),
							.axi_fifo_m_axis_tready ( axi_fifo_m_axis_tready ),
							.axi_fifo_m_axis_tdata ( axi_fifo_m_axis_tdata ),
							.axi_fifo_m_axis_tlast ( axi_fifo_m_axis_tlast )
						);


// 时钟
initial
	begin
		clk_p = 1'b0;
		forever #( CLK_P_PERIOD_NS / 2.0 ) clk_p = ~clk_p;
	end

assign clk_n = ~clk_p;

initial
	begin
		adc_dco_p = 1'b0;
		forever #( ADC_DCO_PERIOD_NS / 2.0 ) adc_dco_p = ~adc_dco_p;
	end

assign adc_dco_n = ~adc_dco_p;

initial
	begin
		ps_clk = 1'b0;
		forever #( PS_CLK_PERIOD_NS / 2.0 ) ps_clk = ~ps_clk;
	end


// ADC 输入建模：上升沿数据跳变，下降沿稳定
always @( posedge adc_dco_p )
	begin
		adc_data_p <= adc_code_cur;
		adc_data_n <= ~adc_code_cur;
	end

always @( posedge clk_p )
	begin
	    power_trig_tb_q <= power_trig_async;
		// 在每次新的 Trigger 脉冲到来（上升沿）时清零锁存，在整个测量周期内只要被置起就保持到结束和出报告
		if ( power_trig_async && !power_trig_tb_q )
			begin
				stop_signal_latched <= 1'b0;
			end
		else if ( power_stop_signal )
			begin
				stop_signal_latched <= 1'b1;
			end
	end

always @( posedge ps_clk )
	begin
		if ( axi_fifo_m_axis_tvalid && axi_fifo_m_axis_tready )
			begin
				dma_beat_cnt <= dma_beat_cnt + 1;
				axis_handshake_cnt <= axis_handshake_cnt + 1;
				axis_beat_idx <= axis_beat_idx + 1;
				if ( axi_fifo_m_axis_tlast )
					begin
						axis_tlast_cnt <= axis_tlast_cnt + 1;
						if ( ( ( axis_beat_idx + 1 ) % FRAME_DATA_COUNT_TB ) != 0 )
							begin
								$display("[FAIL][AXIS] TLAST misaligned at beat=%0d (frame=%0d)", axis_beat_idx + 1, FRAME_DATA_COUNT_TB);
								fail_cnt = fail_cnt + 1;
							end
					end
				last_dma_status <= axi_fifo_m_axis_tdata[100:96];
				last_dma_stop <= power_stop_signal | stop_signal_latched;
			end
	end

// AXIS 接收背压模型：主动制造 ready 抖动以验证主机协议稳定性
always @( posedge ps_clk or negedge rst_n_async )
	begin
		if ( !rst_n_async )
			begin
				axi_fifo_m_axis_tready <= 1'b1;
				bp_cycle_cnt <= 0;
			end
		else
			begin
				if ( backpressure_en )
					begin
						bp_cycle_cnt <= bp_cycle_cnt + 1;
						// 周期性 ready pattern: 3拍ready + 2拍stall
						if ( ( bp_cycle_cnt % 5 ) < 3 )
							begin
								axi_fifo_m_axis_tready <= 1'b1;
							end
						else
							begin
								axi_fifo_m_axis_tready <= 1'b0;
							end
					end
				else
					begin
						axi_fifo_m_axis_tready <= 1'b1;
						bp_cycle_cnt <= 0;
					end
			end
	end

// AXIS 协议监视：
// 1) valid高且ready低期间，tdata/tlast必须保持稳定
// 2) valid一旦拉高，直到握手成功前不能撤销
always @( posedge ps_clk or negedge rst_n_async )
	begin
		if ( !rst_n_async )
			begin
				axis_hold_active <= 1'b0;
				axis_hold_tdata <= 128'd0;
				axis_hold_tlast <= 1'b0;
			end
		else
			begin
				if ( axis_hold_active )
					begin
						if ( !axi_fifo_m_axis_tvalid )
							begin
								$display("[FAIL][AXIS] TVALID dropped before handshake");
								fail_cnt = fail_cnt + 1;
								axis_hold_active <= 1'b0;
							end
						else if ( !axi_fifo_m_axis_tready )
							begin
								if ( ( axi_fifo_m_axis_tdata !== axis_hold_tdata ) ||
								     ( axi_fifo_m_axis_tlast !== axis_hold_tlast ) )
									begin
										$display("[FAIL][AXIS] TDATA/TLAST changed while stalled");
										fail_cnt = fail_cnt + 1;
									end
							end
						else
							begin
								// 该拍完成握手
								axis_hold_active <= 1'b0;
							end
					end

				if ( axi_fifo_m_axis_tvalid && !axi_fifo_m_axis_tready && !axis_hold_active )
					begin
						axis_hold_active <= 1'b1;
						axis_hold_tdata <= axi_fifo_m_axis_tdata;
						axis_hold_tlast <= axi_fifo_m_axis_tlast;
					end
			end
	end


	task automatic set_adc_code_from_signed;
		input integer signed sample_val;
		integer inv_code;
		begin
			// ad9434: adc_data_out = -signext(code[11:0])
			// inverse mapping in TB: code = -sample_val (12-bit two's complement)
			inv_code = -sample_val;
			if ( inv_code < 0 )
				begin
					inv_code = inv_code + 4096;
				end
			adc_code_cur = inv_code[11:0];
		end
	endtask


task automatic drive_discharge_pulse;
	input integer pre_break_cycles;   // DIS_START维持时间（保证不是SHORT）
	input integer delay_cycles;       // BREAK_DELAY额外等待
		input integer calc_cycles;        // POWER_CALC阶段有效采样周期（main clock）
	input integer amp_abs;            // 目标幅值绝对值（用于spark/arc区分）
		input integer tone_period_samples;
	integer i;
		integer adc_cycles_calc;
		integer tone_sample;
		integer phase_mod;
		reg [11:0] high_code;
			reg [11:0] low_code;
	begin
		// ad9434: adc_data_out <= -signext(code)
		// 选 high_code=1 -> adc_data_out=16'hFFFF（>=0x8000，维持DIS_START）
			// 选 low_code = two's complement(-amp_abs) -> adc_data_out=+amp_abs（<0x8000，触发击穿）
		high_code = 12'h001;
			low_code = ( ~amp_abs[11:0] ) + 12'd1;

		power_trig_async = 1'b1;
		adc_code_cur = high_code;
		for ( i = 0; i < pre_break_cycles; i = i + 1 )
			begin
					@( posedge clk_p );
			end

		adc_code_cur = low_code;
		for ( i = 0; i < delay_cycles; i = i + 1 )
			begin
					@( posedge clk_p );
			end

			// POWER_CALC: inject in-band low-frequency waveform (square tone)
			// convert main-clock cycles to ADC update cycles (250M/200M = 1.25)
			adc_cycles_calc = ( calc_cycles * 5 ) / 4;
			if ( adc_cycles_calc < ( SW_DEPTH * 2 ) )
				begin
					adc_cycles_calc = SW_DEPTH * 2;
				end

			for ( i = 0; i < adc_cycles_calc; i = i + 1 )
			begin
					phase_mod = ( i % tone_period_samples );
					if ( phase_mod < ( tone_period_samples / 2 ) )
						begin
							tone_sample = amp_abs;
						end
					else
						begin
							tone_sample = -amp_abs;
						end
					set_adc_code_from_signed( tone_sample );
					@( posedge adc_dco_p );
			end

		power_trig_async = 1'b0;
	end
endtask


task automatic drive_open_pulse;
	input integer high_cycles;
	integer i;
	begin
		adc_code_cur = 12'h001;   // keep DIS_START condition: input_voltage >= threshold
		power_trig_async = 1'b1;
		for ( i = 0; i < high_cycles; i = i + 1 )
			begin
				@( posedge clk_p );
			end
		power_trig_async = 1'b0;  // OPEN: drop trigger during DIS_START
	end
endtask


task automatic drive_short_pulse;
	input integer low_cycles;
	integer i;
	begin
		// set adc_data_out to a small positive value (< threshold) right away
		adc_code_cur = ( ~12'd300 ) + 12'd1;
		power_trig_async = 1'b1;
		for ( i = 0; i < low_cycles; i = i + 1 )
			begin
				@( posedge clk_p );
			end
		power_trig_async = 1'b0;
	end
endtask


task automatic wait_and_check_result;
	input [4:0] expect_status;
	input check_stop;
	input expect_stop;
	input [256*8-1:0] case_name;
		integer timeout_cycles;
		integer start_beat;
	begin
			start_beat = dma_beat_cnt;
		timeout_cycles = 0;
			while ( ( dma_beat_cnt == start_beat ) && timeout_cycles < 200000 )
			begin
					@( posedge ps_clk );
				timeout_cycles = timeout_cycles + 1;
			end

			if ( dma_beat_cnt == start_beat )
			begin
					$display("[FAIL] %0s: timeout waiting DMA packet", case_name);
				fail_cnt = fail_cnt + 1;
			end
		else
			begin
					if ( last_dma_status !== expect_status )
					begin
							$display("[FAIL] %0s: status expect=%b got=%b", case_name, expect_status, last_dma_status);
						fail_cnt = fail_cnt + 1;
					end
				else
					begin
						pass_cnt = pass_cnt + 1;
							$display("[PASS] %0s: status=%b payload=%h", case_name, last_dma_status, axi_fifo_m_axis_tdata);
					end

					if ( check_stop )
						begin
							if ( last_dma_stop !== expect_stop )
								begin
									$display("[FAIL] %0s: stop expect=%0b got=%0b", case_name, expect_stop, last_dma_stop);
									fail_cnt = fail_cnt + 1;
								end
							else
								begin
									pass_cnt = pass_cnt + 1;
									$display("[PASS] %0s: stop=%0b", case_name, last_dma_stop);
								end
						end
					else
						begin
							$display("[INFO] %0s: stop check skipped", case_name);
						end
			end
	end
endtask


initial
	begin
		rst_n_async = 1'b0;
		power_trig_async = 1'b0;
		cfg_breakdown = 16'h8000;
		cfg_energy_threshold = 64'h0000_0000_000F_FFFF;
		cfg_update_toggle = 1'b0;
		backpressure_en = 1'b0;
		adc_code_cur = 12'h001;
		adc_data_p = 12'h000;
		adc_data_n = 12'hFFF;

		pass_cnt = 0;
		fail_cnt = 0;
		dma_beat_cnt = 0;
		axis_handshake_cnt = 0;
		axis_tlast_cnt = 0;
		axis_beat_idx = 0;
		last_dma_status = 5'b0;
		last_dma_stop = 1'b0;

		// 复位释放
		repeat ( 50 ) @( posedge clk_p );
		rst_n_async = 1'b1;

		// 等待内部时钟与复位同步稳定
		repeat ( 1500 ) @( posedge clk_p );

		// 开启背压，验证AXIS在stall场景下是否仍满足协议
		backpressure_en = 1'b1;

		// ========== TLAST专项测试: FRAME_DATA_COUNT=6, 共18次放电 ==========
		for ( discharge_idx = 0; discharge_idx < TLAST_TEST_PULSES; discharge_idx = discharge_idx + 1 )
			begin
				// 使用短路脉冲，确保每次都快速形成并上报一个数据包
				drive_short_pulse( 25 );
				wait_and_check_result( SHORT, 1'b0, 1'b0, "TLAST_SHORT_CASE" );
				repeat ( 200 ) @( posedge clk_p );
			end

		if ( axis_handshake_cnt !== TLAST_TEST_PULSES )
			begin
				$display("[FAIL][AXIS] handshake count expect=%0d got=%0d", TLAST_TEST_PULSES, axis_handshake_cnt);
				fail_cnt = fail_cnt + 1;
			end

		if ( axis_tlast_cnt !== ( TLAST_TEST_PULSES / FRAME_DATA_COUNT_TB ) )
			begin
				$display("[FAIL][AXIS] TLAST count expect=%0d got=%0d",
				         ( TLAST_TEST_PULSES / FRAME_DATA_COUNT_TB ), axis_tlast_cnt);
				fail_cnt = fail_cnt + 1;
			end

		$display("-------------------------------------------------");
		$display("TB summary: pass=%0d fail=%0d dma_beat=%0d", pass_cnt, fail_cnt, dma_beat_cnt);
		$display("AXIS summary: handshake=%0d tlast_seen=%0d", axis_handshake_cnt, axis_tlast_cnt);
		$display("TLAST expected: every %0d beats, total=%0d for %0d pulses",
		         FRAME_DATA_COUNT_TB, ( TLAST_TEST_PULSES / FRAME_DATA_COUNT_TB ), TLAST_TEST_PULSES );
		$display("threshold=%0d, spark_est=%0d, arc_est=%0d",
						 SW_THRESHOLD, ( SW_DEPTH * AMP_HIGH * AMP_HIGH ), ( SW_DEPTH * AMP_LOW * AMP_LOW ) );
		$display("-------------------------------------------------");

		if ( fail_cnt == 0 )
			begin
				$display("[TB PASS] OPEN/SHORT/SPARK/ARC checks all passed");
			end
		else
			begin
				$fatal( 1, "[TB FAIL] fail_cnt=%0d", fail_cnt );
			end

		#1000;
		$finish;
	end

endmodule

`default_nettype wire
