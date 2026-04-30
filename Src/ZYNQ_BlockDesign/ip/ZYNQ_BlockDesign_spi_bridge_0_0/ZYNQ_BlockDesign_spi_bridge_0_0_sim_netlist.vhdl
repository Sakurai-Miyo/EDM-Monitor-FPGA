-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Wed Apr  8 18:30:37 2026
-- Host        : Hayase-Yuuka running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Code/FPGA_Xilinx_Code/EDM_Monitor/Src/ZYNQ_BlockDesign/ip/ZYNQ_BlockDesign_spi_bridge_0_0/ZYNQ_BlockDesign_spi_bridge_0_0_sim_netlist.vhdl
-- Design      : ZYNQ_BlockDesign_spi_bridge_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu15eg-ffvb1156-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ZYNQ_BlockDesign_spi_bridge_0_0_spi_bridge is
  port (
    spi_miso : out STD_LOGIC;
    spi_sdio : inout STD_LOGIC;
    spi_mosi : in STD_LOGIC;
    spi_clk : in STD_LOGIC;
    spi_csn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ZYNQ_BlockDesign_spi_bridge_0_0_spi_bridge : entity is "spi_bridge";
end ZYNQ_BlockDesign_spi_bridge_0_0_spi_bridge;

architecture STRUCTURE of ZYNQ_BlockDesign_spi_bridge_0_0_spi_bridge is
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal sel : STD_LOGIC;
  signal \spi_count[5]_i_1_n_0\ : STD_LOGIC;
  signal spi_count_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \spi_enable__0\ : STD_LOGIC;
  signal spi_enable_i_1_n_0 : STD_LOGIC;
  signal spi_enable_n_0 : STD_LOGIC;
  signal spi_enable_s : STD_LOGIC;
  signal \spi_rd_wr_n__0\ : STD_LOGIC;
  signal spi_rd_wr_n_i_1_n_0 : STD_LOGIC;
  signal spi_rd_wr_n_n_0 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IOBUF_inst : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of IOBUF_inst_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \spi_count[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spi_count[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spi_count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spi_count[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of spi_enable_i_1 : label is "soft_lutpair2";
begin
IOBUF_inst: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => spi_mosi,
      IO => spi_sdio,
      O => spi_miso,
      T => spi_enable_s
    );
IOBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_enable__0\,
      I1 => spi_csn,
      O => spi_enable_s
    );
spi_count0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => spi_count_reg(3),
      I1 => spi_count_reg(2),
      I2 => spi_count_reg(5),
      I3 => spi_count_reg(4),
      I4 => spi_count_reg(1),
      I5 => spi_count_reg(0),
      O => sel
    );
\spi_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => spi_count_reg(0),
      O => p_0_in(0)
    );
\spi_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => spi_count_reg(0),
      I1 => spi_count_reg(1),
      O => p_0_in(1)
    );
\spi_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => spi_count_reg(0),
      I1 => spi_count_reg(1),
      I2 => spi_count_reg(2),
      O => p_0_in(2)
    );
\spi_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => spi_count_reg(1),
      I1 => spi_count_reg(0),
      I2 => spi_count_reg(2),
      I3 => spi_count_reg(3),
      O => p_0_in(3)
    );
\spi_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => spi_count_reg(2),
      I1 => spi_count_reg(0),
      I2 => spi_count_reg(1),
      I3 => spi_count_reg(3),
      I4 => spi_count_reg(4),
      O => p_0_in(4)
    );
\spi_count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => spi_count_reg(5),
      I1 => p_0_in(5),
      I2 => sel,
      O => \spi_count[5]_i_1_n_0\
    );
\spi_count[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => spi_count_reg(3),
      I1 => spi_count_reg(1),
      I2 => spi_count_reg(0),
      I3 => spi_count_reg(2),
      I4 => spi_count_reg(4),
      I5 => spi_count_reg(5),
      O => p_0_in(5)
    );
\spi_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_clk,
      CE => sel,
      CLR => spi_csn,
      D => p_0_in(0),
      Q => spi_count_reg(0)
    );
\spi_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_clk,
      CE => sel,
      CLR => spi_csn,
      D => p_0_in(1),
      Q => spi_count_reg(1)
    );
\spi_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_clk,
      CE => sel,
      CLR => spi_csn,
      D => p_0_in(2),
      Q => spi_count_reg(2)
    );
\spi_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_clk,
      CE => sel,
      CLR => spi_csn,
      D => p_0_in(3),
      Q => spi_count_reg(3)
    );
\spi_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_clk,
      CE => sel,
      CLR => spi_csn,
      D => p_0_in(4),
      Q => spi_count_reg(4)
    );
\spi_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_clk,
      CE => '1',
      CLR => spi_csn,
      D => \spi_count[5]_i_1_n_0\,
      Q => spi_count_reg(5)
    );
spi_enable: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => spi_count_reg(5),
      I1 => spi_count_reg(0),
      I2 => spi_count_reg(1),
      I3 => spi_count_reg(4),
      I4 => spi_count_reg(3),
      I5 => spi_count_reg(2),
      O => spi_enable_n_0
    );
spi_enable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \spi_rd_wr_n__0\,
      I1 => spi_enable_n_0,
      I2 => \spi_enable__0\,
      O => spi_enable_i_1_n_0
    );
spi_enable_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_clk,
      CE => '1',
      CLR => spi_csn,
      D => spi_enable_i_1_n_0,
      Q => \spi_enable__0\
    );
spi_rd_wr_n: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => spi_count_reg(5),
      I1 => spi_count_reg(4),
      I2 => spi_count_reg(1),
      I3 => spi_count_reg(0),
      I4 => spi_count_reg(3),
      I5 => spi_count_reg(2),
      O => spi_rd_wr_n_n_0
    );
spi_rd_wr_n_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => spi_mosi,
      I1 => spi_rd_wr_n_n_0,
      I2 => \spi_rd_wr_n__0\,
      O => spi_rd_wr_n_i_1_n_0
    );
spi_rd_wr_n_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_clk,
      CE => '1',
      CLR => spi_csn,
      D => spi_rd_wr_n_i_1_n_0,
      Q => \spi_rd_wr_n__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ZYNQ_BlockDesign_spi_bridge_0_0 is
  port (
    spi_csn : in STD_LOGIC;
    spi_clk : in STD_LOGIC;
    spi_mosi : in STD_LOGIC;
    spi_miso : out STD_LOGIC;
    spi_sdio : inout STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ZYNQ_BlockDesign_spi_bridge_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ZYNQ_BlockDesign_spi_bridge_0_0 : entity is "ZYNQ_BlockDesign_spi_bridge_0_0,spi_bridge,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ZYNQ_BlockDesign_spi_bridge_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ZYNQ_BlockDesign_spi_bridge_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ZYNQ_BlockDesign_spi_bridge_0_0 : entity is "spi_bridge,Vivado 2025.2";
end ZYNQ_BlockDesign_spi_bridge_0_0;

architecture STRUCTURE of ZYNQ_BlockDesign_spi_bridge_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of spi_clk : signal is "xilinx.com:signal:clock:1.0 spi_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of spi_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of spi_clk : signal is "XIL_INTERFACENAME spi_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
inst: entity work.ZYNQ_BlockDesign_spi_bridge_0_0_spi_bridge
     port map (
      spi_clk => spi_clk,
      spi_csn => spi_csn,
      spi_miso => spi_miso,
      spi_mosi => spi_mosi,
      spi_sdio => spi_sdio
    );
end STRUCTURE;
