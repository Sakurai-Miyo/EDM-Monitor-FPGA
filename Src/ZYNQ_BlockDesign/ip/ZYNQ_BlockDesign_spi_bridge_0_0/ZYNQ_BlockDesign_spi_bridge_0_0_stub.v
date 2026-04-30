// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Apr  8 18:30:37 2026
// Host        : Hayase-Yuuka running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Code/FPGA_Xilinx_Code/EDM_Monitor/Src/ZYNQ_BlockDesign/ip/ZYNQ_BlockDesign_spi_bridge_0_0/ZYNQ_BlockDesign_spi_bridge_0_0_stub.v
// Design      : ZYNQ_BlockDesign_spi_bridge_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu15eg-ffvb1156-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "ZYNQ_BlockDesign_spi_bridge_0_0,spi_bridge,{}" *) (* CORE_GENERATION_INFO = "ZYNQ_BlockDesign_spi_bridge_0_0,spi_bridge,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=spi_bridge,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "spi_bridge,Vivado 2025.2" *) 
module ZYNQ_BlockDesign_spi_bridge_0_0(spi_csn, spi_clk, spi_mosi, spi_miso, spi_sdio)
/* synthesis syn_black_box black_box_pad_pin="spi_csn,spi_mosi,spi_miso,spi_sdio" */
/* synthesis syn_force_seq_prim="spi_clk" */;
  input spi_csn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 spi_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME spi_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input spi_clk /* synthesis syn_isclock = 1 */;
  input spi_mosi;
  output spi_miso;
  inout spi_sdio;
endmodule
