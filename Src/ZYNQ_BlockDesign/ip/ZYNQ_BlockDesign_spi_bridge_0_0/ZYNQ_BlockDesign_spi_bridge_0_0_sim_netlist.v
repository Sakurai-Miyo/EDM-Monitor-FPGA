// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Apr  8 18:30:37 2026
// Host        : Hayase-Yuuka running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Code/FPGA_Xilinx_Code/EDM_Monitor/Src/ZYNQ_BlockDesign/ip/ZYNQ_BlockDesign_spi_bridge_0_0/ZYNQ_BlockDesign_spi_bridge_0_0_sim_netlist.v
// Design      : ZYNQ_BlockDesign_spi_bridge_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu15eg-ffvb1156-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ZYNQ_BlockDesign_spi_bridge_0_0,spi_bridge,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "spi_bridge,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module ZYNQ_BlockDesign_spi_bridge_0_0
   (spi_csn,
    spi_clk,
    spi_mosi,
    spi_miso,
    spi_sdio);
  input spi_csn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 spi_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME spi_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input spi_clk;
  input spi_mosi;
  output spi_miso;
  inout spi_sdio;

  wire spi_clk;
  wire spi_csn;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire spi_miso;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire spi_mosi;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire spi_sdio;

  ZYNQ_BlockDesign_spi_bridge_0_0_spi_bridge inst
       (.spi_clk(spi_clk),
        .spi_csn(spi_csn),
        .spi_miso(spi_miso),
        .spi_mosi(spi_mosi),
        .spi_sdio(spi_sdio));
endmodule

(* ORIG_REF_NAME = "spi_bridge" *) 
module ZYNQ_BlockDesign_spi_bridge_0_0_spi_bridge
   (spi_miso,
    spi_sdio,
    spi_mosi,
    spi_clk,
    spi_csn);
  output spi_miso;
  inout spi_sdio;
  input spi_mosi;
  input spi_clk;
  input spi_csn;

  wire [5:0]p_0_in;
  wire sel;
  wire spi_clk;
  wire \spi_count[5]_i_1_n_0 ;
  wire [5:0]spi_count_reg;
  wire spi_csn;
  wire spi_enable__0;
  wire spi_enable_i_1_n_0;
  wire spi_enable_n_0;
  wire spi_enable_s;
  wire spi_miso;
  wire spi_mosi;
  wire spi_rd_wr_n__0;
  wire spi_rd_wr_n_i_1_n_0;
  wire spi_rd_wr_n_n_0;
  wire spi_sdio;

  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    IOBUF_inst
       (.I(spi_mosi),
        .IO(spi_sdio),
        .O(spi_miso),
        .T(spi_enable_s));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    IOBUF_inst_i_1
       (.I0(spi_enable__0),
        .I1(spi_csn),
        .O(spi_enable_s));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    spi_count0
       (.I0(spi_count_reg[3]),
        .I1(spi_count_reg[2]),
        .I2(spi_count_reg[5]),
        .I3(spi_count_reg[4]),
        .I4(spi_count_reg[1]),
        .I5(spi_count_reg[0]),
        .O(sel));
  LUT1 #(
    .INIT(2'h1)) 
    \spi_count[0]_i_1 
       (.I0(spi_count_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \spi_count[1]_i_1 
       (.I0(spi_count_reg[0]),
        .I1(spi_count_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \spi_count[2]_i_1 
       (.I0(spi_count_reg[0]),
        .I1(spi_count_reg[1]),
        .I2(spi_count_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \spi_count[3]_i_1 
       (.I0(spi_count_reg[1]),
        .I1(spi_count_reg[0]),
        .I2(spi_count_reg[2]),
        .I3(spi_count_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \spi_count[4]_i_1 
       (.I0(spi_count_reg[2]),
        .I1(spi_count_reg[0]),
        .I2(spi_count_reg[1]),
        .I3(spi_count_reg[3]),
        .I4(spi_count_reg[4]),
        .O(p_0_in[4]));
  LUT3 #(
    .INIT(8'hCA)) 
    \spi_count[5]_i_1 
       (.I0(spi_count_reg[5]),
        .I1(p_0_in[5]),
        .I2(sel),
        .O(\spi_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \spi_count[5]_i_2 
       (.I0(spi_count_reg[3]),
        .I1(spi_count_reg[1]),
        .I2(spi_count_reg[0]),
        .I3(spi_count_reg[2]),
        .I4(spi_count_reg[4]),
        .I5(spi_count_reg[5]),
        .O(p_0_in[5]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_count_reg[0] 
       (.C(spi_clk),
        .CE(sel),
        .CLR(spi_csn),
        .D(p_0_in[0]),
        .Q(spi_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_count_reg[1] 
       (.C(spi_clk),
        .CE(sel),
        .CLR(spi_csn),
        .D(p_0_in[1]),
        .Q(spi_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_count_reg[2] 
       (.C(spi_clk),
        .CE(sel),
        .CLR(spi_csn),
        .D(p_0_in[2]),
        .Q(spi_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_count_reg[3] 
       (.C(spi_clk),
        .CE(sel),
        .CLR(spi_csn),
        .D(p_0_in[3]),
        .Q(spi_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_count_reg[4] 
       (.C(spi_clk),
        .CE(sel),
        .CLR(spi_csn),
        .D(p_0_in[4]),
        .Q(spi_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_count_reg[5] 
       (.C(spi_clk),
        .CE(1'b1),
        .CLR(spi_csn),
        .D(\spi_count[5]_i_1_n_0 ),
        .Q(spi_count_reg[5]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    spi_enable
       (.I0(spi_count_reg[5]),
        .I1(spi_count_reg[0]),
        .I2(spi_count_reg[1]),
        .I3(spi_count_reg[4]),
        .I4(spi_count_reg[3]),
        .I5(spi_count_reg[2]),
        .O(spi_enable_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    spi_enable_i_1
       (.I0(spi_rd_wr_n__0),
        .I1(spi_enable_n_0),
        .I2(spi_enable__0),
        .O(spi_enable_i_1_n_0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    spi_enable_reg
       (.C(spi_clk),
        .CE(1'b1),
        .CLR(spi_csn),
        .D(spi_enable_i_1_n_0),
        .Q(spi_enable__0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    spi_rd_wr_n
       (.I0(spi_count_reg[5]),
        .I1(spi_count_reg[4]),
        .I2(spi_count_reg[1]),
        .I3(spi_count_reg[0]),
        .I4(spi_count_reg[3]),
        .I5(spi_count_reg[2]),
        .O(spi_rd_wr_n_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    spi_rd_wr_n_i_1
       (.I0(spi_mosi),
        .I1(spi_rd_wr_n_n_0),
        .I2(spi_rd_wr_n__0),
        .O(spi_rd_wr_n_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    spi_rd_wr_n_reg
       (.C(spi_clk),
        .CE(1'b1),
        .CLR(spi_csn),
        .D(spi_rd_wr_n_i_1_n_0),
        .Q(spi_rd_wr_n__0));
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
