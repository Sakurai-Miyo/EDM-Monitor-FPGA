-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Fri Apr 10 17:46:26 2026
-- Host        : Hayase-Yuuka running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Code/FPGA_Xilinx_Code/EDM_Monitor/Src/ZYNQ_BlockDesign/ip/ZYNQ_BlockDesign_EDM_Monitor_0_0/ZYNQ_BlockDesign_EDM_Monitor_0_0_stub.vhdl
-- Design      : ZYNQ_BlockDesign_EDM_Monitor_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu15eg-ffvb1156-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ZYNQ_BlockDesign_EDM_Monitor_0_0 is
  Port ( 
    clk_p : in STD_LOGIC;
    clk_n : in STD_LOGIC;
    rst_n_async : in STD_LOGIC;
    adc_data_p : in STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_data_n : in STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_dco_p : in STD_LOGIC;
    adc_dco_n : in STD_LOGIC;
    div_param_od0 : out STD_LOGIC;
    power_trig_async : in STD_LOGIC;
    cfg_breakdown : in STD_LOGIC_VECTOR ( 15 downto 0 );
    cfg_energy_threshold : in STD_LOGIC_VECTOR ( 63 downto 0 );
    cfg_update_toggle : in STD_LOGIC;
    ps_clk : in STD_LOGIC;
    power_stop_signal : out STD_LOGIC;
    axi_fifo_m_axis_tvalid : out STD_LOGIC;
    axi_fifo_m_axis_tready : in STD_LOGIC;
    axi_fifo_m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    axi_fifo_m_axis_tlast : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ZYNQ_BlockDesign_EDM_Monitor_0_0 : entity is "ZYNQ_BlockDesign_EDM_Monitor_0_0,EDM_Monitor,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ZYNQ_BlockDesign_EDM_Monitor_0_0 : entity is "ZYNQ_BlockDesign_EDM_Monitor_0_0,EDM_Monitor,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=EDM_Monitor,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,AXIS_FRAME_DATA_COUNT=128}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ZYNQ_BlockDesign_EDM_Monitor_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ZYNQ_BlockDesign_EDM_Monitor_0_0 : entity is "module_ref";
end ZYNQ_BlockDesign_EDM_Monitor_0_0;

architecture stub of ZYNQ_BlockDesign_EDM_Monitor_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk_p,clk_n,rst_n_async,adc_data_p[11:0],adc_data_n[11:0],adc_dco_p,adc_dco_n,div_param_od0,power_trig_async,cfg_breakdown[15:0],cfg_energy_threshold[63:0],cfg_update_toggle,ps_clk,power_stop_signal,axi_fifo_m_axis_tvalid,axi_fifo_m_axis_tready,axi_fifo_m_axis_tdata[127:0],axi_fifo_m_axis_tlast";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_p : signal is "xilinx.com:signal:clock:1.0 clk_p CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk_p : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_p : signal is "XIL_INTERFACENAME clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ZYNQ_BlockDesign_clk_p_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk_n : signal is "xilinx.com:signal:clock:1.0 clk_n CLK";
  attribute X_INTERFACE_MODE of clk_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk_n : signal is "XIL_INTERFACENAME clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ZYNQ_BlockDesign_clk_n_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ps_clk : signal is "xilinx.com:signal:clock:1.0 ps_clk CLK";
  attribute X_INTERFACE_MODE of ps_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ps_clk : signal is "XIL_INTERFACENAME ps_clk, ASSOCIATED_BUSIF axi_fifo_m_axis, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ZYNQ_BlockDesign_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_fifo_m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 axi_fifo_m_axis TVALID";
  attribute X_INTERFACE_MODE of axi_fifo_m_axis_tvalid : signal is "master";
  attribute X_INTERFACE_PARAMETER of axi_fifo_m_axis_tvalid : signal is "XIL_INTERFACENAME axi_fifo_m_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN ZYNQ_BlockDesign_zynq_ultra_ps_e_0_1_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_fifo_m_axis_tready : signal is "xilinx.com:interface:axis:1.0 axi_fifo_m_axis TREADY";
  attribute X_INTERFACE_INFO of axi_fifo_m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 axi_fifo_m_axis TDATA";
  attribute X_INTERFACE_INFO of axi_fifo_m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 axi_fifo_m_axis TLAST";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "EDM_Monitor,Vivado 2025.2";
begin
end;
