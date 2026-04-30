// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri Apr 10 17:46:26 2026
// Host        : Hayase-Yuuka running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Code/FPGA_Xilinx_Code/EDM_Monitor/Src/ZYNQ_BlockDesign/ip/ZYNQ_BlockDesign_EDM_Monitor_0_0/ZYNQ_BlockDesign_EDM_Monitor_0_0_sim_netlist.v
// Design      : ZYNQ_BlockDesign_EDM_Monitor_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu15eg-ffvb1156-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ZYNQ_BlockDesign_EDM_Monitor_0_0,EDM_Monitor,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "EDM_Monitor,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module ZYNQ_BlockDesign_EDM_Monitor_0_0
   (clk_p,
    clk_n,
    rst_n_async,
    adc_data_p,
    adc_data_n,
    adc_dco_p,
    adc_dco_n,
    div_param_od0,
    power_trig_async,
    cfg_breakdown,
    cfg_energy_threshold,
    cfg_update_toggle,
    ps_clk,
    power_stop_signal,
    axi_fifo_m_axis_tvalid,
    axi_fifo_m_axis_tready,
    axi_fifo_m_axis_tdata,
    axi_fifo_m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_p CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ZYNQ_BlockDesign_clk_p_0, INSERT_VIP 0" *) input clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_n CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ZYNQ_BlockDesign_clk_n_0, INSERT_VIP 0" *) input clk_n;
  input rst_n_async;
  input [11:0]adc_data_p;
  input [11:0]adc_data_n;
  input adc_dco_p;
  input adc_dco_n;
  output div_param_od0;
  input power_trig_async;
  input [15:0]cfg_breakdown;
  input [63:0]cfg_energy_threshold;
  input cfg_update_toggle;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ps_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ps_clk, ASSOCIATED_BUSIF axi_fifo_m_axis, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ZYNQ_BlockDesign_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0" *) input ps_clk;
  output power_stop_signal;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axi_fifo_m_axis TVALID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_fifo_m_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN ZYNQ_BlockDesign_zynq_ultra_ps_e_0_1_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) output axi_fifo_m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axi_fifo_m_axis TREADY" *) input axi_fifo_m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axi_fifo_m_axis TDATA" *) output [127:0]axi_fifo_m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axi_fifo_m_axis TLAST" *) output axi_fifo_m_axis_tlast;

  (* IBUF_LOW_PWR *) wire [11:0]adc_data_n;
  (* IBUF_LOW_PWR *) wire [11:0]adc_data_p;
  (* IBUF_LOW_PWR *) wire adc_dco_n;
  (* IBUF_LOW_PWR *) wire adc_dco_p;
  wire [127:0]axi_fifo_m_axis_tdata;
  wire axi_fifo_m_axis_tlast;
  wire axi_fifo_m_axis_tready;
  wire axi_fifo_m_axis_tvalid;
  wire [15:0]cfg_breakdown;
  wire [63:0]cfg_energy_threshold;
  wire cfg_update_toggle;
  wire clk_n;
  wire clk_p;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire div_param_od0;
  wire power_stop_signal;
  wire power_trig_async;
  wire ps_clk;
  wire rst_n_async;

  (* AXIS_FRAME_DATA_COUNT = "128" *) 
  ZYNQ_BlockDesign_EDM_Monitor_0_0_EDM_Monitor inst
       (.adc_data_n(adc_data_n),
        .adc_data_p(adc_data_p),
        .adc_dco_n(adc_dco_n),
        .adc_dco_p(adc_dco_p),
        .axi_fifo_m_axis_tdata(axi_fifo_m_axis_tdata),
        .axi_fifo_m_axis_tlast(axi_fifo_m_axis_tlast),
        .axi_fifo_m_axis_tready(axi_fifo_m_axis_tready),
        .axi_fifo_m_axis_tvalid(axi_fifo_m_axis_tvalid),
        .cfg_breakdown(cfg_breakdown),
        .cfg_energy_threshold(cfg_energy_threshold),
        .cfg_update_toggle(cfg_update_toggle),
        .clk_n(clk_n),
        .clk_p(clk_p),
        .div_param_od0(div_param_od0),
        .power_stop_signal(power_stop_signal),
        .power_trig_async(power_trig_async),
        .ps_clk(ps_clk),
        .rst_n_async(rst_n_async));
endmodule

(* ORIG_REF_NAME = "Control_FSM" *) 
module ZYNQ_BlockDesign_EDM_Monitor_0_0_Control_FSM
   (sw_en,
    package_send_req,
    \FSM_onehot_current_state_reg[4]_0 ,
    D,
    slide_window_en_reg_0,
    slide_window_en_reg_1,
    power_trig_async,
    main_clk_250m,
    \FSM_onehot_current_state_reg[4]_1 ,
    sw_result_valid,
    enable_d,
    package_send_ack,
    dout,
    Q,
    pow_m_axis_tvalid,
    O,
    \energy_accumulator_reg[55] ,
    \energy_accumulator_reg[47] ,
    \energy_accumulator_reg[39] ,
    \energy_accumulator_reg[31] ,
    \energy_accumulator_reg[23] ,
    \energy_accumulator_reg[15] ,
    \energy_accumulator_reg[7] ,
    cfg_update_sync_d,
    cfg_update_sync,
    cfg_breakdown,
    \sw_status_latched_reg[3]_0 ,
    \energy_init_latched_reg[63]_0 );
  output sw_en;
  output package_send_req;
  output \FSM_onehot_current_state_reg[4]_0 ;
  output [100:0]D;
  output [2:0]slide_window_en_reg_0;
  output [63:0]slide_window_en_reg_1;
  input power_trig_async;
  input main_clk_250m;
  input \FSM_onehot_current_state_reg[4]_1 ;
  input sw_result_valid;
  input enable_d;
  input package_send_ack;
  input [15:0]dout;
  input [2:0]Q;
  input pow_m_axis_tvalid;
  input [7:0]O;
  input [7:0]\energy_accumulator_reg[55] ;
  input [7:0]\energy_accumulator_reg[47] ;
  input [7:0]\energy_accumulator_reg[39] ;
  input [7:0]\energy_accumulator_reg[31] ;
  input [7:0]\energy_accumulator_reg[23] ;
  input [7:0]\energy_accumulator_reg[15] ;
  input [7:0]\energy_accumulator_reg[7] ;
  input cfg_update_sync_d;
  input cfg_update_sync;
  input [15:0]cfg_breakdown;
  input [2:0]\sw_status_latched_reg[3]_0 ;
  input [63:0]\energy_init_latched_reg[63]_0 ;

  wire [100:0]D;
  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  wire \FSM_onehot_current_state[1]_i_2_n_0 ;
  wire \FSM_onehot_current_state[1]_i_3_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_2_n_0 ;
  wire \FSM_onehot_current_state[2]_i_3_n_0 ;
  wire \FSM_onehot_current_state[2]_i_4_n_0 ;
  wire \FSM_onehot_current_state[3]_i_1_n_0 ;
  wire \FSM_onehot_current_state[3]_i_2_n_0 ;
  wire \FSM_onehot_current_state[3]_i_3_n_0 ;
  wire \FSM_onehot_current_state[3]_i_4_n_0 ;
  wire \FSM_onehot_current_state[3]_i_5_n_0 ;
  wire \FSM_onehot_current_state[4]_i_1_n_0 ;
  wire \FSM_onehot_current_state[4]_i_2_n_0 ;
  wire \FSM_onehot_current_state[4]_i_3_n_0 ;
  wire \FSM_onehot_current_state[4]_i_4_n_0 ;
  wire \FSM_onehot_current_state[4]_i_5_n_0 ;
  wire \FSM_onehot_current_state[4]_i_6_n_0 ;
  wire \FSM_onehot_current_state[4]_i_7_n_0 ;
  wire \FSM_onehot_current_state_reg[4]_0 ;
  wire \FSM_onehot_current_state_reg[4]_1 ;
  wire \FSM_onehot_current_state_reg_n_0_[3] ;
  wire [7:0]O;
  wire [2:0]Q;
  wire axi_send_en_i_1_n_0;
  wire axi_send_en_i_2_n_0;
  wire [3:0]breakdown_cnt;
  wire breakdown_cnt1_carry_i_10_n_0;
  wire breakdown_cnt1_carry_i_11_n_0;
  wire breakdown_cnt1_carry_i_12_n_0;
  wire breakdown_cnt1_carry_i_13_n_0;
  wire breakdown_cnt1_carry_i_14_n_0;
  wire breakdown_cnt1_carry_i_15_n_0;
  wire breakdown_cnt1_carry_i_16_n_0;
  wire breakdown_cnt1_carry_i_1_n_0;
  wire breakdown_cnt1_carry_i_2_n_0;
  wire breakdown_cnt1_carry_i_3_n_0;
  wire breakdown_cnt1_carry_i_4_n_0;
  wire breakdown_cnt1_carry_i_5_n_0;
  wire breakdown_cnt1_carry_i_6_n_0;
  wire breakdown_cnt1_carry_i_7_n_0;
  wire breakdown_cnt1_carry_i_8_n_0;
  wire breakdown_cnt1_carry_i_9_n_0;
  wire breakdown_cnt1_carry_n_0;
  wire breakdown_cnt1_carry_n_1;
  wire breakdown_cnt1_carry_n_2;
  wire breakdown_cnt1_carry_n_3;
  wire breakdown_cnt1_carry_n_4;
  wire breakdown_cnt1_carry_n_5;
  wire breakdown_cnt1_carry_n_6;
  wire breakdown_cnt1_carry_n_7;
  wire \breakdown_cnt[0]_i_1_n_0 ;
  wire \breakdown_cnt[1]_i_1_n_0 ;
  wire \breakdown_cnt[2]_i_1_n_0 ;
  wire \breakdown_cnt[3]_i_1_n_0 ;
  wire \breakdown_cnt[3]_i_2_n_0 ;
  wire [15:0]breakdown_voltage_threshold_active;
  wire [15:0]cfg_breakdown;
  wire cfg_update_pending1;
  wire cfg_update_pending_i_1_n_0;
  wire cfg_update_pending_reg_n_0;
  wire cfg_update_sync;
  wire cfg_update_sync_d;
  wire \dis_status[0]_i_1_n_0 ;
  wire \dis_status[0]_i_2_n_0 ;
  wire \dis_status[0]_i_3_n_0 ;
  wire \dis_status[0]_i_4_n_0 ;
  wire \dis_status[0]_i_5_n_0 ;
  wire \dis_status[1]_i_1_n_0 ;
  wire \dis_status[2]_i_1_n_0 ;
  wire \dis_status[3]_i_1_n_0 ;
  wire \dis_status[3]_i_2_n_0 ;
  wire \dis_status[3]_i_3_n_0 ;
  wire \dis_status[3]_i_4_n_0 ;
  wire \dis_status[4]_i_1_n_0 ;
  wire \dis_status[4]_i_2_n_0 ;
  wire \dis_status[4]_i_3_n_0 ;
  wire \dis_status[4]_i_4_n_0 ;
  wire \dis_status[4]_i_5_n_0 ;
  wire \dis_status[4]_i_6_n_0 ;
  wire \dis_status[4]_i_7_n_0 ;
  wire \dis_status[4]_i_8_n_0 ;
  wire [15:0]dout;
  wire enable_d;
  wire [7:0]\energy_accumulator_reg[15] ;
  wire [7:0]\energy_accumulator_reg[23] ;
  wire [7:0]\energy_accumulator_reg[31] ;
  wire [7:0]\energy_accumulator_reg[39] ;
  wire [7:0]\energy_accumulator_reg[47] ;
  wire [7:0]\energy_accumulator_reg[55] ;
  wire [7:0]\energy_accumulator_reg[7] ;
  wire [63:0]\energy_init_latched_reg[63]_0 ;
  wire main_clk_250m;
  wire p_0_in2_in;
  wire p_0_in4_in;
  wire package_send_ack;
  wire package_send_req;
  wire pow_m_axis_tvalid;
  wire power_trig;
  wire power_trig_async;
  wire power_trig_d;
  wire power_trig_reg1;
  wire power_trig_reg2;
  wire [2:0]slide_window_en_reg_0;
  wire [63:0]slide_window_en_reg_1;
  wire sw_en;
  wire sw_result_seen;
  wire sw_result_seen_i_1_n_0;
  wire sw_result_seen_reg_n_0;
  wire sw_result_valid;
  wire [3:0]sw_status_latched;
  wire sw_status_latched0;
  wire [2:0]\sw_status_latched_reg[3]_0 ;
  wire time_bd_buff0;
  wire [0:0]time_bd_counter;
  wire \time_bd_counter[0]_i_1_n_0 ;
  wire \time_bd_counter[10]_i_1_n_0 ;
  wire \time_bd_counter[10]_i_2_n_0 ;
  wire \time_bd_counter[11]_i_1_n_0 ;
  wire \time_bd_counter[12]_i_1_n_0 ;
  wire \time_bd_counter[13]_i_1_n_0 ;
  wire \time_bd_counter[14]_i_1_n_0 ;
  wire \time_bd_counter[14]_i_2_n_0 ;
  wire \time_bd_counter[15]_i_2_n_0 ;
  wire \time_bd_counter[15]_i_3_n_0 ;
  wire \time_bd_counter[1]_i_1_n_0 ;
  wire \time_bd_counter[2]_i_1_n_0 ;
  wire \time_bd_counter[3]_i_1_n_0 ;
  wire \time_bd_counter[4]_i_1_n_0 ;
  wire \time_bd_counter[5]_i_1_n_0 ;
  wire \time_bd_counter[5]_i_2_n_0 ;
  wire \time_bd_counter[6]_i_1_n_0 ;
  wire \time_bd_counter[7]_i_1_n_0 ;
  wire \time_bd_counter[8]_i_1_n_0 ;
  wire \time_bd_counter[9]_i_1_n_0 ;
  wire \time_bd_counter[9]_i_2_n_0 ;
  wire time_bd_counter_en_reg_n_0;
  wire \time_bd_counter_reg_n_0_[0] ;
  wire \time_bd_counter_reg_n_0_[10] ;
  wire \time_bd_counter_reg_n_0_[11] ;
  wire \time_bd_counter_reg_n_0_[12] ;
  wire \time_bd_counter_reg_n_0_[13] ;
  wire \time_bd_counter_reg_n_0_[14] ;
  wire \time_bd_counter_reg_n_0_[15] ;
  wire \time_bd_counter_reg_n_0_[1] ;
  wire \time_bd_counter_reg_n_0_[2] ;
  wire \time_bd_counter_reg_n_0_[3] ;
  wire \time_bd_counter_reg_n_0_[4] ;
  wire \time_bd_counter_reg_n_0_[5] ;
  wire \time_bd_counter_reg_n_0_[6] ;
  wire \time_bd_counter_reg_n_0_[7] ;
  wire \time_bd_counter_reg_n_0_[8] ;
  wire \time_bd_counter_reg_n_0_[9] ;
  wire [0:0]time_delay_counter;
  wire \time_delay_counter[0]_i_1_n_0 ;
  wire \time_delay_counter[10]_i_1_n_0 ;
  wire \time_delay_counter[10]_i_2_n_0 ;
  wire \time_delay_counter[11]_i_1_n_0 ;
  wire \time_delay_counter[12]_i_1_n_0 ;
  wire \time_delay_counter[13]_i_1_n_0 ;
  wire \time_delay_counter[14]_i_1_n_0 ;
  wire \time_delay_counter[14]_i_2_n_0 ;
  wire \time_delay_counter[15]_i_2_n_0 ;
  wire \time_delay_counter[15]_i_3_n_0 ;
  wire \time_delay_counter[1]_i_1_n_0 ;
  wire \time_delay_counter[2]_i_1_n_0 ;
  wire \time_delay_counter[3]_i_1_n_0 ;
  wire \time_delay_counter[4]_i_1_n_0 ;
  wire \time_delay_counter[5]_i_1_n_0 ;
  wire \time_delay_counter[5]_i_2_n_0 ;
  wire \time_delay_counter[6]_i_1_n_0 ;
  wire \time_delay_counter[7]_i_1_n_0 ;
  wire \time_delay_counter[8]_i_1_n_0 ;
  wire \time_delay_counter[9]_i_1_n_0 ;
  wire \time_delay_counter[9]_i_2_n_0 ;
  wire time_delay_counter_en;
  wire time_delay_counter_en_reg_n_0;
  wire \time_delay_counter_reg_n_0_[0] ;
  wire \time_delay_counter_reg_n_0_[10] ;
  wire \time_delay_counter_reg_n_0_[11] ;
  wire \time_delay_counter_reg_n_0_[12] ;
  wire \time_delay_counter_reg_n_0_[13] ;
  wire \time_delay_counter_reg_n_0_[14] ;
  wire \time_delay_counter_reg_n_0_[15] ;
  wire \time_delay_counter_reg_n_0_[1] ;
  wire \time_delay_counter_reg_n_0_[2] ;
  wire \time_delay_counter_reg_n_0_[3] ;
  wire \time_delay_counter_reg_n_0_[4] ;
  wire \time_delay_counter_reg_n_0_[5] ;
  wire \time_delay_counter_reg_n_0_[6] ;
  wire \time_delay_counter_reg_n_0_[7] ;
  wire \time_delay_counter_reg_n_0_[8] ;
  wire \time_delay_counter_reg_n_0_[9] ;
  wire [0:0]time_energy_counter;
  wire \time_energy_counter[0]_i_1_n_0 ;
  wire \time_energy_counter[10]_i_1_n_0 ;
  wire \time_energy_counter[10]_i_2_n_0 ;
  wire \time_energy_counter[11]_i_1_n_0 ;
  wire \time_energy_counter[12]_i_1_n_0 ;
  wire \time_energy_counter[13]_i_1_n_0 ;
  wire \time_energy_counter[14]_i_1_n_0 ;
  wire \time_energy_counter[14]_i_2_n_0 ;
  wire \time_energy_counter[15]_i_2_n_0 ;
  wire \time_energy_counter[15]_i_3_n_0 ;
  wire \time_energy_counter[1]_i_1_n_0 ;
  wire \time_energy_counter[2]_i_1_n_0 ;
  wire \time_energy_counter[3]_i_1_n_0 ;
  wire \time_energy_counter[4]_i_1_n_0 ;
  wire \time_energy_counter[5]_i_1_n_0 ;
  wire \time_energy_counter[5]_i_2_n_0 ;
  wire \time_energy_counter[6]_i_1_n_0 ;
  wire \time_energy_counter[7]_i_1_n_0 ;
  wire \time_energy_counter[8]_i_1_n_0 ;
  wire \time_energy_counter[9]_i_1_n_0 ;
  wire \time_energy_counter[9]_i_2_n_0 ;
  wire time_energy_counter_en;
  wire time_energy_counter_en_reg_n_0;
  wire \time_energy_counter_reg_n_0_[0] ;
  wire \time_energy_counter_reg_n_0_[10] ;
  wire \time_energy_counter_reg_n_0_[11] ;
  wire \time_energy_counter_reg_n_0_[12] ;
  wire \time_energy_counter_reg_n_0_[13] ;
  wire \time_energy_counter_reg_n_0_[14] ;
  wire \time_energy_counter_reg_n_0_[15] ;
  wire \time_energy_counter_reg_n_0_[1] ;
  wire \time_energy_counter_reg_n_0_[2] ;
  wire \time_energy_counter_reg_n_0_[3] ;
  wire \time_energy_counter_reg_n_0_[4] ;
  wire \time_energy_counter_reg_n_0_[5] ;
  wire \time_energy_counter_reg_n_0_[6] ;
  wire \time_energy_counter_reg_n_0_[7] ;
  wire \time_energy_counter_reg_n_0_[8] ;
  wire \time_energy_counter_reg_n_0_[9] ;
  wire [7:0]NLW_breakdown_cnt1_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFF00FFFF8A8A8A8A)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(\FSM_onehot_current_state[4]_i_3_n_0 ),
        .I1(package_send_ack),
        .I2(p_0_in2_in),
        .I3(power_trig_d),
        .I4(power_trig),
        .I5(sw_result_seen),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55FC000055000000)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(power_trig_d),
        .I1(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .I2(\FSM_onehot_current_state[1]_i_3_n_0 ),
        .I3(sw_result_seen),
        .I4(power_trig),
        .I5(p_0_in4_in),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0111)) 
    \FSM_onehot_current_state[1]_i_2 
       (.I0(breakdown_cnt[2]),
        .I1(breakdown_cnt[3]),
        .I2(breakdown_cnt[0]),
        .I3(breakdown_cnt[1]),
        .O(\FSM_onehot_current_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0155)) 
    \FSM_onehot_current_state[1]_i_3 
       (.I0(\FSM_onehot_current_state[4]_i_4_n_0 ),
        .I1(\time_bd_counter_reg_n_0_[3] ),
        .I2(\time_bd_counter_reg_n_0_[2] ),
        .I3(\time_bd_counter_reg_n_0_[4] ),
        .O(\FSM_onehot_current_state[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAFB)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(\FSM_onehot_current_state[2]_i_2_n_0 ),
        .I1(\time_delay_counter_reg_n_0_[6] ),
        .I2(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I3(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .I4(\FSM_onehot_current_state[3]_i_4_n_0 ),
        .O(\FSM_onehot_current_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \FSM_onehot_current_state[2]_i_2 
       (.I0(\FSM_onehot_current_state[2]_i_4_n_0 ),
        .I1(\time_bd_counter_reg_n_0_[4] ),
        .I2(\FSM_onehot_current_state[4]_i_4_n_0 ),
        .I3(\dis_status[4]_i_7_n_0 ),
        .I4(p_0_in4_in),
        .I5(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .O(\FSM_onehot_current_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \FSM_onehot_current_state[2]_i_3 
       (.I0(power_trig),
        .I1(sw_result_seen),
        .I2(p_0_in4_in),
        .I3(time_delay_counter_en),
        .O(\FSM_onehot_current_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_current_state[2]_i_4 
       (.I0(\time_bd_counter_reg_n_0_[2] ),
        .I1(\time_bd_counter_reg_n_0_[1] ),
        .I2(\time_bd_counter_reg_n_0_[3] ),
        .O(\FSM_onehot_current_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00F0002200F0)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(\time_delay_counter_reg_n_0_[6] ),
        .I1(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .I4(time_delay_counter_en),
        .I5(\FSM_onehot_current_state[3]_i_4_n_0 ),
        .O(\FSM_onehot_current_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \FSM_onehot_current_state[3]_i_2 
       (.I0(\time_delay_counter_reg_n_0_[4] ),
        .I1(\time_delay_counter_reg_n_0_[2] ),
        .I2(\time_delay_counter_reg_n_0_[1] ),
        .I3(\time_delay_counter_reg_n_0_[0] ),
        .I4(\time_delay_counter_reg_n_0_[3] ),
        .I5(\time_delay_counter_reg_n_0_[5] ),
        .O(\FSM_onehot_current_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \FSM_onehot_current_state[3]_i_3 
       (.I0(p_0_in4_in),
        .I1(sw_result_seen),
        .I2(power_trig),
        .O(\FSM_onehot_current_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_current_state[3]_i_4 
       (.I0(\time_delay_counter_reg_n_0_[8] ),
        .I1(\time_delay_counter_reg_n_0_[9] ),
        .I2(\FSM_onehot_current_state[3]_i_5_n_0 ),
        .I3(\time_delay_counter_reg_n_0_[12] ),
        .I4(\time_delay_counter_reg_n_0_[11] ),
        .I5(\time_delay_counter_reg_n_0_[13] ),
        .O(\FSM_onehot_current_state[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_current_state[3]_i_5 
       (.I0(\time_delay_counter_reg_n_0_[14] ),
        .I1(\time_delay_counter_reg_n_0_[15] ),
        .I2(\time_delay_counter_reg_n_0_[7] ),
        .I3(\time_delay_counter_reg_n_0_[10] ),
        .O(\FSM_onehot_current_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAABAAFBAAAB)) 
    \FSM_onehot_current_state[4]_i_1 
       (.I0(\FSM_onehot_current_state[4]_i_2_n_0 ),
        .I1(power_trig),
        .I2(\FSM_onehot_current_state[4]_i_3_n_0 ),
        .I3(sw_result_seen),
        .I4(p_0_in2_in),
        .I5(package_send_ack),
        .O(\FSM_onehot_current_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000015440000)) 
    \FSM_onehot_current_state[4]_i_2 
       (.I0(\FSM_onehot_current_state[4]_i_4_n_0 ),
        .I1(\time_bd_counter_reg_n_0_[2] ),
        .I2(\time_bd_counter_reg_n_0_[1] ),
        .I3(\time_bd_counter_reg_n_0_[3] ),
        .I4(p_0_in4_in),
        .I5(\FSM_onehot_current_state[4]_i_5_n_0 ),
        .O(\FSM_onehot_current_state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_current_state[4]_i_3 
       (.I0(p_0_in4_in),
        .I1(time_delay_counter_en),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(\FSM_onehot_current_state[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_current_state[4]_i_4 
       (.I0(\time_bd_counter_reg_n_0_[9] ),
        .I1(\time_bd_counter_reg_n_0_[15] ),
        .I2(\time_bd_counter_reg_n_0_[7] ),
        .I3(\FSM_onehot_current_state[4]_i_6_n_0 ),
        .I4(\FSM_onehot_current_state[4]_i_7_n_0 ),
        .O(\FSM_onehot_current_state[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBFBBBFBBBF)) 
    \FSM_onehot_current_state[4]_i_5 
       (.I0(sw_result_seen),
        .I1(\time_bd_counter_reg_n_0_[4] ),
        .I2(breakdown_cnt[2]),
        .I3(breakdown_cnt[3]),
        .I4(breakdown_cnt[0]),
        .I5(breakdown_cnt[1]),
        .O(\FSM_onehot_current_state[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_current_state[4]_i_6 
       (.I0(\time_bd_counter_reg_n_0_[13] ),
        .I1(\time_bd_counter_reg_n_0_[5] ),
        .I2(\time_bd_counter_reg_n_0_[10] ),
        .I3(\time_bd_counter_reg_n_0_[8] ),
        .O(\FSM_onehot_current_state[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_current_state[4]_i_7 
       (.I0(\time_bd_counter_reg_n_0_[11] ),
        .I1(\time_bd_counter_reg_n_0_[12] ),
        .I2(\time_bd_counter_reg_n_0_[14] ),
        .I3(\time_bd_counter_reg_n_0_[6] ),
        .O(\FSM_onehot_current_state[4]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "DIS_START:00010,BREAK_DELAY:00100,POWER_CALC:01000,REPORT:10000,IDLE:00001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(main_clk_250m),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .PRE(\FSM_onehot_current_state_reg[4]_1 ),
        .Q(sw_result_seen));
  (* FSM_ENCODED_STATES = "DIS_START:00010,BREAK_DELAY:00100,POWER_CALC:01000,REPORT:10000,IDLE:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(p_0_in4_in));
  (* FSM_ENCODED_STATES = "DIS_START:00010,BREAK_DELAY:00100,POWER_CALC:01000,REPORT:10000,IDLE:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .Q(time_delay_counter_en));
  (* FSM_ENCODED_STATES = "DIS_START:00010,BREAK_DELAY:00100,POWER_CALC:01000,REPORT:10000,IDLE:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "DIS_START:00010,BREAK_DELAY:00100,POWER_CALC:01000,REPORT:10000,IDLE:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .Q(p_0_in2_in));
  LUT6 #(
    .INIT(64'hAAAAAAAA00000028)) 
    axi_send_en_i_1
       (.I0(p_0_in2_in),
        .I1(D[97]),
        .I2(D[100]),
        .I3(axi_send_en_i_2_n_0),
        .I4(D[96]),
        .I5(sw_result_seen_reg_n_0),
        .O(axi_send_en_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    axi_send_en_i_2
       (.I0(D[99]),
        .I1(D[98]),
        .O(axi_send_en_i_2_n_0));
  FDCE axi_send_en_reg
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(axi_send_en_i_1_n_0),
        .Q(package_send_req));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 breakdown_cnt1_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({breakdown_cnt1_carry_n_0,breakdown_cnt1_carry_n_1,breakdown_cnt1_carry_n_2,breakdown_cnt1_carry_n_3,breakdown_cnt1_carry_n_4,breakdown_cnt1_carry_n_5,breakdown_cnt1_carry_n_6,breakdown_cnt1_carry_n_7}),
        .DI({breakdown_cnt1_carry_i_1_n_0,breakdown_cnt1_carry_i_2_n_0,breakdown_cnt1_carry_i_3_n_0,breakdown_cnt1_carry_i_4_n_0,breakdown_cnt1_carry_i_5_n_0,breakdown_cnt1_carry_i_6_n_0,breakdown_cnt1_carry_i_7_n_0,breakdown_cnt1_carry_i_8_n_0}),
        .O(NLW_breakdown_cnt1_carry_O_UNCONNECTED[7:0]),
        .S({breakdown_cnt1_carry_i_9_n_0,breakdown_cnt1_carry_i_10_n_0,breakdown_cnt1_carry_i_11_n_0,breakdown_cnt1_carry_i_12_n_0,breakdown_cnt1_carry_i_13_n_0,breakdown_cnt1_carry_i_14_n_0,breakdown_cnt1_carry_i_15_n_0,breakdown_cnt1_carry_i_16_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    breakdown_cnt1_carry_i_1
       (.I0(breakdown_voltage_threshold_active[14]),
        .I1(dout[14]),
        .I2(dout[15]),
        .I3(breakdown_voltage_threshold_active[15]),
        .O(breakdown_cnt1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    breakdown_cnt1_carry_i_10
       (.I0(dout[12]),
        .I1(breakdown_voltage_threshold_active[12]),
        .I2(dout[13]),
        .I3(breakdown_voltage_threshold_active[13]),
        .O(breakdown_cnt1_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    breakdown_cnt1_carry_i_11
       (.I0(dout[10]),
        .I1(breakdown_voltage_threshold_active[10]),
        .I2(dout[11]),
        .I3(breakdown_voltage_threshold_active[11]),
        .O(breakdown_cnt1_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    breakdown_cnt1_carry_i_12
       (.I0(dout[8]),
        .I1(breakdown_voltage_threshold_active[8]),
        .I2(dout[9]),
        .I3(breakdown_voltage_threshold_active[9]),
        .O(breakdown_cnt1_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    breakdown_cnt1_carry_i_13
       (.I0(dout[6]),
        .I1(breakdown_voltage_threshold_active[6]),
        .I2(dout[7]),
        .I3(breakdown_voltage_threshold_active[7]),
        .O(breakdown_cnt1_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    breakdown_cnt1_carry_i_14
       (.I0(dout[4]),
        .I1(breakdown_voltage_threshold_active[4]),
        .I2(dout[5]),
        .I3(breakdown_voltage_threshold_active[5]),
        .O(breakdown_cnt1_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    breakdown_cnt1_carry_i_15
       (.I0(dout[2]),
        .I1(breakdown_voltage_threshold_active[2]),
        .I2(dout[3]),
        .I3(breakdown_voltage_threshold_active[3]),
        .O(breakdown_cnt1_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    breakdown_cnt1_carry_i_16
       (.I0(dout[0]),
        .I1(breakdown_voltage_threshold_active[0]),
        .I2(dout[1]),
        .I3(breakdown_voltage_threshold_active[1]),
        .O(breakdown_cnt1_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    breakdown_cnt1_carry_i_2
       (.I0(breakdown_voltage_threshold_active[12]),
        .I1(dout[12]),
        .I2(dout[13]),
        .I3(breakdown_voltage_threshold_active[13]),
        .O(breakdown_cnt1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    breakdown_cnt1_carry_i_3
       (.I0(breakdown_voltage_threshold_active[10]),
        .I1(dout[10]),
        .I2(dout[11]),
        .I3(breakdown_voltage_threshold_active[11]),
        .O(breakdown_cnt1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    breakdown_cnt1_carry_i_4
       (.I0(breakdown_voltage_threshold_active[8]),
        .I1(dout[8]),
        .I2(dout[9]),
        .I3(breakdown_voltage_threshold_active[9]),
        .O(breakdown_cnt1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    breakdown_cnt1_carry_i_5
       (.I0(breakdown_voltage_threshold_active[6]),
        .I1(dout[6]),
        .I2(dout[7]),
        .I3(breakdown_voltage_threshold_active[7]),
        .O(breakdown_cnt1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    breakdown_cnt1_carry_i_6
       (.I0(breakdown_voltage_threshold_active[4]),
        .I1(dout[4]),
        .I2(dout[5]),
        .I3(breakdown_voltage_threshold_active[5]),
        .O(breakdown_cnt1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    breakdown_cnt1_carry_i_7
       (.I0(breakdown_voltage_threshold_active[2]),
        .I1(dout[2]),
        .I2(dout[3]),
        .I3(breakdown_voltage_threshold_active[3]),
        .O(breakdown_cnt1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    breakdown_cnt1_carry_i_8
       (.I0(breakdown_voltage_threshold_active[0]),
        .I1(dout[0]),
        .I2(dout[1]),
        .I3(breakdown_voltage_threshold_active[1]),
        .O(breakdown_cnt1_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    breakdown_cnt1_carry_i_9
       (.I0(dout[14]),
        .I1(breakdown_voltage_threshold_active[14]),
        .I2(dout[15]),
        .I3(breakdown_voltage_threshold_active[15]),
        .O(breakdown_cnt1_carry_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \breakdown_cnt[0]_i_1 
       (.I0(\breakdown_cnt[3]_i_2_n_0 ),
        .I1(breakdown_cnt[0]),
        .O(\breakdown_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \breakdown_cnt[1]_i_1 
       (.I0(\breakdown_cnt[3]_i_2_n_0 ),
        .I1(breakdown_cnt[0]),
        .I2(breakdown_cnt[1]),
        .O(\breakdown_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \breakdown_cnt[2]_i_1 
       (.I0(\breakdown_cnt[3]_i_2_n_0 ),
        .I1(breakdown_cnt[1]),
        .I2(breakdown_cnt[0]),
        .I3(breakdown_cnt[2]),
        .O(\breakdown_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \breakdown_cnt[3]_i_1 
       (.I0(\breakdown_cnt[3]_i_2_n_0 ),
        .I1(breakdown_cnt[2]),
        .I2(breakdown_cnt[0]),
        .I3(breakdown_cnt[1]),
        .I4(breakdown_cnt[3]),
        .O(\breakdown_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFA8000000000000)) 
    \breakdown_cnt[3]_i_2 
       (.I0(\time_bd_counter_reg_n_0_[4] ),
        .I1(\time_bd_counter_reg_n_0_[2] ),
        .I2(\time_bd_counter_reg_n_0_[3] ),
        .I3(\FSM_onehot_current_state[4]_i_4_n_0 ),
        .I4(breakdown_cnt1_carry_n_0),
        .I5(p_0_in4_in),
        .O(\breakdown_cnt[3]_i_2_n_0 ));
  FDCE \breakdown_cnt_reg[0] 
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\breakdown_cnt[0]_i_1_n_0 ),
        .Q(breakdown_cnt[0]));
  FDCE \breakdown_cnt_reg[1] 
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\breakdown_cnt[1]_i_1_n_0 ),
        .Q(breakdown_cnt[1]));
  FDCE \breakdown_cnt_reg[2] 
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\breakdown_cnt[2]_i_1_n_0 ),
        .Q(breakdown_cnt[2]));
  FDCE \breakdown_cnt_reg[3] 
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\breakdown_cnt[3]_i_1_n_0 ),
        .Q(breakdown_cnt[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \breakdown_voltage_threshold_active[15]_i_1 
       (.I0(cfg_update_pending_reg_n_0),
        .I1(sw_result_seen),
        .O(cfg_update_pending1));
  FDCE \breakdown_voltage_threshold_active_reg[0] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(cfg_breakdown[0]),
        .Q(breakdown_voltage_threshold_active[0]));
  FDCE \breakdown_voltage_threshold_active_reg[10] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(cfg_breakdown[10]),
        .Q(breakdown_voltage_threshold_active[10]));
  FDCE \breakdown_voltage_threshold_active_reg[11] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(cfg_breakdown[11]),
        .Q(breakdown_voltage_threshold_active[11]));
  FDCE \breakdown_voltage_threshold_active_reg[12] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(cfg_breakdown[12]),
        .Q(breakdown_voltage_threshold_active[12]));
  FDCE \breakdown_voltage_threshold_active_reg[13] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(cfg_breakdown[13]),
        .Q(breakdown_voltage_threshold_active[13]));
  FDCE \breakdown_voltage_threshold_active_reg[14] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(cfg_breakdown[14]),
        .Q(breakdown_voltage_threshold_active[14]));
  FDPE \breakdown_voltage_threshold_active_reg[15] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .D(cfg_breakdown[15]),
        .PRE(\FSM_onehot_current_state_reg[4]_1 ),
        .Q(breakdown_voltage_threshold_active[15]));
  FDCE \breakdown_voltage_threshold_active_reg[1] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(cfg_breakdown[1]),
        .Q(breakdown_voltage_threshold_active[1]));
  FDCE \breakdown_voltage_threshold_active_reg[2] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(cfg_breakdown[2]),
        .Q(breakdown_voltage_threshold_active[2]));
  FDCE \breakdown_voltage_threshold_active_reg[3] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(cfg_breakdown[3]),
        .Q(breakdown_voltage_threshold_active[3]));
  FDCE \breakdown_voltage_threshold_active_reg[4] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(cfg_breakdown[4]),
        .Q(breakdown_voltage_threshold_active[4]));
  FDCE \breakdown_voltage_threshold_active_reg[5] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(cfg_breakdown[5]),
        .Q(breakdown_voltage_threshold_active[5]));
  FDCE \breakdown_voltage_threshold_active_reg[6] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(cfg_breakdown[6]),
        .Q(breakdown_voltage_threshold_active[6]));
  FDCE \breakdown_voltage_threshold_active_reg[7] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(cfg_breakdown[7]),
        .Q(breakdown_voltage_threshold_active[7]));
  FDCE \breakdown_voltage_threshold_active_reg[8] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(cfg_breakdown[8]),
        .Q(breakdown_voltage_threshold_active[8]));
  FDCE \breakdown_voltage_threshold_active_reg[9] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(cfg_breakdown[9]),
        .Q(breakdown_voltage_threshold_active[9]));
  LUT4 #(
    .INIT(16'h4774)) 
    cfg_update_pending_i_1
       (.I0(sw_result_seen),
        .I1(cfg_update_pending_reg_n_0),
        .I2(cfg_update_sync_d),
        .I3(cfg_update_sync),
        .O(cfg_update_pending_i_1_n_0));
  FDCE cfg_update_pending_reg
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(cfg_update_pending_i_1_n_0),
        .Q(cfg_update_pending_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF80F0)) 
    \dis_status[0]_i_1 
       (.I0(power_trig),
        .I1(\dis_status[3]_i_2_n_0 ),
        .I2(sw_status_latched[0]),
        .I3(\dis_status[0]_i_2_n_0 ),
        .I4(sw_result_seen),
        .I5(\dis_status[0]_i_3_n_0 ),
        .O(\dis_status[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7770)) 
    \dis_status[0]_i_2 
       (.I0(package_send_ack),
        .I1(p_0_in2_in),
        .I2(p_0_in4_in),
        .I3(time_delay_counter_en),
        .O(\dis_status[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \dis_status[0]_i_3 
       (.I0(\dis_status[0]_i_4_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(power_trig),
        .I3(time_delay_counter_en),
        .I4(p_0_in4_in),
        .I5(\dis_status[0]_i_5_n_0 ),
        .O(\dis_status[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dis_status[0]_i_4 
       (.I0(p_0_in2_in),
        .I1(package_send_ack),
        .O(\dis_status[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \dis_status[0]_i_5 
       (.I0(sw_status_latched[2]),
        .I1(sw_status_latched[3]),
        .I2(sw_result_seen_reg_n_0),
        .O(\dis_status[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000111011101110)) 
    \dis_status[1]_i_1 
       (.I0(power_trig),
        .I1(sw_result_seen),
        .I2(time_delay_counter_en),
        .I3(p_0_in4_in),
        .I4(p_0_in2_in),
        .I5(package_send_ack),
        .O(\dis_status[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA020202)) 
    \dis_status[2]_i_1 
       (.I0(sw_status_latched[2]),
        .I1(sw_status_latched[3]),
        .I2(\dis_status[3]_i_4_n_0 ),
        .I3(\dis_status[3]_i_2_n_0 ),
        .I4(\dis_status[4]_i_7_n_0 ),
        .I5(\dis_status[3]_i_3_n_0 ),
        .O(\dis_status[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F80000F8FF0000)) 
    \dis_status[3]_i_1 
       (.I0(\dis_status[3]_i_2_n_0 ),
        .I1(\dis_status[4]_i_7_n_0 ),
        .I2(\dis_status[3]_i_3_n_0 ),
        .I3(\dis_status[3]_i_4_n_0 ),
        .I4(sw_status_latched[3]),
        .I5(sw_status_latched[2]),
        .O(\dis_status[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFBFBFBFFFBFF)) 
    \dis_status[3]_i_2 
       (.I0(\dis_status[4]_i_5_n_0 ),
        .I1(\dis_status[4]_i_4_n_0 ),
        .I2(\FSM_onehot_current_state[4]_i_4_n_0 ),
        .I3(\time_bd_counter_reg_n_0_[2] ),
        .I4(\time_bd_counter_reg_n_0_[1] ),
        .I5(\time_bd_counter_reg_n_0_[3] ),
        .O(\dis_status[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555000100010001)) 
    \dis_status[3]_i_3 
       (.I0(sw_result_seen),
        .I1(p_0_in4_in),
        .I2(time_delay_counter_en),
        .I3(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I4(p_0_in2_in),
        .I5(package_send_ack),
        .O(\dis_status[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \dis_status[3]_i_4 
       (.I0(sw_status_latched[0]),
        .I1(sw_result_seen_reg_n_0),
        .I2(sw_result_seen),
        .I3(time_delay_counter_en),
        .I4(p_0_in4_in),
        .O(\dis_status[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFAAAAAAAAAA)) 
    \dis_status[4]_i_1 
       (.I0(\dis_status[4]_i_3_n_0 ),
        .I1(package_send_ack),
        .I2(p_0_in2_in),
        .I3(\dis_status[4]_i_4_n_0 ),
        .I4(\dis_status[4]_i_5_n_0 ),
        .I5(\dis_status[4]_i_6_n_0 ),
        .O(\dis_status[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0070000000000000)) 
    \dis_status[4]_i_2 
       (.I0(package_send_ack),
        .I1(p_0_in2_in),
        .I2(\dis_status[4]_i_4_n_0 ),
        .I3(\dis_status[4]_i_5_n_0 ),
        .I4(\dis_status[4]_i_6_n_0 ),
        .I5(\dis_status[4]_i_7_n_0 ),
        .O(\dis_status[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h111F1F1111111111)) 
    \dis_status[4]_i_3 
       (.I0(\dis_status[3]_i_3_n_0 ),
        .I1(\dis_status[4]_i_7_n_0 ),
        .I2(\dis_status[4]_i_8_n_0 ),
        .I3(sw_status_latched[2]),
        .I4(sw_status_latched[3]),
        .I5(sw_result_seen_reg_n_0),
        .O(\dis_status[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \dis_status[4]_i_4 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(time_delay_counter_en),
        .O(\dis_status[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0007FFFF)) 
    \dis_status[4]_i_5 
       (.I0(breakdown_cnt[1]),
        .I1(breakdown_cnt[0]),
        .I2(breakdown_cnt[3]),
        .I3(breakdown_cnt[2]),
        .I4(\time_bd_counter_reg_n_0_[4] ),
        .O(\dis_status[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00002A88)) 
    \dis_status[4]_i_6 
       (.I0(p_0_in4_in),
        .I1(\time_bd_counter_reg_n_0_[3] ),
        .I2(\time_bd_counter_reg_n_0_[1] ),
        .I3(\time_bd_counter_reg_n_0_[2] ),
        .I4(\FSM_onehot_current_state[4]_i_4_n_0 ),
        .O(\dis_status[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dis_status[4]_i_7 
       (.I0(power_trig),
        .I1(sw_result_seen),
        .O(\dis_status[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \dis_status[4]_i_8 
       (.I0(p_0_in2_in),
        .I1(sw_status_latched[0]),
        .I2(D[96]),
        .I3(axi_send_en_i_2_n_0),
        .I4(D[100]),
        .I5(D[97]),
        .O(\dis_status[4]_i_8_n_0 ));
  FDPE \dis_status_reg[0] 
       (.C(main_clk_250m),
        .CE(\dis_status[4]_i_1_n_0 ),
        .D(\dis_status[0]_i_1_n_0 ),
        .PRE(\FSM_onehot_current_state_reg[4]_1 ),
        .Q(D[96]));
  FDCE \dis_status_reg[1] 
       (.C(main_clk_250m),
        .CE(\dis_status[4]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\dis_status[1]_i_1_n_0 ),
        .Q(D[97]));
  FDCE \dis_status_reg[2] 
       (.C(main_clk_250m),
        .CE(\dis_status[4]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\dis_status[2]_i_1_n_0 ),
        .Q(D[98]));
  FDCE \dis_status_reg[3] 
       (.C(main_clk_250m),
        .CE(\dis_status[4]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\dis_status[3]_i_1_n_0 ),
        .Q(D[99]));
  FDCE \dis_status_reg[4] 
       (.C(main_clk_250m),
        .CE(\dis_status[4]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\dis_status[4]_i_2_n_0 ),
        .Q(D[100]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[0]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[7] [0]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[10]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[15] [2]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[10]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[11]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[15] [3]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[11]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[12]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[15] [4]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[12]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[13]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[15] [5]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[13]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[14]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[15] [6]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[14]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[15]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[15] [7]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[15]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[16]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[23] [0]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[16]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[17]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[23] [1]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[17]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[18]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[23] [2]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[18]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[19]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[23] [3]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[19]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[1]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[7] [1]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[20]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[23] [4]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[20]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[21]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[23] [5]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[21]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[22]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[23] [6]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[22]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[23]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[23] [7]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[23]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[24]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[31] [0]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[24]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[25]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[31] [1]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[25]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[26]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[31] [2]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[26]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[27]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[31] [3]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[27]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[28]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[31] [4]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[28]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[29]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[31] [5]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[29]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[2]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[7] [2]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[30]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[31] [6]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[30]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[31]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[31] [7]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[31]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[32]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[39] [0]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[32]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[33]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[39] [1]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[33]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[34]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[39] [2]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[34]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[35]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[39] [3]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[35]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[36]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[39] [4]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[36]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[37]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[39] [5]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[37]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[38]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[39] [6]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[38]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[39]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[39] [7]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[39]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[3]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[7] [3]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[40]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[47] [0]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[40]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[41]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[47] [1]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[41]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[42]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[47] [2]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[42]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[43]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[47] [3]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[43]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[44]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[47] [4]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[44]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[45]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[47] [5]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[45]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[46]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[47] [6]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[46]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[47]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[47] [7]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[47]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[48]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[55] [0]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[48]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[49]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[55] [1]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[49]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[4]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[7] [4]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[50]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[55] [2]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[50]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[51]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[55] [3]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[51]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[52]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[55] [4]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[52]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[53]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[55] [5]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[53]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[54]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[55] [6]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[54]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[55]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[55] [7]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[55]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[56]_i_1 
       (.I0(sw_en),
        .I1(O[0]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[56]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[57]_i_1 
       (.I0(sw_en),
        .I1(O[1]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[57]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[58]_i_1 
       (.I0(sw_en),
        .I1(O[2]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[58]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[59]_i_1 
       (.I0(sw_en),
        .I1(O[3]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[59]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[5]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[7] [5]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[60]_i_1 
       (.I0(sw_en),
        .I1(O[4]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[60]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[61]_i_1 
       (.I0(sw_en),
        .I1(O[5]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[61]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[62]_i_1 
       (.I0(sw_en),
        .I1(O[6]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[62]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[63]_i_1 
       (.I0(sw_en),
        .I1(O[7]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[63]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[6]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[7] [6]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[7]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[7] [7]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[8]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[15] [0]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[8]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \energy_accumulator[9]_i_1 
       (.I0(sw_en),
        .I1(\energy_accumulator_reg[15] [1]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_1[9]));
  FDCE \energy_init_latched_reg[0] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [0]),
        .Q(D[0]));
  FDCE \energy_init_latched_reg[10] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [10]),
        .Q(D[10]));
  FDCE \energy_init_latched_reg[11] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [11]),
        .Q(D[11]));
  FDCE \energy_init_latched_reg[12] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [12]),
        .Q(D[12]));
  FDCE \energy_init_latched_reg[13] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [13]),
        .Q(D[13]));
  FDCE \energy_init_latched_reg[14] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [14]),
        .Q(D[14]));
  FDCE \energy_init_latched_reg[15] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [15]),
        .Q(D[15]));
  FDCE \energy_init_latched_reg[16] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [16]),
        .Q(D[16]));
  FDCE \energy_init_latched_reg[17] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [17]),
        .Q(D[17]));
  FDCE \energy_init_latched_reg[18] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [18]),
        .Q(D[18]));
  FDCE \energy_init_latched_reg[19] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [19]),
        .Q(D[19]));
  FDCE \energy_init_latched_reg[1] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [1]),
        .Q(D[1]));
  FDCE \energy_init_latched_reg[20] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [20]),
        .Q(D[20]));
  FDCE \energy_init_latched_reg[21] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [21]),
        .Q(D[21]));
  FDCE \energy_init_latched_reg[22] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [22]),
        .Q(D[22]));
  FDCE \energy_init_latched_reg[23] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [23]),
        .Q(D[23]));
  FDCE \energy_init_latched_reg[24] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [24]),
        .Q(D[24]));
  FDCE \energy_init_latched_reg[25] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [25]),
        .Q(D[25]));
  FDCE \energy_init_latched_reg[26] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [26]),
        .Q(D[26]));
  FDCE \energy_init_latched_reg[27] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [27]),
        .Q(D[27]));
  FDCE \energy_init_latched_reg[28] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [28]),
        .Q(D[28]));
  FDCE \energy_init_latched_reg[29] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [29]),
        .Q(D[29]));
  FDCE \energy_init_latched_reg[2] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [2]),
        .Q(D[2]));
  FDCE \energy_init_latched_reg[30] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [30]),
        .Q(D[30]));
  FDCE \energy_init_latched_reg[31] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [31]),
        .Q(D[31]));
  FDCE \energy_init_latched_reg[32] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [32]),
        .Q(D[32]));
  FDCE \energy_init_latched_reg[33] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [33]),
        .Q(D[33]));
  FDCE \energy_init_latched_reg[34] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [34]),
        .Q(D[34]));
  FDCE \energy_init_latched_reg[35] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [35]),
        .Q(D[35]));
  FDCE \energy_init_latched_reg[36] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [36]),
        .Q(D[36]));
  FDCE \energy_init_latched_reg[37] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [37]),
        .Q(D[37]));
  FDCE \energy_init_latched_reg[38] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [38]),
        .Q(D[38]));
  FDCE \energy_init_latched_reg[39] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [39]),
        .Q(D[39]));
  FDCE \energy_init_latched_reg[3] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [3]),
        .Q(D[3]));
  FDCE \energy_init_latched_reg[40] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [40]),
        .Q(D[40]));
  FDCE \energy_init_latched_reg[41] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [41]),
        .Q(D[41]));
  FDCE \energy_init_latched_reg[42] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [42]),
        .Q(D[42]));
  FDCE \energy_init_latched_reg[43] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [43]),
        .Q(D[43]));
  FDCE \energy_init_latched_reg[44] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [44]),
        .Q(D[44]));
  FDCE \energy_init_latched_reg[45] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [45]),
        .Q(D[45]));
  FDCE \energy_init_latched_reg[46] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [46]),
        .Q(D[46]));
  FDCE \energy_init_latched_reg[47] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [47]),
        .Q(D[47]));
  FDCE \energy_init_latched_reg[48] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [48]),
        .Q(D[48]));
  FDCE \energy_init_latched_reg[49] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [49]),
        .Q(D[49]));
  FDCE \energy_init_latched_reg[4] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [4]),
        .Q(D[4]));
  FDCE \energy_init_latched_reg[50] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [50]),
        .Q(D[50]));
  FDCE \energy_init_latched_reg[51] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [51]),
        .Q(D[51]));
  FDCE \energy_init_latched_reg[52] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [52]),
        .Q(D[52]));
  FDCE \energy_init_latched_reg[53] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [53]),
        .Q(D[53]));
  FDCE \energy_init_latched_reg[54] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [54]),
        .Q(D[54]));
  FDCE \energy_init_latched_reg[55] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [55]),
        .Q(D[55]));
  FDCE \energy_init_latched_reg[56] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [56]),
        .Q(D[56]));
  FDCE \energy_init_latched_reg[57] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [57]),
        .Q(D[57]));
  FDCE \energy_init_latched_reg[58] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [58]),
        .Q(D[58]));
  FDCE \energy_init_latched_reg[59] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [59]),
        .Q(D[59]));
  FDCE \energy_init_latched_reg[5] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [5]),
        .Q(D[5]));
  FDCE \energy_init_latched_reg[60] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [60]),
        .Q(D[60]));
  FDCE \energy_init_latched_reg[61] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [61]),
        .Q(D[61]));
  FDCE \energy_init_latched_reg[62] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [62]),
        .Q(D[62]));
  FDCE \energy_init_latched_reg[63] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [63]),
        .Q(D[63]));
  FDCE \energy_init_latched_reg[6] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [6]),
        .Q(D[6]));
  FDCE \energy_init_latched_reg[7] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [7]),
        .Q(D[7]));
  FDCE \energy_init_latched_reg[8] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [8]),
        .Q(D[8]));
  FDCE \energy_init_latched_reg[9] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\energy_init_latched_reg[63]_0 [9]),
        .Q(D[9]));
  FDCE power_trig_d_reg
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(power_trig),
        .Q(power_trig_d));
  FDCE power_trig_reg
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(power_trig_reg2),
        .Q(power_trig));
  FDCE power_trig_reg1_reg
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(power_trig_async),
        .Q(power_trig_reg1));
  FDCE power_trig_reg2_reg
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(power_trig_reg1),
        .Q(power_trig_reg2));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    result_valid_i_1
       (.I0(p_0_in2_in),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(sw_result_valid),
        .I3(sw_en),
        .I4(enable_d),
        .O(\FSM_onehot_current_state_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \shift_count_d[2]_i_1 
       (.I0(sw_en),
        .I1(Q[0]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_0[0]));
  LUT3 #(
    .INIT(8'h8A)) 
    \shift_count_d[3]_i_1 
       (.I0(sw_en),
        .I1(Q[1]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \shift_count_d[6]_i_1 
       (.I0(sw_en),
        .I1(Q[2]),
        .I2(pow_m_axis_tvalid),
        .O(slide_window_en_reg_0[2]));
  FDCE slide_window_en_reg
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\FSM_onehot_current_state_reg_n_0_[3] ),
        .Q(sw_en));
  LUT5 #(
    .INIT(32'hFD55FC00)) 
    sw_result_seen_i_1
       (.I0(sw_result_seen),
        .I1(p_0_in2_in),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(sw_result_valid),
        .I4(sw_result_seen_reg_n_0),
        .O(sw_result_seen_i_1_n_0));
  FDCE sw_result_seen_reg
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(sw_result_seen_i_1_n_0),
        .Q(sw_result_seen_reg_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    \sw_status_latched[3]_i_1 
       (.I0(sw_result_valid),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(p_0_in2_in),
        .O(sw_status_latched0));
  FDPE \sw_status_latched_reg[0] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .D(\sw_status_latched_reg[3]_0 [0]),
        .PRE(\FSM_onehot_current_state_reg[4]_1 ),
        .Q(sw_status_latched[0]));
  FDCE \sw_status_latched_reg[2] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\sw_status_latched_reg[3]_0 [1]),
        .Q(sw_status_latched[2]));
  FDCE \sw_status_latched_reg[3] 
       (.C(main_clk_250m),
        .CE(sw_status_latched0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\sw_status_latched_reg[3]_0 [2]),
        .Q(sw_status_latched[3]));
  LUT6 #(
    .INIT(64'h00000000FF010101)) 
    \time_bd_buff[15]_i_1 
       (.I0(\FSM_onehot_current_state[4]_i_3_n_0 ),
        .I1(power_trig),
        .I2(sw_result_seen),
        .I3(\FSM_onehot_current_state[4]_i_2_n_0 ),
        .I4(\dis_status[4]_i_4_n_0 ),
        .I5(p_0_in2_in),
        .O(time_bd_buff0));
  FDCE \time_bd_buff_reg[0] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter_reg_n_0_[0] ),
        .Q(D[80]));
  FDCE \time_bd_buff_reg[10] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter_reg_n_0_[10] ),
        .Q(D[90]));
  FDCE \time_bd_buff_reg[11] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter_reg_n_0_[11] ),
        .Q(D[91]));
  FDCE \time_bd_buff_reg[12] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter_reg_n_0_[12] ),
        .Q(D[92]));
  FDCE \time_bd_buff_reg[13] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter_reg_n_0_[13] ),
        .Q(D[93]));
  FDCE \time_bd_buff_reg[14] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter_reg_n_0_[14] ),
        .Q(D[94]));
  FDCE \time_bd_buff_reg[15] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter_reg_n_0_[15] ),
        .Q(D[95]));
  FDCE \time_bd_buff_reg[1] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter_reg_n_0_[1] ),
        .Q(D[81]));
  FDCE \time_bd_buff_reg[2] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter_reg_n_0_[2] ),
        .Q(D[82]));
  FDCE \time_bd_buff_reg[3] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter_reg_n_0_[3] ),
        .Q(D[83]));
  FDCE \time_bd_buff_reg[4] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter_reg_n_0_[4] ),
        .Q(D[84]));
  FDCE \time_bd_buff_reg[5] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter_reg_n_0_[5] ),
        .Q(D[85]));
  FDCE \time_bd_buff_reg[6] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter_reg_n_0_[6] ),
        .Q(D[86]));
  FDCE \time_bd_buff_reg[7] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter_reg_n_0_[7] ),
        .Q(D[87]));
  FDCE \time_bd_buff_reg[8] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter_reg_n_0_[8] ),
        .Q(D[88]));
  FDCE \time_bd_buff_reg[9] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter_reg_n_0_[9] ),
        .Q(D[89]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \time_bd_counter[0]_i_1 
       (.I0(sw_result_seen),
        .I1(\time_bd_counter_reg_n_0_[0] ),
        .O(\time_bd_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \time_bd_counter[10]_i_1 
       (.I0(\time_bd_counter[10]_i_2_n_0 ),
        .I1(\time_bd_counter_reg_n_0_[10] ),
        .I2(sw_result_seen),
        .O(\time_bd_counter[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \time_bd_counter[10]_i_2 
       (.I0(\time_bd_counter_reg_n_0_[8] ),
        .I1(\time_bd_counter_reg_n_0_[6] ),
        .I2(\time_bd_counter[9]_i_2_n_0 ),
        .I3(\time_bd_counter_reg_n_0_[7] ),
        .I4(\time_bd_counter_reg_n_0_[9] ),
        .O(\time_bd_counter[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \time_bd_counter[11]_i_1 
       (.I0(sw_result_seen),
        .I1(\time_bd_counter[14]_i_2_n_0 ),
        .I2(\time_bd_counter_reg_n_0_[11] ),
        .O(\time_bd_counter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h5104)) 
    \time_bd_counter[12]_i_1 
       (.I0(sw_result_seen),
        .I1(\time_bd_counter_reg_n_0_[11] ),
        .I2(\time_bd_counter[14]_i_2_n_0 ),
        .I3(\time_bd_counter_reg_n_0_[12] ),
        .O(\time_bd_counter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h51550400)) 
    \time_bd_counter[13]_i_1 
       (.I0(sw_result_seen),
        .I1(\time_bd_counter_reg_n_0_[12] ),
        .I2(\time_bd_counter[14]_i_2_n_0 ),
        .I3(\time_bd_counter_reg_n_0_[11] ),
        .I4(\time_bd_counter_reg_n_0_[13] ),
        .O(\time_bd_counter[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5515555500400000)) 
    \time_bd_counter[14]_i_1 
       (.I0(sw_result_seen),
        .I1(\time_bd_counter_reg_n_0_[13] ),
        .I2(\time_bd_counter_reg_n_0_[11] ),
        .I3(\time_bd_counter[14]_i_2_n_0 ),
        .I4(\time_bd_counter_reg_n_0_[12] ),
        .I5(\time_bd_counter_reg_n_0_[14] ),
        .O(\time_bd_counter[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \time_bd_counter[14]_i_2 
       (.I0(\time_bd_counter_reg_n_0_[9] ),
        .I1(\time_bd_counter_reg_n_0_[7] ),
        .I2(\time_bd_counter[9]_i_2_n_0 ),
        .I3(\time_bd_counter_reg_n_0_[6] ),
        .I4(\time_bd_counter_reg_n_0_[8] ),
        .I5(\time_bd_counter_reg_n_0_[10] ),
        .O(\time_bd_counter[14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \time_bd_counter[15]_i_1 
       (.I0(sw_result_seen),
        .I1(time_bd_counter_en_reg_n_0),
        .O(time_bd_counter));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \time_bd_counter[15]_i_2 
       (.I0(\time_bd_counter_reg_n_0_[14] ),
        .I1(\time_bd_counter[15]_i_3_n_0 ),
        .I2(\time_bd_counter_reg_n_0_[15] ),
        .I3(sw_result_seen),
        .O(\time_bd_counter[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \time_bd_counter[15]_i_3 
       (.I0(\time_bd_counter_reg_n_0_[13] ),
        .I1(\time_bd_counter_reg_n_0_[11] ),
        .I2(\time_bd_counter[14]_i_2_n_0 ),
        .I3(\time_bd_counter_reg_n_0_[12] ),
        .O(\time_bd_counter[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \time_bd_counter[1]_i_1 
       (.I0(sw_result_seen),
        .I1(\time_bd_counter_reg_n_0_[0] ),
        .I2(\time_bd_counter_reg_n_0_[1] ),
        .O(\time_bd_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \time_bd_counter[2]_i_1 
       (.I0(sw_result_seen),
        .I1(\time_bd_counter_reg_n_0_[1] ),
        .I2(\time_bd_counter_reg_n_0_[0] ),
        .I3(\time_bd_counter_reg_n_0_[2] ),
        .O(\time_bd_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00006CCC)) 
    \time_bd_counter[3]_i_1 
       (.I0(\time_bd_counter_reg_n_0_[1] ),
        .I1(\time_bd_counter_reg_n_0_[3] ),
        .I2(\time_bd_counter_reg_n_0_[0] ),
        .I3(\time_bd_counter_reg_n_0_[2] ),
        .I4(sw_result_seen),
        .O(\time_bd_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \time_bd_counter[4]_i_1 
       (.I0(\time_bd_counter_reg_n_0_[2] ),
        .I1(\time_bd_counter_reg_n_0_[0] ),
        .I2(\time_bd_counter_reg_n_0_[3] ),
        .I3(\time_bd_counter_reg_n_0_[1] ),
        .I4(\time_bd_counter_reg_n_0_[4] ),
        .I5(sw_result_seen),
        .O(\time_bd_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \time_bd_counter[5]_i_1 
       (.I0(\time_bd_counter[5]_i_2_n_0 ),
        .I1(\time_bd_counter_reg_n_0_[5] ),
        .I2(sw_result_seen),
        .O(\time_bd_counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \time_bd_counter[5]_i_2 
       (.I0(\time_bd_counter_reg_n_0_[2] ),
        .I1(\time_bd_counter_reg_n_0_[0] ),
        .I2(\time_bd_counter_reg_n_0_[3] ),
        .I3(\time_bd_counter_reg_n_0_[1] ),
        .I4(\time_bd_counter_reg_n_0_[4] ),
        .O(\time_bd_counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \time_bd_counter[6]_i_1 
       (.I0(\time_bd_counter[9]_i_2_n_0 ),
        .I1(\time_bd_counter_reg_n_0_[6] ),
        .I2(sw_result_seen),
        .O(\time_bd_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00D2)) 
    \time_bd_counter[7]_i_1 
       (.I0(\time_bd_counter_reg_n_0_[6] ),
        .I1(\time_bd_counter[9]_i_2_n_0 ),
        .I2(\time_bd_counter_reg_n_0_[7] ),
        .I3(sw_result_seen),
        .O(\time_bd_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0000DF20)) 
    \time_bd_counter[8]_i_1 
       (.I0(\time_bd_counter_reg_n_0_[7] ),
        .I1(\time_bd_counter[9]_i_2_n_0 ),
        .I2(\time_bd_counter_reg_n_0_[6] ),
        .I3(\time_bd_counter_reg_n_0_[8] ),
        .I4(sw_result_seen),
        .O(\time_bd_counter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7FF0800)) 
    \time_bd_counter[9]_i_1 
       (.I0(\time_bd_counter_reg_n_0_[8] ),
        .I1(\time_bd_counter_reg_n_0_[6] ),
        .I2(\time_bd_counter[9]_i_2_n_0 ),
        .I3(\time_bd_counter_reg_n_0_[7] ),
        .I4(\time_bd_counter_reg_n_0_[9] ),
        .I5(sw_result_seen),
        .O(\time_bd_counter[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \time_bd_counter[9]_i_2 
       (.I0(\time_bd_counter_reg_n_0_[4] ),
        .I1(\time_bd_counter_reg_n_0_[1] ),
        .I2(\time_bd_counter_reg_n_0_[3] ),
        .I3(\time_bd_counter_reg_n_0_[0] ),
        .I4(\time_bd_counter_reg_n_0_[2] ),
        .I5(\time_bd_counter_reg_n_0_[5] ),
        .O(\time_bd_counter[9]_i_2_n_0 ));
  FDCE time_bd_counter_en_reg
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(p_0_in4_in),
        .Q(time_bd_counter_en_reg_n_0));
  FDCE \time_bd_counter_reg[0] 
       (.C(main_clk_250m),
        .CE(time_bd_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter[0]_i_1_n_0 ),
        .Q(\time_bd_counter_reg_n_0_[0] ));
  FDCE \time_bd_counter_reg[10] 
       (.C(main_clk_250m),
        .CE(time_bd_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter[10]_i_1_n_0 ),
        .Q(\time_bd_counter_reg_n_0_[10] ));
  FDCE \time_bd_counter_reg[11] 
       (.C(main_clk_250m),
        .CE(time_bd_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter[11]_i_1_n_0 ),
        .Q(\time_bd_counter_reg_n_0_[11] ));
  FDCE \time_bd_counter_reg[12] 
       (.C(main_clk_250m),
        .CE(time_bd_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter[12]_i_1_n_0 ),
        .Q(\time_bd_counter_reg_n_0_[12] ));
  FDCE \time_bd_counter_reg[13] 
       (.C(main_clk_250m),
        .CE(time_bd_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter[13]_i_1_n_0 ),
        .Q(\time_bd_counter_reg_n_0_[13] ));
  FDCE \time_bd_counter_reg[14] 
       (.C(main_clk_250m),
        .CE(time_bd_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter[14]_i_1_n_0 ),
        .Q(\time_bd_counter_reg_n_0_[14] ));
  FDCE \time_bd_counter_reg[15] 
       (.C(main_clk_250m),
        .CE(time_bd_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter[15]_i_2_n_0 ),
        .Q(\time_bd_counter_reg_n_0_[15] ));
  FDCE \time_bd_counter_reg[1] 
       (.C(main_clk_250m),
        .CE(time_bd_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter[1]_i_1_n_0 ),
        .Q(\time_bd_counter_reg_n_0_[1] ));
  FDCE \time_bd_counter_reg[2] 
       (.C(main_clk_250m),
        .CE(time_bd_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter[2]_i_1_n_0 ),
        .Q(\time_bd_counter_reg_n_0_[2] ));
  FDCE \time_bd_counter_reg[3] 
       (.C(main_clk_250m),
        .CE(time_bd_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter[3]_i_1_n_0 ),
        .Q(\time_bd_counter_reg_n_0_[3] ));
  FDCE \time_bd_counter_reg[4] 
       (.C(main_clk_250m),
        .CE(time_bd_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter[4]_i_1_n_0 ),
        .Q(\time_bd_counter_reg_n_0_[4] ));
  FDCE \time_bd_counter_reg[5] 
       (.C(main_clk_250m),
        .CE(time_bd_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter[5]_i_1_n_0 ),
        .Q(\time_bd_counter_reg_n_0_[5] ));
  FDCE \time_bd_counter_reg[6] 
       (.C(main_clk_250m),
        .CE(time_bd_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter[6]_i_1_n_0 ),
        .Q(\time_bd_counter_reg_n_0_[6] ));
  FDCE \time_bd_counter_reg[7] 
       (.C(main_clk_250m),
        .CE(time_bd_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter[7]_i_1_n_0 ),
        .Q(\time_bd_counter_reg_n_0_[7] ));
  FDCE \time_bd_counter_reg[8] 
       (.C(main_clk_250m),
        .CE(time_bd_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter[8]_i_1_n_0 ),
        .Q(\time_bd_counter_reg_n_0_[8] ));
  FDCE \time_bd_counter_reg[9] 
       (.C(main_clk_250m),
        .CE(time_bd_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_bd_counter[9]_i_1_n_0 ),
        .Q(\time_bd_counter_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \time_delay_counter[0]_i_1 
       (.I0(sw_result_seen),
        .I1(\time_delay_counter_reg_n_0_[0] ),
        .O(\time_delay_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \time_delay_counter[10]_i_1 
       (.I0(sw_result_seen),
        .I1(\time_delay_counter[10]_i_2_n_0 ),
        .I2(\time_delay_counter_reg_n_0_[10] ),
        .O(\time_delay_counter[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \time_delay_counter[10]_i_2 
       (.I0(\time_delay_counter_reg_n_0_[8] ),
        .I1(\time_delay_counter_reg_n_0_[6] ),
        .I2(\time_delay_counter[9]_i_2_n_0 ),
        .I3(\time_delay_counter_reg_n_0_[7] ),
        .I4(\time_delay_counter_reg_n_0_[9] ),
        .O(\time_delay_counter[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \time_delay_counter[11]_i_1 
       (.I0(sw_result_seen),
        .I1(\time_delay_counter[14]_i_2_n_0 ),
        .I2(\time_delay_counter_reg_n_0_[11] ),
        .O(\time_delay_counter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \time_delay_counter[12]_i_1 
       (.I0(sw_result_seen),
        .I1(\time_delay_counter_reg_n_0_[11] ),
        .I2(\time_delay_counter[14]_i_2_n_0 ),
        .I3(\time_delay_counter_reg_n_0_[12] ),
        .O(\time_delay_counter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \time_delay_counter[13]_i_1 
       (.I0(sw_result_seen),
        .I1(\time_delay_counter_reg_n_0_[12] ),
        .I2(\time_delay_counter[14]_i_2_n_0 ),
        .I3(\time_delay_counter_reg_n_0_[11] ),
        .I4(\time_delay_counter_reg_n_0_[13] ),
        .O(\time_delay_counter[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \time_delay_counter[14]_i_1 
       (.I0(\time_delay_counter_reg_n_0_[13] ),
        .I1(\time_delay_counter_reg_n_0_[11] ),
        .I2(\time_delay_counter[14]_i_2_n_0 ),
        .I3(\time_delay_counter_reg_n_0_[12] ),
        .I4(\time_delay_counter_reg_n_0_[14] ),
        .I5(sw_result_seen),
        .O(\time_delay_counter[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \time_delay_counter[14]_i_2 
       (.I0(\time_delay_counter_reg_n_0_[10] ),
        .I1(\time_delay_counter_reg_n_0_[9] ),
        .I2(\time_delay_counter_reg_n_0_[7] ),
        .I3(\time_delay_counter[9]_i_2_n_0 ),
        .I4(\time_delay_counter_reg_n_0_[6] ),
        .I5(\time_delay_counter_reg_n_0_[8] ),
        .O(\time_delay_counter[14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \time_delay_counter[15]_i_1 
       (.I0(sw_result_seen),
        .I1(time_delay_counter_en_reg_n_0),
        .O(time_delay_counter));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \time_delay_counter[15]_i_2 
       (.I0(\time_delay_counter_reg_n_0_[14] ),
        .I1(\time_delay_counter[15]_i_3_n_0 ),
        .I2(\time_delay_counter_reg_n_0_[15] ),
        .I3(sw_result_seen),
        .O(\time_delay_counter[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \time_delay_counter[15]_i_3 
       (.I0(\time_delay_counter_reg_n_0_[13] ),
        .I1(\time_delay_counter_reg_n_0_[11] ),
        .I2(\time_delay_counter[14]_i_2_n_0 ),
        .I3(\time_delay_counter_reg_n_0_[12] ),
        .O(\time_delay_counter[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \time_delay_counter[1]_i_1 
       (.I0(\time_delay_counter_reg_n_0_[1] ),
        .I1(\time_delay_counter_reg_n_0_[0] ),
        .I2(sw_result_seen),
        .O(\time_delay_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \time_delay_counter[2]_i_1 
       (.I0(\time_delay_counter_reg_n_0_[0] ),
        .I1(\time_delay_counter_reg_n_0_[1] ),
        .I2(\time_delay_counter_reg_n_0_[2] ),
        .I3(sw_result_seen),
        .O(\time_delay_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \time_delay_counter[3]_i_1 
       (.I0(\time_delay_counter_reg_n_0_[2] ),
        .I1(\time_delay_counter_reg_n_0_[1] ),
        .I2(\time_delay_counter_reg_n_0_[0] ),
        .I3(\time_delay_counter_reg_n_0_[3] ),
        .I4(sw_result_seen),
        .O(\time_delay_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \time_delay_counter[4]_i_1 
       (.I0(\time_delay_counter_reg_n_0_[3] ),
        .I1(\time_delay_counter_reg_n_0_[0] ),
        .I2(\time_delay_counter_reg_n_0_[1] ),
        .I3(\time_delay_counter_reg_n_0_[2] ),
        .I4(\time_delay_counter_reg_n_0_[4] ),
        .I5(sw_result_seen),
        .O(\time_delay_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \time_delay_counter[5]_i_1 
       (.I0(sw_result_seen),
        .I1(\time_delay_counter_reg_n_0_[5] ),
        .I2(\time_delay_counter[5]_i_2_n_0 ),
        .O(\time_delay_counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \time_delay_counter[5]_i_2 
       (.I0(\time_delay_counter_reg_n_0_[3] ),
        .I1(\time_delay_counter_reg_n_0_[0] ),
        .I2(\time_delay_counter_reg_n_0_[1] ),
        .I3(\time_delay_counter_reg_n_0_[2] ),
        .I4(\time_delay_counter_reg_n_0_[4] ),
        .O(\time_delay_counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \time_delay_counter[6]_i_1 
       (.I0(\time_delay_counter[9]_i_2_n_0 ),
        .I1(\time_delay_counter_reg_n_0_[6] ),
        .I2(sw_result_seen),
        .O(\time_delay_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00D2)) 
    \time_delay_counter[7]_i_1 
       (.I0(\time_delay_counter_reg_n_0_[6] ),
        .I1(\time_delay_counter[9]_i_2_n_0 ),
        .I2(\time_delay_counter_reg_n_0_[7] ),
        .I3(sw_result_seen),
        .O(\time_delay_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0000DF20)) 
    \time_delay_counter[8]_i_1 
       (.I0(\time_delay_counter_reg_n_0_[7] ),
        .I1(\time_delay_counter[9]_i_2_n_0 ),
        .I2(\time_delay_counter_reg_n_0_[6] ),
        .I3(\time_delay_counter_reg_n_0_[8] ),
        .I4(sw_result_seen),
        .O(\time_delay_counter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7FF0800)) 
    \time_delay_counter[9]_i_1 
       (.I0(\time_delay_counter_reg_n_0_[8] ),
        .I1(\time_delay_counter_reg_n_0_[6] ),
        .I2(\time_delay_counter[9]_i_2_n_0 ),
        .I3(\time_delay_counter_reg_n_0_[7] ),
        .I4(\time_delay_counter_reg_n_0_[9] ),
        .I5(sw_result_seen),
        .O(\time_delay_counter[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \time_delay_counter[9]_i_2 
       (.I0(\time_delay_counter_reg_n_0_[4] ),
        .I1(\time_delay_counter_reg_n_0_[2] ),
        .I2(\time_delay_counter_reg_n_0_[1] ),
        .I3(\time_delay_counter_reg_n_0_[0] ),
        .I4(\time_delay_counter_reg_n_0_[3] ),
        .I5(\time_delay_counter_reg_n_0_[5] ),
        .O(\time_delay_counter[9]_i_2_n_0 ));
  FDCE time_delay_counter_en_reg
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(time_delay_counter_en),
        .Q(time_delay_counter_en_reg_n_0));
  FDCE \time_delay_counter_reg[0] 
       (.C(main_clk_250m),
        .CE(time_delay_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_delay_counter[0]_i_1_n_0 ),
        .Q(\time_delay_counter_reg_n_0_[0] ));
  FDCE \time_delay_counter_reg[10] 
       (.C(main_clk_250m),
        .CE(time_delay_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_delay_counter[10]_i_1_n_0 ),
        .Q(\time_delay_counter_reg_n_0_[10] ));
  FDCE \time_delay_counter_reg[11] 
       (.C(main_clk_250m),
        .CE(time_delay_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_delay_counter[11]_i_1_n_0 ),
        .Q(\time_delay_counter_reg_n_0_[11] ));
  FDCE \time_delay_counter_reg[12] 
       (.C(main_clk_250m),
        .CE(time_delay_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_delay_counter[12]_i_1_n_0 ),
        .Q(\time_delay_counter_reg_n_0_[12] ));
  FDCE \time_delay_counter_reg[13] 
       (.C(main_clk_250m),
        .CE(time_delay_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_delay_counter[13]_i_1_n_0 ),
        .Q(\time_delay_counter_reg_n_0_[13] ));
  FDCE \time_delay_counter_reg[14] 
       (.C(main_clk_250m),
        .CE(time_delay_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_delay_counter[14]_i_1_n_0 ),
        .Q(\time_delay_counter_reg_n_0_[14] ));
  FDCE \time_delay_counter_reg[15] 
       (.C(main_clk_250m),
        .CE(time_delay_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_delay_counter[15]_i_2_n_0 ),
        .Q(\time_delay_counter_reg_n_0_[15] ));
  FDCE \time_delay_counter_reg[1] 
       (.C(main_clk_250m),
        .CE(time_delay_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_delay_counter[1]_i_1_n_0 ),
        .Q(\time_delay_counter_reg_n_0_[1] ));
  FDCE \time_delay_counter_reg[2] 
       (.C(main_clk_250m),
        .CE(time_delay_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_delay_counter[2]_i_1_n_0 ),
        .Q(\time_delay_counter_reg_n_0_[2] ));
  FDCE \time_delay_counter_reg[3] 
       (.C(main_clk_250m),
        .CE(time_delay_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_delay_counter[3]_i_1_n_0 ),
        .Q(\time_delay_counter_reg_n_0_[3] ));
  FDCE \time_delay_counter_reg[4] 
       (.C(main_clk_250m),
        .CE(time_delay_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_delay_counter[4]_i_1_n_0 ),
        .Q(\time_delay_counter_reg_n_0_[4] ));
  FDCE \time_delay_counter_reg[5] 
       (.C(main_clk_250m),
        .CE(time_delay_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_delay_counter[5]_i_1_n_0 ),
        .Q(\time_delay_counter_reg_n_0_[5] ));
  FDCE \time_delay_counter_reg[6] 
       (.C(main_clk_250m),
        .CE(time_delay_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_delay_counter[6]_i_1_n_0 ),
        .Q(\time_delay_counter_reg_n_0_[6] ));
  FDCE \time_delay_counter_reg[7] 
       (.C(main_clk_250m),
        .CE(time_delay_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_delay_counter[7]_i_1_n_0 ),
        .Q(\time_delay_counter_reg_n_0_[7] ));
  FDCE \time_delay_counter_reg[8] 
       (.C(main_clk_250m),
        .CE(time_delay_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_delay_counter[8]_i_1_n_0 ),
        .Q(\time_delay_counter_reg_n_0_[8] ));
  FDCE \time_delay_counter_reg[9] 
       (.C(main_clk_250m),
        .CE(time_delay_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_delay_counter[9]_i_1_n_0 ),
        .Q(\time_delay_counter_reg_n_0_[9] ));
  FDCE \time_energy_buff_reg[0] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter_reg_n_0_[0] ),
        .Q(D[64]));
  FDCE \time_energy_buff_reg[10] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter_reg_n_0_[10] ),
        .Q(D[74]));
  FDCE \time_energy_buff_reg[11] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter_reg_n_0_[11] ),
        .Q(D[75]));
  FDCE \time_energy_buff_reg[12] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter_reg_n_0_[12] ),
        .Q(D[76]));
  FDCE \time_energy_buff_reg[13] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter_reg_n_0_[13] ),
        .Q(D[77]));
  FDCE \time_energy_buff_reg[14] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter_reg_n_0_[14] ),
        .Q(D[78]));
  FDCE \time_energy_buff_reg[15] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter_reg_n_0_[15] ),
        .Q(D[79]));
  FDCE \time_energy_buff_reg[1] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter_reg_n_0_[1] ),
        .Q(D[65]));
  FDCE \time_energy_buff_reg[2] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter_reg_n_0_[2] ),
        .Q(D[66]));
  FDCE \time_energy_buff_reg[3] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter_reg_n_0_[3] ),
        .Q(D[67]));
  FDCE \time_energy_buff_reg[4] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter_reg_n_0_[4] ),
        .Q(D[68]));
  FDCE \time_energy_buff_reg[5] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter_reg_n_0_[5] ),
        .Q(D[69]));
  FDCE \time_energy_buff_reg[6] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter_reg_n_0_[6] ),
        .Q(D[70]));
  FDCE \time_energy_buff_reg[7] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter_reg_n_0_[7] ),
        .Q(D[71]));
  FDCE \time_energy_buff_reg[8] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter_reg_n_0_[8] ),
        .Q(D[72]));
  FDCE \time_energy_buff_reg[9] 
       (.C(main_clk_250m),
        .CE(time_bd_buff0),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter_reg_n_0_[9] ),
        .Q(D[73]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \time_energy_counter[0]_i_1 
       (.I0(sw_result_seen),
        .I1(\time_energy_counter_reg_n_0_[0] ),
        .O(\time_energy_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \time_energy_counter[10]_i_1 
       (.I0(sw_result_seen),
        .I1(\time_energy_counter[10]_i_2_n_0 ),
        .I2(\time_energy_counter_reg_n_0_[10] ),
        .O(\time_energy_counter[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \time_energy_counter[10]_i_2 
       (.I0(\time_energy_counter_reg_n_0_[8] ),
        .I1(\time_energy_counter_reg_n_0_[6] ),
        .I2(\time_energy_counter[9]_i_2_n_0 ),
        .I3(\time_energy_counter_reg_n_0_[7] ),
        .I4(\time_energy_counter_reg_n_0_[9] ),
        .O(\time_energy_counter[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \time_energy_counter[11]_i_1 
       (.I0(sw_result_seen),
        .I1(\time_energy_counter[14]_i_2_n_0 ),
        .I2(\time_energy_counter_reg_n_0_[11] ),
        .O(\time_energy_counter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \time_energy_counter[12]_i_1 
       (.I0(sw_result_seen),
        .I1(\time_energy_counter_reg_n_0_[11] ),
        .I2(\time_energy_counter[14]_i_2_n_0 ),
        .I3(\time_energy_counter_reg_n_0_[12] ),
        .O(\time_energy_counter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \time_energy_counter[13]_i_1 
       (.I0(sw_result_seen),
        .I1(\time_energy_counter_reg_n_0_[12] ),
        .I2(\time_energy_counter[14]_i_2_n_0 ),
        .I3(\time_energy_counter_reg_n_0_[11] ),
        .I4(\time_energy_counter_reg_n_0_[13] ),
        .O(\time_energy_counter[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \time_energy_counter[14]_i_1 
       (.I0(\time_energy_counter_reg_n_0_[13] ),
        .I1(\time_energy_counter_reg_n_0_[11] ),
        .I2(\time_energy_counter[14]_i_2_n_0 ),
        .I3(\time_energy_counter_reg_n_0_[12] ),
        .I4(\time_energy_counter_reg_n_0_[14] ),
        .I5(sw_result_seen),
        .O(\time_energy_counter[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \time_energy_counter[14]_i_2 
       (.I0(\time_energy_counter_reg_n_0_[10] ),
        .I1(\time_energy_counter_reg_n_0_[9] ),
        .I2(\time_energy_counter_reg_n_0_[7] ),
        .I3(\time_energy_counter[9]_i_2_n_0 ),
        .I4(\time_energy_counter_reg_n_0_[6] ),
        .I5(\time_energy_counter_reg_n_0_[8] ),
        .O(\time_energy_counter[14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \time_energy_counter[15]_i_1 
       (.I0(sw_result_seen),
        .I1(time_energy_counter_en_reg_n_0),
        .O(time_energy_counter));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \time_energy_counter[15]_i_2 
       (.I0(\time_energy_counter_reg_n_0_[14] ),
        .I1(\time_energy_counter[15]_i_3_n_0 ),
        .I2(\time_energy_counter_reg_n_0_[15] ),
        .I3(sw_result_seen),
        .O(\time_energy_counter[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \time_energy_counter[15]_i_3 
       (.I0(\time_energy_counter_reg_n_0_[13] ),
        .I1(\time_energy_counter_reg_n_0_[11] ),
        .I2(\time_energy_counter[14]_i_2_n_0 ),
        .I3(\time_energy_counter_reg_n_0_[12] ),
        .O(\time_energy_counter[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \time_energy_counter[1]_i_1 
       (.I0(\time_energy_counter_reg_n_0_[1] ),
        .I1(\time_energy_counter_reg_n_0_[0] ),
        .I2(sw_result_seen),
        .O(\time_energy_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \time_energy_counter[2]_i_1 
       (.I0(\time_energy_counter_reg_n_0_[0] ),
        .I1(\time_energy_counter_reg_n_0_[1] ),
        .I2(\time_energy_counter_reg_n_0_[2] ),
        .I3(sw_result_seen),
        .O(\time_energy_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \time_energy_counter[3]_i_1 
       (.I0(\time_energy_counter_reg_n_0_[2] ),
        .I1(\time_energy_counter_reg_n_0_[1] ),
        .I2(\time_energy_counter_reg_n_0_[0] ),
        .I3(\time_energy_counter_reg_n_0_[3] ),
        .I4(sw_result_seen),
        .O(\time_energy_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \time_energy_counter[4]_i_1 
       (.I0(\time_energy_counter_reg_n_0_[3] ),
        .I1(\time_energy_counter_reg_n_0_[0] ),
        .I2(\time_energy_counter_reg_n_0_[1] ),
        .I3(\time_energy_counter_reg_n_0_[2] ),
        .I4(\time_energy_counter_reg_n_0_[4] ),
        .I5(sw_result_seen),
        .O(\time_energy_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \time_energy_counter[5]_i_1 
       (.I0(\time_energy_counter[5]_i_2_n_0 ),
        .I1(\time_energy_counter_reg_n_0_[5] ),
        .I2(sw_result_seen),
        .O(\time_energy_counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \time_energy_counter[5]_i_2 
       (.I0(\time_energy_counter_reg_n_0_[3] ),
        .I1(\time_energy_counter_reg_n_0_[0] ),
        .I2(\time_energy_counter_reg_n_0_[1] ),
        .I3(\time_energy_counter_reg_n_0_[2] ),
        .I4(\time_energy_counter_reg_n_0_[4] ),
        .O(\time_energy_counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \time_energy_counter[6]_i_1 
       (.I0(\time_energy_counter[9]_i_2_n_0 ),
        .I1(\time_energy_counter_reg_n_0_[6] ),
        .I2(sw_result_seen),
        .O(\time_energy_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00D2)) 
    \time_energy_counter[7]_i_1 
       (.I0(\time_energy_counter_reg_n_0_[6] ),
        .I1(\time_energy_counter[9]_i_2_n_0 ),
        .I2(\time_energy_counter_reg_n_0_[7] ),
        .I3(sw_result_seen),
        .O(\time_energy_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0000DF20)) 
    \time_energy_counter[8]_i_1 
       (.I0(\time_energy_counter_reg_n_0_[7] ),
        .I1(\time_energy_counter[9]_i_2_n_0 ),
        .I2(\time_energy_counter_reg_n_0_[6] ),
        .I3(\time_energy_counter_reg_n_0_[8] ),
        .I4(sw_result_seen),
        .O(\time_energy_counter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7FF0800)) 
    \time_energy_counter[9]_i_1 
       (.I0(\time_energy_counter_reg_n_0_[8] ),
        .I1(\time_energy_counter_reg_n_0_[6] ),
        .I2(\time_energy_counter[9]_i_2_n_0 ),
        .I3(\time_energy_counter_reg_n_0_[7] ),
        .I4(\time_energy_counter_reg_n_0_[9] ),
        .I5(sw_result_seen),
        .O(\time_energy_counter[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \time_energy_counter[9]_i_2 
       (.I0(\time_energy_counter_reg_n_0_[4] ),
        .I1(\time_energy_counter_reg_n_0_[2] ),
        .I2(\time_energy_counter_reg_n_0_[1] ),
        .I3(\time_energy_counter_reg_n_0_[0] ),
        .I4(\time_energy_counter_reg_n_0_[3] ),
        .I5(\time_energy_counter_reg_n_0_[5] ),
        .O(\time_energy_counter[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    time_energy_counter_en_i_1
       (.I0(time_delay_counter_en),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(time_energy_counter_en));
  FDCE time_energy_counter_en_reg
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(time_energy_counter_en),
        .Q(time_energy_counter_en_reg_n_0));
  FDCE \time_energy_counter_reg[0] 
       (.C(main_clk_250m),
        .CE(time_energy_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter[0]_i_1_n_0 ),
        .Q(\time_energy_counter_reg_n_0_[0] ));
  FDCE \time_energy_counter_reg[10] 
       (.C(main_clk_250m),
        .CE(time_energy_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter[10]_i_1_n_0 ),
        .Q(\time_energy_counter_reg_n_0_[10] ));
  FDCE \time_energy_counter_reg[11] 
       (.C(main_clk_250m),
        .CE(time_energy_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter[11]_i_1_n_0 ),
        .Q(\time_energy_counter_reg_n_0_[11] ));
  FDCE \time_energy_counter_reg[12] 
       (.C(main_clk_250m),
        .CE(time_energy_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter[12]_i_1_n_0 ),
        .Q(\time_energy_counter_reg_n_0_[12] ));
  FDCE \time_energy_counter_reg[13] 
       (.C(main_clk_250m),
        .CE(time_energy_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter[13]_i_1_n_0 ),
        .Q(\time_energy_counter_reg_n_0_[13] ));
  FDCE \time_energy_counter_reg[14] 
       (.C(main_clk_250m),
        .CE(time_energy_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter[14]_i_1_n_0 ),
        .Q(\time_energy_counter_reg_n_0_[14] ));
  FDCE \time_energy_counter_reg[15] 
       (.C(main_clk_250m),
        .CE(time_energy_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter[15]_i_2_n_0 ),
        .Q(\time_energy_counter_reg_n_0_[15] ));
  FDCE \time_energy_counter_reg[1] 
       (.C(main_clk_250m),
        .CE(time_energy_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter[1]_i_1_n_0 ),
        .Q(\time_energy_counter_reg_n_0_[1] ));
  FDCE \time_energy_counter_reg[2] 
       (.C(main_clk_250m),
        .CE(time_energy_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter[2]_i_1_n_0 ),
        .Q(\time_energy_counter_reg_n_0_[2] ));
  FDCE \time_energy_counter_reg[3] 
       (.C(main_clk_250m),
        .CE(time_energy_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter[3]_i_1_n_0 ),
        .Q(\time_energy_counter_reg_n_0_[3] ));
  FDCE \time_energy_counter_reg[4] 
       (.C(main_clk_250m),
        .CE(time_energy_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter[4]_i_1_n_0 ),
        .Q(\time_energy_counter_reg_n_0_[4] ));
  FDCE \time_energy_counter_reg[5] 
       (.C(main_clk_250m),
        .CE(time_energy_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter[5]_i_1_n_0 ),
        .Q(\time_energy_counter_reg_n_0_[5] ));
  FDCE \time_energy_counter_reg[6] 
       (.C(main_clk_250m),
        .CE(time_energy_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter[6]_i_1_n_0 ),
        .Q(\time_energy_counter_reg_n_0_[6] ));
  FDCE \time_energy_counter_reg[7] 
       (.C(main_clk_250m),
        .CE(time_energy_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter[7]_i_1_n_0 ),
        .Q(\time_energy_counter_reg_n_0_[7] ));
  FDCE \time_energy_counter_reg[8] 
       (.C(main_clk_250m),
        .CE(time_energy_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter[8]_i_1_n_0 ),
        .Q(\time_energy_counter_reg_n_0_[8] ));
  FDCE \time_energy_counter_reg[9] 
       (.C(main_clk_250m),
        .CE(time_energy_counter),
        .CLR(\FSM_onehot_current_state_reg[4]_1 ),
        .D(\time_energy_counter[9]_i_1_n_0 ),
        .Q(\time_energy_counter_reg_n_0_[9] ));
endmodule

(* AXIS_FRAME_DATA_COUNT = "128" *) (* ORIG_REF_NAME = "EDM_Monitor" *) 
module ZYNQ_BlockDesign_EDM_Monitor_0_0_EDM_Monitor
   (clk_p,
    clk_n,
    rst_n_async,
    adc_data_p,
    adc_data_n,
    adc_dco_p,
    adc_dco_n,
    div_param_od0,
    power_trig_async,
    cfg_breakdown,
    cfg_energy_threshold,
    cfg_update_toggle,
    ps_clk,
    power_stop_signal,
    axi_fifo_m_axis_tvalid,
    axi_fifo_m_axis_tready,
    axi_fifo_m_axis_tdata,
    axi_fifo_m_axis_tlast);
  input clk_p;
  input clk_n;
  input rst_n_async;
  input [11:0]adc_data_p;
  input [11:0]adc_data_n;
  input adc_dco_p;
  input adc_dco_n;
  output div_param_od0;
  input power_trig_async;
  input [15:0]cfg_breakdown;
  input [63:0]cfg_energy_threshold;
  input cfg_update_toggle;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ps_clk CLK" *) (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF axi_fifo_m_axis" *) input ps_clk;
  output power_stop_signal;
  output axi_fifo_m_axis_tvalid;
  input axi_fifo_m_axis_tready;
  output [127:0]axi_fifo_m_axis_tdata;
  output axi_fifo_m_axis_tlast;

  wire [15:0]adc_data;
  wire [11:0]adc_data_n;
  wire [11:0]adc_data_p;
  wire [15:0]adc_data_sync;
  wire adc_dco;
  wire adc_dco_n;
  wire adc_dco_p;
  wire [127:0]axi_fifo_m_axis_tdata;
  wire axi_fifo_m_axis_tlast;
  wire axi_fifo_m_axis_tready;
  wire axi_fifo_m_axis_tvalid;
  wire [15:0]cfg_breakdown;
  wire [63:0]cfg_energy_threshold;
  wire cfg_update_sync;
  wire cfg_update_sync_d;
  wire cfg_update_toggle;
  wire clk_n;
  wire clk_p;
  wire dco_rst_n_sync;
  wire [4:0]discharge_stat;
  wire div_param_od0;
  wire empty;
  wire enable_d;
  wire [0:0]energy_accumulator;
  wire energy_accumulator0__0_carry_i_17_n_0;
  wire energy_accumulator0__0_carry_i_18_n_0;
  wire [63:0]energy_init;
  wire fifo_full;
  wire fifo_s_axis_data_tready;
  wire fifo_s_axis_data_tvalid;
  wire fifo_wr_en;
  wire [15:0]fir_data;
  wire fir_m_axis_data_tvalid;
  wire idelay_refclk;
  wire main_clk_250m;
  wire mmcm_locked;
  wire [116:0]package_m_axis_tdata;
  wire package_m_axis_tlast;
  wire package_m_axis_tready;
  wire package_m_axis_tvalid;
  wire package_send_ack;
  wire package_send_req;
  wire [31:0]pow_data;
  wire pow_m_axis_tvalid;
  wire power_stop_signal;
  wire power_trig_async;
  wire ps_clk;
  wire reset_sync_n_mainclk_n_1;
  wire reset_sync_n_mainclk_n_2;
  wire rst_n_async;
  wire sample_fire;
  wire [6:0]shift_count;
  wire sw_en;
  wire [63:0]sw_result_energy;
  wire [3:0]sw_result_status;
  wire sw_result_valid;
  wire sys_rst_n_sync;
  wire [15:0]time_breakdown;
  wire [15:0]time_energy;
  wire u_Control_FSM_n_104;
  wire u_Control_FSM_n_105;
  wire u_Control_FSM_n_106;
  wire u_Control_FSM_n_107;
  wire u_Control_FSM_n_108;
  wire u_Control_FSM_n_109;
  wire u_Control_FSM_n_110;
  wire u_Control_FSM_n_111;
  wire u_Control_FSM_n_112;
  wire u_Control_FSM_n_113;
  wire u_Control_FSM_n_114;
  wire u_Control_FSM_n_115;
  wire u_Control_FSM_n_116;
  wire u_Control_FSM_n_117;
  wire u_Control_FSM_n_118;
  wire u_Control_FSM_n_119;
  wire u_Control_FSM_n_120;
  wire u_Control_FSM_n_121;
  wire u_Control_FSM_n_122;
  wire u_Control_FSM_n_123;
  wire u_Control_FSM_n_124;
  wire u_Control_FSM_n_125;
  wire u_Control_FSM_n_126;
  wire u_Control_FSM_n_127;
  wire u_Control_FSM_n_128;
  wire u_Control_FSM_n_129;
  wire u_Control_FSM_n_130;
  wire u_Control_FSM_n_131;
  wire u_Control_FSM_n_132;
  wire u_Control_FSM_n_133;
  wire u_Control_FSM_n_134;
  wire u_Control_FSM_n_135;
  wire u_Control_FSM_n_136;
  wire u_Control_FSM_n_137;
  wire u_Control_FSM_n_138;
  wire u_Control_FSM_n_139;
  wire u_Control_FSM_n_140;
  wire u_Control_FSM_n_141;
  wire u_Control_FSM_n_142;
  wire u_Control_FSM_n_143;
  wire u_Control_FSM_n_144;
  wire u_Control_FSM_n_145;
  wire u_Control_FSM_n_146;
  wire u_Control_FSM_n_147;
  wire u_Control_FSM_n_148;
  wire u_Control_FSM_n_149;
  wire u_Control_FSM_n_150;
  wire u_Control_FSM_n_151;
  wire u_Control_FSM_n_152;
  wire u_Control_FSM_n_153;
  wire u_Control_FSM_n_154;
  wire u_Control_FSM_n_155;
  wire u_Control_FSM_n_156;
  wire u_Control_FSM_n_157;
  wire u_Control_FSM_n_158;
  wire u_Control_FSM_n_159;
  wire u_Control_FSM_n_160;
  wire u_Control_FSM_n_161;
  wire u_Control_FSM_n_162;
  wire u_Control_FSM_n_163;
  wire u_Control_FSM_n_164;
  wire u_Control_FSM_n_165;
  wire u_Control_FSM_n_166;
  wire u_Control_FSM_n_167;
  wire u_Control_FSM_n_168;
  wire u_Control_FSM_n_169;
  wire u_Control_FSM_n_170;
  wire u_Control_FSM_n_2;
  wire u_ad_sync_fifo_i_1_n_0;
  wire u_global_clk_wiz_i_1_n_0;
  wire u_pow_calc_n_0;
  wire u_pow_calc_n_1;
  wire u_pow_calc_n_10;
  wire u_pow_calc_n_11;
  wire u_pow_calc_n_12;
  wire u_pow_calc_n_13;
  wire u_pow_calc_n_14;
  wire u_pow_calc_n_15;
  wire u_pow_calc_n_16;
  wire u_pow_calc_n_17;
  wire u_pow_calc_n_18;
  wire u_pow_calc_n_19;
  wire u_pow_calc_n_2;
  wire u_pow_calc_n_20;
  wire u_pow_calc_n_21;
  wire u_pow_calc_n_22;
  wire u_pow_calc_n_23;
  wire u_pow_calc_n_24;
  wire u_pow_calc_n_25;
  wire u_pow_calc_n_26;
  wire u_pow_calc_n_27;
  wire u_pow_calc_n_28;
  wire u_pow_calc_n_29;
  wire u_pow_calc_n_3;
  wire u_pow_calc_n_30;
  wire u_pow_calc_n_31;
  wire u_pow_calc_n_34;
  wire u_pow_calc_n_35;
  wire u_pow_calc_n_36;
  wire u_pow_calc_n_37;
  wire u_pow_calc_n_4;
  wire u_pow_calc_n_5;
  wire u_pow_calc_n_6;
  wire u_pow_calc_n_7;
  wire u_pow_calc_n_8;
  wire u_pow_calc_n_9;
  wire u_reset_sync_n_dcoclk_n_1;
  wire u_slide_window_n_10;
  wire u_slide_window_n_11;
  wire u_slide_window_n_12;
  wire u_slide_window_n_13;
  wire u_slide_window_n_14;
  wire u_slide_window_n_15;
  wire u_slide_window_n_16;
  wire u_slide_window_n_17;
  wire u_slide_window_n_18;
  wire u_slide_window_n_19;
  wire u_slide_window_n_20;
  wire u_slide_window_n_21;
  wire u_slide_window_n_22;
  wire u_slide_window_n_23;
  wire u_slide_window_n_24;
  wire u_slide_window_n_25;
  wire u_slide_window_n_26;
  wire u_slide_window_n_27;
  wire u_slide_window_n_28;
  wire u_slide_window_n_29;
  wire u_slide_window_n_30;
  wire u_slide_window_n_31;
  wire u_slide_window_n_32;
  wire u_slide_window_n_33;
  wire u_slide_window_n_34;
  wire u_slide_window_n_35;
  wire u_slide_window_n_36;
  wire u_slide_window_n_37;
  wire u_slide_window_n_38;
  wire u_slide_window_n_39;
  wire u_slide_window_n_4;
  wire u_slide_window_n_40;
  wire u_slide_window_n_41;
  wire u_slide_window_n_42;
  wire u_slide_window_n_43;
  wire u_slide_window_n_44;
  wire u_slide_window_n_45;
  wire u_slide_window_n_46;
  wire u_slide_window_n_47;
  wire u_slide_window_n_48;
  wire u_slide_window_n_49;
  wire u_slide_window_n_5;
  wire u_slide_window_n_50;
  wire u_slide_window_n_51;
  wire u_slide_window_n_52;
  wire u_slide_window_n_53;
  wire u_slide_window_n_54;
  wire u_slide_window_n_55;
  wire u_slide_window_n_56;
  wire u_slide_window_n_57;
  wire u_slide_window_n_58;
  wire u_slide_window_n_59;
  wire u_slide_window_n_6;
  wire u_slide_window_n_60;
  wire u_slide_window_n_61;
  wire u_slide_window_n_62;
  wire u_slide_window_n_63;
  wire u_slide_window_n_64;
  wire u_slide_window_n_65;
  wire u_slide_window_n_66;
  wire u_slide_window_n_67;
  wire u_slide_window_n_7;
  wire u_slide_window_n_8;
  wire u_slide_window_n_9;

  FDCE energy_accumulator0__0_carry_i_17
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(reset_sync_n_mainclk_n_1),
        .D(energy_accumulator0__0_carry_i_18_n_0),
        .Q(energy_accumulator0__0_carry_i_17_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    energy_accumulator0__0_carry_i_18
       (.I0(fir_m_axis_data_tvalid),
        .I1(energy_accumulator0__0_carry_i_17_n_0),
        .O(energy_accumulator0__0_carry_i_18_n_0));
  ZYNQ_BlockDesign_EDM_Monitor_0_0_reset_sync_n reset_sync_n_mainclk
       (.locked(mmcm_locked),
        .main_clk_250m(main_clk_250m),
        .out(sys_rst_n_sync),
        .rst_n_async(rst_n_async),
        .rst_n_async_0(reset_sync_n_mainclk_n_2),
        .\sync_ff_reg[2]_0 (reset_sync_n_mainclk_n_1));
  ZYNQ_BlockDesign_EDM_Monitor_0_0_Control_FSM u_Control_FSM
       (.D({discharge_stat,time_breakdown,time_energy,energy_init}),
        .\FSM_onehot_current_state_reg[4]_0 (u_Control_FSM_n_2),
        .\FSM_onehot_current_state_reg[4]_1 (reset_sync_n_mainclk_n_1),
        .O({u_slide_window_n_60,u_slide_window_n_61,u_slide_window_n_62,u_slide_window_n_63,u_slide_window_n_64,u_slide_window_n_65,u_slide_window_n_66,u_slide_window_n_67}),
        .Q({shift_count[6],shift_count[3:2]}),
        .cfg_breakdown(cfg_breakdown),
        .cfg_update_sync(cfg_update_sync),
        .cfg_update_sync_d(cfg_update_sync_d),
        .dout(adc_data_sync),
        .enable_d(enable_d),
        .\energy_accumulator_reg[15] ({u_slide_window_n_12,u_slide_window_n_13,u_slide_window_n_14,u_slide_window_n_15,u_slide_window_n_16,u_slide_window_n_17,u_slide_window_n_18,u_slide_window_n_19}),
        .\energy_accumulator_reg[23] ({u_slide_window_n_20,u_slide_window_n_21,u_slide_window_n_22,u_slide_window_n_23,u_slide_window_n_24,u_slide_window_n_25,u_slide_window_n_26,u_slide_window_n_27}),
        .\energy_accumulator_reg[31] ({u_slide_window_n_28,u_slide_window_n_29,u_slide_window_n_30,u_slide_window_n_31,u_slide_window_n_32,u_slide_window_n_33,u_slide_window_n_34,u_slide_window_n_35}),
        .\energy_accumulator_reg[39] ({u_slide_window_n_36,u_slide_window_n_37,u_slide_window_n_38,u_slide_window_n_39,u_slide_window_n_40,u_slide_window_n_41,u_slide_window_n_42,u_slide_window_n_43}),
        .\energy_accumulator_reg[47] ({u_slide_window_n_44,u_slide_window_n_45,u_slide_window_n_46,u_slide_window_n_47,u_slide_window_n_48,u_slide_window_n_49,u_slide_window_n_50,u_slide_window_n_51}),
        .\energy_accumulator_reg[55] ({u_slide_window_n_52,u_slide_window_n_53,u_slide_window_n_54,u_slide_window_n_55,u_slide_window_n_56,u_slide_window_n_57,u_slide_window_n_58,u_slide_window_n_59}),
        .\energy_accumulator_reg[7] ({u_slide_window_n_4,u_slide_window_n_5,u_slide_window_n_6,u_slide_window_n_7,u_slide_window_n_8,u_slide_window_n_9,u_slide_window_n_10,u_slide_window_n_11}),
        .\energy_init_latched_reg[63]_0 (sw_result_energy),
        .main_clk_250m(main_clk_250m),
        .package_send_ack(package_send_ack),
        .package_send_req(package_send_req),
        .pow_m_axis_tvalid(pow_m_axis_tvalid),
        .power_trig_async(power_trig_async),
        .slide_window_en_reg_0({u_Control_FSM_n_104,u_Control_FSM_n_105,u_Control_FSM_n_106}),
        .slide_window_en_reg_1({u_Control_FSM_n_107,u_Control_FSM_n_108,u_Control_FSM_n_109,u_Control_FSM_n_110,u_Control_FSM_n_111,u_Control_FSM_n_112,u_Control_FSM_n_113,u_Control_FSM_n_114,u_Control_FSM_n_115,u_Control_FSM_n_116,u_Control_FSM_n_117,u_Control_FSM_n_118,u_Control_FSM_n_119,u_Control_FSM_n_120,u_Control_FSM_n_121,u_Control_FSM_n_122,u_Control_FSM_n_123,u_Control_FSM_n_124,u_Control_FSM_n_125,u_Control_FSM_n_126,u_Control_FSM_n_127,u_Control_FSM_n_128,u_Control_FSM_n_129,u_Control_FSM_n_130,u_Control_FSM_n_131,u_Control_FSM_n_132,u_Control_FSM_n_133,u_Control_FSM_n_134,u_Control_FSM_n_135,u_Control_FSM_n_136,u_Control_FSM_n_137,u_Control_FSM_n_138,u_Control_FSM_n_139,u_Control_FSM_n_140,u_Control_FSM_n_141,u_Control_FSM_n_142,u_Control_FSM_n_143,u_Control_FSM_n_144,u_Control_FSM_n_145,u_Control_FSM_n_146,u_Control_FSM_n_147,u_Control_FSM_n_148,u_Control_FSM_n_149,u_Control_FSM_n_150,u_Control_FSM_n_151,u_Control_FSM_n_152,u_Control_FSM_n_153,u_Control_FSM_n_154,u_Control_FSM_n_155,u_Control_FSM_n_156,u_Control_FSM_n_157,u_Control_FSM_n_158,u_Control_FSM_n_159,u_Control_FSM_n_160,u_Control_FSM_n_161,u_Control_FSM_n_162,u_Control_FSM_n_163,u_Control_FSM_n_164,u_Control_FSM_n_165,u_Control_FSM_n_166,u_Control_FSM_n_167,u_Control_FSM_n_168,u_Control_FSM_n_169,u_Control_FSM_n_170}),
        .sw_en(sw_en),
        .sw_result_valid(sw_result_valid),
        .\sw_status_latched_reg[3]_0 ({sw_result_status[3:2],sw_result_status[0]}));
  (* CHECK_LICENSE_TYPE = "FIR_Filter,fir_compiler_v7_2_26,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_26,Vivado 2025.2" *) 
  ZYNQ_BlockDesign_EDM_Monitor_0_0_FIR_Filter u_FIR_Filter
       (.aclk(main_clk_250m),
        .aresetn(sys_rst_n_sync),
        .m_axis_data_tdata(fir_data),
        .m_axis_data_tready(1'b1),
        .m_axis_data_tvalid(fir_m_axis_data_tvalid),
        .s_axis_data_tdata(adc_data_sync),
        .s_axis_data_tready(fifo_s_axis_data_tready),
        .s_axis_data_tvalid(fifo_s_axis_data_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT1 #(
    .INIT(2'h1)) 
    u_FIR_Filter_i_1
       (.I0(empty),
        .O(fifo_s_axis_data_tvalid));
  ZYNQ_BlockDesign_EDM_Monitor_0_0_ad9434 u_ad9434
       (.CLK(adc_dco),
        .Q({adc_data[15],adc_data[11:0]}),
        .adc_data_n(adc_data_n),
        .adc_data_p(adc_data_p),
        .adc_dco_n(adc_dco_n),
        .adc_dco_p(adc_dco_p),
        .div_param_od0(div_param_od0),
        .full(fifo_full),
        .idelay_refclk(idelay_refclk),
        .out(dco_rst_n_sync),
        .wr_en(fifo_wr_en),
        .wr_rst(u_reset_sync_n_dcoclk_n_1));
  (* CHECK_LICENSE_TYPE = "ad_sync_fifo,fifo_generator_v13_2_14,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
  ZYNQ_BlockDesign_EDM_Monitor_0_0_ad_sync_fifo u_ad_sync_fifo
       (.din({adc_data[15],adc_data[15],adc_data[15],adc_data[15],adc_data[11:0]}),
        .dout(adc_data_sync),
        .empty(empty),
        .full(fifo_full),
        .rd_clk(main_clk_250m),
        .rd_en(u_ad_sync_fifo_i_1_n_0),
        .rd_rst(reset_sync_n_mainclk_n_1),
        .wr_clk(adc_dco),
        .wr_en(fifo_wr_en),
        .wr_rst(u_reset_sync_n_dcoclk_n_1));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    u_ad_sync_fifo_i_1
       (.I0(fifo_s_axis_data_tready),
        .I1(empty),
        .O(u_ad_sync_fifo_i_1_n_0));
  (* CHECK_LICENSE_TYPE = "axis_data_fifo,axis_data_fifo_v2_0_17_top,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "axis_data_fifo_v2_0_17_top,Vivado 2025.2" *) 
  ZYNQ_BlockDesign_EDM_Monitor_0_0_axis_data_fifo u_axis_data_fifo
       (.m_axis_aclk(ps_clk),
        .m_axis_tdata(axi_fifo_m_axis_tdata),
        .m_axis_tlast(axi_fifo_m_axis_tlast),
        .m_axis_tready(axi_fifo_m_axis_tready),
        .m_axis_tvalid(axi_fifo_m_axis_tvalid),
        .s_axis_aclk(main_clk_250m),
        .s_axis_aresetn(sys_rst_n_sync),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,package_m_axis_tdata}),
        .s_axis_tlast(package_m_axis_tlast),
        .s_axis_tready(package_m_axis_tready),
        .s_axis_tvalid(package_m_axis_tvalid));
  ZYNQ_BlockDesign_EDM_Monitor_0_0_axis_package u_axis_package
       (.D({discharge_stat,time_breakdown,time_energy,energy_init}),
        .Q(package_m_axis_tdata),
        .\frame_seq_id_reg[0]_0 (reset_sync_n_mainclk_n_1),
        .main_clk_250m(main_clk_250m),
        .package_m_axis_tvalid(package_m_axis_tvalid),
        .package_send_ack(package_send_ack),
        .package_send_req(package_send_req),
        .s_axis_tlast(package_m_axis_tlast),
        .s_axis_tready(package_m_axis_tready));
  ZYNQ_BlockDesign_EDM_Monitor_0_0_global_clk_wiz u_global_clk_wiz
       (.clk_in1_n(clk_n),
        .clk_in1_p(clk_p),
        .idelay_refclk(idelay_refclk),
        .locked(mmcm_locked),
        .main_clk_250m(main_clk_250m),
        .reset(u_global_clk_wiz_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    u_global_clk_wiz_i_1
       (.I0(rst_n_async),
        .O(u_global_clk_wiz_i_1_n_0));
  ZYNQ_BlockDesign_EDM_Monitor_0_0_pow_calc u_pow_calc
       (.D({u_pow_calc_n_34,u_pow_calc_n_35,u_pow_calc_n_36,u_pow_calc_n_37}),
        .E(energy_accumulator),
        .P({u_pow_calc_n_0,u_pow_calc_n_1,u_pow_calc_n_2,u_pow_calc_n_3,u_pow_calc_n_4,u_pow_calc_n_5,u_pow_calc_n_6,u_pow_calc_n_7,u_pow_calc_n_8,u_pow_calc_n_9,u_pow_calc_n_10,u_pow_calc_n_11,u_pow_calc_n_12,u_pow_calc_n_13,u_pow_calc_n_14,u_pow_calc_n_15,u_pow_calc_n_16,u_pow_calc_n_17,u_pow_calc_n_18,u_pow_calc_n_19,u_pow_calc_n_20,u_pow_calc_n_21,u_pow_calc_n_22,u_pow_calc_n_23,u_pow_calc_n_24,u_pow_calc_n_25,u_pow_calc_n_26,u_pow_calc_n_27,u_pow_calc_n_28,u_pow_calc_n_29,u_pow_calc_n_30,u_pow_calc_n_31}),
        .Q({shift_count[5:4],shift_count[1:0]}),
        .m_axis_data_tdata(fir_data),
        .m_axis_data_tvalid(fir_m_axis_data_tvalid),
        .m_axis_tvalid_reg_0(reset_sync_n_mainclk_n_1),
        .main_clk_250m(main_clk_250m),
        .pow_data(pow_data),
        .pow_m_axis_tvalid(pow_m_axis_tvalid),
        .sample_fire(sample_fire),
        .sw_en(sw_en),
        .\window_pipe_reg[31][31]_srl32 (energy_accumulator0__0_carry_i_17_n_0));
  ZYNQ_BlockDesign_EDM_Monitor_0_0_reset_sync_n_0 u_reset_sync_n_dcoclk
       (.CLK(adc_dco),
        .out(dco_rst_n_sync),
        .\sync_ff_reg[2]_0 (reset_sync_n_mainclk_n_2),
        .wr_rst(u_reset_sync_n_dcoclk_n_1));
  ZYNQ_BlockDesign_EDM_Monitor_0_0_slide_window u_slide_window
       (.D({u_Control_FSM_n_107,u_Control_FSM_n_108,u_Control_FSM_n_109,u_Control_FSM_n_110,u_Control_FSM_n_111,u_Control_FSM_n_112,u_Control_FSM_n_113,u_Control_FSM_n_114,u_Control_FSM_n_115,u_Control_FSM_n_116,u_Control_FSM_n_117,u_Control_FSM_n_118,u_Control_FSM_n_119,u_Control_FSM_n_120,u_Control_FSM_n_121,u_Control_FSM_n_122,u_Control_FSM_n_123,u_Control_FSM_n_124,u_Control_FSM_n_125,u_Control_FSM_n_126,u_Control_FSM_n_127,u_Control_FSM_n_128,u_Control_FSM_n_129,u_Control_FSM_n_130,u_Control_FSM_n_131,u_Control_FSM_n_132,u_Control_FSM_n_133,u_Control_FSM_n_134,u_Control_FSM_n_135,u_Control_FSM_n_136,u_Control_FSM_n_137,u_Control_FSM_n_138,u_Control_FSM_n_139,u_Control_FSM_n_140,u_Control_FSM_n_141,u_Control_FSM_n_142,u_Control_FSM_n_143,u_Control_FSM_n_144,u_Control_FSM_n_145,u_Control_FSM_n_146,u_Control_FSM_n_147,u_Control_FSM_n_148,u_Control_FSM_n_149,u_Control_FSM_n_150,u_Control_FSM_n_151,u_Control_FSM_n_152,u_Control_FSM_n_153,u_Control_FSM_n_154,u_Control_FSM_n_155,u_Control_FSM_n_156,u_Control_FSM_n_157,u_Control_FSM_n_158,u_Control_FSM_n_159,u_Control_FSM_n_160,u_Control_FSM_n_161,u_Control_FSM_n_162,u_Control_FSM_n_163,u_Control_FSM_n_164,u_Control_FSM_n_165,u_Control_FSM_n_166,u_Control_FSM_n_167,u_Control_FSM_n_168,u_Control_FSM_n_169,u_Control_FSM_n_170}),
        .E(energy_accumulator),
        .O({u_slide_window_n_60,u_slide_window_n_61,u_slide_window_n_62,u_slide_window_n_63,u_slide_window_n_64,u_slide_window_n_65,u_slide_window_n_66,u_slide_window_n_67}),
        .P({u_pow_calc_n_0,u_pow_calc_n_1,u_pow_calc_n_2,u_pow_calc_n_3,u_pow_calc_n_4,u_pow_calc_n_5,u_pow_calc_n_6,u_pow_calc_n_7,u_pow_calc_n_8,u_pow_calc_n_9,u_pow_calc_n_10,u_pow_calc_n_11,u_pow_calc_n_12,u_pow_calc_n_13,u_pow_calc_n_14,u_pow_calc_n_15,u_pow_calc_n_16,u_pow_calc_n_17,u_pow_calc_n_18,u_pow_calc_n_19,u_pow_calc_n_20,u_pow_calc_n_21,u_pow_calc_n_22,u_pow_calc_n_23,u_pow_calc_n_24,u_pow_calc_n_25,u_pow_calc_n_26,u_pow_calc_n_27,u_pow_calc_n_28,u_pow_calc_n_29,u_pow_calc_n_30,u_pow_calc_n_31}),
        .Q(shift_count),
        .cfg_energy_threshold(cfg_energy_threshold),
        .cfg_update_sync(cfg_update_sync),
        .cfg_update_sync_d(cfg_update_sync_d),
        .cfg_update_toggle(cfg_update_toggle),
        .enable_d(enable_d),
        .energy_accumulator0__0_carry__3_0(energy_accumulator0__0_carry_i_17_n_0),
        .\energy_accumulator_reg[14]_0 ({u_slide_window_n_12,u_slide_window_n_13,u_slide_window_n_14,u_slide_window_n_15,u_slide_window_n_16,u_slide_window_n_17,u_slide_window_n_18,u_slide_window_n_19}),
        .\energy_accumulator_reg[22]_0 ({u_slide_window_n_20,u_slide_window_n_21,u_slide_window_n_22,u_slide_window_n_23,u_slide_window_n_24,u_slide_window_n_25,u_slide_window_n_26,u_slide_window_n_27}),
        .\energy_accumulator_reg[30]_0 ({u_slide_window_n_28,u_slide_window_n_29,u_slide_window_n_30,u_slide_window_n_31,u_slide_window_n_32,u_slide_window_n_33,u_slide_window_n_34,u_slide_window_n_35}),
        .\energy_accumulator_reg[38]_0 ({u_slide_window_n_36,u_slide_window_n_37,u_slide_window_n_38,u_slide_window_n_39,u_slide_window_n_40,u_slide_window_n_41,u_slide_window_n_42,u_slide_window_n_43}),
        .\energy_accumulator_reg[46]_0 ({u_slide_window_n_44,u_slide_window_n_45,u_slide_window_n_46,u_slide_window_n_47,u_slide_window_n_48,u_slide_window_n_49,u_slide_window_n_50,u_slide_window_n_51}),
        .\energy_accumulator_reg[54]_0 ({u_slide_window_n_52,u_slide_window_n_53,u_slide_window_n_54,u_slide_window_n_55,u_slide_window_n_56,u_slide_window_n_57,u_slide_window_n_58,u_slide_window_n_59}),
        .\energy_accumulator_reg[6]_0 ({u_slide_window_n_4,u_slide_window_n_5,u_slide_window_n_6,u_slide_window_n_7,u_slide_window_n_8,u_slide_window_n_9,u_slide_window_n_10,u_slide_window_n_11}),
        .\energy_init_reg[63]_0 (sw_result_energy),
        .\energy_threshold_active_reg[63]_0 (reset_sync_n_mainclk_n_1),
        .main_clk_250m(main_clk_250m),
        .pow_data(pow_data),
        .pow_m_axis_tvalid(pow_m_axis_tvalid),
        .power_stop_signal(power_stop_signal),
        .result_valid_reg_0(u_Control_FSM_n_2),
        .sample_fire(sample_fire),
        .\shift_count_d_reg[6]_0 ({u_Control_FSM_n_104,u_pow_calc_n_34,u_pow_calc_n_35,u_Control_FSM_n_105,u_Control_FSM_n_106,u_pow_calc_n_36,u_pow_calc_n_37}),
        .\status_reg[3]_0 ({sw_result_status[3:2],sw_result_status[0]}),
        .sw_en(sw_en),
        .sw_result_valid(sw_result_valid));
endmodule

(* CHECK_LICENSE_TYPE = "FIR_Filter,fir_compiler_v7_2_26,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "FIR_Filter" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_26,Vivado 2025.2" *) 
module ZYNQ_BlockDesign_EDM_Monitor_0_0_FIR_Filter
   (aresetn,
    aclk,
    s_axis_data_tvalid,
    s_axis_data_tready,
    s_axis_data_tdata,
    m_axis_data_tvalid,
    m_axis_data_tready,
    m_axis_data_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave aresetn_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_DATA:S_AXIS_RELOAD, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [15:0]s_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TREADY" *) input m_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [15:0]m_axis_data_tdata;


endmodule

(* ORIG_REF_NAME = "ad9434" *) 
module ZYNQ_BlockDesign_EDM_Monitor_0_0_ad9434
   (CLK,
    div_param_od0,
    wr_en,
    Q,
    adc_data_p,
    adc_data_n,
    wr_rst,
    idelay_refclk,
    adc_dco_p,
    adc_dco_n,
    out,
    full);
  output CLK;
  output div_param_od0;
  output wr_en;
  output [12:0]Q;
  input [11:0]adc_data_p;
  input [11:0]adc_data_n;
  input wr_rst;
  input idelay_refclk;
  input adc_dco_p;
  input adc_dco_n;
  input [0:0]out;
  input full;

  wire CLK;
  wire [12:0]Q;
  wire adc_data_ibuf_0;
  wire adc_data_ibuf_1;
  wire adc_data_ibuf_10;
  wire adc_data_ibuf_11;
  wire adc_data_ibuf_2;
  wire adc_data_ibuf_3;
  wire adc_data_ibuf_4;
  wire adc_data_ibuf_5;
  wire adc_data_ibuf_6;
  wire adc_data_ibuf_7;
  wire adc_data_ibuf_8;
  wire adc_data_ibuf_9;
  wire adc_data_iddre1_11;
  wire adc_data_idelaye3_0;
  wire adc_data_idelaye3_1;
  wire adc_data_idelaye3_10;
  wire adc_data_idelaye3_11;
  wire adc_data_idelaye3_2;
  wire adc_data_idelaye3_3;
  wire adc_data_idelaye3_4;
  wire adc_data_idelaye3_5;
  wire adc_data_idelaye3_6;
  wire adc_data_idelaye3_7;
  wire adc_data_idelaye3_8;
  wire adc_data_idelaye3_9;
  wire [11:0]adc_data_n;
  wire \adc_data_out[10]_i_1_n_0 ;
  wire \adc_data_out[10]_i_2_n_0 ;
  wire \adc_data_out[11]_i_1_n_0 ;
  wire \adc_data_out[15]_i_1_n_0 ;
  wire \adc_data_out[15]_i_2_n_0 ;
  wire \adc_data_out[1]_i_1_n_0 ;
  wire \adc_data_out[2]_i_1_n_0 ;
  wire \adc_data_out[3]_i_1_n_0 ;
  wire \adc_data_out[4]_i_1_n_0 ;
  wire \adc_data_out[5]_i_1_n_0 ;
  wire \adc_data_out[6]_i_1_n_0 ;
  wire \adc_data_out[7]_i_1_n_0 ;
  wire \adc_data_out[8]_i_1_n_0 ;
  wire \adc_data_out[9]_i_1_n_0 ;
  wire [11:0]adc_data_p;
  wire adc_dco_ibuf;
  wire adc_dco_n;
  wire adc_dco_p;
  wire data_casc_out_0;
  wire data_casc_out_1;
  wire data_casc_out_10;
  wire data_casc_out_11;
  wire data_casc_out_2;
  wire data_casc_out_3;
  wire data_casc_out_4;
  wire data_casc_out_5;
  wire data_casc_out_6;
  wire data_casc_out_7;
  wire data_casc_out_8;
  wire data_casc_out_9;
  wire data_casc_ret_0;
  wire data_casc_ret_1;
  wire data_casc_ret_10;
  wire data_casc_ret_11;
  wire data_casc_ret_2;
  wire data_casc_ret_3;
  wire data_casc_ret_4;
  wire data_casc_ret_5;
  wire data_casc_ret_6;
  wire data_casc_ret_7;
  wire data_casc_ret_8;
  wire data_casc_ret_9;
  wire div_param_od0;
  wire full;
  wire \gen_adc1_path[0].iddre1_inst1_n_0 ;
  wire \gen_adc1_path[10].iddre1_inst1_n_0 ;
  wire \gen_adc1_path[1].iddre1_inst1_n_0 ;
  wire \gen_adc1_path[2].iddre1_inst1_n_0 ;
  wire \gen_adc1_path[3].iddre1_inst1_n_0 ;
  wire \gen_adc1_path[4].iddre1_inst1_n_0 ;
  wire \gen_adc1_path[5].iddre1_inst1_n_0 ;
  wire \gen_adc1_path[6].iddre1_inst1_n_0 ;
  wire \gen_adc1_path[7].iddre1_inst1_n_0 ;
  wire \gen_adc1_path[8].iddre1_inst1_n_0 ;
  wire \gen_adc1_path[9].iddre1_inst1_n_0 ;
  wire idelay_refclk;
  wire idelayctrl_rdy;
  wire [0:0]out;
  wire wr_en;
  wire wr_rst;
  wire \NLW_gen_adc1_path[0].iddre1_inst1_Q2_UNCONNECTED ;
  wire \NLW_gen_adc1_path[0].idelay_inst_adc1_CASC_IN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[0].idelay_inst_adc1_DATAIN_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[0].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[0].odelay_inst_adc1_CASC_OUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[0].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[0].odelay_inst_adc1_CE_UNCONNECTED ;
  wire \NLW_gen_adc1_path[0].odelay_inst_adc1_INC_UNCONNECTED ;
  wire \NLW_gen_adc1_path[0].odelay_inst_adc1_LOAD_UNCONNECTED ;
  wire \NLW_gen_adc1_path[0].odelay_inst_adc1_ODATAIN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[0].odelay_inst_adc1_RST_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[0].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[10].iddre1_inst1_Q2_UNCONNECTED ;
  wire \NLW_gen_adc1_path[10].idelay_inst_adc1_CASC_IN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[10].idelay_inst_adc1_DATAIN_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[10].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[10].odelay_inst_adc1_CASC_OUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[10].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[10].odelay_inst_adc1_CE_UNCONNECTED ;
  wire \NLW_gen_adc1_path[10].odelay_inst_adc1_INC_UNCONNECTED ;
  wire \NLW_gen_adc1_path[10].odelay_inst_adc1_LOAD_UNCONNECTED ;
  wire \NLW_gen_adc1_path[10].odelay_inst_adc1_ODATAIN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[10].odelay_inst_adc1_RST_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[10].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[11].iddre1_inst1_Q2_UNCONNECTED ;
  wire \NLW_gen_adc1_path[11].idelay_inst_adc1_CASC_IN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[11].idelay_inst_adc1_DATAIN_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[11].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[11].odelay_inst_adc1_CASC_OUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[11].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[11].odelay_inst_adc1_CE_UNCONNECTED ;
  wire \NLW_gen_adc1_path[11].odelay_inst_adc1_INC_UNCONNECTED ;
  wire \NLW_gen_adc1_path[11].odelay_inst_adc1_LOAD_UNCONNECTED ;
  wire \NLW_gen_adc1_path[11].odelay_inst_adc1_ODATAIN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[11].odelay_inst_adc1_RST_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[11].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[1].iddre1_inst1_Q2_UNCONNECTED ;
  wire \NLW_gen_adc1_path[1].idelay_inst_adc1_CASC_IN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[1].idelay_inst_adc1_DATAIN_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[1].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[1].odelay_inst_adc1_CASC_OUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[1].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[1].odelay_inst_adc1_CE_UNCONNECTED ;
  wire \NLW_gen_adc1_path[1].odelay_inst_adc1_INC_UNCONNECTED ;
  wire \NLW_gen_adc1_path[1].odelay_inst_adc1_LOAD_UNCONNECTED ;
  wire \NLW_gen_adc1_path[1].odelay_inst_adc1_ODATAIN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[1].odelay_inst_adc1_RST_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[1].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[2].iddre1_inst1_Q2_UNCONNECTED ;
  wire \NLW_gen_adc1_path[2].idelay_inst_adc1_CASC_IN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[2].idelay_inst_adc1_DATAIN_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[2].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[2].odelay_inst_adc1_CASC_OUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[2].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[2].odelay_inst_adc1_CE_UNCONNECTED ;
  wire \NLW_gen_adc1_path[2].odelay_inst_adc1_INC_UNCONNECTED ;
  wire \NLW_gen_adc1_path[2].odelay_inst_adc1_LOAD_UNCONNECTED ;
  wire \NLW_gen_adc1_path[2].odelay_inst_adc1_ODATAIN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[2].odelay_inst_adc1_RST_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[2].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[3].iddre1_inst1_Q2_UNCONNECTED ;
  wire \NLW_gen_adc1_path[3].idelay_inst_adc1_CASC_IN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[3].idelay_inst_adc1_DATAIN_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[3].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[3].odelay_inst_adc1_CASC_OUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[3].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[3].odelay_inst_adc1_CE_UNCONNECTED ;
  wire \NLW_gen_adc1_path[3].odelay_inst_adc1_INC_UNCONNECTED ;
  wire \NLW_gen_adc1_path[3].odelay_inst_adc1_LOAD_UNCONNECTED ;
  wire \NLW_gen_adc1_path[3].odelay_inst_adc1_ODATAIN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[3].odelay_inst_adc1_RST_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[3].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[4].iddre1_inst1_Q2_UNCONNECTED ;
  wire \NLW_gen_adc1_path[4].idelay_inst_adc1_CASC_IN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[4].idelay_inst_adc1_DATAIN_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[4].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[4].odelay_inst_adc1_CASC_OUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[4].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[4].odelay_inst_adc1_CE_UNCONNECTED ;
  wire \NLW_gen_adc1_path[4].odelay_inst_adc1_INC_UNCONNECTED ;
  wire \NLW_gen_adc1_path[4].odelay_inst_adc1_LOAD_UNCONNECTED ;
  wire \NLW_gen_adc1_path[4].odelay_inst_adc1_ODATAIN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[4].odelay_inst_adc1_RST_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[4].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[5].iddre1_inst1_Q2_UNCONNECTED ;
  wire \NLW_gen_adc1_path[5].idelay_inst_adc1_CASC_IN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[5].idelay_inst_adc1_DATAIN_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[5].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[5].odelay_inst_adc1_CASC_OUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[5].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[5].odelay_inst_adc1_CE_UNCONNECTED ;
  wire \NLW_gen_adc1_path[5].odelay_inst_adc1_INC_UNCONNECTED ;
  wire \NLW_gen_adc1_path[5].odelay_inst_adc1_LOAD_UNCONNECTED ;
  wire \NLW_gen_adc1_path[5].odelay_inst_adc1_ODATAIN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[5].odelay_inst_adc1_RST_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[5].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[6].iddre1_inst1_Q2_UNCONNECTED ;
  wire \NLW_gen_adc1_path[6].idelay_inst_adc1_CASC_IN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[6].idelay_inst_adc1_DATAIN_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[6].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[6].odelay_inst_adc1_CASC_OUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[6].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[6].odelay_inst_adc1_CE_UNCONNECTED ;
  wire \NLW_gen_adc1_path[6].odelay_inst_adc1_INC_UNCONNECTED ;
  wire \NLW_gen_adc1_path[6].odelay_inst_adc1_LOAD_UNCONNECTED ;
  wire \NLW_gen_adc1_path[6].odelay_inst_adc1_ODATAIN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[6].odelay_inst_adc1_RST_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[6].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[7].iddre1_inst1_Q2_UNCONNECTED ;
  wire \NLW_gen_adc1_path[7].idelay_inst_adc1_CASC_IN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[7].idelay_inst_adc1_DATAIN_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[7].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[7].odelay_inst_adc1_CASC_OUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[7].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[7].odelay_inst_adc1_CE_UNCONNECTED ;
  wire \NLW_gen_adc1_path[7].odelay_inst_adc1_INC_UNCONNECTED ;
  wire \NLW_gen_adc1_path[7].odelay_inst_adc1_LOAD_UNCONNECTED ;
  wire \NLW_gen_adc1_path[7].odelay_inst_adc1_ODATAIN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[7].odelay_inst_adc1_RST_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[7].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[8].iddre1_inst1_Q2_UNCONNECTED ;
  wire \NLW_gen_adc1_path[8].idelay_inst_adc1_CASC_IN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[8].idelay_inst_adc1_DATAIN_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[8].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[8].odelay_inst_adc1_CASC_OUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[8].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[8].odelay_inst_adc1_CE_UNCONNECTED ;
  wire \NLW_gen_adc1_path[8].odelay_inst_adc1_INC_UNCONNECTED ;
  wire \NLW_gen_adc1_path[8].odelay_inst_adc1_LOAD_UNCONNECTED ;
  wire \NLW_gen_adc1_path[8].odelay_inst_adc1_ODATAIN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[8].odelay_inst_adc1_RST_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[8].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[9].iddre1_inst1_Q2_UNCONNECTED ;
  wire \NLW_gen_adc1_path[9].idelay_inst_adc1_CASC_IN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[9].idelay_inst_adc1_DATAIN_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[9].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[9].odelay_inst_adc1_CASC_OUT_UNCONNECTED ;
  wire \NLW_gen_adc1_path[9].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[9].odelay_inst_adc1_CE_UNCONNECTED ;
  wire \NLW_gen_adc1_path[9].odelay_inst_adc1_INC_UNCONNECTED ;
  wire \NLW_gen_adc1_path[9].odelay_inst_adc1_LOAD_UNCONNECTED ;
  wire \NLW_gen_adc1_path[9].odelay_inst_adc1_ODATAIN_UNCONNECTED ;
  wire \NLW_gen_adc1_path[9].odelay_inst_adc1_RST_UNCONNECTED ;
  wire [8:0]\NLW_gen_adc1_path[9].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  IDELAYCTRL #(
    .SIM_DEVICE("ULTRASCALE")) 
    IDELAYCTRL_inst
       (.RDY(idelayctrl_rdy),
        .REFCLK(idelay_refclk),
        .RST(wr_rst));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    OBUFT_div_param_od0_inst
       (.I(1'b0),
        .O(div_param_od0),
        .T(1'b1));
  LUT6 #(
    .INIT(64'h00000010FFFFFFEF)) 
    \adc_data_out[10]_i_1 
       (.I0(\gen_adc1_path[9].iddre1_inst1_n_0 ),
        .I1(\gen_adc1_path[7].iddre1_inst1_n_0 ),
        .I2(\adc_data_out[10]_i_2_n_0 ),
        .I3(\gen_adc1_path[6].iddre1_inst1_n_0 ),
        .I4(\gen_adc1_path[8].iddre1_inst1_n_0 ),
        .I5(\gen_adc1_path[10].iddre1_inst1_n_0 ),
        .O(\adc_data_out[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \adc_data_out[10]_i_2 
       (.I0(\gen_adc1_path[4].iddre1_inst1_n_0 ),
        .I1(\gen_adc1_path[2].iddre1_inst1_n_0 ),
        .I2(\gen_adc1_path[0].iddre1_inst1_n_0 ),
        .I3(\gen_adc1_path[1].iddre1_inst1_n_0 ),
        .I4(\gen_adc1_path[3].iddre1_inst1_n_0 ),
        .I5(\gen_adc1_path[5].iddre1_inst1_n_0 ),
        .O(\adc_data_out[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \adc_data_out[11]_i_1 
       (.I0(\adc_data_out[15]_i_2_n_0 ),
        .I1(adc_data_iddre1_11),
        .O(\adc_data_out[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \adc_data_out[15]_i_1 
       (.I0(\adc_data_out[15]_i_2_n_0 ),
        .I1(adc_data_iddre1_11),
        .O(\adc_data_out[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \adc_data_out[15]_i_2 
       (.I0(\gen_adc1_path[9].iddre1_inst1_n_0 ),
        .I1(\gen_adc1_path[7].iddre1_inst1_n_0 ),
        .I2(\adc_data_out[10]_i_2_n_0 ),
        .I3(\gen_adc1_path[6].iddre1_inst1_n_0 ),
        .I4(\gen_adc1_path[8].iddre1_inst1_n_0 ),
        .I5(\gen_adc1_path[10].iddre1_inst1_n_0 ),
        .O(\adc_data_out[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \adc_data_out[1]_i_1 
       (.I0(\gen_adc1_path[0].iddre1_inst1_n_0 ),
        .I1(\gen_adc1_path[1].iddre1_inst1_n_0 ),
        .O(\adc_data_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \adc_data_out[2]_i_1 
       (.I0(\gen_adc1_path[1].iddre1_inst1_n_0 ),
        .I1(\gen_adc1_path[0].iddre1_inst1_n_0 ),
        .I2(\gen_adc1_path[2].iddre1_inst1_n_0 ),
        .O(\adc_data_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \adc_data_out[3]_i_1 
       (.I0(\gen_adc1_path[2].iddre1_inst1_n_0 ),
        .I1(\gen_adc1_path[0].iddre1_inst1_n_0 ),
        .I2(\gen_adc1_path[1].iddre1_inst1_n_0 ),
        .I3(\gen_adc1_path[3].iddre1_inst1_n_0 ),
        .O(\adc_data_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \adc_data_out[4]_i_1 
       (.I0(\gen_adc1_path[3].iddre1_inst1_n_0 ),
        .I1(\gen_adc1_path[1].iddre1_inst1_n_0 ),
        .I2(\gen_adc1_path[0].iddre1_inst1_n_0 ),
        .I3(\gen_adc1_path[2].iddre1_inst1_n_0 ),
        .I4(\gen_adc1_path[4].iddre1_inst1_n_0 ),
        .O(\adc_data_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \adc_data_out[5]_i_1 
       (.I0(\gen_adc1_path[4].iddre1_inst1_n_0 ),
        .I1(\gen_adc1_path[2].iddre1_inst1_n_0 ),
        .I2(\gen_adc1_path[0].iddre1_inst1_n_0 ),
        .I3(\gen_adc1_path[1].iddre1_inst1_n_0 ),
        .I4(\gen_adc1_path[3].iddre1_inst1_n_0 ),
        .I5(\gen_adc1_path[5].iddre1_inst1_n_0 ),
        .O(\adc_data_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \adc_data_out[6]_i_1 
       (.I0(\adc_data_out[10]_i_2_n_0 ),
        .I1(\gen_adc1_path[6].iddre1_inst1_n_0 ),
        .O(\adc_data_out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h4B)) 
    \adc_data_out[7]_i_1 
       (.I0(\gen_adc1_path[6].iddre1_inst1_n_0 ),
        .I1(\adc_data_out[10]_i_2_n_0 ),
        .I2(\gen_adc1_path[7].iddre1_inst1_n_0 ),
        .O(\adc_data_out[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h04FB)) 
    \adc_data_out[8]_i_1 
       (.I0(\gen_adc1_path[7].iddre1_inst1_n_0 ),
        .I1(\adc_data_out[10]_i_2_n_0 ),
        .I2(\gen_adc1_path[6].iddre1_inst1_n_0 ),
        .I3(\gen_adc1_path[8].iddre1_inst1_n_0 ),
        .O(\adc_data_out[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h0010FFEF)) 
    \adc_data_out[9]_i_1 
       (.I0(\gen_adc1_path[8].iddre1_inst1_n_0 ),
        .I1(\gen_adc1_path[6].iddre1_inst1_n_0 ),
        .I2(\adc_data_out[10]_i_2_n_0 ),
        .I3(\gen_adc1_path[7].iddre1_inst1_n_0 ),
        .I4(\gen_adc1_path[9].iddre1_inst1_n_0 ),
        .O(\adc_data_out[9]_i_1_n_0 ));
  FDCE \adc_data_out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(wr_rst),
        .D(\gen_adc1_path[0].iddre1_inst1_n_0 ),
        .Q(Q[0]));
  FDCE \adc_data_out_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(wr_rst),
        .D(\adc_data_out[10]_i_1_n_0 ),
        .Q(Q[10]));
  FDCE \adc_data_out_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(wr_rst),
        .D(\adc_data_out[11]_i_1_n_0 ),
        .Q(Q[11]));
  FDCE \adc_data_out_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(wr_rst),
        .D(\adc_data_out[15]_i_1_n_0 ),
        .Q(Q[12]));
  FDCE \adc_data_out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(wr_rst),
        .D(\adc_data_out[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE \adc_data_out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(wr_rst),
        .D(\adc_data_out[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE \adc_data_out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(wr_rst),
        .D(\adc_data_out[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE \adc_data_out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(wr_rst),
        .D(\adc_data_out[4]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE \adc_data_out_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(wr_rst),
        .D(\adc_data_out[5]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE \adc_data_out_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(wr_rst),
        .D(\adc_data_out[6]_i_1_n_0 ),
        .Q(Q[6]));
  FDCE \adc_data_out_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(wr_rst),
        .D(\adc_data_out[7]_i_1_n_0 ),
        .Q(Q[7]));
  FDCE \adc_data_out_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(wr_rst),
        .D(\adc_data_out[8]_i_1_n_0 ),
        .Q(Q[8]));
  FDCE \adc_data_out_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(wr_rst),
        .D(\adc_data_out[9]_i_1_n_0 ),
        .Q(Q[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    bufg_adc_dco
       (.CE(1'b1),
        .I(adc_dco_ibuf),
        .O(CLK));
  LUT3 #(
    .INIT(8'h20)) 
    fifo_wr_en
       (.I0(out),
        .I1(full),
        .I2(idelayctrl_rdy),
        .O(wr_en));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \gen_adc1_path[0].ibuf_data1 
       (.I(adc_data_p[0]),
        .IB(adc_data_n[0]),
        .O(adc_data_ibuf_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDDRE1 #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .IS_CB_INVERTED(1'b1),
    .IS_C_INVERTED(1'b0)) 
    \gen_adc1_path[0].iddre1_inst1 
       (.C(CLK),
        .CB(CLK),
        .D(adc_data_idelaye3_0),
        .Q1(\gen_adc1_path[0].iddre1_inst1_n_0 ),
        .Q2(\NLW_gen_adc1_path[0].iddre1_inst1_Q2_UNCONNECTED ),
        .R(wr_rst));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDELAYE3 #(
    .CASCADE("MASTER"),
    .DELAY_FORMAT("TIME"),
    .DELAY_SRC("IDATAIN"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .LOOPBACK("FALSE"),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[0].idelay_inst_adc1 
       (.CASC_IN(\NLW_gen_adc1_path[0].idelay_inst_adc1_CASC_IN_UNCONNECTED ),
        .CASC_OUT(data_casc_out_0),
        .CASC_RETURN(data_casc_ret_0),
        .CE(1'b0),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[0].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAIN(\NLW_gen_adc1_path[0].idelay_inst_adc1_DATAIN_UNCONNECTED ),
        .DATAOUT(adc_data_idelaye3_0),
        .EN_VTC(1'b1),
        .IDATAIN(adc_data_ibuf_0),
        .INC(1'b0),
        .LOAD(1'b0),
        .RST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ODELAYE3 #(
    .CASCADE("SLAVE_END"),
    .DELAY_FORMAT("TIME"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[0].odelay_inst_adc1 
       (.CASC_IN(data_casc_out_0),
        .CASC_OUT(\NLW_gen_adc1_path[0].odelay_inst_adc1_CASC_OUT_UNCONNECTED ),
        .CASC_RETURN(\NLW_gen_adc1_path[0].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ),
        .CE(\NLW_gen_adc1_path[0].odelay_inst_adc1_CE_UNCONNECTED ),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[0].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAOUT(data_casc_ret_0),
        .EN_VTC(1'b1),
        .INC(\NLW_gen_adc1_path[0].odelay_inst_adc1_INC_UNCONNECTED ),
        .LOAD(\NLW_gen_adc1_path[0].odelay_inst_adc1_LOAD_UNCONNECTED ),
        .ODATAIN(\NLW_gen_adc1_path[0].odelay_inst_adc1_ODATAIN_UNCONNECTED ),
        .RST(\NLW_gen_adc1_path[0].odelay_inst_adc1_RST_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \gen_adc1_path[10].ibuf_data1 
       (.I(adc_data_p[10]),
        .IB(adc_data_n[10]),
        .O(adc_data_ibuf_10));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDDRE1 #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .IS_CB_INVERTED(1'b1),
    .IS_C_INVERTED(1'b0)) 
    \gen_adc1_path[10].iddre1_inst1 
       (.C(CLK),
        .CB(CLK),
        .D(adc_data_idelaye3_10),
        .Q1(\gen_adc1_path[10].iddre1_inst1_n_0 ),
        .Q2(\NLW_gen_adc1_path[10].iddre1_inst1_Q2_UNCONNECTED ),
        .R(wr_rst));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDELAYE3 #(
    .CASCADE("MASTER"),
    .DELAY_FORMAT("TIME"),
    .DELAY_SRC("IDATAIN"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .LOOPBACK("FALSE"),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[10].idelay_inst_adc1 
       (.CASC_IN(\NLW_gen_adc1_path[10].idelay_inst_adc1_CASC_IN_UNCONNECTED ),
        .CASC_OUT(data_casc_out_10),
        .CASC_RETURN(data_casc_ret_10),
        .CE(1'b0),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[10].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAIN(\NLW_gen_adc1_path[10].idelay_inst_adc1_DATAIN_UNCONNECTED ),
        .DATAOUT(adc_data_idelaye3_10),
        .EN_VTC(1'b1),
        .IDATAIN(adc_data_ibuf_10),
        .INC(1'b0),
        .LOAD(1'b0),
        .RST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ODELAYE3 #(
    .CASCADE("SLAVE_END"),
    .DELAY_FORMAT("TIME"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[10].odelay_inst_adc1 
       (.CASC_IN(data_casc_out_10),
        .CASC_OUT(\NLW_gen_adc1_path[10].odelay_inst_adc1_CASC_OUT_UNCONNECTED ),
        .CASC_RETURN(\NLW_gen_adc1_path[10].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ),
        .CE(\NLW_gen_adc1_path[10].odelay_inst_adc1_CE_UNCONNECTED ),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[10].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAOUT(data_casc_ret_10),
        .EN_VTC(1'b1),
        .INC(\NLW_gen_adc1_path[10].odelay_inst_adc1_INC_UNCONNECTED ),
        .LOAD(\NLW_gen_adc1_path[10].odelay_inst_adc1_LOAD_UNCONNECTED ),
        .ODATAIN(\NLW_gen_adc1_path[10].odelay_inst_adc1_ODATAIN_UNCONNECTED ),
        .RST(\NLW_gen_adc1_path[10].odelay_inst_adc1_RST_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \gen_adc1_path[11].ibuf_data1 
       (.I(adc_data_p[11]),
        .IB(adc_data_n[11]),
        .O(adc_data_ibuf_11));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDDRE1 #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .IS_CB_INVERTED(1'b1),
    .IS_C_INVERTED(1'b0)) 
    \gen_adc1_path[11].iddre1_inst1 
       (.C(CLK),
        .CB(CLK),
        .D(adc_data_idelaye3_11),
        .Q1(adc_data_iddre1_11),
        .Q2(\NLW_gen_adc1_path[11].iddre1_inst1_Q2_UNCONNECTED ),
        .R(wr_rst));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDELAYE3 #(
    .CASCADE("MASTER"),
    .DELAY_FORMAT("TIME"),
    .DELAY_SRC("IDATAIN"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .LOOPBACK("FALSE"),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[11].idelay_inst_adc1 
       (.CASC_IN(\NLW_gen_adc1_path[11].idelay_inst_adc1_CASC_IN_UNCONNECTED ),
        .CASC_OUT(data_casc_out_11),
        .CASC_RETURN(data_casc_ret_11),
        .CE(1'b0),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[11].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAIN(\NLW_gen_adc1_path[11].idelay_inst_adc1_DATAIN_UNCONNECTED ),
        .DATAOUT(adc_data_idelaye3_11),
        .EN_VTC(1'b1),
        .IDATAIN(adc_data_ibuf_11),
        .INC(1'b0),
        .LOAD(1'b0),
        .RST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ODELAYE3 #(
    .CASCADE("SLAVE_END"),
    .DELAY_FORMAT("TIME"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[11].odelay_inst_adc1 
       (.CASC_IN(data_casc_out_11),
        .CASC_OUT(\NLW_gen_adc1_path[11].odelay_inst_adc1_CASC_OUT_UNCONNECTED ),
        .CASC_RETURN(\NLW_gen_adc1_path[11].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ),
        .CE(\NLW_gen_adc1_path[11].odelay_inst_adc1_CE_UNCONNECTED ),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[11].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAOUT(data_casc_ret_11),
        .EN_VTC(1'b1),
        .INC(\NLW_gen_adc1_path[11].odelay_inst_adc1_INC_UNCONNECTED ),
        .LOAD(\NLW_gen_adc1_path[11].odelay_inst_adc1_LOAD_UNCONNECTED ),
        .ODATAIN(\NLW_gen_adc1_path[11].odelay_inst_adc1_ODATAIN_UNCONNECTED ),
        .RST(\NLW_gen_adc1_path[11].odelay_inst_adc1_RST_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \gen_adc1_path[1].ibuf_data1 
       (.I(adc_data_p[1]),
        .IB(adc_data_n[1]),
        .O(adc_data_ibuf_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDDRE1 #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .IS_CB_INVERTED(1'b1),
    .IS_C_INVERTED(1'b0)) 
    \gen_adc1_path[1].iddre1_inst1 
       (.C(CLK),
        .CB(CLK),
        .D(adc_data_idelaye3_1),
        .Q1(\gen_adc1_path[1].iddre1_inst1_n_0 ),
        .Q2(\NLW_gen_adc1_path[1].iddre1_inst1_Q2_UNCONNECTED ),
        .R(wr_rst));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDELAYE3 #(
    .CASCADE("MASTER"),
    .DELAY_FORMAT("TIME"),
    .DELAY_SRC("IDATAIN"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .LOOPBACK("FALSE"),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[1].idelay_inst_adc1 
       (.CASC_IN(\NLW_gen_adc1_path[1].idelay_inst_adc1_CASC_IN_UNCONNECTED ),
        .CASC_OUT(data_casc_out_1),
        .CASC_RETURN(data_casc_ret_1),
        .CE(1'b0),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[1].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAIN(\NLW_gen_adc1_path[1].idelay_inst_adc1_DATAIN_UNCONNECTED ),
        .DATAOUT(adc_data_idelaye3_1),
        .EN_VTC(1'b1),
        .IDATAIN(adc_data_ibuf_1),
        .INC(1'b0),
        .LOAD(1'b0),
        .RST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ODELAYE3 #(
    .CASCADE("SLAVE_END"),
    .DELAY_FORMAT("TIME"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[1].odelay_inst_adc1 
       (.CASC_IN(data_casc_out_1),
        .CASC_OUT(\NLW_gen_adc1_path[1].odelay_inst_adc1_CASC_OUT_UNCONNECTED ),
        .CASC_RETURN(\NLW_gen_adc1_path[1].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ),
        .CE(\NLW_gen_adc1_path[1].odelay_inst_adc1_CE_UNCONNECTED ),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[1].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAOUT(data_casc_ret_1),
        .EN_VTC(1'b1),
        .INC(\NLW_gen_adc1_path[1].odelay_inst_adc1_INC_UNCONNECTED ),
        .LOAD(\NLW_gen_adc1_path[1].odelay_inst_adc1_LOAD_UNCONNECTED ),
        .ODATAIN(\NLW_gen_adc1_path[1].odelay_inst_adc1_ODATAIN_UNCONNECTED ),
        .RST(\NLW_gen_adc1_path[1].odelay_inst_adc1_RST_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \gen_adc1_path[2].ibuf_data1 
       (.I(adc_data_p[2]),
        .IB(adc_data_n[2]),
        .O(adc_data_ibuf_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDDRE1 #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .IS_CB_INVERTED(1'b1),
    .IS_C_INVERTED(1'b0)) 
    \gen_adc1_path[2].iddre1_inst1 
       (.C(CLK),
        .CB(CLK),
        .D(adc_data_idelaye3_2),
        .Q1(\gen_adc1_path[2].iddre1_inst1_n_0 ),
        .Q2(\NLW_gen_adc1_path[2].iddre1_inst1_Q2_UNCONNECTED ),
        .R(wr_rst));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDELAYE3 #(
    .CASCADE("MASTER"),
    .DELAY_FORMAT("TIME"),
    .DELAY_SRC("IDATAIN"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .LOOPBACK("FALSE"),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[2].idelay_inst_adc1 
       (.CASC_IN(\NLW_gen_adc1_path[2].idelay_inst_adc1_CASC_IN_UNCONNECTED ),
        .CASC_OUT(data_casc_out_2),
        .CASC_RETURN(data_casc_ret_2),
        .CE(1'b0),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[2].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAIN(\NLW_gen_adc1_path[2].idelay_inst_adc1_DATAIN_UNCONNECTED ),
        .DATAOUT(adc_data_idelaye3_2),
        .EN_VTC(1'b1),
        .IDATAIN(adc_data_ibuf_2),
        .INC(1'b0),
        .LOAD(1'b0),
        .RST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ODELAYE3 #(
    .CASCADE("SLAVE_END"),
    .DELAY_FORMAT("TIME"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[2].odelay_inst_adc1 
       (.CASC_IN(data_casc_out_2),
        .CASC_OUT(\NLW_gen_adc1_path[2].odelay_inst_adc1_CASC_OUT_UNCONNECTED ),
        .CASC_RETURN(\NLW_gen_adc1_path[2].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ),
        .CE(\NLW_gen_adc1_path[2].odelay_inst_adc1_CE_UNCONNECTED ),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[2].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAOUT(data_casc_ret_2),
        .EN_VTC(1'b1),
        .INC(\NLW_gen_adc1_path[2].odelay_inst_adc1_INC_UNCONNECTED ),
        .LOAD(\NLW_gen_adc1_path[2].odelay_inst_adc1_LOAD_UNCONNECTED ),
        .ODATAIN(\NLW_gen_adc1_path[2].odelay_inst_adc1_ODATAIN_UNCONNECTED ),
        .RST(\NLW_gen_adc1_path[2].odelay_inst_adc1_RST_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \gen_adc1_path[3].ibuf_data1 
       (.I(adc_data_p[3]),
        .IB(adc_data_n[3]),
        .O(adc_data_ibuf_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDDRE1 #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .IS_CB_INVERTED(1'b1),
    .IS_C_INVERTED(1'b0)) 
    \gen_adc1_path[3].iddre1_inst1 
       (.C(CLK),
        .CB(CLK),
        .D(adc_data_idelaye3_3),
        .Q1(\gen_adc1_path[3].iddre1_inst1_n_0 ),
        .Q2(\NLW_gen_adc1_path[3].iddre1_inst1_Q2_UNCONNECTED ),
        .R(wr_rst));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDELAYE3 #(
    .CASCADE("MASTER"),
    .DELAY_FORMAT("TIME"),
    .DELAY_SRC("IDATAIN"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .LOOPBACK("FALSE"),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[3].idelay_inst_adc1 
       (.CASC_IN(\NLW_gen_adc1_path[3].idelay_inst_adc1_CASC_IN_UNCONNECTED ),
        .CASC_OUT(data_casc_out_3),
        .CASC_RETURN(data_casc_ret_3),
        .CE(1'b0),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[3].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAIN(\NLW_gen_adc1_path[3].idelay_inst_adc1_DATAIN_UNCONNECTED ),
        .DATAOUT(adc_data_idelaye3_3),
        .EN_VTC(1'b1),
        .IDATAIN(adc_data_ibuf_3),
        .INC(1'b0),
        .LOAD(1'b0),
        .RST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ODELAYE3 #(
    .CASCADE("SLAVE_END"),
    .DELAY_FORMAT("TIME"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[3].odelay_inst_adc1 
       (.CASC_IN(data_casc_out_3),
        .CASC_OUT(\NLW_gen_adc1_path[3].odelay_inst_adc1_CASC_OUT_UNCONNECTED ),
        .CASC_RETURN(\NLW_gen_adc1_path[3].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ),
        .CE(\NLW_gen_adc1_path[3].odelay_inst_adc1_CE_UNCONNECTED ),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[3].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAOUT(data_casc_ret_3),
        .EN_VTC(1'b1),
        .INC(\NLW_gen_adc1_path[3].odelay_inst_adc1_INC_UNCONNECTED ),
        .LOAD(\NLW_gen_adc1_path[3].odelay_inst_adc1_LOAD_UNCONNECTED ),
        .ODATAIN(\NLW_gen_adc1_path[3].odelay_inst_adc1_ODATAIN_UNCONNECTED ),
        .RST(\NLW_gen_adc1_path[3].odelay_inst_adc1_RST_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \gen_adc1_path[4].ibuf_data1 
       (.I(adc_data_p[4]),
        .IB(adc_data_n[4]),
        .O(adc_data_ibuf_4));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDDRE1 #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .IS_CB_INVERTED(1'b1),
    .IS_C_INVERTED(1'b0)) 
    \gen_adc1_path[4].iddre1_inst1 
       (.C(CLK),
        .CB(CLK),
        .D(adc_data_idelaye3_4),
        .Q1(\gen_adc1_path[4].iddre1_inst1_n_0 ),
        .Q2(\NLW_gen_adc1_path[4].iddre1_inst1_Q2_UNCONNECTED ),
        .R(wr_rst));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDELAYE3 #(
    .CASCADE("MASTER"),
    .DELAY_FORMAT("TIME"),
    .DELAY_SRC("IDATAIN"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .LOOPBACK("FALSE"),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[4].idelay_inst_adc1 
       (.CASC_IN(\NLW_gen_adc1_path[4].idelay_inst_adc1_CASC_IN_UNCONNECTED ),
        .CASC_OUT(data_casc_out_4),
        .CASC_RETURN(data_casc_ret_4),
        .CE(1'b0),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[4].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAIN(\NLW_gen_adc1_path[4].idelay_inst_adc1_DATAIN_UNCONNECTED ),
        .DATAOUT(adc_data_idelaye3_4),
        .EN_VTC(1'b1),
        .IDATAIN(adc_data_ibuf_4),
        .INC(1'b0),
        .LOAD(1'b0),
        .RST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ODELAYE3 #(
    .CASCADE("SLAVE_END"),
    .DELAY_FORMAT("TIME"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[4].odelay_inst_adc1 
       (.CASC_IN(data_casc_out_4),
        .CASC_OUT(\NLW_gen_adc1_path[4].odelay_inst_adc1_CASC_OUT_UNCONNECTED ),
        .CASC_RETURN(\NLW_gen_adc1_path[4].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ),
        .CE(\NLW_gen_adc1_path[4].odelay_inst_adc1_CE_UNCONNECTED ),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[4].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAOUT(data_casc_ret_4),
        .EN_VTC(1'b1),
        .INC(\NLW_gen_adc1_path[4].odelay_inst_adc1_INC_UNCONNECTED ),
        .LOAD(\NLW_gen_adc1_path[4].odelay_inst_adc1_LOAD_UNCONNECTED ),
        .ODATAIN(\NLW_gen_adc1_path[4].odelay_inst_adc1_ODATAIN_UNCONNECTED ),
        .RST(\NLW_gen_adc1_path[4].odelay_inst_adc1_RST_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \gen_adc1_path[5].ibuf_data1 
       (.I(adc_data_p[5]),
        .IB(adc_data_n[5]),
        .O(adc_data_ibuf_5));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDDRE1 #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .IS_CB_INVERTED(1'b1),
    .IS_C_INVERTED(1'b0)) 
    \gen_adc1_path[5].iddre1_inst1 
       (.C(CLK),
        .CB(CLK),
        .D(adc_data_idelaye3_5),
        .Q1(\gen_adc1_path[5].iddre1_inst1_n_0 ),
        .Q2(\NLW_gen_adc1_path[5].iddre1_inst1_Q2_UNCONNECTED ),
        .R(wr_rst));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDELAYE3 #(
    .CASCADE("MASTER"),
    .DELAY_FORMAT("TIME"),
    .DELAY_SRC("IDATAIN"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .LOOPBACK("FALSE"),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[5].idelay_inst_adc1 
       (.CASC_IN(\NLW_gen_adc1_path[5].idelay_inst_adc1_CASC_IN_UNCONNECTED ),
        .CASC_OUT(data_casc_out_5),
        .CASC_RETURN(data_casc_ret_5),
        .CE(1'b0),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[5].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAIN(\NLW_gen_adc1_path[5].idelay_inst_adc1_DATAIN_UNCONNECTED ),
        .DATAOUT(adc_data_idelaye3_5),
        .EN_VTC(1'b1),
        .IDATAIN(adc_data_ibuf_5),
        .INC(1'b0),
        .LOAD(1'b0),
        .RST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ODELAYE3 #(
    .CASCADE("SLAVE_END"),
    .DELAY_FORMAT("TIME"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[5].odelay_inst_adc1 
       (.CASC_IN(data_casc_out_5),
        .CASC_OUT(\NLW_gen_adc1_path[5].odelay_inst_adc1_CASC_OUT_UNCONNECTED ),
        .CASC_RETURN(\NLW_gen_adc1_path[5].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ),
        .CE(\NLW_gen_adc1_path[5].odelay_inst_adc1_CE_UNCONNECTED ),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[5].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAOUT(data_casc_ret_5),
        .EN_VTC(1'b1),
        .INC(\NLW_gen_adc1_path[5].odelay_inst_adc1_INC_UNCONNECTED ),
        .LOAD(\NLW_gen_adc1_path[5].odelay_inst_adc1_LOAD_UNCONNECTED ),
        .ODATAIN(\NLW_gen_adc1_path[5].odelay_inst_adc1_ODATAIN_UNCONNECTED ),
        .RST(\NLW_gen_adc1_path[5].odelay_inst_adc1_RST_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \gen_adc1_path[6].ibuf_data1 
       (.I(adc_data_p[6]),
        .IB(adc_data_n[6]),
        .O(adc_data_ibuf_6));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDDRE1 #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .IS_CB_INVERTED(1'b1),
    .IS_C_INVERTED(1'b0)) 
    \gen_adc1_path[6].iddre1_inst1 
       (.C(CLK),
        .CB(CLK),
        .D(adc_data_idelaye3_6),
        .Q1(\gen_adc1_path[6].iddre1_inst1_n_0 ),
        .Q2(\NLW_gen_adc1_path[6].iddre1_inst1_Q2_UNCONNECTED ),
        .R(wr_rst));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDELAYE3 #(
    .CASCADE("MASTER"),
    .DELAY_FORMAT("TIME"),
    .DELAY_SRC("IDATAIN"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .LOOPBACK("FALSE"),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[6].idelay_inst_adc1 
       (.CASC_IN(\NLW_gen_adc1_path[6].idelay_inst_adc1_CASC_IN_UNCONNECTED ),
        .CASC_OUT(data_casc_out_6),
        .CASC_RETURN(data_casc_ret_6),
        .CE(1'b0),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[6].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAIN(\NLW_gen_adc1_path[6].idelay_inst_adc1_DATAIN_UNCONNECTED ),
        .DATAOUT(adc_data_idelaye3_6),
        .EN_VTC(1'b1),
        .IDATAIN(adc_data_ibuf_6),
        .INC(1'b0),
        .LOAD(1'b0),
        .RST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ODELAYE3 #(
    .CASCADE("SLAVE_END"),
    .DELAY_FORMAT("TIME"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[6].odelay_inst_adc1 
       (.CASC_IN(data_casc_out_6),
        .CASC_OUT(\NLW_gen_adc1_path[6].odelay_inst_adc1_CASC_OUT_UNCONNECTED ),
        .CASC_RETURN(\NLW_gen_adc1_path[6].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ),
        .CE(\NLW_gen_adc1_path[6].odelay_inst_adc1_CE_UNCONNECTED ),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[6].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAOUT(data_casc_ret_6),
        .EN_VTC(1'b1),
        .INC(\NLW_gen_adc1_path[6].odelay_inst_adc1_INC_UNCONNECTED ),
        .LOAD(\NLW_gen_adc1_path[6].odelay_inst_adc1_LOAD_UNCONNECTED ),
        .ODATAIN(\NLW_gen_adc1_path[6].odelay_inst_adc1_ODATAIN_UNCONNECTED ),
        .RST(\NLW_gen_adc1_path[6].odelay_inst_adc1_RST_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \gen_adc1_path[7].ibuf_data1 
       (.I(adc_data_p[7]),
        .IB(adc_data_n[7]),
        .O(adc_data_ibuf_7));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDDRE1 #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .IS_CB_INVERTED(1'b1),
    .IS_C_INVERTED(1'b0)) 
    \gen_adc1_path[7].iddre1_inst1 
       (.C(CLK),
        .CB(CLK),
        .D(adc_data_idelaye3_7),
        .Q1(\gen_adc1_path[7].iddre1_inst1_n_0 ),
        .Q2(\NLW_gen_adc1_path[7].iddre1_inst1_Q2_UNCONNECTED ),
        .R(wr_rst));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDELAYE3 #(
    .CASCADE("MASTER"),
    .DELAY_FORMAT("TIME"),
    .DELAY_SRC("IDATAIN"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .LOOPBACK("FALSE"),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[7].idelay_inst_adc1 
       (.CASC_IN(\NLW_gen_adc1_path[7].idelay_inst_adc1_CASC_IN_UNCONNECTED ),
        .CASC_OUT(data_casc_out_7),
        .CASC_RETURN(data_casc_ret_7),
        .CE(1'b0),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[7].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAIN(\NLW_gen_adc1_path[7].idelay_inst_adc1_DATAIN_UNCONNECTED ),
        .DATAOUT(adc_data_idelaye3_7),
        .EN_VTC(1'b1),
        .IDATAIN(adc_data_ibuf_7),
        .INC(1'b0),
        .LOAD(1'b0),
        .RST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ODELAYE3 #(
    .CASCADE("SLAVE_END"),
    .DELAY_FORMAT("TIME"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[7].odelay_inst_adc1 
       (.CASC_IN(data_casc_out_7),
        .CASC_OUT(\NLW_gen_adc1_path[7].odelay_inst_adc1_CASC_OUT_UNCONNECTED ),
        .CASC_RETURN(\NLW_gen_adc1_path[7].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ),
        .CE(\NLW_gen_adc1_path[7].odelay_inst_adc1_CE_UNCONNECTED ),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[7].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAOUT(data_casc_ret_7),
        .EN_VTC(1'b1),
        .INC(\NLW_gen_adc1_path[7].odelay_inst_adc1_INC_UNCONNECTED ),
        .LOAD(\NLW_gen_adc1_path[7].odelay_inst_adc1_LOAD_UNCONNECTED ),
        .ODATAIN(\NLW_gen_adc1_path[7].odelay_inst_adc1_ODATAIN_UNCONNECTED ),
        .RST(\NLW_gen_adc1_path[7].odelay_inst_adc1_RST_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \gen_adc1_path[8].ibuf_data1 
       (.I(adc_data_p[8]),
        .IB(adc_data_n[8]),
        .O(adc_data_ibuf_8));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDDRE1 #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .IS_CB_INVERTED(1'b1),
    .IS_C_INVERTED(1'b0)) 
    \gen_adc1_path[8].iddre1_inst1 
       (.C(CLK),
        .CB(CLK),
        .D(adc_data_idelaye3_8),
        .Q1(\gen_adc1_path[8].iddre1_inst1_n_0 ),
        .Q2(\NLW_gen_adc1_path[8].iddre1_inst1_Q2_UNCONNECTED ),
        .R(wr_rst));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDELAYE3 #(
    .CASCADE("MASTER"),
    .DELAY_FORMAT("TIME"),
    .DELAY_SRC("IDATAIN"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .LOOPBACK("FALSE"),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[8].idelay_inst_adc1 
       (.CASC_IN(\NLW_gen_adc1_path[8].idelay_inst_adc1_CASC_IN_UNCONNECTED ),
        .CASC_OUT(data_casc_out_8),
        .CASC_RETURN(data_casc_ret_8),
        .CE(1'b0),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[8].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAIN(\NLW_gen_adc1_path[8].idelay_inst_adc1_DATAIN_UNCONNECTED ),
        .DATAOUT(adc_data_idelaye3_8),
        .EN_VTC(1'b1),
        .IDATAIN(adc_data_ibuf_8),
        .INC(1'b0),
        .LOAD(1'b0),
        .RST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ODELAYE3 #(
    .CASCADE("SLAVE_END"),
    .DELAY_FORMAT("TIME"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[8].odelay_inst_adc1 
       (.CASC_IN(data_casc_out_8),
        .CASC_OUT(\NLW_gen_adc1_path[8].odelay_inst_adc1_CASC_OUT_UNCONNECTED ),
        .CASC_RETURN(\NLW_gen_adc1_path[8].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ),
        .CE(\NLW_gen_adc1_path[8].odelay_inst_adc1_CE_UNCONNECTED ),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[8].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAOUT(data_casc_ret_8),
        .EN_VTC(1'b1),
        .INC(\NLW_gen_adc1_path[8].odelay_inst_adc1_INC_UNCONNECTED ),
        .LOAD(\NLW_gen_adc1_path[8].odelay_inst_adc1_LOAD_UNCONNECTED ),
        .ODATAIN(\NLW_gen_adc1_path[8].odelay_inst_adc1_ODATAIN_UNCONNECTED ),
        .RST(\NLW_gen_adc1_path[8].odelay_inst_adc1_RST_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \gen_adc1_path[9].ibuf_data1 
       (.I(adc_data_p[9]),
        .IB(adc_data_n[9]),
        .O(adc_data_ibuf_9));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDDRE1 #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .IS_CB_INVERTED(1'b1),
    .IS_C_INVERTED(1'b0)) 
    \gen_adc1_path[9].iddre1_inst1 
       (.C(CLK),
        .CB(CLK),
        .D(adc_data_idelaye3_9),
        .Q1(\gen_adc1_path[9].iddre1_inst1_n_0 ),
        .Q2(\NLW_gen_adc1_path[9].iddre1_inst1_Q2_UNCONNECTED ),
        .R(wr_rst));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDELAYE3 #(
    .CASCADE("MASTER"),
    .DELAY_FORMAT("TIME"),
    .DELAY_SRC("IDATAIN"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .LOOPBACK("FALSE"),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[9].idelay_inst_adc1 
       (.CASC_IN(\NLW_gen_adc1_path[9].idelay_inst_adc1_CASC_IN_UNCONNECTED ),
        .CASC_OUT(data_casc_out_9),
        .CASC_RETURN(data_casc_ret_9),
        .CE(1'b0),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[9].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAIN(\NLW_gen_adc1_path[9].idelay_inst_adc1_DATAIN_UNCONNECTED ),
        .DATAOUT(adc_data_idelaye3_9),
        .EN_VTC(1'b1),
        .IDATAIN(adc_data_ibuf_9),
        .INC(1'b0),
        .LOAD(1'b0),
        .RST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ODELAYE3 #(
    .CASCADE("SLAVE_END"),
    .DELAY_FORMAT("TIME"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REFCLK_FREQUENCY(500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    \gen_adc1_path[9].odelay_inst_adc1 
       (.CASC_IN(data_casc_out_9),
        .CASC_OUT(\NLW_gen_adc1_path[9].odelay_inst_adc1_CASC_OUT_UNCONNECTED ),
        .CASC_RETURN(\NLW_gen_adc1_path[9].odelay_inst_adc1_CASC_RETURN_UNCONNECTED ),
        .CE(\NLW_gen_adc1_path[9].odelay_inst_adc1_CE_UNCONNECTED ),
        .CLK(CLK),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CNTVALUEOUT(\NLW_gen_adc1_path[9].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED [8:0]),
        .DATAOUT(data_casc_ret_9),
        .EN_VTC(1'b1),
        .INC(\NLW_gen_adc1_path[9].odelay_inst_adc1_INC_UNCONNECTED ),
        .LOAD(\NLW_gen_adc1_path[9].odelay_inst_adc1_LOAD_UNCONNECTED ),
        .ODATAIN(\NLW_gen_adc1_path[9].odelay_inst_adc1_ODATAIN_UNCONNECTED ),
        .RST(\NLW_gen_adc1_path[9].odelay_inst_adc1_RST_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    ibufds_dco1
       (.I(adc_dco_p),
        .IB(adc_dco_n),
        .O(adc_dco_ibuf));
endmodule

(* CHECK_LICENSE_TYPE = "ad_sync_fifo,fifo_generator_v13_2_14,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ad_sync_fifo" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
module ZYNQ_BlockDesign_EDM_Monitor_0_0_ad_sync_fifo
   (wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* X_INTERFACE_MODE = "slave write_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input wr_clk;
  input wr_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* X_INTERFACE_MODE = "slave read_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input rd_clk;
  input rd_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [15:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [15:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;


endmodule

(* CHECK_LICENSE_TYPE = "axis_data_fifo,axis_data_fifo_v2_0_17_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axis_data_fifo" *) 
(* X_CORE_INFO = "axis_data_fifo_v2_0_17_top,Vivado 2025.2" *) 
module ZYNQ_BlockDesign_EDM_Monitor_0_0_axis_data_fifo
   (s_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    m_axis_aclk,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_RSTIF RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_CLKIF CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_CLKIF, ASSOCIATED_BUSIF S_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [127:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_CLKIF CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_CLKIF, ASSOCIATED_BUSIF M_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input m_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [127:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;


endmodule

(* ORIG_REF_NAME = "axis_package" *) 
module ZYNQ_BlockDesign_EDM_Monitor_0_0_axis_package
   (package_m_axis_tvalid,
    package_send_ack,
    s_axis_tlast,
    Q,
    main_clk_250m,
    \frame_seq_id_reg[0]_0 ,
    package_send_req,
    s_axis_tready,
    D);
  output package_m_axis_tvalid;
  output package_send_ack;
  output s_axis_tlast;
  output [116:0]Q;
  input main_clk_250m;
  input \frame_seq_id_reg[0]_0 ;
  input package_send_req;
  input s_axis_tready;
  input [100:0]D;

  wire [100:0]D;
  wire [116:0]Q;
  wire axis_fire;
  wire [6:0]frame_data_counter;
  wire \frame_data_counter[4]_i_1_n_0 ;
  wire \frame_data_counter[6]_i_2_n_0 ;
  wire \frame_data_counter_reg_n_0_[0] ;
  wire \frame_data_counter_reg_n_0_[1] ;
  wire \frame_data_counter_reg_n_0_[2] ;
  wire \frame_data_counter_reg_n_0_[3] ;
  wire \frame_data_counter_reg_n_0_[4] ;
  wire \frame_data_counter_reg_n_0_[5] ;
  wire \frame_data_counter_reg_n_0_[6] ;
  wire frame_seq_id0_carry__0_n_2;
  wire frame_seq_id0_carry__0_n_3;
  wire frame_seq_id0_carry__0_n_4;
  wire frame_seq_id0_carry__0_n_5;
  wire frame_seq_id0_carry__0_n_6;
  wire frame_seq_id0_carry__0_n_7;
  wire frame_seq_id0_carry_n_0;
  wire frame_seq_id0_carry_n_1;
  wire frame_seq_id0_carry_n_2;
  wire frame_seq_id0_carry_n_3;
  wire frame_seq_id0_carry_n_4;
  wire frame_seq_id0_carry_n_5;
  wire frame_seq_id0_carry_n_6;
  wire frame_seq_id0_carry_n_7;
  wire [15:0]frame_seq_id_reg;
  wire \frame_seq_id_reg[0]_0 ;
  wire launch_fire;
  wire m_axis_tlast_i_1_n_0;
  wire m_axis_tvalid_i_1_n_0;
  wire main_clk_250m;
  wire [15:0]p_0_in;
  wire package_m_axis_tvalid;
  wire package_send_ack;
  wire package_send_req;
  wire req_holdoff_i_1_n_0;
  wire req_holdoff_reg_n_0;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [7:6]NLW_frame_seq_id0_carry__0_CO_UNCONNECTED;
  wire [7:7]NLW_frame_seq_id0_carry__0_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \frame_data_counter[0]_i_1 
       (.I0(\frame_data_counter_reg_n_0_[0] ),
        .O(frame_data_counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \frame_data_counter[1]_i_1 
       (.I0(\frame_data_counter_reg_n_0_[0] ),
        .I1(\frame_data_counter_reg_n_0_[1] ),
        .O(frame_data_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \frame_data_counter[2]_i_1 
       (.I0(\frame_data_counter_reg_n_0_[0] ),
        .I1(\frame_data_counter_reg_n_0_[1] ),
        .I2(\frame_data_counter_reg_n_0_[2] ),
        .O(frame_data_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \frame_data_counter[3]_i_1 
       (.I0(\frame_data_counter_reg_n_0_[3] ),
        .I1(\frame_data_counter_reg_n_0_[0] ),
        .I2(\frame_data_counter_reg_n_0_[1] ),
        .I3(\frame_data_counter_reg_n_0_[2] ),
        .O(frame_data_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \frame_data_counter[4]_i_1 
       (.I0(\frame_data_counter_reg_n_0_[4] ),
        .I1(\frame_data_counter_reg_n_0_[2] ),
        .I2(\frame_data_counter_reg_n_0_[3] ),
        .I3(\frame_data_counter_reg_n_0_[0] ),
        .I4(\frame_data_counter_reg_n_0_[1] ),
        .O(\frame_data_counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \frame_data_counter[5]_i_1 
       (.I0(\frame_data_counter_reg_n_0_[5] ),
        .I1(\frame_data_counter_reg_n_0_[2] ),
        .I2(\frame_data_counter_reg_n_0_[3] ),
        .I3(\frame_data_counter_reg_n_0_[0] ),
        .I4(\frame_data_counter_reg_n_0_[1] ),
        .I5(\frame_data_counter_reg_n_0_[4] ),
        .O(frame_data_counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \frame_data_counter[6]_i_1 
       (.I0(\frame_data_counter_reg_n_0_[6] ),
        .I1(\frame_data_counter[6]_i_2_n_0 ),
        .O(frame_data_counter[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \frame_data_counter[6]_i_2 
       (.I0(\frame_data_counter_reg_n_0_[4] ),
        .I1(\frame_data_counter_reg_n_0_[1] ),
        .I2(\frame_data_counter_reg_n_0_[0] ),
        .I3(\frame_data_counter_reg_n_0_[3] ),
        .I4(\frame_data_counter_reg_n_0_[2] ),
        .I5(\frame_data_counter_reg_n_0_[5] ),
        .O(\frame_data_counter[6]_i_2_n_0 ));
  FDCE \frame_data_counter_reg[0] 
       (.C(main_clk_250m),
        .CE(axis_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(frame_data_counter[0]),
        .Q(\frame_data_counter_reg_n_0_[0] ));
  FDCE \frame_data_counter_reg[1] 
       (.C(main_clk_250m),
        .CE(axis_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(frame_data_counter[1]),
        .Q(\frame_data_counter_reg_n_0_[1] ));
  FDCE \frame_data_counter_reg[2] 
       (.C(main_clk_250m),
        .CE(axis_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(frame_data_counter[2]),
        .Q(\frame_data_counter_reg_n_0_[2] ));
  FDCE \frame_data_counter_reg[3] 
       (.C(main_clk_250m),
        .CE(axis_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(frame_data_counter[3]),
        .Q(\frame_data_counter_reg_n_0_[3] ));
  FDCE \frame_data_counter_reg[4] 
       (.C(main_clk_250m),
        .CE(axis_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(\frame_data_counter[4]_i_1_n_0 ),
        .Q(\frame_data_counter_reg_n_0_[4] ));
  FDCE \frame_data_counter_reg[5] 
       (.C(main_clk_250m),
        .CE(axis_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(frame_data_counter[5]),
        .Q(\frame_data_counter_reg_n_0_[5] ));
  FDCE \frame_data_counter_reg[6] 
       (.C(main_clk_250m),
        .CE(axis_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(frame_data_counter[6]),
        .Q(\frame_data_counter_reg_n_0_[6] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 frame_seq_id0_carry
       (.CI(frame_seq_id_reg[0]),
        .CI_TOP(1'b0),
        .CO({frame_seq_id0_carry_n_0,frame_seq_id0_carry_n_1,frame_seq_id0_carry_n_2,frame_seq_id0_carry_n_3,frame_seq_id0_carry_n_4,frame_seq_id0_carry_n_5,frame_seq_id0_carry_n_6,frame_seq_id0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[8:1]),
        .S(frame_seq_id_reg[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 frame_seq_id0_carry__0
       (.CI(frame_seq_id0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_frame_seq_id0_carry__0_CO_UNCONNECTED[7:6],frame_seq_id0_carry__0_n_2,frame_seq_id0_carry__0_n_3,frame_seq_id0_carry__0_n_4,frame_seq_id0_carry__0_n_5,frame_seq_id0_carry__0_n_6,frame_seq_id0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_frame_seq_id0_carry__0_O_UNCONNECTED[7],p_0_in[15:9]}),
        .S({1'b0,frame_seq_id_reg[15:9]}));
  LUT1 #(
    .INIT(2'h1)) 
    \frame_seq_id[0]_i_1 
       (.I0(frame_seq_id_reg[0]),
        .O(p_0_in[0]));
  FDCE \frame_seq_id_reg[0] 
       (.C(main_clk_250m),
        .CE(axis_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(p_0_in[0]),
        .Q(frame_seq_id_reg[0]));
  FDCE \frame_seq_id_reg[10] 
       (.C(main_clk_250m),
        .CE(axis_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(p_0_in[10]),
        .Q(frame_seq_id_reg[10]));
  FDCE \frame_seq_id_reg[11] 
       (.C(main_clk_250m),
        .CE(axis_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(p_0_in[11]),
        .Q(frame_seq_id_reg[11]));
  FDCE \frame_seq_id_reg[12] 
       (.C(main_clk_250m),
        .CE(axis_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(p_0_in[12]),
        .Q(frame_seq_id_reg[12]));
  FDCE \frame_seq_id_reg[13] 
       (.C(main_clk_250m),
        .CE(axis_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(p_0_in[13]),
        .Q(frame_seq_id_reg[13]));
  FDCE \frame_seq_id_reg[14] 
       (.C(main_clk_250m),
        .CE(axis_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(p_0_in[14]),
        .Q(frame_seq_id_reg[14]));
  FDCE \frame_seq_id_reg[15] 
       (.C(main_clk_250m),
        .CE(axis_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(p_0_in[15]),
        .Q(frame_seq_id_reg[15]));
  FDCE \frame_seq_id_reg[1] 
       (.C(main_clk_250m),
        .CE(axis_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(p_0_in[1]),
        .Q(frame_seq_id_reg[1]));
  FDCE \frame_seq_id_reg[2] 
       (.C(main_clk_250m),
        .CE(axis_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(p_0_in[2]),
        .Q(frame_seq_id_reg[2]));
  FDCE \frame_seq_id_reg[3] 
       (.C(main_clk_250m),
        .CE(axis_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(p_0_in[3]),
        .Q(frame_seq_id_reg[3]));
  FDCE \frame_seq_id_reg[4] 
       (.C(main_clk_250m),
        .CE(axis_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(p_0_in[4]),
        .Q(frame_seq_id_reg[4]));
  FDCE \frame_seq_id_reg[5] 
       (.C(main_clk_250m),
        .CE(axis_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(p_0_in[5]),
        .Q(frame_seq_id_reg[5]));
  FDCE \frame_seq_id_reg[6] 
       (.C(main_clk_250m),
        .CE(axis_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(p_0_in[6]),
        .Q(frame_seq_id_reg[6]));
  FDCE \frame_seq_id_reg[7] 
       (.C(main_clk_250m),
        .CE(axis_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(p_0_in[7]),
        .Q(frame_seq_id_reg[7]));
  FDCE \frame_seq_id_reg[8] 
       (.C(main_clk_250m),
        .CE(axis_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(p_0_in[8]),
        .Q(frame_seq_id_reg[8]));
  FDCE \frame_seq_id_reg[9] 
       (.C(main_clk_250m),
        .CE(axis_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(p_0_in[9]),
        .Q(frame_seq_id_reg[9]));
  FDCE \m_axis_tdata_reg[0] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \m_axis_tdata_reg[100] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[100]),
        .Q(Q[100]));
  FDCE \m_axis_tdata_reg[101] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(frame_seq_id_reg[0]),
        .Q(Q[101]));
  FDCE \m_axis_tdata_reg[102] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(frame_seq_id_reg[1]),
        .Q(Q[102]));
  FDCE \m_axis_tdata_reg[103] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(frame_seq_id_reg[2]),
        .Q(Q[103]));
  FDCE \m_axis_tdata_reg[104] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(frame_seq_id_reg[3]),
        .Q(Q[104]));
  FDCE \m_axis_tdata_reg[105] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(frame_seq_id_reg[4]),
        .Q(Q[105]));
  FDCE \m_axis_tdata_reg[106] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(frame_seq_id_reg[5]),
        .Q(Q[106]));
  FDCE \m_axis_tdata_reg[107] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(frame_seq_id_reg[6]),
        .Q(Q[107]));
  FDCE \m_axis_tdata_reg[108] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(frame_seq_id_reg[7]),
        .Q(Q[108]));
  FDCE \m_axis_tdata_reg[109] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(frame_seq_id_reg[8]),
        .Q(Q[109]));
  FDCE \m_axis_tdata_reg[10] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[10]),
        .Q(Q[10]));
  FDCE \m_axis_tdata_reg[110] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(frame_seq_id_reg[9]),
        .Q(Q[110]));
  FDCE \m_axis_tdata_reg[111] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(frame_seq_id_reg[10]),
        .Q(Q[111]));
  FDCE \m_axis_tdata_reg[112] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(frame_seq_id_reg[11]),
        .Q(Q[112]));
  FDCE \m_axis_tdata_reg[113] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(frame_seq_id_reg[12]),
        .Q(Q[113]));
  FDCE \m_axis_tdata_reg[114] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(frame_seq_id_reg[13]),
        .Q(Q[114]));
  FDCE \m_axis_tdata_reg[115] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(frame_seq_id_reg[14]),
        .Q(Q[115]));
  FDCE \m_axis_tdata_reg[116] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(frame_seq_id_reg[15]),
        .Q(Q[116]));
  FDCE \m_axis_tdata_reg[11] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[11]),
        .Q(Q[11]));
  FDCE \m_axis_tdata_reg[12] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[12]),
        .Q(Q[12]));
  FDCE \m_axis_tdata_reg[13] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[13]),
        .Q(Q[13]));
  FDCE \m_axis_tdata_reg[14] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[14]),
        .Q(Q[14]));
  FDCE \m_axis_tdata_reg[15] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[15]),
        .Q(Q[15]));
  FDCE \m_axis_tdata_reg[16] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[16]),
        .Q(Q[16]));
  FDCE \m_axis_tdata_reg[17] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[17]),
        .Q(Q[17]));
  FDCE \m_axis_tdata_reg[18] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[18]),
        .Q(Q[18]));
  FDCE \m_axis_tdata_reg[19] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[19]),
        .Q(Q[19]));
  FDCE \m_axis_tdata_reg[1] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \m_axis_tdata_reg[20] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[20]),
        .Q(Q[20]));
  FDCE \m_axis_tdata_reg[21] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[21]),
        .Q(Q[21]));
  FDCE \m_axis_tdata_reg[22] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[22]),
        .Q(Q[22]));
  FDCE \m_axis_tdata_reg[23] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[23]),
        .Q(Q[23]));
  FDCE \m_axis_tdata_reg[24] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[24]),
        .Q(Q[24]));
  FDCE \m_axis_tdata_reg[25] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[25]),
        .Q(Q[25]));
  FDCE \m_axis_tdata_reg[26] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[26]),
        .Q(Q[26]));
  FDCE \m_axis_tdata_reg[27] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[27]),
        .Q(Q[27]));
  FDCE \m_axis_tdata_reg[28] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[28]),
        .Q(Q[28]));
  FDCE \m_axis_tdata_reg[29] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[29]),
        .Q(Q[29]));
  FDCE \m_axis_tdata_reg[2] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \m_axis_tdata_reg[30] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[30]),
        .Q(Q[30]));
  FDCE \m_axis_tdata_reg[31] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[31]),
        .Q(Q[31]));
  FDCE \m_axis_tdata_reg[32] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[32]),
        .Q(Q[32]));
  FDCE \m_axis_tdata_reg[33] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[33]),
        .Q(Q[33]));
  FDCE \m_axis_tdata_reg[34] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[34]),
        .Q(Q[34]));
  FDCE \m_axis_tdata_reg[35] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[35]),
        .Q(Q[35]));
  FDCE \m_axis_tdata_reg[36] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[36]),
        .Q(Q[36]));
  FDCE \m_axis_tdata_reg[37] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[37]),
        .Q(Q[37]));
  FDCE \m_axis_tdata_reg[38] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[38]),
        .Q(Q[38]));
  FDCE \m_axis_tdata_reg[39] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[39]),
        .Q(Q[39]));
  FDCE \m_axis_tdata_reg[3] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \m_axis_tdata_reg[40] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[40]),
        .Q(Q[40]));
  FDCE \m_axis_tdata_reg[41] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[41]),
        .Q(Q[41]));
  FDCE \m_axis_tdata_reg[42] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[42]),
        .Q(Q[42]));
  FDCE \m_axis_tdata_reg[43] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[43]),
        .Q(Q[43]));
  FDCE \m_axis_tdata_reg[44] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[44]),
        .Q(Q[44]));
  FDCE \m_axis_tdata_reg[45] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[45]),
        .Q(Q[45]));
  FDCE \m_axis_tdata_reg[46] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[46]),
        .Q(Q[46]));
  FDCE \m_axis_tdata_reg[47] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[47]),
        .Q(Q[47]));
  FDCE \m_axis_tdata_reg[48] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[48]),
        .Q(Q[48]));
  FDCE \m_axis_tdata_reg[49] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[49]),
        .Q(Q[49]));
  FDCE \m_axis_tdata_reg[4] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \m_axis_tdata_reg[50] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[50]),
        .Q(Q[50]));
  FDCE \m_axis_tdata_reg[51] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[51]),
        .Q(Q[51]));
  FDCE \m_axis_tdata_reg[52] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[52]),
        .Q(Q[52]));
  FDCE \m_axis_tdata_reg[53] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[53]),
        .Q(Q[53]));
  FDCE \m_axis_tdata_reg[54] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[54]),
        .Q(Q[54]));
  FDCE \m_axis_tdata_reg[55] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[55]),
        .Q(Q[55]));
  FDCE \m_axis_tdata_reg[56] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[56]),
        .Q(Q[56]));
  FDCE \m_axis_tdata_reg[57] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[57]),
        .Q(Q[57]));
  FDCE \m_axis_tdata_reg[58] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[58]),
        .Q(Q[58]));
  FDCE \m_axis_tdata_reg[59] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[59]),
        .Q(Q[59]));
  FDCE \m_axis_tdata_reg[5] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \m_axis_tdata_reg[60] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[60]),
        .Q(Q[60]));
  FDCE \m_axis_tdata_reg[61] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[61]),
        .Q(Q[61]));
  FDCE \m_axis_tdata_reg[62] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[62]),
        .Q(Q[62]));
  FDCE \m_axis_tdata_reg[63] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[63]),
        .Q(Q[63]));
  FDCE \m_axis_tdata_reg[64] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[64]),
        .Q(Q[64]));
  FDCE \m_axis_tdata_reg[65] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[65]),
        .Q(Q[65]));
  FDCE \m_axis_tdata_reg[66] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[66]),
        .Q(Q[66]));
  FDCE \m_axis_tdata_reg[67] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[67]),
        .Q(Q[67]));
  FDCE \m_axis_tdata_reg[68] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[68]),
        .Q(Q[68]));
  FDCE \m_axis_tdata_reg[69] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[69]),
        .Q(Q[69]));
  FDCE \m_axis_tdata_reg[6] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \m_axis_tdata_reg[70] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[70]),
        .Q(Q[70]));
  FDCE \m_axis_tdata_reg[71] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[71]),
        .Q(Q[71]));
  FDCE \m_axis_tdata_reg[72] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[72]),
        .Q(Q[72]));
  FDCE \m_axis_tdata_reg[73] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[73]),
        .Q(Q[73]));
  FDCE \m_axis_tdata_reg[74] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[74]),
        .Q(Q[74]));
  FDCE \m_axis_tdata_reg[75] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[75]),
        .Q(Q[75]));
  FDCE \m_axis_tdata_reg[76] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[76]),
        .Q(Q[76]));
  FDCE \m_axis_tdata_reg[77] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[77]),
        .Q(Q[77]));
  FDCE \m_axis_tdata_reg[78] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[78]),
        .Q(Q[78]));
  FDCE \m_axis_tdata_reg[79] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[79]),
        .Q(Q[79]));
  FDCE \m_axis_tdata_reg[7] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[7]),
        .Q(Q[7]));
  FDCE \m_axis_tdata_reg[80] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[80]),
        .Q(Q[80]));
  FDCE \m_axis_tdata_reg[81] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[81]),
        .Q(Q[81]));
  FDCE \m_axis_tdata_reg[82] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[82]),
        .Q(Q[82]));
  FDCE \m_axis_tdata_reg[83] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[83]),
        .Q(Q[83]));
  FDCE \m_axis_tdata_reg[84] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[84]),
        .Q(Q[84]));
  FDCE \m_axis_tdata_reg[85] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[85]),
        .Q(Q[85]));
  FDCE \m_axis_tdata_reg[86] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[86]),
        .Q(Q[86]));
  FDCE \m_axis_tdata_reg[87] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[87]),
        .Q(Q[87]));
  FDCE \m_axis_tdata_reg[88] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[88]),
        .Q(Q[88]));
  FDCE \m_axis_tdata_reg[89] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[89]),
        .Q(Q[89]));
  FDCE \m_axis_tdata_reg[8] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[8]),
        .Q(Q[8]));
  FDCE \m_axis_tdata_reg[90] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[90]),
        .Q(Q[90]));
  FDCE \m_axis_tdata_reg[91] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[91]),
        .Q(Q[91]));
  FDCE \m_axis_tdata_reg[92] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[92]),
        .Q(Q[92]));
  FDCE \m_axis_tdata_reg[93] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[93]),
        .Q(Q[93]));
  FDCE \m_axis_tdata_reg[94] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[94]),
        .Q(Q[94]));
  FDCE \m_axis_tdata_reg[95] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[95]),
        .Q(Q[95]));
  FDCE \m_axis_tdata_reg[96] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[96]),
        .Q(Q[96]));
  FDCE \m_axis_tdata_reg[97] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[97]),
        .Q(Q[97]));
  FDCE \m_axis_tdata_reg[98] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[98]),
        .Q(Q[98]));
  FDCE \m_axis_tdata_reg[99] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[99]),
        .Q(Q[99]));
  FDCE \m_axis_tdata_reg[9] 
       (.C(main_clk_250m),
        .CE(launch_fire),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(D[9]),
        .Q(Q[9]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    m_axis_tlast_i_1
       (.I0(req_holdoff_reg_n_0),
        .I1(package_send_req),
        .I2(package_m_axis_tvalid),
        .I3(\frame_data_counter_reg_n_0_[6] ),
        .I4(\frame_data_counter[6]_i_2_n_0 ),
        .O(m_axis_tlast_i_1_n_0));
  FDCE m_axis_tlast_reg
       (.C(main_clk_250m),
        .CE(m_axis_tvalid_i_1_n_0),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(m_axis_tlast_i_1_n_0),
        .Q(s_axis_tlast));
  LUT4 #(
    .INIT(16'hF404)) 
    m_axis_tvalid_i_1
       (.I0(req_holdoff_reg_n_0),
        .I1(package_send_req),
        .I2(package_m_axis_tvalid),
        .I3(s_axis_tready),
        .O(m_axis_tvalid_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    m_axis_tvalid_i_2
       (.I0(package_m_axis_tvalid),
        .I1(package_send_req),
        .I2(req_holdoff_reg_n_0),
        .O(launch_fire));
  FDCE m_axis_tvalid_reg
       (.C(main_clk_250m),
        .CE(m_axis_tvalid_i_1_n_0),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(launch_fire),
        .Q(package_m_axis_tvalid));
  LUT3 #(
    .INIT(8'hB0)) 
    req_holdoff_i_1
       (.I0(req_holdoff_reg_n_0),
        .I1(package_m_axis_tvalid),
        .I2(package_send_req),
        .O(req_holdoff_i_1_n_0));
  FDCE req_holdoff_reg
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(req_holdoff_i_1_n_0),
        .Q(req_holdoff_reg_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    send_ack_i_1
       (.I0(s_axis_tready),
        .I1(package_m_axis_tvalid),
        .O(axis_fire));
  FDCE send_ack_reg
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\frame_seq_id_reg[0]_0 ),
        .D(axis_fire),
        .Q(package_send_ack));
endmodule

(* ORIG_REF_NAME = "global_clk_wiz" *) 
module ZYNQ_BlockDesign_EDM_Monitor_0_0_global_clk_wiz
   (main_clk_250m,
    idelay_refclk,
    reset,
    locked,
    clk_in1_p,
    clk_in1_n);
  (* syn_isclock = "1" *) output main_clk_250m;
  (* syn_isclock = "1" *) output idelay_refclk;
  input reset;
  output locked;
  input clk_in1_p;
  input clk_in1_n;


endmodule

(* ORIG_REF_NAME = "pow_calc" *) 
module ZYNQ_BlockDesign_EDM_Monitor_0_0_pow_calc
   (P,
    sample_fire,
    pow_m_axis_tvalid,
    D,
    E,
    pow_data,
    m_axis_data_tvalid,
    main_clk_250m,
    m_axis_data_tdata,
    sw_en,
    Q,
    \window_pipe_reg[31][31]_srl32 ,
    m_axis_tvalid_reg_0);
  output [31:0]P;
  output sample_fire;
  output pow_m_axis_tvalid;
  output [3:0]D;
  output [0:0]E;
  output [31:0]pow_data;
  input m_axis_data_tvalid;
  input main_clk_250m;
  input [15:0]m_axis_data_tdata;
  input sw_en;
  input [3:0]Q;
  input \window_pipe_reg[31][31]_srl32 ;
  input m_axis_tvalid_reg_0;

  wire [3:0]D;
  wire [0:0]E;
  wire [31:0]P;
  wire [3:0]Q;
  wire [15:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire m_axis_tvalid_reg_0;
  wire main_clk_250m;
  wire [31:0]pow_data;
  wire pow_m_axis_tvalid;
  wire sample_fire;
  wire sw_en;
  wire \window_pipe_reg[31][31]_srl32 ;
  wire NLW_m_axis_tdata0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_m_axis_tdata0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_m_axis_tdata0_OVERFLOW_UNCONNECTED;
  wire NLW_m_axis_tdata0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_m_axis_tdata0_PATTERNDETECT_UNCONNECTED;
  wire NLW_m_axis_tdata0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_m_axis_tdata0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_m_axis_tdata0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_m_axis_tdata0_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_m_axis_tdata0_P_UNCONNECTED;
  wire [47:0]NLW_m_axis_tdata0_PCOUT_UNCONNECTED;
  wire [7:0]NLW_m_axis_tdata0_XOROUT_UNCONNECTED;

  (* KEEP_HIERARCHY = "YES" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    m_axis_tdata0
       (.A({m_axis_data_tdata[15],m_axis_data_tdata[15],m_axis_data_tdata[15],m_axis_data_tdata[15],m_axis_data_tdata[15],m_axis_data_tdata[15],m_axis_data_tdata[15],m_axis_data_tdata[15],m_axis_data_tdata[15],m_axis_data_tdata[15],m_axis_data_tdata[15],m_axis_data_tdata[15],m_axis_data_tdata[15],m_axis_data_tdata[15],m_axis_data_tdata}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_m_axis_tdata0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({m_axis_data_tdata[15],m_axis_data_tdata[15],m_axis_data_tdata}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_m_axis_tdata0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_m_axis_tdata0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_m_axis_tdata0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(m_axis_data_tvalid),
        .CLK(main_clk_250m),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_m_axis_tdata0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_m_axis_tdata0_OVERFLOW_UNCONNECTED),
        .P({NLW_m_axis_tdata0_P_UNCONNECTED[47:32],P}),
        .PATTERNBDETECT(NLW_m_axis_tdata0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_m_axis_tdata0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_m_axis_tdata0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_m_axis_tdata0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_m_axis_tdata0_XOROUT_UNCONNECTED[7:0]));
  FDCE m_axis_tvalid_reg
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(m_axis_tvalid_reg_0),
        .D(m_axis_data_tvalid),
        .Q(pow_m_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \shift_count[6]_i_1 
       (.I0(pow_m_axis_tvalid),
        .I1(sw_en),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \shift_count_d[0]_i_1 
       (.I0(pow_m_axis_tvalid),
        .I1(Q[0]),
        .I2(sw_en),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \shift_count_d[1]_i_1 
       (.I0(pow_m_axis_tvalid),
        .I1(Q[1]),
        .I2(sw_en),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \shift_count_d[4]_i_1 
       (.I0(pow_m_axis_tvalid),
        .I1(Q[2]),
        .I2(sw_en),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \shift_count_d[5]_i_1 
       (.I0(pow_m_axis_tvalid),
        .I1(Q[3]),
        .I2(sw_en),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][0]_srl32_i_1 
       (.I0(P[0]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][10]_srl32_i_1 
       (.I0(P[10]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[10]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][11]_srl32_i_1 
       (.I0(P[11]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[11]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][12]_srl32_i_1 
       (.I0(P[12]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[12]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][13]_srl32_i_1 
       (.I0(P[13]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[13]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][14]_srl32_i_1 
       (.I0(P[14]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[14]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][15]_srl32_i_1 
       (.I0(P[15]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[15]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][16]_srl32_i_1 
       (.I0(P[16]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[16]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][17]_srl32_i_1 
       (.I0(P[17]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[17]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][18]_srl32_i_1 
       (.I0(P[18]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[18]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][19]_srl32_i_1 
       (.I0(P[19]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[19]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][1]_srl32_i_1 
       (.I0(P[1]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][20]_srl32_i_1 
       (.I0(P[20]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[20]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][21]_srl32_i_1 
       (.I0(P[21]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[21]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][22]_srl32_i_1 
       (.I0(P[22]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[22]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][23]_srl32_i_1 
       (.I0(P[23]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[23]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][24]_srl32_i_1 
       (.I0(P[24]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[24]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][25]_srl32_i_1 
       (.I0(P[25]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[25]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][26]_srl32_i_1 
       (.I0(P[26]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[26]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][27]_srl32_i_1 
       (.I0(P[27]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[27]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][28]_srl32_i_1 
       (.I0(P[28]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[28]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][29]_srl32_i_1 
       (.I0(P[29]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[29]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][2]_srl32_i_1 
       (.I0(P[2]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[2]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][30]_srl32_i_1 
       (.I0(P[30]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[30]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][31]_srl32_i_1 
       (.I0(pow_m_axis_tvalid),
        .I1(sw_en),
        .O(sample_fire));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][31]_srl32_i_2 
       (.I0(P[31]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[31]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][3]_srl32_i_1 
       (.I0(P[3]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][4]_srl32_i_1 
       (.I0(P[4]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[4]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][5]_srl32_i_1 
       (.I0(P[5]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[5]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][6]_srl32_i_1 
       (.I0(P[6]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[6]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][7]_srl32_i_1 
       (.I0(P[7]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][8]_srl32_i_1 
       (.I0(P[8]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[8]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \window_pipe_reg[31][9]_srl32_i_1 
       (.I0(P[9]),
        .I1(\window_pipe_reg[31][31]_srl32 ),
        .O(pow_data[9]));
endmodule

(* ORIG_REF_NAME = "reset_sync_n" *) 
module ZYNQ_BlockDesign_EDM_Monitor_0_0_reset_sync_n
   (out,
    \sync_ff_reg[2]_0 ,
    rst_n_async_0,
    rst_n_async,
    locked,
    main_clk_250m);
  output [0:0]out;
  output \sync_ff_reg[2]_0 ;
  output rst_n_async_0;
  input rst_n_async;
  input locked;
  input main_clk_250m;

  wire locked;
  wire main_clk_250m;
  wire rst_n_async;
  wire rst_n_async_0;
  (* async_reg = "true" *) wire [2:0]sync_ff;
  wire \sync_ff_reg[2]_0 ;

  assign out[0] = sync_ff[2];
  LUT1 #(
    .INIT(2'h1)) 
    stop_signal_i_2
       (.I0(sync_ff[2]),
        .O(\sync_ff_reg[2]_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \sync_ff[2]_i_1 
       (.I0(rst_n_async),
        .I1(locked),
        .O(rst_n_async_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_ff_reg[0] 
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(rst_n_async_0),
        .D(1'b1),
        .Q(sync_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_ff_reg[1] 
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(rst_n_async_0),
        .D(sync_ff[0]),
        .Q(sync_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_ff_reg[2] 
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(rst_n_async_0),
        .D(sync_ff[1]),
        .Q(sync_ff[2]));
endmodule

(* ORIG_REF_NAME = "reset_sync_n" *) 
module ZYNQ_BlockDesign_EDM_Monitor_0_0_reset_sync_n_0
   (out,
    wr_rst,
    CLK,
    \sync_ff_reg[2]_0 );
  output [0:0]out;
  output wr_rst;
  input CLK;
  input \sync_ff_reg[2]_0 ;

  wire CLK;
  (* async_reg = "true" *) wire [2:0]sync_ff;
  wire \sync_ff_reg[2]_0 ;
  wire wr_rst;

  assign out[0] = sync_ff[2];
  LUT1 #(
    .INIT(2'h1)) 
    \gen_adc1_path[0].iddre1_inst1_i_1 
       (.I0(sync_ff[2]),
        .O(wr_rst));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_ff_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sync_ff_reg[2]_0 ),
        .D(1'b1),
        .Q(sync_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_ff_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sync_ff_reg[2]_0 ),
        .D(sync_ff[0]),
        .Q(sync_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_ff_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sync_ff_reg[2]_0 ),
        .D(sync_ff[1]),
        .Q(sync_ff[2]));
endmodule

(* ORIG_REF_NAME = "slide_window" *) 
module ZYNQ_BlockDesign_EDM_Monitor_0_0_slide_window
   (enable_d,
    sw_result_valid,
    cfg_update_sync,
    cfg_update_sync_d,
    \energy_accumulator_reg[6]_0 ,
    \energy_accumulator_reg[14]_0 ,
    \energy_accumulator_reg[22]_0 ,
    \energy_accumulator_reg[30]_0 ,
    \energy_accumulator_reg[38]_0 ,
    \energy_accumulator_reg[46]_0 ,
    \energy_accumulator_reg[54]_0 ,
    O,
    Q,
    power_stop_signal,
    \energy_init_reg[63]_0 ,
    \status_reg[3]_0 ,
    sw_en,
    main_clk_250m,
    \energy_threshold_active_reg[63]_0 ,
    result_valid_reg_0,
    cfg_update_toggle,
    sample_fire,
    pow_data,
    pow_m_axis_tvalid,
    energy_accumulator0__0_carry__3_0,
    P,
    cfg_energy_threshold,
    E,
    D,
    \shift_count_d_reg[6]_0 );
  output enable_d;
  output sw_result_valid;
  output cfg_update_sync;
  output cfg_update_sync_d;
  output [7:0]\energy_accumulator_reg[6]_0 ;
  output [7:0]\energy_accumulator_reg[14]_0 ;
  output [7:0]\energy_accumulator_reg[22]_0 ;
  output [7:0]\energy_accumulator_reg[30]_0 ;
  output [7:0]\energy_accumulator_reg[38]_0 ;
  output [7:0]\energy_accumulator_reg[46]_0 ;
  output [7:0]\energy_accumulator_reg[54]_0 ;
  output [7:0]O;
  output [6:0]Q;
  output power_stop_signal;
  output [63:0]\energy_init_reg[63]_0 ;
  output [2:0]\status_reg[3]_0 ;
  input sw_en;
  input main_clk_250m;
  input \energy_threshold_active_reg[63]_0 ;
  input result_valid_reg_0;
  input cfg_update_toggle;
  input sample_fire;
  input [31:0]pow_data;
  input pow_m_axis_tvalid;
  input energy_accumulator0__0_carry__3_0;
  input [31:0]P;
  input [63:0]cfg_energy_threshold;
  input [0:0]E;
  input [63:0]D;
  input [6:0]\shift_count_d_reg[6]_0 ;

  wire [63:0]D;
  wire [0:0]E;
  wire [7:0]O;
  wire [31:0]P;
  wire [6:0]Q;
  wire [63:0]cfg_energy_threshold;
  wire cfg_update_meta;
  wire cfg_update_pending1;
  wire cfg_update_pending_i_1__0_n_0;
  wire cfg_update_pending_reg_n_0;
  wire cfg_update_sync;
  wire cfg_update_sync_d;
  wire cfg_update_toggle;
  wire enable_d;
  wire energy_accumulator0__0_carry__0_i_10_n_0;
  wire energy_accumulator0__0_carry__0_i_11_n_0;
  wire energy_accumulator0__0_carry__0_i_12_n_0;
  wire energy_accumulator0__0_carry__0_i_13_n_0;
  wire energy_accumulator0__0_carry__0_i_14_n_0;
  wire energy_accumulator0__0_carry__0_i_15_n_0;
  wire energy_accumulator0__0_carry__0_i_16_n_0;
  wire energy_accumulator0__0_carry__0_i_1_n_0;
  wire energy_accumulator0__0_carry__0_i_2_n_0;
  wire energy_accumulator0__0_carry__0_i_3_n_0;
  wire energy_accumulator0__0_carry__0_i_4_n_0;
  wire energy_accumulator0__0_carry__0_i_5_n_0;
  wire energy_accumulator0__0_carry__0_i_6_n_0;
  wire energy_accumulator0__0_carry__0_i_7_n_0;
  wire energy_accumulator0__0_carry__0_i_8_n_0;
  wire energy_accumulator0__0_carry__0_i_9_n_0;
  wire energy_accumulator0__0_carry__0_n_0;
  wire energy_accumulator0__0_carry__0_n_1;
  wire energy_accumulator0__0_carry__0_n_2;
  wire energy_accumulator0__0_carry__0_n_3;
  wire energy_accumulator0__0_carry__0_n_4;
  wire energy_accumulator0__0_carry__0_n_5;
  wire energy_accumulator0__0_carry__0_n_6;
  wire energy_accumulator0__0_carry__0_n_7;
  wire energy_accumulator0__0_carry__1_i_10_n_0;
  wire energy_accumulator0__0_carry__1_i_11_n_0;
  wire energy_accumulator0__0_carry__1_i_12_n_0;
  wire energy_accumulator0__0_carry__1_i_13_n_0;
  wire energy_accumulator0__0_carry__1_i_14_n_0;
  wire energy_accumulator0__0_carry__1_i_15_n_0;
  wire energy_accumulator0__0_carry__1_i_16_n_0;
  wire energy_accumulator0__0_carry__1_i_1_n_0;
  wire energy_accumulator0__0_carry__1_i_2_n_0;
  wire energy_accumulator0__0_carry__1_i_3_n_0;
  wire energy_accumulator0__0_carry__1_i_4_n_0;
  wire energy_accumulator0__0_carry__1_i_5_n_0;
  wire energy_accumulator0__0_carry__1_i_6_n_0;
  wire energy_accumulator0__0_carry__1_i_7_n_0;
  wire energy_accumulator0__0_carry__1_i_8_n_0;
  wire energy_accumulator0__0_carry__1_i_9_n_0;
  wire energy_accumulator0__0_carry__1_n_0;
  wire energy_accumulator0__0_carry__1_n_1;
  wire energy_accumulator0__0_carry__1_n_2;
  wire energy_accumulator0__0_carry__1_n_3;
  wire energy_accumulator0__0_carry__1_n_4;
  wire energy_accumulator0__0_carry__1_n_5;
  wire energy_accumulator0__0_carry__1_n_6;
  wire energy_accumulator0__0_carry__1_n_7;
  wire energy_accumulator0__0_carry__2_i_10_n_0;
  wire energy_accumulator0__0_carry__2_i_11_n_0;
  wire energy_accumulator0__0_carry__2_i_12_n_0;
  wire energy_accumulator0__0_carry__2_i_13_n_0;
  wire energy_accumulator0__0_carry__2_i_14_n_0;
  wire energy_accumulator0__0_carry__2_i_15_n_0;
  wire energy_accumulator0__0_carry__2_i_16_n_0;
  wire energy_accumulator0__0_carry__2_i_1_n_0;
  wire energy_accumulator0__0_carry__2_i_2_n_0;
  wire energy_accumulator0__0_carry__2_i_3_n_0;
  wire energy_accumulator0__0_carry__2_i_4_n_0;
  wire energy_accumulator0__0_carry__2_i_5_n_0;
  wire energy_accumulator0__0_carry__2_i_6_n_0;
  wire energy_accumulator0__0_carry__2_i_7_n_0;
  wire energy_accumulator0__0_carry__2_i_8_n_0;
  wire energy_accumulator0__0_carry__2_i_9_n_0;
  wire energy_accumulator0__0_carry__2_n_0;
  wire energy_accumulator0__0_carry__2_n_1;
  wire energy_accumulator0__0_carry__2_n_2;
  wire energy_accumulator0__0_carry__2_n_3;
  wire energy_accumulator0__0_carry__2_n_4;
  wire energy_accumulator0__0_carry__2_n_5;
  wire energy_accumulator0__0_carry__2_n_6;
  wire energy_accumulator0__0_carry__2_n_7;
  wire energy_accumulator0__0_carry__3_0;
  wire energy_accumulator0__0_carry__3_i_10_n_0;
  wire energy_accumulator0__0_carry__3_i_11_n_0;
  wire energy_accumulator0__0_carry__3_i_12_n_0;
  wire energy_accumulator0__0_carry__3_i_13_n_0;
  wire energy_accumulator0__0_carry__3_i_14_n_0;
  wire energy_accumulator0__0_carry__3_i_15_n_0;
  wire energy_accumulator0__0_carry__3_i_16_n_0;
  wire energy_accumulator0__0_carry__3_i_1_n_0;
  wire energy_accumulator0__0_carry__3_i_2_n_0;
  wire energy_accumulator0__0_carry__3_i_3_n_0;
  wire energy_accumulator0__0_carry__3_i_4_n_0;
  wire energy_accumulator0__0_carry__3_i_5_n_0;
  wire energy_accumulator0__0_carry__3_i_6_n_0;
  wire energy_accumulator0__0_carry__3_i_7_n_0;
  wire energy_accumulator0__0_carry__3_i_8_n_0;
  wire energy_accumulator0__0_carry__3_i_9_n_0;
  wire energy_accumulator0__0_carry__3_n_0;
  wire energy_accumulator0__0_carry__3_n_1;
  wire energy_accumulator0__0_carry__3_n_2;
  wire energy_accumulator0__0_carry__3_n_3;
  wire energy_accumulator0__0_carry__3_n_4;
  wire energy_accumulator0__0_carry__3_n_5;
  wire energy_accumulator0__0_carry__3_n_6;
  wire energy_accumulator0__0_carry__3_n_7;
  wire energy_accumulator0__0_carry__4_i_10_n_0;
  wire energy_accumulator0__0_carry__4_i_11_n_0;
  wire energy_accumulator0__0_carry__4_i_12_n_0;
  wire energy_accumulator0__0_carry__4_i_13_n_0;
  wire energy_accumulator0__0_carry__4_i_14_n_0;
  wire energy_accumulator0__0_carry__4_i_15_n_0;
  wire energy_accumulator0__0_carry__4_i_16_n_0;
  wire energy_accumulator0__0_carry__4_i_1_n_0;
  wire energy_accumulator0__0_carry__4_i_2_n_0;
  wire energy_accumulator0__0_carry__4_i_3_n_0;
  wire energy_accumulator0__0_carry__4_i_4_n_0;
  wire energy_accumulator0__0_carry__4_i_5_n_0;
  wire energy_accumulator0__0_carry__4_i_6_n_0;
  wire energy_accumulator0__0_carry__4_i_7_n_0;
  wire energy_accumulator0__0_carry__4_i_8_n_0;
  wire energy_accumulator0__0_carry__4_i_9_n_0;
  wire energy_accumulator0__0_carry__4_n_0;
  wire energy_accumulator0__0_carry__4_n_1;
  wire energy_accumulator0__0_carry__4_n_2;
  wire energy_accumulator0__0_carry__4_n_3;
  wire energy_accumulator0__0_carry__4_n_4;
  wire energy_accumulator0__0_carry__4_n_5;
  wire energy_accumulator0__0_carry__4_n_6;
  wire energy_accumulator0__0_carry__4_n_7;
  wire energy_accumulator0__0_carry__5_i_10_n_0;
  wire energy_accumulator0__0_carry__5_i_11_n_0;
  wire energy_accumulator0__0_carry__5_i_12_n_0;
  wire energy_accumulator0__0_carry__5_i_13_n_0;
  wire energy_accumulator0__0_carry__5_i_14_n_0;
  wire energy_accumulator0__0_carry__5_i_15_n_0;
  wire energy_accumulator0__0_carry__5_i_16_n_0;
  wire energy_accumulator0__0_carry__5_i_1_n_0;
  wire energy_accumulator0__0_carry__5_i_2_n_0;
  wire energy_accumulator0__0_carry__5_i_3_n_0;
  wire energy_accumulator0__0_carry__5_i_4_n_0;
  wire energy_accumulator0__0_carry__5_i_5_n_0;
  wire energy_accumulator0__0_carry__5_i_6_n_0;
  wire energy_accumulator0__0_carry__5_i_7_n_0;
  wire energy_accumulator0__0_carry__5_i_8_n_0;
  wire energy_accumulator0__0_carry__5_i_9_n_0;
  wire energy_accumulator0__0_carry__5_n_0;
  wire energy_accumulator0__0_carry__5_n_1;
  wire energy_accumulator0__0_carry__5_n_2;
  wire energy_accumulator0__0_carry__5_n_3;
  wire energy_accumulator0__0_carry__5_n_4;
  wire energy_accumulator0__0_carry__5_n_5;
  wire energy_accumulator0__0_carry__5_n_6;
  wire energy_accumulator0__0_carry__5_n_7;
  wire energy_accumulator0__0_carry__6_i_10_n_0;
  wire energy_accumulator0__0_carry__6_i_11_n_0;
  wire energy_accumulator0__0_carry__6_i_12_n_0;
  wire energy_accumulator0__0_carry__6_i_13_n_0;
  wire energy_accumulator0__0_carry__6_i_14_n_0;
  wire energy_accumulator0__0_carry__6_i_15_n_0;
  wire energy_accumulator0__0_carry__6_i_1_n_0;
  wire energy_accumulator0__0_carry__6_i_2_n_0;
  wire energy_accumulator0__0_carry__6_i_3_n_0;
  wire energy_accumulator0__0_carry__6_i_4_n_0;
  wire energy_accumulator0__0_carry__6_i_5_n_0;
  wire energy_accumulator0__0_carry__6_i_6_n_0;
  wire energy_accumulator0__0_carry__6_i_7_n_0;
  wire energy_accumulator0__0_carry__6_i_8_n_0;
  wire energy_accumulator0__0_carry__6_i_9_n_0;
  wire energy_accumulator0__0_carry__6_n_1;
  wire energy_accumulator0__0_carry__6_n_2;
  wire energy_accumulator0__0_carry__6_n_3;
  wire energy_accumulator0__0_carry__6_n_4;
  wire energy_accumulator0__0_carry__6_n_5;
  wire energy_accumulator0__0_carry__6_n_6;
  wire energy_accumulator0__0_carry__6_n_7;
  wire energy_accumulator0__0_carry_i_10_n_0;
  wire energy_accumulator0__0_carry_i_11_n_0;
  wire energy_accumulator0__0_carry_i_12_n_0;
  wire energy_accumulator0__0_carry_i_13_n_0;
  wire energy_accumulator0__0_carry_i_14_n_0;
  wire energy_accumulator0__0_carry_i_15_n_0;
  wire energy_accumulator0__0_carry_i_16_n_0;
  wire energy_accumulator0__0_carry_i_1_n_0;
  wire energy_accumulator0__0_carry_i_2_n_0;
  wire energy_accumulator0__0_carry_i_3_n_0;
  wire energy_accumulator0__0_carry_i_4_n_0;
  wire energy_accumulator0__0_carry_i_5_n_0;
  wire energy_accumulator0__0_carry_i_6_n_0;
  wire energy_accumulator0__0_carry_i_7_n_0;
  wire energy_accumulator0__0_carry_i_8_n_0;
  wire energy_accumulator0__0_carry_i_9_n_0;
  wire energy_accumulator0__0_carry_n_0;
  wire energy_accumulator0__0_carry_n_1;
  wire energy_accumulator0__0_carry_n_2;
  wire energy_accumulator0__0_carry_n_3;
  wire energy_accumulator0__0_carry_n_4;
  wire energy_accumulator0__0_carry_n_5;
  wire energy_accumulator0__0_carry_n_6;
  wire energy_accumulator0__0_carry_n_7;
  wire [7:0]\energy_accumulator_reg[14]_0 ;
  wire [7:0]\energy_accumulator_reg[22]_0 ;
  wire [7:0]\energy_accumulator_reg[30]_0 ;
  wire [7:0]\energy_accumulator_reg[38]_0 ;
  wire [7:0]\energy_accumulator_reg[46]_0 ;
  wire [7:0]\energy_accumulator_reg[54]_0 ;
  wire [7:0]\energy_accumulator_reg[6]_0 ;
  wire \energy_accumulator_reg_n_0_[0] ;
  wire \energy_accumulator_reg_n_0_[10] ;
  wire \energy_accumulator_reg_n_0_[11] ;
  wire \energy_accumulator_reg_n_0_[12] ;
  wire \energy_accumulator_reg_n_0_[13] ;
  wire \energy_accumulator_reg_n_0_[14] ;
  wire \energy_accumulator_reg_n_0_[15] ;
  wire \energy_accumulator_reg_n_0_[16] ;
  wire \energy_accumulator_reg_n_0_[17] ;
  wire \energy_accumulator_reg_n_0_[18] ;
  wire \energy_accumulator_reg_n_0_[19] ;
  wire \energy_accumulator_reg_n_0_[1] ;
  wire \energy_accumulator_reg_n_0_[20] ;
  wire \energy_accumulator_reg_n_0_[21] ;
  wire \energy_accumulator_reg_n_0_[22] ;
  wire \energy_accumulator_reg_n_0_[23] ;
  wire \energy_accumulator_reg_n_0_[24] ;
  wire \energy_accumulator_reg_n_0_[25] ;
  wire \energy_accumulator_reg_n_0_[26] ;
  wire \energy_accumulator_reg_n_0_[27] ;
  wire \energy_accumulator_reg_n_0_[28] ;
  wire \energy_accumulator_reg_n_0_[29] ;
  wire \energy_accumulator_reg_n_0_[2] ;
  wire \energy_accumulator_reg_n_0_[30] ;
  wire \energy_accumulator_reg_n_0_[31] ;
  wire \energy_accumulator_reg_n_0_[32] ;
  wire \energy_accumulator_reg_n_0_[33] ;
  wire \energy_accumulator_reg_n_0_[34] ;
  wire \energy_accumulator_reg_n_0_[35] ;
  wire \energy_accumulator_reg_n_0_[36] ;
  wire \energy_accumulator_reg_n_0_[37] ;
  wire \energy_accumulator_reg_n_0_[38] ;
  wire \energy_accumulator_reg_n_0_[39] ;
  wire \energy_accumulator_reg_n_0_[3] ;
  wire \energy_accumulator_reg_n_0_[40] ;
  wire \energy_accumulator_reg_n_0_[41] ;
  wire \energy_accumulator_reg_n_0_[42] ;
  wire \energy_accumulator_reg_n_0_[43] ;
  wire \energy_accumulator_reg_n_0_[44] ;
  wire \energy_accumulator_reg_n_0_[45] ;
  wire \energy_accumulator_reg_n_0_[46] ;
  wire \energy_accumulator_reg_n_0_[47] ;
  wire \energy_accumulator_reg_n_0_[48] ;
  wire \energy_accumulator_reg_n_0_[49] ;
  wire \energy_accumulator_reg_n_0_[4] ;
  wire \energy_accumulator_reg_n_0_[50] ;
  wire \energy_accumulator_reg_n_0_[51] ;
  wire \energy_accumulator_reg_n_0_[52] ;
  wire \energy_accumulator_reg_n_0_[53] ;
  wire \energy_accumulator_reg_n_0_[54] ;
  wire \energy_accumulator_reg_n_0_[55] ;
  wire \energy_accumulator_reg_n_0_[56] ;
  wire \energy_accumulator_reg_n_0_[57] ;
  wire \energy_accumulator_reg_n_0_[58] ;
  wire \energy_accumulator_reg_n_0_[59] ;
  wire \energy_accumulator_reg_n_0_[5] ;
  wire \energy_accumulator_reg_n_0_[60] ;
  wire \energy_accumulator_reg_n_0_[61] ;
  wire \energy_accumulator_reg_n_0_[62] ;
  wire \energy_accumulator_reg_n_0_[63] ;
  wire \energy_accumulator_reg_n_0_[6] ;
  wire \energy_accumulator_reg_n_0_[7] ;
  wire \energy_accumulator_reg_n_0_[8] ;
  wire \energy_accumulator_reg_n_0_[9] ;
  wire \energy_init[63]_i_2_n_0 ;
  wire [63:0]\energy_init_reg[63]_0 ;
  wire [63:0]energy_threshold_active;
  wire \energy_threshold_active_reg[63]_0 ;
  wire main_clk_250m;
  wire [62:62]p_0_out;
  wire [31:0]pow_data;
  wire pow_m_axis_tvalid;
  wire power_stop_signal;
  wire result_valid_reg_0;
  wire sample_fire;
  wire \shift_count[0]_i_1_n_0 ;
  wire \shift_count[1]_i_1_n_0 ;
  wire \shift_count[2]_i_1_n_0 ;
  wire \shift_count[2]_i_2_n_0 ;
  wire \shift_count[3]_i_1_n_0 ;
  wire \shift_count[3]_i_2_n_0 ;
  wire \shift_count[4]_i_1_n_0 ;
  wire \shift_count[4]_i_2_n_0 ;
  wire \shift_count[5]_i_1_n_0 ;
  wire \shift_count[6]_i_2_n_0 ;
  wire \shift_count[6]_i_3_n_0 ;
  wire [6:0]shift_count_d;
  wire [6:0]\shift_count_d_reg[6]_0 ;
  wire shift_count_max_reached;
  wire [3:0]status;
  wire status1_carry__0_i_10_n_0;
  wire status1_carry__0_i_11_n_0;
  wire status1_carry__0_i_12_n_0;
  wire status1_carry__0_i_13_n_0;
  wire status1_carry__0_i_14_n_0;
  wire status1_carry__0_i_15_n_0;
  wire status1_carry__0_i_16_n_0;
  wire status1_carry__0_i_1_n_0;
  wire status1_carry__0_i_2_n_0;
  wire status1_carry__0_i_3_n_0;
  wire status1_carry__0_i_4_n_0;
  wire status1_carry__0_i_5_n_0;
  wire status1_carry__0_i_6_n_0;
  wire status1_carry__0_i_7_n_0;
  wire status1_carry__0_i_8_n_0;
  wire status1_carry__0_i_9_n_0;
  wire status1_carry__0_n_0;
  wire status1_carry__0_n_1;
  wire status1_carry__0_n_2;
  wire status1_carry__0_n_3;
  wire status1_carry__0_n_4;
  wire status1_carry__0_n_5;
  wire status1_carry__0_n_6;
  wire status1_carry__0_n_7;
  wire status1_carry__1_i_10_n_0;
  wire status1_carry__1_i_11_n_0;
  wire status1_carry__1_i_12_n_0;
  wire status1_carry__1_i_13_n_0;
  wire status1_carry__1_i_14_n_0;
  wire status1_carry__1_i_15_n_0;
  wire status1_carry__1_i_16_n_0;
  wire status1_carry__1_i_1_n_0;
  wire status1_carry__1_i_2_n_0;
  wire status1_carry__1_i_3_n_0;
  wire status1_carry__1_i_4_n_0;
  wire status1_carry__1_i_5_n_0;
  wire status1_carry__1_i_6_n_0;
  wire status1_carry__1_i_7_n_0;
  wire status1_carry__1_i_8_n_0;
  wire status1_carry__1_i_9_n_0;
  wire status1_carry__1_n_0;
  wire status1_carry__1_n_1;
  wire status1_carry__1_n_2;
  wire status1_carry__1_n_3;
  wire status1_carry__1_n_4;
  wire status1_carry__1_n_5;
  wire status1_carry__1_n_6;
  wire status1_carry__1_n_7;
  wire status1_carry__2_i_10_n_0;
  wire status1_carry__2_i_11_n_0;
  wire status1_carry__2_i_12_n_0;
  wire status1_carry__2_i_13_n_0;
  wire status1_carry__2_i_14_n_0;
  wire status1_carry__2_i_15_n_0;
  wire status1_carry__2_i_16_n_0;
  wire status1_carry__2_i_1_n_0;
  wire status1_carry__2_i_2_n_0;
  wire status1_carry__2_i_3_n_0;
  wire status1_carry__2_i_4_n_0;
  wire status1_carry__2_i_5_n_0;
  wire status1_carry__2_i_6_n_0;
  wire status1_carry__2_i_7_n_0;
  wire status1_carry__2_i_8_n_0;
  wire status1_carry__2_i_9_n_0;
  wire status1_carry__2_n_0;
  wire status1_carry__2_n_1;
  wire status1_carry__2_n_2;
  wire status1_carry__2_n_3;
  wire status1_carry__2_n_4;
  wire status1_carry__2_n_5;
  wire status1_carry__2_n_6;
  wire status1_carry__2_n_7;
  wire status1_carry_i_10_n_0;
  wire status1_carry_i_11_n_0;
  wire status1_carry_i_12_n_0;
  wire status1_carry_i_13_n_0;
  wire status1_carry_i_14_n_0;
  wire status1_carry_i_15_n_0;
  wire status1_carry_i_16_n_0;
  wire status1_carry_i_1_n_0;
  wire status1_carry_i_2_n_0;
  wire status1_carry_i_3_n_0;
  wire status1_carry_i_4_n_0;
  wire status1_carry_i_5_n_0;
  wire status1_carry_i_6_n_0;
  wire status1_carry_i_7_n_0;
  wire status1_carry_i_8_n_0;
  wire status1_carry_i_9_n_0;
  wire status1_carry_n_0;
  wire status1_carry_n_1;
  wire status1_carry_n_2;
  wire status1_carry_n_3;
  wire status1_carry_n_4;
  wire status1_carry_n_5;
  wire status1_carry_n_6;
  wire status1_carry_n_7;
  wire \status[3]_i_1_n_0 ;
  wire [2:0]\status_reg[3]_0 ;
  wire stop_signal_i_1_n_0;
  wire stop_signal_i_4_n_0;
  wire sw_en;
  wire sw_result_valid;
  wire \window_pipe_reg[31][0]_srl32_n_1 ;
  wire \window_pipe_reg[31][10]_srl32_n_1 ;
  wire \window_pipe_reg[31][11]_srl32_n_1 ;
  wire \window_pipe_reg[31][12]_srl32_n_1 ;
  wire \window_pipe_reg[31][13]_srl32_n_1 ;
  wire \window_pipe_reg[31][14]_srl32_n_1 ;
  wire \window_pipe_reg[31][15]_srl32_n_1 ;
  wire \window_pipe_reg[31][16]_srl32_n_1 ;
  wire \window_pipe_reg[31][17]_srl32_n_1 ;
  wire \window_pipe_reg[31][18]_srl32_n_1 ;
  wire \window_pipe_reg[31][19]_srl32_n_1 ;
  wire \window_pipe_reg[31][1]_srl32_n_1 ;
  wire \window_pipe_reg[31][20]_srl32_n_1 ;
  wire \window_pipe_reg[31][21]_srl32_n_1 ;
  wire \window_pipe_reg[31][22]_srl32_n_1 ;
  wire \window_pipe_reg[31][23]_srl32_n_1 ;
  wire \window_pipe_reg[31][24]_srl32_n_1 ;
  wire \window_pipe_reg[31][25]_srl32_n_1 ;
  wire \window_pipe_reg[31][26]_srl32_n_1 ;
  wire \window_pipe_reg[31][27]_srl32_n_1 ;
  wire \window_pipe_reg[31][28]_srl32_n_1 ;
  wire \window_pipe_reg[31][29]_srl32_n_1 ;
  wire \window_pipe_reg[31][2]_srl32_n_1 ;
  wire \window_pipe_reg[31][30]_srl32_n_1 ;
  wire \window_pipe_reg[31][31]_srl32_n_1 ;
  wire \window_pipe_reg[31][3]_srl32_n_1 ;
  wire \window_pipe_reg[31][4]_srl32_n_1 ;
  wire \window_pipe_reg[31][5]_srl32_n_1 ;
  wire \window_pipe_reg[31][6]_srl32_n_1 ;
  wire \window_pipe_reg[31][7]_srl32_n_1 ;
  wire \window_pipe_reg[31][8]_srl32_n_1 ;
  wire \window_pipe_reg[31][9]_srl32_n_1 ;
  wire \window_pipe_reg[63][0]_srl32_n_1 ;
  wire \window_pipe_reg[63][10]_srl32_n_1 ;
  wire \window_pipe_reg[63][11]_srl32_n_1 ;
  wire \window_pipe_reg[63][12]_srl32_n_1 ;
  wire \window_pipe_reg[63][13]_srl32_n_1 ;
  wire \window_pipe_reg[63][14]_srl32_n_1 ;
  wire \window_pipe_reg[63][15]_srl32_n_1 ;
  wire \window_pipe_reg[63][16]_srl32_n_1 ;
  wire \window_pipe_reg[63][17]_srl32_n_1 ;
  wire \window_pipe_reg[63][18]_srl32_n_1 ;
  wire \window_pipe_reg[63][19]_srl32_n_1 ;
  wire \window_pipe_reg[63][1]_srl32_n_1 ;
  wire \window_pipe_reg[63][20]_srl32_n_1 ;
  wire \window_pipe_reg[63][21]_srl32_n_1 ;
  wire \window_pipe_reg[63][22]_srl32_n_1 ;
  wire \window_pipe_reg[63][23]_srl32_n_1 ;
  wire \window_pipe_reg[63][24]_srl32_n_1 ;
  wire \window_pipe_reg[63][25]_srl32_n_1 ;
  wire \window_pipe_reg[63][26]_srl32_n_1 ;
  wire \window_pipe_reg[63][27]_srl32_n_1 ;
  wire \window_pipe_reg[63][28]_srl32_n_1 ;
  wire \window_pipe_reg[63][29]_srl32_n_1 ;
  wire \window_pipe_reg[63][2]_srl32_n_1 ;
  wire \window_pipe_reg[63][30]_srl32_n_1 ;
  wire \window_pipe_reg[63][31]_srl32_n_1 ;
  wire \window_pipe_reg[63][3]_srl32_n_1 ;
  wire \window_pipe_reg[63][4]_srl32_n_1 ;
  wire \window_pipe_reg[63][5]_srl32_n_1 ;
  wire \window_pipe_reg[63][6]_srl32_n_1 ;
  wire \window_pipe_reg[63][7]_srl32_n_1 ;
  wire \window_pipe_reg[63][8]_srl32_n_1 ;
  wire \window_pipe_reg[63][9]_srl32_n_1 ;
  wire \window_pipe_reg[95][0]_srl32_n_1 ;
  wire \window_pipe_reg[95][10]_srl32_n_1 ;
  wire \window_pipe_reg[95][11]_srl32_n_1 ;
  wire \window_pipe_reg[95][12]_srl32_n_1 ;
  wire \window_pipe_reg[95][13]_srl32_n_1 ;
  wire \window_pipe_reg[95][14]_srl32_n_1 ;
  wire \window_pipe_reg[95][15]_srl32_n_1 ;
  wire \window_pipe_reg[95][16]_srl32_n_1 ;
  wire \window_pipe_reg[95][17]_srl32_n_1 ;
  wire \window_pipe_reg[95][18]_srl32_n_1 ;
  wire \window_pipe_reg[95][19]_srl32_n_1 ;
  wire \window_pipe_reg[95][1]_srl32_n_1 ;
  wire \window_pipe_reg[95][20]_srl32_n_1 ;
  wire \window_pipe_reg[95][21]_srl32_n_1 ;
  wire \window_pipe_reg[95][22]_srl32_n_1 ;
  wire \window_pipe_reg[95][23]_srl32_n_1 ;
  wire \window_pipe_reg[95][24]_srl32_n_1 ;
  wire \window_pipe_reg[95][25]_srl32_n_1 ;
  wire \window_pipe_reg[95][26]_srl32_n_1 ;
  wire \window_pipe_reg[95][27]_srl32_n_1 ;
  wire \window_pipe_reg[95][28]_srl32_n_1 ;
  wire \window_pipe_reg[95][29]_srl32_n_1 ;
  wire \window_pipe_reg[95][2]_srl32_n_1 ;
  wire \window_pipe_reg[95][30]_srl32_n_1 ;
  wire \window_pipe_reg[95][31]_srl32_n_1 ;
  wire \window_pipe_reg[95][3]_srl32_n_1 ;
  wire \window_pipe_reg[95][4]_srl32_n_1 ;
  wire \window_pipe_reg[95][5]_srl32_n_1 ;
  wire \window_pipe_reg[95][6]_srl32_n_1 ;
  wire \window_pipe_reg[95][7]_srl32_n_1 ;
  wire \window_pipe_reg[95][8]_srl32_n_1 ;
  wire \window_pipe_reg[95][9]_srl32_n_1 ;
  wire \window_pipe_reg[98][0]_srl3_n_0 ;
  wire \window_pipe_reg[98][10]_srl3_n_0 ;
  wire \window_pipe_reg[98][11]_srl3_n_0 ;
  wire \window_pipe_reg[98][12]_srl3_n_0 ;
  wire \window_pipe_reg[98][13]_srl3_n_0 ;
  wire \window_pipe_reg[98][14]_srl3_n_0 ;
  wire \window_pipe_reg[98][15]_srl3_n_0 ;
  wire \window_pipe_reg[98][16]_srl3_n_0 ;
  wire \window_pipe_reg[98][17]_srl3_n_0 ;
  wire \window_pipe_reg[98][18]_srl3_n_0 ;
  wire \window_pipe_reg[98][19]_srl3_n_0 ;
  wire \window_pipe_reg[98][1]_srl3_n_0 ;
  wire \window_pipe_reg[98][20]_srl3_n_0 ;
  wire \window_pipe_reg[98][21]_srl3_n_0 ;
  wire \window_pipe_reg[98][22]_srl3_n_0 ;
  wire \window_pipe_reg[98][23]_srl3_n_0 ;
  wire \window_pipe_reg[98][24]_srl3_n_0 ;
  wire \window_pipe_reg[98][25]_srl3_n_0 ;
  wire \window_pipe_reg[98][26]_srl3_n_0 ;
  wire \window_pipe_reg[98][27]_srl3_n_0 ;
  wire \window_pipe_reg[98][28]_srl3_n_0 ;
  wire \window_pipe_reg[98][29]_srl3_n_0 ;
  wire \window_pipe_reg[98][2]_srl3_n_0 ;
  wire \window_pipe_reg[98][30]_srl3_n_0 ;
  wire \window_pipe_reg[98][31]_srl3_n_0 ;
  wire \window_pipe_reg[98][3]_srl3_n_0 ;
  wire \window_pipe_reg[98][4]_srl3_n_0 ;
  wire \window_pipe_reg[98][5]_srl3_n_0 ;
  wire \window_pipe_reg[98][6]_srl3_n_0 ;
  wire \window_pipe_reg[98][7]_srl3_n_0 ;
  wire \window_pipe_reg[98][8]_srl3_n_0 ;
  wire \window_pipe_reg[98][9]_srl3_n_0 ;
  wire [31:0]\window_pipe_reg[99]_0 ;
  wire [7:7]NLW_energy_accumulator0__0_carry__6_CO_UNCONNECTED;
  wire [7:0]NLW_status1_carry_O_UNCONNECTED;
  wire [7:0]NLW_status1_carry__0_O_UNCONNECTED;
  wire [7:0]NLW_status1_carry__1_O_UNCONNECTED;
  wire [7:0]NLW_status1_carry__2_O_UNCONNECTED;
  wire \NLW_window_pipe_reg[31][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][10]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][11]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][12]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][13]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][14]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][15]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][16]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][17]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][18]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][19]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][20]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][21]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][22]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][23]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][24]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][25]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][26]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][27]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][28]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][29]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][2]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][30]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][31]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][3]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][4]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][5]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][6]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][7]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][8]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[31][9]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][10]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][11]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][12]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][13]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][14]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][15]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][16]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][17]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][18]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][19]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][20]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][21]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][22]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][23]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][24]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][25]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][26]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][27]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][28]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][29]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][2]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][30]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][31]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][3]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][4]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][5]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][6]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][7]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][8]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[63][9]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][0]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][10]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][11]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][12]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][13]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][14]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][15]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][16]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][17]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][18]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][19]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][1]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][20]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][21]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][22]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][23]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][24]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][25]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][26]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][27]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][28]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][29]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][2]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][30]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][31]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][3]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][4]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][5]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][6]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][7]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][8]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[95][9]_srl32_Q_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][0]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][10]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][11]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][12]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][13]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][14]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][15]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][16]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][17]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][18]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][19]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][1]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][20]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][21]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][22]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][23]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][24]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][25]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][26]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][27]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][28]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][29]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][2]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][30]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][31]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][3]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][4]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][5]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][6]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][7]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][8]_srl3_Q31_UNCONNECTED ;
  wire \NLW_window_pipe_reg[98][9]_srl3_Q31_UNCONNECTED ;

  FDCE cfg_update_meta_reg
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_update_toggle),
        .Q(cfg_update_meta));
  LUT4 #(
    .INIT(16'hF066)) 
    cfg_update_pending_i_1__0
       (.I0(cfg_update_sync_d),
        .I1(cfg_update_sync),
        .I2(sw_en),
        .I3(cfg_update_pending_reg_n_0),
        .O(cfg_update_pending_i_1__0_n_0));
  FDCE cfg_update_pending_reg
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_update_pending_i_1__0_n_0),
        .Q(cfg_update_pending_reg_n_0));
  FDCE cfg_update_sync_d_reg
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_update_sync),
        .Q(cfg_update_sync_d));
  FDCE cfg_update_sync_reg
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_update_meta),
        .Q(cfg_update_sync));
  FDCE enable_d_reg
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(sw_en),
        .Q(enable_d));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 energy_accumulator0__0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({energy_accumulator0__0_carry_n_0,energy_accumulator0__0_carry_n_1,energy_accumulator0__0_carry_n_2,energy_accumulator0__0_carry_n_3,energy_accumulator0__0_carry_n_4,energy_accumulator0__0_carry_n_5,energy_accumulator0__0_carry_n_6,energy_accumulator0__0_carry_n_7}),
        .DI({energy_accumulator0__0_carry_i_1_n_0,energy_accumulator0__0_carry_i_2_n_0,energy_accumulator0__0_carry_i_3_n_0,energy_accumulator0__0_carry_i_4_n_0,energy_accumulator0__0_carry_i_5_n_0,energy_accumulator0__0_carry_i_6_n_0,energy_accumulator0__0_carry_i_7_n_0,energy_accumulator0__0_carry_i_8_n_0}),
        .O(\energy_accumulator_reg[6]_0 ),
        .S({energy_accumulator0__0_carry_i_9_n_0,energy_accumulator0__0_carry_i_10_n_0,energy_accumulator0__0_carry_i_11_n_0,energy_accumulator0__0_carry_i_12_n_0,energy_accumulator0__0_carry_i_13_n_0,energy_accumulator0__0_carry_i_14_n_0,energy_accumulator0__0_carry_i_15_n_0,energy_accumulator0__0_carry_i_16_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 energy_accumulator0__0_carry__0
       (.CI(energy_accumulator0__0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({energy_accumulator0__0_carry__0_n_0,energy_accumulator0__0_carry__0_n_1,energy_accumulator0__0_carry__0_n_2,energy_accumulator0__0_carry__0_n_3,energy_accumulator0__0_carry__0_n_4,energy_accumulator0__0_carry__0_n_5,energy_accumulator0__0_carry__0_n_6,energy_accumulator0__0_carry__0_n_7}),
        .DI({energy_accumulator0__0_carry__0_i_1_n_0,energy_accumulator0__0_carry__0_i_2_n_0,energy_accumulator0__0_carry__0_i_3_n_0,energy_accumulator0__0_carry__0_i_4_n_0,energy_accumulator0__0_carry__0_i_5_n_0,energy_accumulator0__0_carry__0_i_6_n_0,energy_accumulator0__0_carry__0_i_7_n_0,energy_accumulator0__0_carry__0_i_8_n_0}),
        .O(\energy_accumulator_reg[14]_0 ),
        .S({energy_accumulator0__0_carry__0_i_9_n_0,energy_accumulator0__0_carry__0_i_10_n_0,energy_accumulator0__0_carry__0_i_11_n_0,energy_accumulator0__0_carry__0_i_12_n_0,energy_accumulator0__0_carry__0_i_13_n_0,energy_accumulator0__0_carry__0_i_14_n_0,energy_accumulator0__0_carry__0_i_15_n_0,energy_accumulator0__0_carry__0_i_16_n_0}));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__0_i_1
       (.I0(\energy_accumulator_reg_n_0_[14] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[14]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [14]),
        .O(energy_accumulator0__0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry__0_i_10
       (.I0(energy_accumulator0__0_carry__0_i_2_n_0),
        .I1(\energy_accumulator_reg_n_0_[14] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[14]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [14]),
        .O(energy_accumulator0__0_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry__0_i_11
       (.I0(energy_accumulator0__0_carry__0_i_3_n_0),
        .I1(\energy_accumulator_reg_n_0_[13] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[13]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [13]),
        .O(energy_accumulator0__0_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry__0_i_12
       (.I0(energy_accumulator0__0_carry__0_i_4_n_0),
        .I1(\energy_accumulator_reg_n_0_[12] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[12]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [12]),
        .O(energy_accumulator0__0_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry__0_i_13
       (.I0(energy_accumulator0__0_carry__0_i_5_n_0),
        .I1(\energy_accumulator_reg_n_0_[11] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[11]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [11]),
        .O(energy_accumulator0__0_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry__0_i_14
       (.I0(energy_accumulator0__0_carry__0_i_6_n_0),
        .I1(\energy_accumulator_reg_n_0_[10] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[10]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [10]),
        .O(energy_accumulator0__0_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry__0_i_15
       (.I0(energy_accumulator0__0_carry__0_i_7_n_0),
        .I1(\energy_accumulator_reg_n_0_[9] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[9]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [9]),
        .O(energy_accumulator0__0_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry__0_i_16
       (.I0(energy_accumulator0__0_carry__0_i_8_n_0),
        .I1(\energy_accumulator_reg_n_0_[8] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[8]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [8]),
        .O(energy_accumulator0__0_carry__0_i_16_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__0_i_2
       (.I0(\energy_accumulator_reg_n_0_[13] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[13]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [13]),
        .O(energy_accumulator0__0_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__0_i_3
       (.I0(\energy_accumulator_reg_n_0_[12] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[12]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [12]),
        .O(energy_accumulator0__0_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__0_i_4
       (.I0(\energy_accumulator_reg_n_0_[11] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[11]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [11]),
        .O(energy_accumulator0__0_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__0_i_5
       (.I0(\energy_accumulator_reg_n_0_[10] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[10]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [10]),
        .O(energy_accumulator0__0_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__0_i_6
       (.I0(\energy_accumulator_reg_n_0_[9] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[9]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [9]),
        .O(energy_accumulator0__0_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__0_i_7
       (.I0(\energy_accumulator_reg_n_0_[8] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[8]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [8]),
        .O(energy_accumulator0__0_carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__0_i_8
       (.I0(\energy_accumulator_reg_n_0_[7] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[7]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [7]),
        .O(energy_accumulator0__0_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'hA65959A659A659A6)) 
    energy_accumulator0__0_carry__0_i_9
       (.I0(energy_accumulator0__0_carry__0_i_1_n_0),
        .I1(p_0_out),
        .I2(\window_pipe_reg[99]_0 [15]),
        .I3(\energy_accumulator_reg_n_0_[15] ),
        .I4(energy_accumulator0__0_carry__3_0),
        .I5(P[15]),
        .O(energy_accumulator0__0_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 energy_accumulator0__0_carry__1
       (.CI(energy_accumulator0__0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({energy_accumulator0__0_carry__1_n_0,energy_accumulator0__0_carry__1_n_1,energy_accumulator0__0_carry__1_n_2,energy_accumulator0__0_carry__1_n_3,energy_accumulator0__0_carry__1_n_4,energy_accumulator0__0_carry__1_n_5,energy_accumulator0__0_carry__1_n_6,energy_accumulator0__0_carry__1_n_7}),
        .DI({energy_accumulator0__0_carry__1_i_1_n_0,energy_accumulator0__0_carry__1_i_2_n_0,energy_accumulator0__0_carry__1_i_3_n_0,energy_accumulator0__0_carry__1_i_4_n_0,energy_accumulator0__0_carry__1_i_5_n_0,energy_accumulator0__0_carry__1_i_6_n_0,energy_accumulator0__0_carry__1_i_7_n_0,energy_accumulator0__0_carry__1_i_8_n_0}),
        .O(\energy_accumulator_reg[22]_0 ),
        .S({energy_accumulator0__0_carry__1_i_9_n_0,energy_accumulator0__0_carry__1_i_10_n_0,energy_accumulator0__0_carry__1_i_11_n_0,energy_accumulator0__0_carry__1_i_12_n_0,energy_accumulator0__0_carry__1_i_13_n_0,energy_accumulator0__0_carry__1_i_14_n_0,energy_accumulator0__0_carry__1_i_15_n_0,energy_accumulator0__0_carry__1_i_16_n_0}));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__1_i_1
       (.I0(\energy_accumulator_reg_n_0_[22] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[22]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [22]),
        .O(energy_accumulator0__0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry__1_i_10
       (.I0(energy_accumulator0__0_carry__1_i_2_n_0),
        .I1(\energy_accumulator_reg_n_0_[22] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[22]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [22]),
        .O(energy_accumulator0__0_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry__1_i_11
       (.I0(energy_accumulator0__0_carry__1_i_3_n_0),
        .I1(\energy_accumulator_reg_n_0_[21] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[21]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [21]),
        .O(energy_accumulator0__0_carry__1_i_11_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry__1_i_12
       (.I0(energy_accumulator0__0_carry__1_i_4_n_0),
        .I1(\energy_accumulator_reg_n_0_[20] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[20]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [20]),
        .O(energy_accumulator0__0_carry__1_i_12_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry__1_i_13
       (.I0(energy_accumulator0__0_carry__1_i_5_n_0),
        .I1(\energy_accumulator_reg_n_0_[19] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[19]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [19]),
        .O(energy_accumulator0__0_carry__1_i_13_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry__1_i_14
       (.I0(energy_accumulator0__0_carry__1_i_6_n_0),
        .I1(\energy_accumulator_reg_n_0_[18] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[18]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [18]),
        .O(energy_accumulator0__0_carry__1_i_14_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry__1_i_15
       (.I0(energy_accumulator0__0_carry__1_i_7_n_0),
        .I1(\energy_accumulator_reg_n_0_[17] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[17]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [17]),
        .O(energy_accumulator0__0_carry__1_i_15_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry__1_i_16
       (.I0(energy_accumulator0__0_carry__1_i_8_n_0),
        .I1(\energy_accumulator_reg_n_0_[16] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[16]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [16]),
        .O(energy_accumulator0__0_carry__1_i_16_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__1_i_2
       (.I0(\energy_accumulator_reg_n_0_[21] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[21]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [21]),
        .O(energy_accumulator0__0_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__1_i_3
       (.I0(\energy_accumulator_reg_n_0_[20] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[20]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [20]),
        .O(energy_accumulator0__0_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__1_i_4
       (.I0(\energy_accumulator_reg_n_0_[19] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[19]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [19]),
        .O(energy_accumulator0__0_carry__1_i_4_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__1_i_5
       (.I0(\energy_accumulator_reg_n_0_[18] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[18]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [18]),
        .O(energy_accumulator0__0_carry__1_i_5_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__1_i_6
       (.I0(\energy_accumulator_reg_n_0_[17] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[17]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [17]),
        .O(energy_accumulator0__0_carry__1_i_6_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__1_i_7
       (.I0(\energy_accumulator_reg_n_0_[16] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[16]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [16]),
        .O(energy_accumulator0__0_carry__1_i_7_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__1_i_8
       (.I0(\energy_accumulator_reg_n_0_[15] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[15]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [15]),
        .O(energy_accumulator0__0_carry__1_i_8_n_0));
  LUT6 #(
    .INIT(64'hA65959A659A659A6)) 
    energy_accumulator0__0_carry__1_i_9
       (.I0(energy_accumulator0__0_carry__1_i_1_n_0),
        .I1(p_0_out),
        .I2(\window_pipe_reg[99]_0 [23]),
        .I3(\energy_accumulator_reg_n_0_[23] ),
        .I4(energy_accumulator0__0_carry__3_0),
        .I5(P[23]),
        .O(energy_accumulator0__0_carry__1_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 energy_accumulator0__0_carry__2
       (.CI(energy_accumulator0__0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({energy_accumulator0__0_carry__2_n_0,energy_accumulator0__0_carry__2_n_1,energy_accumulator0__0_carry__2_n_2,energy_accumulator0__0_carry__2_n_3,energy_accumulator0__0_carry__2_n_4,energy_accumulator0__0_carry__2_n_5,energy_accumulator0__0_carry__2_n_6,energy_accumulator0__0_carry__2_n_7}),
        .DI({energy_accumulator0__0_carry__2_i_1_n_0,energy_accumulator0__0_carry__2_i_2_n_0,energy_accumulator0__0_carry__2_i_3_n_0,energy_accumulator0__0_carry__2_i_4_n_0,energy_accumulator0__0_carry__2_i_5_n_0,energy_accumulator0__0_carry__2_i_6_n_0,energy_accumulator0__0_carry__2_i_7_n_0,energy_accumulator0__0_carry__2_i_8_n_0}),
        .O(\energy_accumulator_reg[30]_0 ),
        .S({energy_accumulator0__0_carry__2_i_9_n_0,energy_accumulator0__0_carry__2_i_10_n_0,energy_accumulator0__0_carry__2_i_11_n_0,energy_accumulator0__0_carry__2_i_12_n_0,energy_accumulator0__0_carry__2_i_13_n_0,energy_accumulator0__0_carry__2_i_14_n_0,energy_accumulator0__0_carry__2_i_15_n_0,energy_accumulator0__0_carry__2_i_16_n_0}));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__2_i_1
       (.I0(\energy_accumulator_reg_n_0_[30] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[30]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [30]),
        .O(energy_accumulator0__0_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry__2_i_10
       (.I0(energy_accumulator0__0_carry__2_i_2_n_0),
        .I1(\energy_accumulator_reg_n_0_[30] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[30]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [30]),
        .O(energy_accumulator0__0_carry__2_i_10_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry__2_i_11
       (.I0(energy_accumulator0__0_carry__2_i_3_n_0),
        .I1(\energy_accumulator_reg_n_0_[29] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[29]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [29]),
        .O(energy_accumulator0__0_carry__2_i_11_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry__2_i_12
       (.I0(energy_accumulator0__0_carry__2_i_4_n_0),
        .I1(\energy_accumulator_reg_n_0_[28] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[28]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [28]),
        .O(energy_accumulator0__0_carry__2_i_12_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry__2_i_13
       (.I0(energy_accumulator0__0_carry__2_i_5_n_0),
        .I1(\energy_accumulator_reg_n_0_[27] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[27]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [27]),
        .O(energy_accumulator0__0_carry__2_i_13_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry__2_i_14
       (.I0(energy_accumulator0__0_carry__2_i_6_n_0),
        .I1(\energy_accumulator_reg_n_0_[26] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[26]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [26]),
        .O(energy_accumulator0__0_carry__2_i_14_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry__2_i_15
       (.I0(energy_accumulator0__0_carry__2_i_7_n_0),
        .I1(\energy_accumulator_reg_n_0_[25] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[25]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [25]),
        .O(energy_accumulator0__0_carry__2_i_15_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry__2_i_16
       (.I0(energy_accumulator0__0_carry__2_i_8_n_0),
        .I1(\energy_accumulator_reg_n_0_[24] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[24]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [24]),
        .O(energy_accumulator0__0_carry__2_i_16_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__2_i_2
       (.I0(\energy_accumulator_reg_n_0_[29] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[29]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [29]),
        .O(energy_accumulator0__0_carry__2_i_2_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__2_i_3
       (.I0(\energy_accumulator_reg_n_0_[28] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[28]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [28]),
        .O(energy_accumulator0__0_carry__2_i_3_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__2_i_4
       (.I0(\energy_accumulator_reg_n_0_[27] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[27]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [27]),
        .O(energy_accumulator0__0_carry__2_i_4_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__2_i_5
       (.I0(\energy_accumulator_reg_n_0_[26] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[26]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [26]),
        .O(energy_accumulator0__0_carry__2_i_5_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__2_i_6
       (.I0(\energy_accumulator_reg_n_0_[25] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[25]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [25]),
        .O(energy_accumulator0__0_carry__2_i_6_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__2_i_7
       (.I0(\energy_accumulator_reg_n_0_[24] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[24]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [24]),
        .O(energy_accumulator0__0_carry__2_i_7_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__2_i_8
       (.I0(\energy_accumulator_reg_n_0_[23] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[23]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [23]),
        .O(energy_accumulator0__0_carry__2_i_8_n_0));
  LUT6 #(
    .INIT(64'hA65959A659A659A6)) 
    energy_accumulator0__0_carry__2_i_9
       (.I0(energy_accumulator0__0_carry__2_i_1_n_0),
        .I1(p_0_out),
        .I2(\window_pipe_reg[99]_0 [31]),
        .I3(\energy_accumulator_reg_n_0_[31] ),
        .I4(energy_accumulator0__0_carry__3_0),
        .I5(P[31]),
        .O(energy_accumulator0__0_carry__2_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 energy_accumulator0__0_carry__3
       (.CI(energy_accumulator0__0_carry__2_n_0),
        .CI_TOP(1'b0),
        .CO({energy_accumulator0__0_carry__3_n_0,energy_accumulator0__0_carry__3_n_1,energy_accumulator0__0_carry__3_n_2,energy_accumulator0__0_carry__3_n_3,energy_accumulator0__0_carry__3_n_4,energy_accumulator0__0_carry__3_n_5,energy_accumulator0__0_carry__3_n_6,energy_accumulator0__0_carry__3_n_7}),
        .DI({energy_accumulator0__0_carry__3_i_1_n_0,energy_accumulator0__0_carry__3_i_2_n_0,energy_accumulator0__0_carry__3_i_3_n_0,energy_accumulator0__0_carry__3_i_4_n_0,energy_accumulator0__0_carry__3_i_5_n_0,energy_accumulator0__0_carry__3_i_6_n_0,energy_accumulator0__0_carry__3_i_7_n_0,energy_accumulator0__0_carry__3_i_8_n_0}),
        .O(\energy_accumulator_reg[38]_0 ),
        .S({energy_accumulator0__0_carry__3_i_9_n_0,energy_accumulator0__0_carry__3_i_10_n_0,energy_accumulator0__0_carry__3_i_11_n_0,energy_accumulator0__0_carry__3_i_12_n_0,energy_accumulator0__0_carry__3_i_13_n_0,energy_accumulator0__0_carry__3_i_14_n_0,energy_accumulator0__0_carry__3_i_15_n_0,energy_accumulator0__0_carry__3_i_16_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__3_i_1
       (.I0(\energy_accumulator_reg_n_0_[38] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__3_i_10
       (.I0(\energy_accumulator_reg_n_0_[37] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[38] ),
        .O(energy_accumulator0__0_carry__3_i_10_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__3_i_11
       (.I0(\energy_accumulator_reg_n_0_[36] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[37] ),
        .O(energy_accumulator0__0_carry__3_i_11_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__3_i_12
       (.I0(\energy_accumulator_reg_n_0_[35] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[36] ),
        .O(energy_accumulator0__0_carry__3_i_12_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__3_i_13
       (.I0(\energy_accumulator_reg_n_0_[34] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[35] ),
        .O(energy_accumulator0__0_carry__3_i_13_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__3_i_14
       (.I0(\energy_accumulator_reg_n_0_[33] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[34] ),
        .O(energy_accumulator0__0_carry__3_i_14_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__3_i_15
       (.I0(\energy_accumulator_reg_n_0_[32] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[33] ),
        .O(energy_accumulator0__0_carry__3_i_15_n_0));
  LUT6 #(
    .INIT(64'hD5403FFF2ABFC000)) 
    energy_accumulator0__0_carry__3_i_16
       (.I0(\window_pipe_reg[99]_0 [31]),
        .I1(P[31]),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(\energy_accumulator_reg_n_0_[31] ),
        .I4(p_0_out),
        .I5(\energy_accumulator_reg_n_0_[32] ),
        .O(energy_accumulator0__0_carry__3_i_16_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__3_i_2
       (.I0(\energy_accumulator_reg_n_0_[37] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__3_i_3
       (.I0(\energy_accumulator_reg_n_0_[36] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__3_i_4
       (.I0(\energy_accumulator_reg_n_0_[35] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__3_i_5
       (.I0(\energy_accumulator_reg_n_0_[34] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__3_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__3_i_6
       (.I0(\energy_accumulator_reg_n_0_[33] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__3_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__3_i_7
       (.I0(\energy_accumulator_reg_n_0_[32] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__3_i_7_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry__3_i_8
       (.I0(\energy_accumulator_reg_n_0_[31] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[31]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [31]),
        .O(energy_accumulator0__0_carry__3_i_8_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__3_i_9
       (.I0(\energy_accumulator_reg_n_0_[38] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[39] ),
        .O(energy_accumulator0__0_carry__3_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 energy_accumulator0__0_carry__4
       (.CI(energy_accumulator0__0_carry__3_n_0),
        .CI_TOP(1'b0),
        .CO({energy_accumulator0__0_carry__4_n_0,energy_accumulator0__0_carry__4_n_1,energy_accumulator0__0_carry__4_n_2,energy_accumulator0__0_carry__4_n_3,energy_accumulator0__0_carry__4_n_4,energy_accumulator0__0_carry__4_n_5,energy_accumulator0__0_carry__4_n_6,energy_accumulator0__0_carry__4_n_7}),
        .DI({energy_accumulator0__0_carry__4_i_1_n_0,energy_accumulator0__0_carry__4_i_2_n_0,energy_accumulator0__0_carry__4_i_3_n_0,energy_accumulator0__0_carry__4_i_4_n_0,energy_accumulator0__0_carry__4_i_5_n_0,energy_accumulator0__0_carry__4_i_6_n_0,energy_accumulator0__0_carry__4_i_7_n_0,energy_accumulator0__0_carry__4_i_8_n_0}),
        .O(\energy_accumulator_reg[46]_0 ),
        .S({energy_accumulator0__0_carry__4_i_9_n_0,energy_accumulator0__0_carry__4_i_10_n_0,energy_accumulator0__0_carry__4_i_11_n_0,energy_accumulator0__0_carry__4_i_12_n_0,energy_accumulator0__0_carry__4_i_13_n_0,energy_accumulator0__0_carry__4_i_14_n_0,energy_accumulator0__0_carry__4_i_15_n_0,energy_accumulator0__0_carry__4_i_16_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__4_i_1
       (.I0(\energy_accumulator_reg_n_0_[46] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__4_i_1_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__4_i_10
       (.I0(\energy_accumulator_reg_n_0_[45] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[46] ),
        .O(energy_accumulator0__0_carry__4_i_10_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__4_i_11
       (.I0(\energy_accumulator_reg_n_0_[44] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[45] ),
        .O(energy_accumulator0__0_carry__4_i_11_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__4_i_12
       (.I0(\energy_accumulator_reg_n_0_[43] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[44] ),
        .O(energy_accumulator0__0_carry__4_i_12_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__4_i_13
       (.I0(\energy_accumulator_reg_n_0_[42] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[43] ),
        .O(energy_accumulator0__0_carry__4_i_13_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__4_i_14
       (.I0(\energy_accumulator_reg_n_0_[41] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[42] ),
        .O(energy_accumulator0__0_carry__4_i_14_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__4_i_15
       (.I0(\energy_accumulator_reg_n_0_[40] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[41] ),
        .O(energy_accumulator0__0_carry__4_i_15_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__4_i_16
       (.I0(\energy_accumulator_reg_n_0_[39] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[40] ),
        .O(energy_accumulator0__0_carry__4_i_16_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__4_i_2
       (.I0(\energy_accumulator_reg_n_0_[45] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__4_i_3
       (.I0(\energy_accumulator_reg_n_0_[44] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__4_i_4
       (.I0(\energy_accumulator_reg_n_0_[43] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__4_i_5
       (.I0(\energy_accumulator_reg_n_0_[42] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__4_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__4_i_6
       (.I0(\energy_accumulator_reg_n_0_[41] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__4_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__4_i_7
       (.I0(\energy_accumulator_reg_n_0_[40] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__4_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__4_i_8
       (.I0(\energy_accumulator_reg_n_0_[39] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__4_i_8_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__4_i_9
       (.I0(\energy_accumulator_reg_n_0_[46] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[47] ),
        .O(energy_accumulator0__0_carry__4_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 energy_accumulator0__0_carry__5
       (.CI(energy_accumulator0__0_carry__4_n_0),
        .CI_TOP(1'b0),
        .CO({energy_accumulator0__0_carry__5_n_0,energy_accumulator0__0_carry__5_n_1,energy_accumulator0__0_carry__5_n_2,energy_accumulator0__0_carry__5_n_3,energy_accumulator0__0_carry__5_n_4,energy_accumulator0__0_carry__5_n_5,energy_accumulator0__0_carry__5_n_6,energy_accumulator0__0_carry__5_n_7}),
        .DI({energy_accumulator0__0_carry__5_i_1_n_0,energy_accumulator0__0_carry__5_i_2_n_0,energy_accumulator0__0_carry__5_i_3_n_0,energy_accumulator0__0_carry__5_i_4_n_0,energy_accumulator0__0_carry__5_i_5_n_0,energy_accumulator0__0_carry__5_i_6_n_0,energy_accumulator0__0_carry__5_i_7_n_0,energy_accumulator0__0_carry__5_i_8_n_0}),
        .O(\energy_accumulator_reg[54]_0 ),
        .S({energy_accumulator0__0_carry__5_i_9_n_0,energy_accumulator0__0_carry__5_i_10_n_0,energy_accumulator0__0_carry__5_i_11_n_0,energy_accumulator0__0_carry__5_i_12_n_0,energy_accumulator0__0_carry__5_i_13_n_0,energy_accumulator0__0_carry__5_i_14_n_0,energy_accumulator0__0_carry__5_i_15_n_0,energy_accumulator0__0_carry__5_i_16_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__5_i_1
       (.I0(\energy_accumulator_reg_n_0_[54] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__5_i_1_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__5_i_10
       (.I0(\energy_accumulator_reg_n_0_[53] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[54] ),
        .O(energy_accumulator0__0_carry__5_i_10_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__5_i_11
       (.I0(\energy_accumulator_reg_n_0_[52] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[53] ),
        .O(energy_accumulator0__0_carry__5_i_11_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__5_i_12
       (.I0(\energy_accumulator_reg_n_0_[51] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[52] ),
        .O(energy_accumulator0__0_carry__5_i_12_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__5_i_13
       (.I0(\energy_accumulator_reg_n_0_[50] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[51] ),
        .O(energy_accumulator0__0_carry__5_i_13_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__5_i_14
       (.I0(\energy_accumulator_reg_n_0_[49] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[50] ),
        .O(energy_accumulator0__0_carry__5_i_14_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__5_i_15
       (.I0(\energy_accumulator_reg_n_0_[48] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[49] ),
        .O(energy_accumulator0__0_carry__5_i_15_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__5_i_16
       (.I0(\energy_accumulator_reg_n_0_[47] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[48] ),
        .O(energy_accumulator0__0_carry__5_i_16_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__5_i_2
       (.I0(\energy_accumulator_reg_n_0_[53] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__5_i_3
       (.I0(\energy_accumulator_reg_n_0_[52] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__5_i_4
       (.I0(\energy_accumulator_reg_n_0_[51] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__5_i_5
       (.I0(\energy_accumulator_reg_n_0_[50] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__5_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__5_i_6
       (.I0(\energy_accumulator_reg_n_0_[49] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__5_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__5_i_7
       (.I0(\energy_accumulator_reg_n_0_[48] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__5_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__5_i_8
       (.I0(\energy_accumulator_reg_n_0_[47] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__5_i_8_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__5_i_9
       (.I0(\energy_accumulator_reg_n_0_[54] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[55] ),
        .O(energy_accumulator0__0_carry__5_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 energy_accumulator0__0_carry__6
       (.CI(energy_accumulator0__0_carry__5_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_energy_accumulator0__0_carry__6_CO_UNCONNECTED[7],energy_accumulator0__0_carry__6_n_1,energy_accumulator0__0_carry__6_n_2,energy_accumulator0__0_carry__6_n_3,energy_accumulator0__0_carry__6_n_4,energy_accumulator0__0_carry__6_n_5,energy_accumulator0__0_carry__6_n_6,energy_accumulator0__0_carry__6_n_7}),
        .DI({1'b0,energy_accumulator0__0_carry__6_i_1_n_0,energy_accumulator0__0_carry__6_i_2_n_0,energy_accumulator0__0_carry__6_i_3_n_0,energy_accumulator0__0_carry__6_i_4_n_0,energy_accumulator0__0_carry__6_i_5_n_0,energy_accumulator0__0_carry__6_i_6_n_0,energy_accumulator0__0_carry__6_i_7_n_0}),
        .O(O),
        .S({energy_accumulator0__0_carry__6_i_8_n_0,energy_accumulator0__0_carry__6_i_9_n_0,energy_accumulator0__0_carry__6_i_10_n_0,energy_accumulator0__0_carry__6_i_11_n_0,energy_accumulator0__0_carry__6_i_12_n_0,energy_accumulator0__0_carry__6_i_13_n_0,energy_accumulator0__0_carry__6_i_14_n_0,energy_accumulator0__0_carry__6_i_15_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__6_i_1
       (.I0(\energy_accumulator_reg_n_0_[61] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__6_i_1_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__6_i_10
       (.I0(\energy_accumulator_reg_n_0_[60] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[61] ),
        .O(energy_accumulator0__0_carry__6_i_10_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__6_i_11
       (.I0(\energy_accumulator_reg_n_0_[59] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[60] ),
        .O(energy_accumulator0__0_carry__6_i_11_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__6_i_12
       (.I0(\energy_accumulator_reg_n_0_[58] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[59] ),
        .O(energy_accumulator0__0_carry__6_i_12_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__6_i_13
       (.I0(\energy_accumulator_reg_n_0_[57] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[58] ),
        .O(energy_accumulator0__0_carry__6_i_13_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__6_i_14
       (.I0(\energy_accumulator_reg_n_0_[56] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[57] ),
        .O(energy_accumulator0__0_carry__6_i_14_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__6_i_15
       (.I0(\energy_accumulator_reg_n_0_[55] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[56] ),
        .O(energy_accumulator0__0_carry__6_i_15_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__6_i_2
       (.I0(\energy_accumulator_reg_n_0_[60] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__6_i_3
       (.I0(\energy_accumulator_reg_n_0_[59] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__6_i_4
       (.I0(\energy_accumulator_reg_n_0_[58] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__6_i_5
       (.I0(\energy_accumulator_reg_n_0_[57] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__6_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__6_i_6
       (.I0(\energy_accumulator_reg_n_0_[56] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__6_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    energy_accumulator0__0_carry__6_i_7
       (.I0(\energy_accumulator_reg_n_0_[55] ),
        .I1(p_0_out),
        .O(energy_accumulator0__0_carry__6_i_7_n_0));
  LUT3 #(
    .INIT(8'hD2)) 
    energy_accumulator0__0_carry__6_i_8
       (.I0(p_0_out),
        .I1(\energy_accumulator_reg_n_0_[62] ),
        .I2(\energy_accumulator_reg_n_0_[63] ),
        .O(energy_accumulator0__0_carry__6_i_8_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    energy_accumulator0__0_carry__6_i_9
       (.I0(\energy_accumulator_reg_n_0_[61] ),
        .I1(p_0_out),
        .I2(\energy_accumulator_reg_n_0_[62] ),
        .O(energy_accumulator0__0_carry__6_i_9_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry_i_1
       (.I0(\energy_accumulator_reg_n_0_[6] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[6]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [6]),
        .O(energy_accumulator0__0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry_i_10
       (.I0(energy_accumulator0__0_carry_i_2_n_0),
        .I1(\energy_accumulator_reg_n_0_[6] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[6]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [6]),
        .O(energy_accumulator0__0_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry_i_11
       (.I0(energy_accumulator0__0_carry_i_3_n_0),
        .I1(\energy_accumulator_reg_n_0_[5] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[5]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [5]),
        .O(energy_accumulator0__0_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry_i_12
       (.I0(energy_accumulator0__0_carry_i_4_n_0),
        .I1(\energy_accumulator_reg_n_0_[4] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[4]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [4]),
        .O(energy_accumulator0__0_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry_i_13
       (.I0(energy_accumulator0__0_carry_i_5_n_0),
        .I1(\energy_accumulator_reg_n_0_[3] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[3]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [3]),
        .O(energy_accumulator0__0_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry_i_14
       (.I0(energy_accumulator0__0_carry_i_6_n_0),
        .I1(\energy_accumulator_reg_n_0_[2] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[2]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [2]),
        .O(energy_accumulator0__0_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'h9666966669999666)) 
    energy_accumulator0__0_carry_i_15
       (.I0(energy_accumulator0__0_carry_i_7_n_0),
        .I1(\energy_accumulator_reg_n_0_[1] ),
        .I2(energy_accumulator0__0_carry__3_0),
        .I3(P[1]),
        .I4(p_0_out),
        .I5(\window_pipe_reg[99]_0 [1]),
        .O(energy_accumulator0__0_carry_i_15_n_0));
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    energy_accumulator0__0_carry_i_16
       (.I0(\energy_accumulator_reg_n_0_[0] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[0]),
        .I3(\window_pipe_reg[99]_0 [0]),
        .I4(p_0_out),
        .O(energy_accumulator0__0_carry_i_16_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry_i_2
       (.I0(\energy_accumulator_reg_n_0_[5] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[5]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [5]),
        .O(energy_accumulator0__0_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry_i_3
       (.I0(\energy_accumulator_reg_n_0_[4] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[4]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [4]),
        .O(energy_accumulator0__0_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry_i_4
       (.I0(\energy_accumulator_reg_n_0_[3] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[3]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [3]),
        .O(energy_accumulator0__0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry_i_5
       (.I0(\energy_accumulator_reg_n_0_[2] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[2]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [2]),
        .O(energy_accumulator0__0_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h8080EA80)) 
    energy_accumulator0__0_carry_i_6
       (.I0(\energy_accumulator_reg_n_0_[1] ),
        .I1(energy_accumulator0__0_carry__3_0),
        .I2(P[1]),
        .I3(p_0_out),
        .I4(\window_pipe_reg[99]_0 [1]),
        .O(energy_accumulator0__0_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'hF2202020)) 
    energy_accumulator0__0_carry_i_7
       (.I0(p_0_out),
        .I1(\window_pipe_reg[99]_0 [0]),
        .I2(\energy_accumulator_reg_n_0_[0] ),
        .I3(energy_accumulator0__0_carry__3_0),
        .I4(P[0]),
        .O(energy_accumulator0__0_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h4BBBB444)) 
    energy_accumulator0__0_carry_i_8
       (.I0(\window_pipe_reg[99]_0 [0]),
        .I1(p_0_out),
        .I2(P[0]),
        .I3(energy_accumulator0__0_carry__3_0),
        .I4(\energy_accumulator_reg_n_0_[0] ),
        .O(energy_accumulator0__0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hA65959A659A659A6)) 
    energy_accumulator0__0_carry_i_9
       (.I0(energy_accumulator0__0_carry_i_1_n_0),
        .I1(p_0_out),
        .I2(\window_pipe_reg[99]_0 [7]),
        .I3(\energy_accumulator_reg_n_0_[7] ),
        .I4(energy_accumulator0__0_carry__3_0),
        .I5(P[7]),
        .O(energy_accumulator0__0_carry_i_9_n_0));
  FDCE \energy_accumulator_reg[0] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[0]),
        .Q(\energy_accumulator_reg_n_0_[0] ));
  FDCE \energy_accumulator_reg[10] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[10]),
        .Q(\energy_accumulator_reg_n_0_[10] ));
  FDCE \energy_accumulator_reg[11] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[11]),
        .Q(\energy_accumulator_reg_n_0_[11] ));
  FDCE \energy_accumulator_reg[12] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[12]),
        .Q(\energy_accumulator_reg_n_0_[12] ));
  FDCE \energy_accumulator_reg[13] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[13]),
        .Q(\energy_accumulator_reg_n_0_[13] ));
  FDCE \energy_accumulator_reg[14] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[14]),
        .Q(\energy_accumulator_reg_n_0_[14] ));
  FDCE \energy_accumulator_reg[15] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[15]),
        .Q(\energy_accumulator_reg_n_0_[15] ));
  FDCE \energy_accumulator_reg[16] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[16]),
        .Q(\energy_accumulator_reg_n_0_[16] ));
  FDCE \energy_accumulator_reg[17] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[17]),
        .Q(\energy_accumulator_reg_n_0_[17] ));
  FDCE \energy_accumulator_reg[18] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[18]),
        .Q(\energy_accumulator_reg_n_0_[18] ));
  FDCE \energy_accumulator_reg[19] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[19]),
        .Q(\energy_accumulator_reg_n_0_[19] ));
  FDCE \energy_accumulator_reg[1] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[1]),
        .Q(\energy_accumulator_reg_n_0_[1] ));
  FDCE \energy_accumulator_reg[20] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[20]),
        .Q(\energy_accumulator_reg_n_0_[20] ));
  FDCE \energy_accumulator_reg[21] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[21]),
        .Q(\energy_accumulator_reg_n_0_[21] ));
  FDCE \energy_accumulator_reg[22] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[22]),
        .Q(\energy_accumulator_reg_n_0_[22] ));
  FDCE \energy_accumulator_reg[23] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[23]),
        .Q(\energy_accumulator_reg_n_0_[23] ));
  FDCE \energy_accumulator_reg[24] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[24]),
        .Q(\energy_accumulator_reg_n_0_[24] ));
  FDCE \energy_accumulator_reg[25] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[25]),
        .Q(\energy_accumulator_reg_n_0_[25] ));
  FDCE \energy_accumulator_reg[26] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[26]),
        .Q(\energy_accumulator_reg_n_0_[26] ));
  FDCE \energy_accumulator_reg[27] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[27]),
        .Q(\energy_accumulator_reg_n_0_[27] ));
  FDCE \energy_accumulator_reg[28] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[28]),
        .Q(\energy_accumulator_reg_n_0_[28] ));
  FDCE \energy_accumulator_reg[29] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[29]),
        .Q(\energy_accumulator_reg_n_0_[29] ));
  FDCE \energy_accumulator_reg[2] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[2]),
        .Q(\energy_accumulator_reg_n_0_[2] ));
  FDCE \energy_accumulator_reg[30] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[30]),
        .Q(\energy_accumulator_reg_n_0_[30] ));
  FDCE \energy_accumulator_reg[31] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[31]),
        .Q(\energy_accumulator_reg_n_0_[31] ));
  FDCE \energy_accumulator_reg[32] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[32]),
        .Q(\energy_accumulator_reg_n_0_[32] ));
  FDCE \energy_accumulator_reg[33] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[33]),
        .Q(\energy_accumulator_reg_n_0_[33] ));
  FDCE \energy_accumulator_reg[34] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[34]),
        .Q(\energy_accumulator_reg_n_0_[34] ));
  FDCE \energy_accumulator_reg[35] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[35]),
        .Q(\energy_accumulator_reg_n_0_[35] ));
  FDCE \energy_accumulator_reg[36] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[36]),
        .Q(\energy_accumulator_reg_n_0_[36] ));
  FDCE \energy_accumulator_reg[37] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[37]),
        .Q(\energy_accumulator_reg_n_0_[37] ));
  FDCE \energy_accumulator_reg[38] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[38]),
        .Q(\energy_accumulator_reg_n_0_[38] ));
  FDCE \energy_accumulator_reg[39] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[39]),
        .Q(\energy_accumulator_reg_n_0_[39] ));
  FDCE \energy_accumulator_reg[3] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[3]),
        .Q(\energy_accumulator_reg_n_0_[3] ));
  FDCE \energy_accumulator_reg[40] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[40]),
        .Q(\energy_accumulator_reg_n_0_[40] ));
  FDCE \energy_accumulator_reg[41] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[41]),
        .Q(\energy_accumulator_reg_n_0_[41] ));
  FDCE \energy_accumulator_reg[42] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[42]),
        .Q(\energy_accumulator_reg_n_0_[42] ));
  FDCE \energy_accumulator_reg[43] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[43]),
        .Q(\energy_accumulator_reg_n_0_[43] ));
  FDCE \energy_accumulator_reg[44] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[44]),
        .Q(\energy_accumulator_reg_n_0_[44] ));
  FDCE \energy_accumulator_reg[45] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[45]),
        .Q(\energy_accumulator_reg_n_0_[45] ));
  FDCE \energy_accumulator_reg[46] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[46]),
        .Q(\energy_accumulator_reg_n_0_[46] ));
  FDCE \energy_accumulator_reg[47] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[47]),
        .Q(\energy_accumulator_reg_n_0_[47] ));
  FDCE \energy_accumulator_reg[48] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[48]),
        .Q(\energy_accumulator_reg_n_0_[48] ));
  FDCE \energy_accumulator_reg[49] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[49]),
        .Q(\energy_accumulator_reg_n_0_[49] ));
  FDCE \energy_accumulator_reg[4] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[4]),
        .Q(\energy_accumulator_reg_n_0_[4] ));
  FDCE \energy_accumulator_reg[50] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[50]),
        .Q(\energy_accumulator_reg_n_0_[50] ));
  FDCE \energy_accumulator_reg[51] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[51]),
        .Q(\energy_accumulator_reg_n_0_[51] ));
  FDCE \energy_accumulator_reg[52] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[52]),
        .Q(\energy_accumulator_reg_n_0_[52] ));
  FDCE \energy_accumulator_reg[53] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[53]),
        .Q(\energy_accumulator_reg_n_0_[53] ));
  FDCE \energy_accumulator_reg[54] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[54]),
        .Q(\energy_accumulator_reg_n_0_[54] ));
  FDCE \energy_accumulator_reg[55] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[55]),
        .Q(\energy_accumulator_reg_n_0_[55] ));
  FDCE \energy_accumulator_reg[56] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[56]),
        .Q(\energy_accumulator_reg_n_0_[56] ));
  FDCE \energy_accumulator_reg[57] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[57]),
        .Q(\energy_accumulator_reg_n_0_[57] ));
  FDCE \energy_accumulator_reg[58] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[58]),
        .Q(\energy_accumulator_reg_n_0_[58] ));
  FDCE \energy_accumulator_reg[59] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[59]),
        .Q(\energy_accumulator_reg_n_0_[59] ));
  FDCE \energy_accumulator_reg[5] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[5]),
        .Q(\energy_accumulator_reg_n_0_[5] ));
  FDCE \energy_accumulator_reg[60] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[60]),
        .Q(\energy_accumulator_reg_n_0_[60] ));
  FDCE \energy_accumulator_reg[61] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[61]),
        .Q(\energy_accumulator_reg_n_0_[61] ));
  FDCE \energy_accumulator_reg[62] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[62]),
        .Q(\energy_accumulator_reg_n_0_[62] ));
  FDCE \energy_accumulator_reg[63] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[63]),
        .Q(\energy_accumulator_reg_n_0_[63] ));
  FDCE \energy_accumulator_reg[6] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[6]),
        .Q(\energy_accumulator_reg_n_0_[6] ));
  FDCE \energy_accumulator_reg[7] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[7]),
        .Q(\energy_accumulator_reg_n_0_[7] ));
  FDCE \energy_accumulator_reg[8] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[8]),
        .Q(\energy_accumulator_reg_n_0_[8] ));
  FDCE \energy_accumulator_reg[9] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(D[9]),
        .Q(\energy_accumulator_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'hAAAA8AAA)) 
    \energy_init[63]_i_1 
       (.I0(p_0_out),
        .I1(\energy_init[63]_i_2_n_0 ),
        .I2(shift_count_d[5]),
        .I3(shift_count_d[6]),
        .I4(shift_count_d[0]),
        .O(shift_count_max_reached));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \energy_init[63]_i_2 
       (.I0(shift_count_d[3]),
        .I1(shift_count_d[4]),
        .I2(shift_count_d[2]),
        .I3(shift_count_d[1]),
        .O(\energy_init[63]_i_2_n_0 ));
  FDCE \energy_init_reg[0] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[0] ),
        .Q(\energy_init_reg[63]_0 [0]));
  FDCE \energy_init_reg[10] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[10] ),
        .Q(\energy_init_reg[63]_0 [10]));
  FDCE \energy_init_reg[11] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[11] ),
        .Q(\energy_init_reg[63]_0 [11]));
  FDCE \energy_init_reg[12] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[12] ),
        .Q(\energy_init_reg[63]_0 [12]));
  FDCE \energy_init_reg[13] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[13] ),
        .Q(\energy_init_reg[63]_0 [13]));
  FDCE \energy_init_reg[14] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[14] ),
        .Q(\energy_init_reg[63]_0 [14]));
  FDCE \energy_init_reg[15] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[15] ),
        .Q(\energy_init_reg[63]_0 [15]));
  FDCE \energy_init_reg[16] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[16] ),
        .Q(\energy_init_reg[63]_0 [16]));
  FDCE \energy_init_reg[17] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[17] ),
        .Q(\energy_init_reg[63]_0 [17]));
  FDCE \energy_init_reg[18] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[18] ),
        .Q(\energy_init_reg[63]_0 [18]));
  FDCE \energy_init_reg[19] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[19] ),
        .Q(\energy_init_reg[63]_0 [19]));
  FDCE \energy_init_reg[1] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[1] ),
        .Q(\energy_init_reg[63]_0 [1]));
  FDCE \energy_init_reg[20] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[20] ),
        .Q(\energy_init_reg[63]_0 [20]));
  FDCE \energy_init_reg[21] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[21] ),
        .Q(\energy_init_reg[63]_0 [21]));
  FDCE \energy_init_reg[22] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[22] ),
        .Q(\energy_init_reg[63]_0 [22]));
  FDCE \energy_init_reg[23] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[23] ),
        .Q(\energy_init_reg[63]_0 [23]));
  FDCE \energy_init_reg[24] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[24] ),
        .Q(\energy_init_reg[63]_0 [24]));
  FDCE \energy_init_reg[25] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[25] ),
        .Q(\energy_init_reg[63]_0 [25]));
  FDCE \energy_init_reg[26] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[26] ),
        .Q(\energy_init_reg[63]_0 [26]));
  FDCE \energy_init_reg[27] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[27] ),
        .Q(\energy_init_reg[63]_0 [27]));
  FDCE \energy_init_reg[28] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[28] ),
        .Q(\energy_init_reg[63]_0 [28]));
  FDCE \energy_init_reg[29] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[29] ),
        .Q(\energy_init_reg[63]_0 [29]));
  FDCE \energy_init_reg[2] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[2] ),
        .Q(\energy_init_reg[63]_0 [2]));
  FDCE \energy_init_reg[30] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[30] ),
        .Q(\energy_init_reg[63]_0 [30]));
  FDCE \energy_init_reg[31] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[31] ),
        .Q(\energy_init_reg[63]_0 [31]));
  FDCE \energy_init_reg[32] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[32] ),
        .Q(\energy_init_reg[63]_0 [32]));
  FDCE \energy_init_reg[33] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[33] ),
        .Q(\energy_init_reg[63]_0 [33]));
  FDCE \energy_init_reg[34] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[34] ),
        .Q(\energy_init_reg[63]_0 [34]));
  FDCE \energy_init_reg[35] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[35] ),
        .Q(\energy_init_reg[63]_0 [35]));
  FDCE \energy_init_reg[36] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[36] ),
        .Q(\energy_init_reg[63]_0 [36]));
  FDCE \energy_init_reg[37] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[37] ),
        .Q(\energy_init_reg[63]_0 [37]));
  FDCE \energy_init_reg[38] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[38] ),
        .Q(\energy_init_reg[63]_0 [38]));
  FDCE \energy_init_reg[39] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[39] ),
        .Q(\energy_init_reg[63]_0 [39]));
  FDCE \energy_init_reg[3] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[3] ),
        .Q(\energy_init_reg[63]_0 [3]));
  FDCE \energy_init_reg[40] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[40] ),
        .Q(\energy_init_reg[63]_0 [40]));
  FDCE \energy_init_reg[41] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[41] ),
        .Q(\energy_init_reg[63]_0 [41]));
  FDCE \energy_init_reg[42] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[42] ),
        .Q(\energy_init_reg[63]_0 [42]));
  FDCE \energy_init_reg[43] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[43] ),
        .Q(\energy_init_reg[63]_0 [43]));
  FDCE \energy_init_reg[44] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[44] ),
        .Q(\energy_init_reg[63]_0 [44]));
  FDCE \energy_init_reg[45] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[45] ),
        .Q(\energy_init_reg[63]_0 [45]));
  FDCE \energy_init_reg[46] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[46] ),
        .Q(\energy_init_reg[63]_0 [46]));
  FDCE \energy_init_reg[47] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[47] ),
        .Q(\energy_init_reg[63]_0 [47]));
  FDCE \energy_init_reg[48] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[48] ),
        .Q(\energy_init_reg[63]_0 [48]));
  FDCE \energy_init_reg[49] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[49] ),
        .Q(\energy_init_reg[63]_0 [49]));
  FDCE \energy_init_reg[4] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[4] ),
        .Q(\energy_init_reg[63]_0 [4]));
  FDCE \energy_init_reg[50] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[50] ),
        .Q(\energy_init_reg[63]_0 [50]));
  FDCE \energy_init_reg[51] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[51] ),
        .Q(\energy_init_reg[63]_0 [51]));
  FDCE \energy_init_reg[52] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[52] ),
        .Q(\energy_init_reg[63]_0 [52]));
  FDCE \energy_init_reg[53] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[53] ),
        .Q(\energy_init_reg[63]_0 [53]));
  FDCE \energy_init_reg[54] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[54] ),
        .Q(\energy_init_reg[63]_0 [54]));
  FDCE \energy_init_reg[55] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[55] ),
        .Q(\energy_init_reg[63]_0 [55]));
  FDCE \energy_init_reg[56] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[56] ),
        .Q(\energy_init_reg[63]_0 [56]));
  FDCE \energy_init_reg[57] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[57] ),
        .Q(\energy_init_reg[63]_0 [57]));
  FDCE \energy_init_reg[58] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[58] ),
        .Q(\energy_init_reg[63]_0 [58]));
  FDCE \energy_init_reg[59] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[59] ),
        .Q(\energy_init_reg[63]_0 [59]));
  FDCE \energy_init_reg[5] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[5] ),
        .Q(\energy_init_reg[63]_0 [5]));
  FDCE \energy_init_reg[60] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[60] ),
        .Q(\energy_init_reg[63]_0 [60]));
  FDCE \energy_init_reg[61] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[61] ),
        .Q(\energy_init_reg[63]_0 [61]));
  FDCE \energy_init_reg[62] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[62] ),
        .Q(\energy_init_reg[63]_0 [62]));
  FDCE \energy_init_reg[63] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[63] ),
        .Q(\energy_init_reg[63]_0 [63]));
  FDCE \energy_init_reg[6] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[6] ),
        .Q(\energy_init_reg[63]_0 [6]));
  FDCE \energy_init_reg[7] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[7] ),
        .Q(\energy_init_reg[63]_0 [7]));
  FDCE \energy_init_reg[8] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[8] ),
        .Q(\energy_init_reg[63]_0 [8]));
  FDCE \energy_init_reg[9] 
       (.C(main_clk_250m),
        .CE(shift_count_max_reached),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\energy_accumulator_reg_n_0_[9] ),
        .Q(\energy_init_reg[63]_0 [9]));
  LUT2 #(
    .INIT(4'h2)) 
    \energy_threshold_active[63]_i_1 
       (.I0(cfg_update_pending_reg_n_0),
        .I1(sw_en),
        .O(cfg_update_pending1));
  FDPE \energy_threshold_active_reg[0] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .D(cfg_energy_threshold[0]),
        .PRE(\energy_threshold_active_reg[63]_0 ),
        .Q(energy_threshold_active[0]));
  FDPE \energy_threshold_active_reg[10] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .D(cfg_energy_threshold[10]),
        .PRE(\energy_threshold_active_reg[63]_0 ),
        .Q(energy_threshold_active[10]));
  FDPE \energy_threshold_active_reg[11] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .D(cfg_energy_threshold[11]),
        .PRE(\energy_threshold_active_reg[63]_0 ),
        .Q(energy_threshold_active[11]));
  FDPE \energy_threshold_active_reg[12] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .D(cfg_energy_threshold[12]),
        .PRE(\energy_threshold_active_reg[63]_0 ),
        .Q(energy_threshold_active[12]));
  FDPE \energy_threshold_active_reg[13] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .D(cfg_energy_threshold[13]),
        .PRE(\energy_threshold_active_reg[63]_0 ),
        .Q(energy_threshold_active[13]));
  FDPE \energy_threshold_active_reg[14] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .D(cfg_energy_threshold[14]),
        .PRE(\energy_threshold_active_reg[63]_0 ),
        .Q(energy_threshold_active[14]));
  FDPE \energy_threshold_active_reg[15] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .D(cfg_energy_threshold[15]),
        .PRE(\energy_threshold_active_reg[63]_0 ),
        .Q(energy_threshold_active[15]));
  FDPE \energy_threshold_active_reg[16] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .D(cfg_energy_threshold[16]),
        .PRE(\energy_threshold_active_reg[63]_0 ),
        .Q(energy_threshold_active[16]));
  FDPE \energy_threshold_active_reg[17] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .D(cfg_energy_threshold[17]),
        .PRE(\energy_threshold_active_reg[63]_0 ),
        .Q(energy_threshold_active[17]));
  FDPE \energy_threshold_active_reg[18] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .D(cfg_energy_threshold[18]),
        .PRE(\energy_threshold_active_reg[63]_0 ),
        .Q(energy_threshold_active[18]));
  FDPE \energy_threshold_active_reg[19] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .D(cfg_energy_threshold[19]),
        .PRE(\energy_threshold_active_reg[63]_0 ),
        .Q(energy_threshold_active[19]));
  FDPE \energy_threshold_active_reg[1] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .D(cfg_energy_threshold[1]),
        .PRE(\energy_threshold_active_reg[63]_0 ),
        .Q(energy_threshold_active[1]));
  FDCE \energy_threshold_active_reg[20] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[20]),
        .Q(energy_threshold_active[20]));
  FDCE \energy_threshold_active_reg[21] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[21]),
        .Q(energy_threshold_active[21]));
  FDCE \energy_threshold_active_reg[22] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[22]),
        .Q(energy_threshold_active[22]));
  FDCE \energy_threshold_active_reg[23] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[23]),
        .Q(energy_threshold_active[23]));
  FDCE \energy_threshold_active_reg[24] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[24]),
        .Q(energy_threshold_active[24]));
  FDCE \energy_threshold_active_reg[25] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[25]),
        .Q(energy_threshold_active[25]));
  FDCE \energy_threshold_active_reg[26] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[26]),
        .Q(energy_threshold_active[26]));
  FDCE \energy_threshold_active_reg[27] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[27]),
        .Q(energy_threshold_active[27]));
  FDCE \energy_threshold_active_reg[28] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[28]),
        .Q(energy_threshold_active[28]));
  FDCE \energy_threshold_active_reg[29] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[29]),
        .Q(energy_threshold_active[29]));
  FDPE \energy_threshold_active_reg[2] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .D(cfg_energy_threshold[2]),
        .PRE(\energy_threshold_active_reg[63]_0 ),
        .Q(energy_threshold_active[2]));
  FDCE \energy_threshold_active_reg[30] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[30]),
        .Q(energy_threshold_active[30]));
  FDCE \energy_threshold_active_reg[31] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[31]),
        .Q(energy_threshold_active[31]));
  FDCE \energy_threshold_active_reg[32] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[32]),
        .Q(energy_threshold_active[32]));
  FDCE \energy_threshold_active_reg[33] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[33]),
        .Q(energy_threshold_active[33]));
  FDCE \energy_threshold_active_reg[34] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[34]),
        .Q(energy_threshold_active[34]));
  FDCE \energy_threshold_active_reg[35] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[35]),
        .Q(energy_threshold_active[35]));
  FDCE \energy_threshold_active_reg[36] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[36]),
        .Q(energy_threshold_active[36]));
  FDCE \energy_threshold_active_reg[37] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[37]),
        .Q(energy_threshold_active[37]));
  FDCE \energy_threshold_active_reg[38] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[38]),
        .Q(energy_threshold_active[38]));
  FDCE \energy_threshold_active_reg[39] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[39]),
        .Q(energy_threshold_active[39]));
  FDPE \energy_threshold_active_reg[3] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .D(cfg_energy_threshold[3]),
        .PRE(\energy_threshold_active_reg[63]_0 ),
        .Q(energy_threshold_active[3]));
  FDCE \energy_threshold_active_reg[40] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[40]),
        .Q(energy_threshold_active[40]));
  FDCE \energy_threshold_active_reg[41] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[41]),
        .Q(energy_threshold_active[41]));
  FDCE \energy_threshold_active_reg[42] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[42]),
        .Q(energy_threshold_active[42]));
  FDCE \energy_threshold_active_reg[43] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[43]),
        .Q(energy_threshold_active[43]));
  FDCE \energy_threshold_active_reg[44] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[44]),
        .Q(energy_threshold_active[44]));
  FDCE \energy_threshold_active_reg[45] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[45]),
        .Q(energy_threshold_active[45]));
  FDCE \energy_threshold_active_reg[46] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[46]),
        .Q(energy_threshold_active[46]));
  FDCE \energy_threshold_active_reg[47] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[47]),
        .Q(energy_threshold_active[47]));
  FDCE \energy_threshold_active_reg[48] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[48]),
        .Q(energy_threshold_active[48]));
  FDCE \energy_threshold_active_reg[49] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[49]),
        .Q(energy_threshold_active[49]));
  FDPE \energy_threshold_active_reg[4] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .D(cfg_energy_threshold[4]),
        .PRE(\energy_threshold_active_reg[63]_0 ),
        .Q(energy_threshold_active[4]));
  FDCE \energy_threshold_active_reg[50] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[50]),
        .Q(energy_threshold_active[50]));
  FDCE \energy_threshold_active_reg[51] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[51]),
        .Q(energy_threshold_active[51]));
  FDCE \energy_threshold_active_reg[52] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[52]),
        .Q(energy_threshold_active[52]));
  FDCE \energy_threshold_active_reg[53] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[53]),
        .Q(energy_threshold_active[53]));
  FDCE \energy_threshold_active_reg[54] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[54]),
        .Q(energy_threshold_active[54]));
  FDCE \energy_threshold_active_reg[55] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[55]),
        .Q(energy_threshold_active[55]));
  FDCE \energy_threshold_active_reg[56] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[56]),
        .Q(energy_threshold_active[56]));
  FDCE \energy_threshold_active_reg[57] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[57]),
        .Q(energy_threshold_active[57]));
  FDCE \energy_threshold_active_reg[58] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[58]),
        .Q(energy_threshold_active[58]));
  FDCE \energy_threshold_active_reg[59] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[59]),
        .Q(energy_threshold_active[59]));
  FDPE \energy_threshold_active_reg[5] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .D(cfg_energy_threshold[5]),
        .PRE(\energy_threshold_active_reg[63]_0 ),
        .Q(energy_threshold_active[5]));
  FDCE \energy_threshold_active_reg[60] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[60]),
        .Q(energy_threshold_active[60]));
  FDCE \energy_threshold_active_reg[61] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[61]),
        .Q(energy_threshold_active[61]));
  FDCE \energy_threshold_active_reg[62] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[62]),
        .Q(energy_threshold_active[62]));
  FDCE \energy_threshold_active_reg[63] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(cfg_energy_threshold[63]),
        .Q(energy_threshold_active[63]));
  FDPE \energy_threshold_active_reg[6] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .D(cfg_energy_threshold[6]),
        .PRE(\energy_threshold_active_reg[63]_0 ),
        .Q(energy_threshold_active[6]));
  FDPE \energy_threshold_active_reg[7] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .D(cfg_energy_threshold[7]),
        .PRE(\energy_threshold_active_reg[63]_0 ),
        .Q(energy_threshold_active[7]));
  FDPE \energy_threshold_active_reg[8] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .D(cfg_energy_threshold[8]),
        .PRE(\energy_threshold_active_reg[63]_0 ),
        .Q(energy_threshold_active[8]));
  FDPE \energy_threshold_active_reg[9] 
       (.C(main_clk_250m),
        .CE(cfg_update_pending1),
        .D(cfg_energy_threshold[9]),
        .PRE(\energy_threshold_active_reg[63]_0 ),
        .Q(energy_threshold_active[9]));
  FDCE result_valid_reg
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(result_valid_reg_0),
        .Q(sw_result_valid));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h5070)) 
    \shift_count[0]_i_1 
       (.I0(pow_m_axis_tvalid),
        .I1(\shift_count[2]_i_2_n_0 ),
        .I2(sw_en),
        .I3(Q[0]),
        .O(\shift_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h50707050)) 
    \shift_count[1]_i_1 
       (.I0(pow_m_axis_tvalid),
        .I1(\shift_count[2]_i_2_n_0 ),
        .I2(sw_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\shift_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8AA8AAAAAA88AAAA)) 
    \shift_count[2]_i_1 
       (.I0(sw_en),
        .I1(\shift_count[2]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(pow_m_axis_tvalid),
        .I5(Q[1]),
        .O(\shift_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h88888880)) 
    \shift_count[2]_i_2 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(\shift_count[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55007D007D007D00)) 
    \shift_count[3]_i_1 
       (.I0(pow_m_axis_tvalid),
        .I1(Q[3]),
        .I2(\shift_count[3]_i_2_n_0 ),
        .I3(sw_en),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\shift_count[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \shift_count[3]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\shift_count[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h557D7D7D00000000)) 
    \shift_count[4]_i_1 
       (.I0(pow_m_axis_tvalid),
        .I1(Q[4]),
        .I2(\shift_count[4]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[5]),
        .I5(sw_en),
        .O(\shift_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \shift_count[4]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\shift_count[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'hBF00F300)) 
    \shift_count[5]_i_1 
       (.I0(Q[6]),
        .I1(pow_m_axis_tvalid),
        .I2(Q[5]),
        .I3(sw_en),
        .I4(\shift_count[6]_i_3_n_0 ),
        .O(\shift_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'hFF8F0000)) 
    \shift_count[6]_i_2 
       (.I0(Q[5]),
        .I1(\shift_count[6]_i_3_n_0 ),
        .I2(pow_m_axis_tvalid),
        .I3(Q[6]),
        .I4(sw_en),
        .O(\shift_count[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \shift_count[6]_i_3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\shift_count[6]_i_3_n_0 ));
  FDCE \shift_count_d_reg[0] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\shift_count_d_reg[6]_0 [0]),
        .Q(shift_count_d[0]));
  FDCE \shift_count_d_reg[1] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\shift_count_d_reg[6]_0 [1]),
        .Q(shift_count_d[1]));
  FDCE \shift_count_d_reg[2] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\shift_count_d_reg[6]_0 [2]),
        .Q(shift_count_d[2]));
  FDCE \shift_count_d_reg[3] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\shift_count_d_reg[6]_0 [3]),
        .Q(shift_count_d[3]));
  FDCE \shift_count_d_reg[4] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\shift_count_d_reg[6]_0 [4]),
        .Q(shift_count_d[4]));
  FDCE \shift_count_d_reg[5] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\shift_count_d_reg[6]_0 [5]),
        .Q(shift_count_d[5]));
  FDCE \shift_count_d_reg[6] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\shift_count_d_reg[6]_0 [6]),
        .Q(shift_count_d[6]));
  FDCE \shift_count_reg[0] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\shift_count[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \shift_count_reg[1] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\shift_count[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE \shift_count_reg[2] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\shift_count[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE \shift_count_reg[3] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\shift_count[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE \shift_count_reg[4] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\shift_count[4]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE \shift_count_reg[5] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\shift_count[5]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE \shift_count_reg[6] 
       (.C(main_clk_250m),
        .CE(E),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(\shift_count[6]_i_2_n_0 ),
        .Q(Q[6]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 status1_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({status1_carry_n_0,status1_carry_n_1,status1_carry_n_2,status1_carry_n_3,status1_carry_n_4,status1_carry_n_5,status1_carry_n_6,status1_carry_n_7}),
        .DI({status1_carry_i_1_n_0,status1_carry_i_2_n_0,status1_carry_i_3_n_0,status1_carry_i_4_n_0,status1_carry_i_5_n_0,status1_carry_i_6_n_0,status1_carry_i_7_n_0,status1_carry_i_8_n_0}),
        .O(NLW_status1_carry_O_UNCONNECTED[7:0]),
        .S({status1_carry_i_9_n_0,status1_carry_i_10_n_0,status1_carry_i_11_n_0,status1_carry_i_12_n_0,status1_carry_i_13_n_0,status1_carry_i_14_n_0,status1_carry_i_15_n_0,status1_carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 status1_carry__0
       (.CI(status1_carry_n_0),
        .CI_TOP(1'b0),
        .CO({status1_carry__0_n_0,status1_carry__0_n_1,status1_carry__0_n_2,status1_carry__0_n_3,status1_carry__0_n_4,status1_carry__0_n_5,status1_carry__0_n_6,status1_carry__0_n_7}),
        .DI({status1_carry__0_i_1_n_0,status1_carry__0_i_2_n_0,status1_carry__0_i_3_n_0,status1_carry__0_i_4_n_0,status1_carry__0_i_5_n_0,status1_carry__0_i_6_n_0,status1_carry__0_i_7_n_0,status1_carry__0_i_8_n_0}),
        .O(NLW_status1_carry__0_O_UNCONNECTED[7:0]),
        .S({status1_carry__0_i_9_n_0,status1_carry__0_i_10_n_0,status1_carry__0_i_11_n_0,status1_carry__0_i_12_n_0,status1_carry__0_i_13_n_0,status1_carry__0_i_14_n_0,status1_carry__0_i_15_n_0,status1_carry__0_i_16_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__0_i_1
       (.I0(\energy_accumulator_reg_n_0_[30] ),
        .I1(energy_threshold_active[30]),
        .I2(energy_threshold_active[31]),
        .I3(\energy_accumulator_reg_n_0_[31] ),
        .O(status1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__0_i_10
       (.I0(energy_threshold_active[28]),
        .I1(\energy_accumulator_reg_n_0_[28] ),
        .I2(energy_threshold_active[29]),
        .I3(\energy_accumulator_reg_n_0_[29] ),
        .O(status1_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__0_i_11
       (.I0(energy_threshold_active[26]),
        .I1(\energy_accumulator_reg_n_0_[26] ),
        .I2(energy_threshold_active[27]),
        .I3(\energy_accumulator_reg_n_0_[27] ),
        .O(status1_carry__0_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__0_i_12
       (.I0(energy_threshold_active[24]),
        .I1(\energy_accumulator_reg_n_0_[24] ),
        .I2(energy_threshold_active[25]),
        .I3(\energy_accumulator_reg_n_0_[25] ),
        .O(status1_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__0_i_13
       (.I0(energy_threshold_active[22]),
        .I1(\energy_accumulator_reg_n_0_[22] ),
        .I2(energy_threshold_active[23]),
        .I3(\energy_accumulator_reg_n_0_[23] ),
        .O(status1_carry__0_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__0_i_14
       (.I0(energy_threshold_active[20]),
        .I1(\energy_accumulator_reg_n_0_[20] ),
        .I2(energy_threshold_active[21]),
        .I3(\energy_accumulator_reg_n_0_[21] ),
        .O(status1_carry__0_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__0_i_15
       (.I0(energy_threshold_active[18]),
        .I1(\energy_accumulator_reg_n_0_[18] ),
        .I2(energy_threshold_active[19]),
        .I3(\energy_accumulator_reg_n_0_[19] ),
        .O(status1_carry__0_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__0_i_16
       (.I0(energy_threshold_active[16]),
        .I1(\energy_accumulator_reg_n_0_[16] ),
        .I2(energy_threshold_active[17]),
        .I3(\energy_accumulator_reg_n_0_[17] ),
        .O(status1_carry__0_i_16_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__0_i_2
       (.I0(\energy_accumulator_reg_n_0_[28] ),
        .I1(energy_threshold_active[28]),
        .I2(energy_threshold_active[29]),
        .I3(\energy_accumulator_reg_n_0_[29] ),
        .O(status1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__0_i_3
       (.I0(\energy_accumulator_reg_n_0_[26] ),
        .I1(energy_threshold_active[26]),
        .I2(energy_threshold_active[27]),
        .I3(\energy_accumulator_reg_n_0_[27] ),
        .O(status1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__0_i_4
       (.I0(\energy_accumulator_reg_n_0_[24] ),
        .I1(energy_threshold_active[24]),
        .I2(energy_threshold_active[25]),
        .I3(\energy_accumulator_reg_n_0_[25] ),
        .O(status1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__0_i_5
       (.I0(\energy_accumulator_reg_n_0_[22] ),
        .I1(energy_threshold_active[22]),
        .I2(energy_threshold_active[23]),
        .I3(\energy_accumulator_reg_n_0_[23] ),
        .O(status1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__0_i_6
       (.I0(\energy_accumulator_reg_n_0_[20] ),
        .I1(energy_threshold_active[20]),
        .I2(energy_threshold_active[21]),
        .I3(\energy_accumulator_reg_n_0_[21] ),
        .O(status1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__0_i_7
       (.I0(\energy_accumulator_reg_n_0_[18] ),
        .I1(energy_threshold_active[18]),
        .I2(energy_threshold_active[19]),
        .I3(\energy_accumulator_reg_n_0_[19] ),
        .O(status1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__0_i_8
       (.I0(\energy_accumulator_reg_n_0_[16] ),
        .I1(energy_threshold_active[16]),
        .I2(energy_threshold_active[17]),
        .I3(\energy_accumulator_reg_n_0_[17] ),
        .O(status1_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__0_i_9
       (.I0(energy_threshold_active[30]),
        .I1(\energy_accumulator_reg_n_0_[30] ),
        .I2(energy_threshold_active[31]),
        .I3(\energy_accumulator_reg_n_0_[31] ),
        .O(status1_carry__0_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 status1_carry__1
       (.CI(status1_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({status1_carry__1_n_0,status1_carry__1_n_1,status1_carry__1_n_2,status1_carry__1_n_3,status1_carry__1_n_4,status1_carry__1_n_5,status1_carry__1_n_6,status1_carry__1_n_7}),
        .DI({status1_carry__1_i_1_n_0,status1_carry__1_i_2_n_0,status1_carry__1_i_3_n_0,status1_carry__1_i_4_n_0,status1_carry__1_i_5_n_0,status1_carry__1_i_6_n_0,status1_carry__1_i_7_n_0,status1_carry__1_i_8_n_0}),
        .O(NLW_status1_carry__1_O_UNCONNECTED[7:0]),
        .S({status1_carry__1_i_9_n_0,status1_carry__1_i_10_n_0,status1_carry__1_i_11_n_0,status1_carry__1_i_12_n_0,status1_carry__1_i_13_n_0,status1_carry__1_i_14_n_0,status1_carry__1_i_15_n_0,status1_carry__1_i_16_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__1_i_1
       (.I0(\energy_accumulator_reg_n_0_[46] ),
        .I1(energy_threshold_active[46]),
        .I2(energy_threshold_active[47]),
        .I3(\energy_accumulator_reg_n_0_[47] ),
        .O(status1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__1_i_10
       (.I0(energy_threshold_active[44]),
        .I1(\energy_accumulator_reg_n_0_[44] ),
        .I2(energy_threshold_active[45]),
        .I3(\energy_accumulator_reg_n_0_[45] ),
        .O(status1_carry__1_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__1_i_11
       (.I0(energy_threshold_active[42]),
        .I1(\energy_accumulator_reg_n_0_[42] ),
        .I2(energy_threshold_active[43]),
        .I3(\energy_accumulator_reg_n_0_[43] ),
        .O(status1_carry__1_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__1_i_12
       (.I0(energy_threshold_active[40]),
        .I1(\energy_accumulator_reg_n_0_[40] ),
        .I2(energy_threshold_active[41]),
        .I3(\energy_accumulator_reg_n_0_[41] ),
        .O(status1_carry__1_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__1_i_13
       (.I0(energy_threshold_active[38]),
        .I1(\energy_accumulator_reg_n_0_[38] ),
        .I2(energy_threshold_active[39]),
        .I3(\energy_accumulator_reg_n_0_[39] ),
        .O(status1_carry__1_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__1_i_14
       (.I0(energy_threshold_active[36]),
        .I1(\energy_accumulator_reg_n_0_[36] ),
        .I2(energy_threshold_active[37]),
        .I3(\energy_accumulator_reg_n_0_[37] ),
        .O(status1_carry__1_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__1_i_15
       (.I0(energy_threshold_active[34]),
        .I1(\energy_accumulator_reg_n_0_[34] ),
        .I2(energy_threshold_active[35]),
        .I3(\energy_accumulator_reg_n_0_[35] ),
        .O(status1_carry__1_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__1_i_16
       (.I0(energy_threshold_active[32]),
        .I1(\energy_accumulator_reg_n_0_[32] ),
        .I2(energy_threshold_active[33]),
        .I3(\energy_accumulator_reg_n_0_[33] ),
        .O(status1_carry__1_i_16_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__1_i_2
       (.I0(\energy_accumulator_reg_n_0_[44] ),
        .I1(energy_threshold_active[44]),
        .I2(energy_threshold_active[45]),
        .I3(\energy_accumulator_reg_n_0_[45] ),
        .O(status1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__1_i_3
       (.I0(\energy_accumulator_reg_n_0_[42] ),
        .I1(energy_threshold_active[42]),
        .I2(energy_threshold_active[43]),
        .I3(\energy_accumulator_reg_n_0_[43] ),
        .O(status1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__1_i_4
       (.I0(\energy_accumulator_reg_n_0_[40] ),
        .I1(energy_threshold_active[40]),
        .I2(energy_threshold_active[41]),
        .I3(\energy_accumulator_reg_n_0_[41] ),
        .O(status1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__1_i_5
       (.I0(\energy_accumulator_reg_n_0_[38] ),
        .I1(energy_threshold_active[38]),
        .I2(energy_threshold_active[39]),
        .I3(\energy_accumulator_reg_n_0_[39] ),
        .O(status1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__1_i_6
       (.I0(\energy_accumulator_reg_n_0_[36] ),
        .I1(energy_threshold_active[36]),
        .I2(energy_threshold_active[37]),
        .I3(\energy_accumulator_reg_n_0_[37] ),
        .O(status1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__1_i_7
       (.I0(\energy_accumulator_reg_n_0_[34] ),
        .I1(energy_threshold_active[34]),
        .I2(energy_threshold_active[35]),
        .I3(\energy_accumulator_reg_n_0_[35] ),
        .O(status1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__1_i_8
       (.I0(\energy_accumulator_reg_n_0_[32] ),
        .I1(energy_threshold_active[32]),
        .I2(energy_threshold_active[33]),
        .I3(\energy_accumulator_reg_n_0_[33] ),
        .O(status1_carry__1_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__1_i_9
       (.I0(energy_threshold_active[46]),
        .I1(\energy_accumulator_reg_n_0_[46] ),
        .I2(energy_threshold_active[47]),
        .I3(\energy_accumulator_reg_n_0_[47] ),
        .O(status1_carry__1_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 status1_carry__2
       (.CI(status1_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({status1_carry__2_n_0,status1_carry__2_n_1,status1_carry__2_n_2,status1_carry__2_n_3,status1_carry__2_n_4,status1_carry__2_n_5,status1_carry__2_n_6,status1_carry__2_n_7}),
        .DI({status1_carry__2_i_1_n_0,status1_carry__2_i_2_n_0,status1_carry__2_i_3_n_0,status1_carry__2_i_4_n_0,status1_carry__2_i_5_n_0,status1_carry__2_i_6_n_0,status1_carry__2_i_7_n_0,status1_carry__2_i_8_n_0}),
        .O(NLW_status1_carry__2_O_UNCONNECTED[7:0]),
        .S({status1_carry__2_i_9_n_0,status1_carry__2_i_10_n_0,status1_carry__2_i_11_n_0,status1_carry__2_i_12_n_0,status1_carry__2_i_13_n_0,status1_carry__2_i_14_n_0,status1_carry__2_i_15_n_0,status1_carry__2_i_16_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__2_i_1
       (.I0(\energy_accumulator_reg_n_0_[62] ),
        .I1(energy_threshold_active[62]),
        .I2(energy_threshold_active[63]),
        .I3(\energy_accumulator_reg_n_0_[63] ),
        .O(status1_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__2_i_10
       (.I0(energy_threshold_active[60]),
        .I1(\energy_accumulator_reg_n_0_[60] ),
        .I2(energy_threshold_active[61]),
        .I3(\energy_accumulator_reg_n_0_[61] ),
        .O(status1_carry__2_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__2_i_11
       (.I0(energy_threshold_active[58]),
        .I1(\energy_accumulator_reg_n_0_[58] ),
        .I2(energy_threshold_active[59]),
        .I3(\energy_accumulator_reg_n_0_[59] ),
        .O(status1_carry__2_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__2_i_12
       (.I0(energy_threshold_active[56]),
        .I1(\energy_accumulator_reg_n_0_[56] ),
        .I2(energy_threshold_active[57]),
        .I3(\energy_accumulator_reg_n_0_[57] ),
        .O(status1_carry__2_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__2_i_13
       (.I0(energy_threshold_active[54]),
        .I1(\energy_accumulator_reg_n_0_[54] ),
        .I2(energy_threshold_active[55]),
        .I3(\energy_accumulator_reg_n_0_[55] ),
        .O(status1_carry__2_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__2_i_14
       (.I0(energy_threshold_active[52]),
        .I1(\energy_accumulator_reg_n_0_[52] ),
        .I2(energy_threshold_active[53]),
        .I3(\energy_accumulator_reg_n_0_[53] ),
        .O(status1_carry__2_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__2_i_15
       (.I0(energy_threshold_active[50]),
        .I1(\energy_accumulator_reg_n_0_[50] ),
        .I2(energy_threshold_active[51]),
        .I3(\energy_accumulator_reg_n_0_[51] ),
        .O(status1_carry__2_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__2_i_16
       (.I0(energy_threshold_active[48]),
        .I1(\energy_accumulator_reg_n_0_[48] ),
        .I2(energy_threshold_active[49]),
        .I3(\energy_accumulator_reg_n_0_[49] ),
        .O(status1_carry__2_i_16_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__2_i_2
       (.I0(\energy_accumulator_reg_n_0_[60] ),
        .I1(energy_threshold_active[60]),
        .I2(energy_threshold_active[61]),
        .I3(\energy_accumulator_reg_n_0_[61] ),
        .O(status1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__2_i_3
       (.I0(\energy_accumulator_reg_n_0_[58] ),
        .I1(energy_threshold_active[58]),
        .I2(energy_threshold_active[59]),
        .I3(\energy_accumulator_reg_n_0_[59] ),
        .O(status1_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__2_i_4
       (.I0(\energy_accumulator_reg_n_0_[56] ),
        .I1(energy_threshold_active[56]),
        .I2(energy_threshold_active[57]),
        .I3(\energy_accumulator_reg_n_0_[57] ),
        .O(status1_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__2_i_5
       (.I0(\energy_accumulator_reg_n_0_[54] ),
        .I1(energy_threshold_active[54]),
        .I2(energy_threshold_active[55]),
        .I3(\energy_accumulator_reg_n_0_[55] ),
        .O(status1_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__2_i_6
       (.I0(\energy_accumulator_reg_n_0_[52] ),
        .I1(energy_threshold_active[52]),
        .I2(energy_threshold_active[53]),
        .I3(\energy_accumulator_reg_n_0_[53] ),
        .O(status1_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__2_i_7
       (.I0(\energy_accumulator_reg_n_0_[50] ),
        .I1(energy_threshold_active[50]),
        .I2(energy_threshold_active[51]),
        .I3(\energy_accumulator_reg_n_0_[51] ),
        .O(status1_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry__2_i_8
       (.I0(\energy_accumulator_reg_n_0_[48] ),
        .I1(energy_threshold_active[48]),
        .I2(energy_threshold_active[49]),
        .I3(\energy_accumulator_reg_n_0_[49] ),
        .O(status1_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry__2_i_9
       (.I0(energy_threshold_active[62]),
        .I1(\energy_accumulator_reg_n_0_[62] ),
        .I2(energy_threshold_active[63]),
        .I3(\energy_accumulator_reg_n_0_[63] ),
        .O(status1_carry__2_i_9_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry_i_1
       (.I0(\energy_accumulator_reg_n_0_[14] ),
        .I1(energy_threshold_active[14]),
        .I2(energy_threshold_active[15]),
        .I3(\energy_accumulator_reg_n_0_[15] ),
        .O(status1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry_i_10
       (.I0(energy_threshold_active[12]),
        .I1(\energy_accumulator_reg_n_0_[12] ),
        .I2(energy_threshold_active[13]),
        .I3(\energy_accumulator_reg_n_0_[13] ),
        .O(status1_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry_i_11
       (.I0(energy_threshold_active[10]),
        .I1(\energy_accumulator_reg_n_0_[10] ),
        .I2(energy_threshold_active[11]),
        .I3(\energy_accumulator_reg_n_0_[11] ),
        .O(status1_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry_i_12
       (.I0(energy_threshold_active[8]),
        .I1(\energy_accumulator_reg_n_0_[8] ),
        .I2(energy_threshold_active[9]),
        .I3(\energy_accumulator_reg_n_0_[9] ),
        .O(status1_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry_i_13
       (.I0(energy_threshold_active[6]),
        .I1(\energy_accumulator_reg_n_0_[6] ),
        .I2(energy_threshold_active[7]),
        .I3(\energy_accumulator_reg_n_0_[7] ),
        .O(status1_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry_i_14
       (.I0(energy_threshold_active[4]),
        .I1(\energy_accumulator_reg_n_0_[4] ),
        .I2(energy_threshold_active[5]),
        .I3(\energy_accumulator_reg_n_0_[5] ),
        .O(status1_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry_i_15
       (.I0(energy_threshold_active[2]),
        .I1(\energy_accumulator_reg_n_0_[2] ),
        .I2(energy_threshold_active[3]),
        .I3(\energy_accumulator_reg_n_0_[3] ),
        .O(status1_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry_i_16
       (.I0(energy_threshold_active[0]),
        .I1(\energy_accumulator_reg_n_0_[0] ),
        .I2(energy_threshold_active[1]),
        .I3(\energy_accumulator_reg_n_0_[1] ),
        .O(status1_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry_i_2
       (.I0(\energy_accumulator_reg_n_0_[12] ),
        .I1(energy_threshold_active[12]),
        .I2(energy_threshold_active[13]),
        .I3(\energy_accumulator_reg_n_0_[13] ),
        .O(status1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry_i_3
       (.I0(\energy_accumulator_reg_n_0_[10] ),
        .I1(energy_threshold_active[10]),
        .I2(energy_threshold_active[11]),
        .I3(\energy_accumulator_reg_n_0_[11] ),
        .O(status1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry_i_4
       (.I0(\energy_accumulator_reg_n_0_[8] ),
        .I1(energy_threshold_active[8]),
        .I2(energy_threshold_active[9]),
        .I3(\energy_accumulator_reg_n_0_[9] ),
        .O(status1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry_i_5
       (.I0(\energy_accumulator_reg_n_0_[6] ),
        .I1(energy_threshold_active[6]),
        .I2(energy_threshold_active[7]),
        .I3(\energy_accumulator_reg_n_0_[7] ),
        .O(status1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry_i_6
       (.I0(\energy_accumulator_reg_n_0_[4] ),
        .I1(energy_threshold_active[4]),
        .I2(energy_threshold_active[5]),
        .I3(\energy_accumulator_reg_n_0_[5] ),
        .O(status1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry_i_7
       (.I0(\energy_accumulator_reg_n_0_[2] ),
        .I1(energy_threshold_active[2]),
        .I2(energy_threshold_active[3]),
        .I3(\energy_accumulator_reg_n_0_[3] ),
        .O(status1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    status1_carry_i_8
       (.I0(\energy_accumulator_reg_n_0_[0] ),
        .I1(energy_threshold_active[0]),
        .I2(energy_threshold_active[1]),
        .I3(\energy_accumulator_reg_n_0_[1] ),
        .O(status1_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    status1_carry_i_9
       (.I0(energy_threshold_active[14]),
        .I1(\energy_accumulator_reg_n_0_[14] ),
        .I2(energy_threshold_active[15]),
        .I3(\energy_accumulator_reg_n_0_[15] ),
        .O(status1_carry_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \status[0]_i_1 
       (.I0(enable_d),
        .O(status[0]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \status[2]_i_1 
       (.I0(enable_d),
        .I1(status1_carry__2_n_0),
        .O(status[2]));
  LUT4 #(
    .INIT(16'h80AA)) 
    \status[3]_i_1 
       (.I0(sw_en),
        .I1(pow_m_axis_tvalid),
        .I2(p_0_out),
        .I3(enable_d),
        .O(\status[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \status[3]_i_2 
       (.I0(enable_d),
        .I1(status1_carry__2_n_0),
        .O(status[3]));
  FDPE \status_reg[0] 
       (.C(main_clk_250m),
        .CE(\status[3]_i_1_n_0 ),
        .D(status[0]),
        .PRE(\energy_threshold_active_reg[63]_0 ),
        .Q(\status_reg[3]_0 [0]));
  FDCE \status_reg[2] 
       (.C(main_clk_250m),
        .CE(\status[3]_i_1_n_0 ),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(status[2]),
        .Q(\status_reg[3]_0 [1]));
  FDCE \status_reg[3] 
       (.C(main_clk_250m),
        .CE(\status[3]_i_1_n_0 ),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(status[3]),
        .Q(\status_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'h4CCC000040000000)) 
    stop_signal_i_1
       (.I0(status1_carry__2_n_0),
        .I1(sw_en),
        .I2(pow_m_axis_tvalid),
        .I3(p_0_out),
        .I4(enable_d),
        .I5(power_stop_signal),
        .O(stop_signal_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    stop_signal_i_3
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(stop_signal_i_4_n_0),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(p_0_out));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    stop_signal_i_4
       (.I0(Q[6]),
        .I1(Q[5]),
        .O(stop_signal_i_4_n_0));
  FDCE stop_signal_reg
       (.C(main_clk_250m),
        .CE(1'b1),
        .CLR(\energy_threshold_active_reg[63]_0 ),
        .D(stop_signal_i_1_n_0),
        .Q(power_stop_signal));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][0]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[0]),
        .Q(\NLW_window_pipe_reg[31][0]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][0]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][10]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][10]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[10]),
        .Q(\NLW_window_pipe_reg[31][10]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][10]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][11]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][11]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[11]),
        .Q(\NLW_window_pipe_reg[31][11]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][11]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][12]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][12]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[12]),
        .Q(\NLW_window_pipe_reg[31][12]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][12]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][13]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][13]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[13]),
        .Q(\NLW_window_pipe_reg[31][13]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][13]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][14]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][14]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[14]),
        .Q(\NLW_window_pipe_reg[31][14]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][14]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][15]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][15]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[15]),
        .Q(\NLW_window_pipe_reg[31][15]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][15]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][16]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][16]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[16]),
        .Q(\NLW_window_pipe_reg[31][16]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][16]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][17]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][17]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[17]),
        .Q(\NLW_window_pipe_reg[31][17]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][17]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][18]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][18]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[18]),
        .Q(\NLW_window_pipe_reg[31][18]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][18]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][19]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][19]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[19]),
        .Q(\NLW_window_pipe_reg[31][19]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][19]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][1]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[1]),
        .Q(\NLW_window_pipe_reg[31][1]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][1]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][20]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][20]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[20]),
        .Q(\NLW_window_pipe_reg[31][20]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][20]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][21]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][21]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[21]),
        .Q(\NLW_window_pipe_reg[31][21]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][21]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][22]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][22]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[22]),
        .Q(\NLW_window_pipe_reg[31][22]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][22]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][23]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][23]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[23]),
        .Q(\NLW_window_pipe_reg[31][23]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][23]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][24]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][24]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[24]),
        .Q(\NLW_window_pipe_reg[31][24]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][24]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][25]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][25]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[25]),
        .Q(\NLW_window_pipe_reg[31][25]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][25]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][26]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][26]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[26]),
        .Q(\NLW_window_pipe_reg[31][26]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][26]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][27]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][27]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[27]),
        .Q(\NLW_window_pipe_reg[31][27]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][27]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][28]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][28]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[28]),
        .Q(\NLW_window_pipe_reg[31][28]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][28]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][29]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][29]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[29]),
        .Q(\NLW_window_pipe_reg[31][29]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][29]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][2]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][2]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[2]),
        .Q(\NLW_window_pipe_reg[31][2]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][2]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][30]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][30]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[30]),
        .Q(\NLW_window_pipe_reg[31][30]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][30]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][31]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[31]),
        .Q(\NLW_window_pipe_reg[31][31]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][31]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][3]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][3]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[3]),
        .Q(\NLW_window_pipe_reg[31][3]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][3]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][4]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][4]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[4]),
        .Q(\NLW_window_pipe_reg[31][4]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][4]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][5]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][5]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[5]),
        .Q(\NLW_window_pipe_reg[31][5]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][5]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][6]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][6]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[6]),
        .Q(\NLW_window_pipe_reg[31][6]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][6]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][7]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][7]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[7]),
        .Q(\NLW_window_pipe_reg[31][7]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][7]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][8]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][8]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[8]),
        .Q(\NLW_window_pipe_reg[31][8]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][8]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[31] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[31][9]_srl32 " *) 
  SRLC32E \window_pipe_reg[31][9]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(pow_data[9]),
        .Q(\NLW_window_pipe_reg[31][9]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[31][9]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][0]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][0]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][0]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][0]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][10]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][10]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][10]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][10]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][10]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][11]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][11]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][11]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][11]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][11]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][12]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][12]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][12]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][12]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][12]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][13]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][13]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][13]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][13]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][13]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][14]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][14]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][14]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][14]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][14]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][15]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][15]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][15]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][15]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][15]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][16]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][16]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][16]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][16]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][16]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][17]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][17]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][17]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][17]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][17]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][18]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][18]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][18]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][18]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][18]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][19]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][19]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][19]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][19]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][19]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][1]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][1]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][1]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][1]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][20]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][20]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][20]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][20]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][20]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][21]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][21]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][21]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][21]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][21]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][22]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][22]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][22]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][22]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][22]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][23]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][23]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][23]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][23]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][23]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][24]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][24]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][24]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][24]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][24]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][25]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][25]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][25]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][25]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][25]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][26]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][26]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][26]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][26]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][26]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][27]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][27]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][27]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][27]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][27]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][28]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][28]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][28]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][28]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][28]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][29]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][29]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][29]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][29]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][29]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][2]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][2]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][2]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][2]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][2]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][30]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][30]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][30]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][30]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][30]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][31]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][31]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][31]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][31]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][3]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][3]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][3]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][3]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][3]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][4]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][4]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][4]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][4]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][4]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][5]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][5]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][5]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][5]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][5]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][6]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][6]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][6]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][6]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][6]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][7]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][7]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][7]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][7]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][7]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][8]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][8]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][8]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][8]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][8]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[63] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[63][9]_srl32 " *) 
  SRLC32E \window_pipe_reg[63][9]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[31][9]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[63][9]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[63][9]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][0]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][0]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][0]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][0]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][0]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][10]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][10]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][10]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][10]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][10]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][11]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][11]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][11]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][11]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][11]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][12]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][12]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][12]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][12]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][12]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][13]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][13]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][13]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][13]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][13]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][14]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][14]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][14]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][14]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][14]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][15]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][15]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][15]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][15]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][15]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][16]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][16]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][16]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][16]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][16]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][17]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][17]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][17]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][17]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][17]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][18]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][18]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][18]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][18]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][18]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][19]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][19]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][19]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][19]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][19]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][1]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][1]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][1]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][1]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][1]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][20]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][20]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][20]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][20]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][20]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][21]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][21]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][21]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][21]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][21]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][22]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][22]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][22]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][22]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][22]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][23]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][23]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][23]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][23]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][23]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][24]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][24]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][24]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][24]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][24]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][25]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][25]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][25]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][25]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][25]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][26]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][26]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][26]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][26]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][26]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][27]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][27]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][27]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][27]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][27]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][28]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][28]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][28]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][28]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][28]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][29]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][29]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][29]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][29]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][29]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][2]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][2]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][2]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][2]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][2]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][30]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][30]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][30]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][30]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][30]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][31]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][31]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][31]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][31]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][3]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][3]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][3]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][3]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][3]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][4]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][4]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][4]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][4]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][4]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][5]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][5]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][5]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][5]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][5]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][6]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][6]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][6]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][6]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][6]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][7]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][7]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][7]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][7]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][7]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][8]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][8]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][8]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][8]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][8]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[95] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[95][9]_srl32 " *) 
  SRLC32E \window_pipe_reg[95][9]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[63][9]_srl32_n_1 ),
        .Q(\NLW_window_pipe_reg[95][9]_srl32_Q_UNCONNECTED ),
        .Q31(\window_pipe_reg[95][9]_srl32_n_1 ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][0]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][0]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][0]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][0]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][0]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][10]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][10]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][10]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][10]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][10]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][11]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][11]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][11]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][11]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][11]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][12]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][12]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][12]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][12]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][12]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][13]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][13]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][13]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][13]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][13]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][14]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][14]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][14]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][14]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][14]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][15]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][15]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][15]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][15]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][15]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][16]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][16]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][16]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][16]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][16]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][17]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][17]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][17]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][17]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][17]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][18]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][18]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][18]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][18]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][18]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][19]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][19]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][19]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][19]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][19]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][1]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][1]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][1]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][1]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][1]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][20]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][20]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][20]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][20]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][20]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][21]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][21]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][21]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][21]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][21]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][22]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][22]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][22]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][22]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][22]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][23]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][23]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][23]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][23]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][23]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][24]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][24]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][24]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][24]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][24]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][25]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][25]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][25]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][25]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][25]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][26]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][26]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][26]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][26]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][26]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][27]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][27]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][27]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][27]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][27]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][28]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][28]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][28]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][28]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][28]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][29]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][29]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][29]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][29]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][29]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][2]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][2]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][2]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][2]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][2]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][30]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][30]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][30]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][30]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][30]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][31]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][31]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][31]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][31]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][31]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][3]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][3]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][3]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][3]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][3]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][4]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][4]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][4]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][4]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][4]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][5]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][5]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][5]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][5]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][5]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][6]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][6]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][6]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][6]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][6]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][7]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][7]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][7]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][7]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][7]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][8]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][8]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][8]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][8]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][8]_srl3_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\u_slide_window/window_pipe_reg[98] " *) 
  (* srl_name = "inst/\\u_slide_window/window_pipe_reg[98][9]_srl3 " *) 
  SRLC32E \window_pipe_reg[98][9]_srl3 
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(sample_fire),
        .CLK(main_clk_250m),
        .D(\window_pipe_reg[95][9]_srl32_n_1 ),
        .Q(\window_pipe_reg[98][9]_srl3_n_0 ),
        .Q31(\NLW_window_pipe_reg[98][9]_srl3_Q31_UNCONNECTED ));
  FDRE \window_pipe_reg[99][0] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][0]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [0]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][10] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][10]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [10]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][11] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][11]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [11]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][12] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][12]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [12]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][13] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][13]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [13]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][14] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][14]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [14]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][15] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][15]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [15]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][16] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][16]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [16]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][17] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][17]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [17]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][18] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][18]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [18]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][19] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][19]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [19]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][1] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][1]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [1]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][20] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][20]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [20]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][21] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][21]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [21]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][22] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][22]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [22]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][23] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][23]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [23]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][24] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][24]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [24]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][25] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][25]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [25]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][26] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][26]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [26]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][27] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][27]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [27]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][28] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][28]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [28]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][29] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][29]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [29]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][2] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][2]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [2]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][30] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][30]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [30]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][31] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][31]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [31]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][3] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][3]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [3]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][4] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][4]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [4]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][5] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][5]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [5]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][6] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][6]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [6]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][7] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][7]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [7]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][8] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][8]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [8]),
        .R(1'b0));
  FDRE \window_pipe_reg[99][9] 
       (.C(main_clk_250m),
        .CE(sample_fire),
        .D(\window_pipe_reg[98][9]_srl3_n_0 ),
        .Q(\window_pipe_reg[99]_0 [9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
