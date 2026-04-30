-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Wed Apr  8 18:30:37 2026
-- Host        : Hayase-Yuuka running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Code/FPGA_Xilinx_Code/EDM_Monitor/Src/ZYNQ_BlockDesign/ip/ZYNQ_BlockDesign_spi_bridge_0_0/ZYNQ_BlockDesign_spi_bridge_0_0_stub.vhdl
-- Design      : ZYNQ_BlockDesign_spi_bridge_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu15eg-ffvb1156-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ZYNQ_BlockDesign_spi_bridge_0_0 is
  Port ( 
    spi_csn : in STD_LOGIC;
    spi_clk : in STD_LOGIC;
    spi_mosi : in STD_LOGIC;
    spi_miso : out STD_LOGIC;
    spi_sdio : inout STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ZYNQ_BlockDesign_spi_bridge_0_0 : entity is "ZYNQ_BlockDesign_spi_bridge_0_0,spi_bridge,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ZYNQ_BlockDesign_spi_bridge_0_0 : entity is "ZYNQ_BlockDesign_spi_bridge_0_0,spi_bridge,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=spi_bridge,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ZYNQ_BlockDesign_spi_bridge_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ZYNQ_BlockDesign_spi_bridge_0_0 : entity is "module_ref";
end ZYNQ_BlockDesign_spi_bridge_0_0;

architecture stub of ZYNQ_BlockDesign_spi_bridge_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "spi_csn,spi_clk,spi_mosi,spi_miso,spi_sdio";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of spi_clk : signal is "xilinx.com:signal:clock:1.0 spi_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of spi_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of spi_clk : signal is "XIL_INTERFACENAME spi_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "spi_bridge,Vivado 2025.2";
begin
end;
