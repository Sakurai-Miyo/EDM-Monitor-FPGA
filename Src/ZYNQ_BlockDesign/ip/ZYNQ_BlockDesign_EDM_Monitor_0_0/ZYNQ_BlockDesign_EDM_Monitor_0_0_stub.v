// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri Apr 10 17:46:26 2026
// Host        : Hayase-Yuuka running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Code/FPGA_Xilinx_Code/EDM_Monitor/Src/ZYNQ_BlockDesign/ip/ZYNQ_BlockDesign_EDM_Monitor_0_0/ZYNQ_BlockDesign_EDM_Monitor_0_0_stub.v
// Design      : ZYNQ_BlockDesign_EDM_Monitor_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu15eg-ffvb1156-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "ZYNQ_BlockDesign_EDM_Monitor_0_0,EDM_Monitor,{}" *) (* CORE_GENERATION_INFO = "ZYNQ_BlockDesign_EDM_Monitor_0_0,EDM_Monitor,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=EDM_Monitor,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,AXIS_FRAME_DATA_COUNT=128}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "EDM_Monitor,Vivado 2025.2" *) 
module ZYNQ_BlockDesign_EDM_Monitor_0_0(clk_p, clk_n, rst_n_async, adc_data_p, 
  adc_data_n, adc_dco_p, adc_dco_n, div_param_od0, power_trig_async, cfg_breakdown, 
  cfg_energy_threshold, cfg_update_toggle, ps_clk, power_stop_signal, 
  axi_fifo_m_axis_tvalid, axi_fifo_m_axis_tready, axi_fifo_m_axis_tdata, 
  axi_fifo_m_axis_tlast)
/* synthesis syn_black_box black_box_pad_pin="clk_p,clk_n,rst_n_async,adc_data_p[11:0],adc_data_n[11:0],adc_dco_p,adc_dco_n,div_param_od0,power_trig_async,cfg_breakdown[15:0],cfg_energy_threshold[63:0],cfg_update_toggle,ps_clk,power_stop_signal,axi_fifo_m_axis_tvalid,axi_fifo_m_axis_tready,axi_fifo_m_axis_tdata[127:0],axi_fifo_m_axis_tlast" */;
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
endmodule
