`default_nettype none

module ad9434 (
         input wire sys_rst_n ,

         input wire idelaye3_ref_clk,                   //reference clock for IDELAYE3 (500MHz)
         input wire fifo_full,
         output wire fifo_wr_en,



         // ADC1 interface
         input wire [ 11: 0 ] adc_data_p ,
         input wire [ 11: 0 ] adc_data_n ,

         input wire adc_dco_p ,
         input wire adc_dco_n ,

         output wire adc_dco ,

         output reg [ 15: 0 ] adc_data_out,

         // ADC2 interface
         //  input [ 11: 0 ] adc2_data_p ,
         //  input [ 11: 0 ] adc2_data_n ,

         //  input adc2_dco_p ,
         //  input adc2_dco_n ,

         //  output adc2_dco,

         //  output reg [ 15: 0 ] adc2_data_out
         output wire div_param_od0                           //Control CDCM61002 Output Divider.
       );


// ============================================================
// 0. 公共控制区
// ============================================================

// 0.1 时钟发生器控制

OBUFT #(
        .IOSTANDARD( "DEFAULT" )
      ) OBUFT_div_param_od0_inst (
        .O( div_param_od0 ),
        .I( 1'b0 ),
        .T( 1'b1 )                  // 三态控制端：1 表示切断输出，呈现高阻态 (有外部上拉)
      );
wire idelayctrl_rdy;
wire sys_rst = ~sys_rst_n;

assign fifo_wr_en = sys_rst_n && idelayctrl_rdy && ( !fifo_full );


// 0.2 IDELAYCTRL（ADC1/ADC2共用）
IDELAYCTRL #(
             .SIM_DEVICE( "ULTRASCALE" )           //7SERIES/ULTRASCALE。默认ULTRASCALE
           ) IDELAYCTRL_inst (
             .RDY ( idelayctrl_rdy ),
             .REFCLK ( idelaye3_ref_clk ),           // 1-bit input:  必须与 IDELAYE3 的 REFCLK_FREQUENCY (250MHz) 严格一致！
             .RST ( sys_rst )                        // 1-bit input:  高电平有效的复位信号
           );


// ============================================================
// 1. ADC1 分区
// ============================================================

// 1.1 ADC1 时钟路径引入 (IBUFDS -> BUFG)
wire adc_dco_ibuf ;

IBUFDS #(
         .DIFF_TERM( "FALSE" ),
         .IBUF_LOW_PWR( "TRUE" ),
         .IOSTANDARD( "DEFAULT" )
       ) ibufds_dco1 (
         .O( adc_dco_ibuf ),
         .I( adc_dco_p ),
         .IB( adc_dco_n )
       );

// 直接用 BUFG 缓冲外部 DCO 时钟
BUFG bufg_adc_dco (
       .O( adc_dco ),
       .I( adc_dco_ibuf )
     );


// 1.2 ADC1 数据路径：IBUFDS -> IDELAYE3 -> IDDRE1（逐位微调采样延迟）
wire [ 11: 0 ] adc_data_ibuf;
wire [ 11: 0 ] adc_data_idelaye3;      // IDELAYE3 输出（延迟后的数据）
wire [ 11: 0 ] adc_data_iddre1;   // IDDRE1 输出

wire [ 11: 0 ] data_casc_out;
wire [ 11: 0 ] data_casc_ret;

genvar num_adc1;
generate
  for ( num_adc1 = 0; num_adc1 < 12; num_adc1 = num_adc1 + 1 )
    begin : gen_adc1_path

      IBUFDS #(
               .DIFF_TERM( "FALSE" ),
               .IBUF_LOW_PWR( "TRUE" ),
               .IOSTANDARD( "DEFAULT" )
             ) ibuf_data1 (
               .O( adc_data_ibuf[ num_adc1 ] ),
               .I( adc_data_p[ num_adc1 ] ),
               .IB( adc_data_n[ num_adc1 ] )
             );

      IDELAYE3 #(
                 .CASCADE( "MASTER" ),
                 .DELAY_FORMAT( "TIME" ),
                 .DELAY_SRC( "IDATAIN" ),
                 .DELAY_TYPE( "FIXED" ),
                 .DELAY_VALUE( 0 ),
                 .REFCLK_FREQUENCY( 500.0 ),
                 .SIM_DEVICE( "ULTRASCALE_PLUS" ),
                 .UPDATE_MODE( "ASYNC" )
               ) idelay_inst_adc1 (
                 .DATAOUT( adc_data_idelaye3[ num_adc1 ] ),
                 .CLK( adc_dco ),
                 .EN_VTC( 1'b1 ),
                 .IDATAIN( adc_data_ibuf[ num_adc1 ] ),
                 .CASC_OUT( data_casc_out[ num_adc1 ] ),
                 .CASC_RETURN( data_casc_ret[ num_adc1 ] )
               );

      ODELAYE3 #(
                 .CASCADE( "SLAVE_END" ),
                 .DELAY_FORMAT( "TIME" ),
                 .DELAY_TYPE( "FIXED" ),
                 .DELAY_VALUE( 0 ),
                 .REFCLK_FREQUENCY( 500.0 ),
                 .SIM_DEVICE( "ULTRASCALE_PLUS" ),
                 .UPDATE_MODE( "ASYNC" )
               ) odelay_inst_adc1 (
                 .DATAOUT( data_casc_ret[ num_adc1 ] ),
                 .CLK( adc_dco ),
                 .EN_VTC( 1'b1 ),
                 .CASC_IN( data_casc_out[ num_adc1 ] )
               );

      IDDRE1 #(
               .DDR_CLK_EDGE ( "OPPOSITE_EDGE" ),
               .IS_CB_INVERTED ( 1'b1 ),
               .IS_C_INVERTED ( 1'b0 )
             ) iddre1_inst1 (
               .Q1 ( adc_data_iddre1[ num_adc1 ] ),
               .Q2 ( ),
               .C ( adc_dco ),
               .CB ( adc_dco ),
               .D ( adc_data_idelaye3[ num_adc1 ] ),
               .R ( sys_rst )
             );

    end
endgenerate


// 1.3 ADC1 数据后处理 (符号扩展及取反)
always @( posedge adc_dco or negedge sys_rst_n )
  begin
    if ( !sys_rst_n )
      begin
        adc_data_out <= 16'b0;
      end
    else
      begin
        adc_data_out <= -{ { 4{ adc_data_iddre1[ 11 ] } } , adc_data_iddre1 };
      end
  end


// // ============================================================
// // 2. ADC2 分区
// // ============================================================

// // 2.1 ADC2 时钟路径引入 (IBUFDS -> BUFG)
// wire adc2_dco_ibuf ;

// IBUFDS #(
//          .DIFF_TERM( "FALSE" ),
//          .IBUF_LOW_PWR( "TRUE" ),
//          .IOSTANDARD( "DEFAULT" )
//        ) ibufds_dco2 (
//          .O( adc2_dco_ibuf ),
//          .I( adc2_dco_p ),
//          .IB( adc2_dco_n )
//        );

// BUFG bufg_adc2_dco (
//        .O( adc2_dco ),
//        .I( adc2_dco_ibuf )
//      );


// // 2.2 ADC2 数据路径：IBUFDS -> IDELAYE3 -> IDDRE1（逐位微调采样延迟）
// wire [ 11: 0 ] adc2_data_ibuf;
// wire [ 11: 0 ] adc2_data_idelaye3;     // IDELAYE3 输出（延迟后的数据）
// (* mark_debug = "true" *) wire [ 11: 0 ] adc2_data_iddre1; // IDDRE1 输出

// genvar num_adc2;
// generate
//   for ( num_adc2 = 0; num_adc2 < 12; num_adc2 = num_adc2 + 1 )
//     begin : gen_adc2_path

//       IBUFDS #(
//                .DIFF_TERM( "FALSE" ),
//                .IBUF_LOW_PWR( "TRUE" ),
//                .IOSTANDARD( "DEFAULT" )
//              ) ibuf_data2 (
//                .O( adc2_data_ibuf[ num_adc2 ] ),
//                .I( adc2_data_p[ num_adc2 ] ),
//                .IB( adc2_data_n[ num_adc2 ] )
//              );

//       IDELAYE3 #(
//                  .CASCADE( "NONE" ),
//                  .DELAY_FORMAT( "TIME" ),
//                  .DELAY_SRC( "IDATAIN" ),
//                  .DELAY_TYPE( "FIXED" ),
//                  .DELAY_VALUE( 0 ),
//                  .REFCLK_FREQUENCY( 250.0 ),
//                  .SIM_DEVICE( "ULTRASCALE_PLUS" ),
//                  .UPDATE_MODE( "ASYNC" )
//                ) idelay_inst_adc2 (
//                  .DATAOUT( adc2_data_idelaye3[ num_adc2 ] ),
//                  .CLK( idelaye3_ref_clk ),
//                  .EN_VTC( 1'b1 ),
//                  .IDATAIN( adc2_data_ibuf[ num_adc2 ] )
//                );

//       IDDRE1 #(
//                .DDR_CLK_EDGE ( "OPPOSITE_EDGE" ),
//                .IS_CB_INVERTED ( 1'b1 ),
//                .IS_C_INVERTED ( 1'b0 )
//              ) iddre1_inst2 (
//                .Q1 ( adc2_data_iddre1[ num_adc2 ] ),
//                .Q2 (  ),
//                .C ( adc2_dco ),
//                .CB ( adc2_dco ),
//                .D ( adc2_data_idelaye3[ num_adc2 ] ),
//                .R ( sys_rst )
//              );

//     end
// endgenerate


// // 2.3 ADC2 数据后处理 (符号扩展及取反)
// always @( posedge adc2_dco or negedge sys_rst_n )
//   begin
//     if ( !sys_rst_n )
//       begin
//         adc2_data_out <= 16'b0;
//       end
//     else
//       begin
//         adc2_data_out <= -{ { 4{ adc2_data_iddre1[ 11 ] } }, adc2_data_iddre1 };
//       end
//   end

endmodule

`default_nettype wire
