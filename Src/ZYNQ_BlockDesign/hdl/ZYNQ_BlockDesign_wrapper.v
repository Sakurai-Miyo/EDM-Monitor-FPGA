//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Fri Apr 10 23:13:48 2026
//Host        : Hayase-Yuuka running 64-bit major release  (build 9200)
//Command     : generate_target ZYNQ_BlockDesign_wrapper.bd
//Design      : ZYNQ_BlockDesign_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ZYNQ_BlockDesign_wrapper
   (adc_data_n_0,
    adc_data_p_0,
    adc_dco_n_0,
    adc_dco_p_0,
    clk_n_0,
    clk_p_0,
    div_param_od0_0,
    emio_spi0_sclk_o_0,
    emio_spi0_ss_o_n_0,
    power_stop_signal_0,
    power_trig_async_0,
    rst_n_async_0,
    spi_sdio_0);
  input [11:0]adc_data_n_0;
  input [11:0]adc_data_p_0;
  input adc_dco_n_0;
  input adc_dco_p_0;
  input clk_n_0;
  input clk_p_0;
  output div_param_od0_0;
  output emio_spi0_sclk_o_0;
  output emio_spi0_ss_o_n_0;
  output power_stop_signal_0;
  input power_trig_async_0;
  input rst_n_async_0;
  inout spi_sdio_0;

  wire [11:0]adc_data_n_0;
  wire [11:0]adc_data_p_0;
  wire adc_dco_n_0;
  wire adc_dco_p_0;
  wire clk_n_0;
  wire clk_p_0;
  wire div_param_od0_0;
  wire emio_spi0_sclk_o_0;
  wire emio_spi0_ss_o_n_0;
  wire power_stop_signal_0;
  wire power_trig_async_0;
  wire rst_n_async_0;
  wire spi_sdio_0;

  ZYNQ_BlockDesign ZYNQ_BlockDesign_i
       (.adc_data_n_0(adc_data_n_0),
        .adc_data_p_0(adc_data_p_0),
        .adc_dco_n_0(adc_dco_n_0),
        .adc_dco_p_0(adc_dco_p_0),
        .clk_n_0(clk_n_0),
        .clk_p_0(clk_p_0),
        .div_param_od0_0(div_param_od0_0),
        .emio_spi0_sclk_o_0(emio_spi0_sclk_o_0),
        .emio_spi0_ss_o_n_0(emio_spi0_ss_o_n_0),
        .power_stop_signal_0(power_stop_signal_0),
        .power_trig_async_0(power_trig_async_0),
        .rst_n_async_0(rst_n_async_0),
        .spi_sdio_0(spi_sdio_0));
endmodule
