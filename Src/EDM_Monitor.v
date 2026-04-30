`default_nettype none

module EDM_Monitor #(
         // NOTE: 后仿TLAST专项验证临时配置为6。
         // TODO(实机发布前务必恢复): 改回 128。
         parameter integer AXIS_FRAME_DATA_COUNT = 128
       )(
         input wire clk_p,
         input wire clk_n,
         input wire rst_n_async,


         input wire [ 11: 0 ] adc_data_p ,
         input wire [ 11: 0 ] adc_data_n ,

         input wire adc_dco_p ,
         input wire adc_dco_n ,

         output wire div_param_od0,

         input wire power_trig_async,

         input wire [15:0] cfg_breakdown,
         input wire [63:0] cfg_energy_threshold,
         input wire cfg_update_toggle,


         (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ps_clk CLK" *)
         (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF axi_fifo_m_axis" *)
         input wire ps_clk,

         output wire power_stop_signal,
         output wire axi_fifo_m_axis_tvalid,
         input wire axi_fifo_m_axis_tready,
         output wire [ 127: 0 ] axi_fifo_m_axis_tdata,
         output wire axi_fifo_m_axis_tlast
       );


//时钟发生与复位同步

wire main_clk_250m;    //时钟源
wire idelay_refclk;    //IDELAYE3参考时钟
wire adc_dco;

wire mmcm_locked;      //锁相环锁定
wire sys_rst_n_async;

global_clk_wiz u_global_clk_wiz
               (
                 // Clock out ports
                 .main_clk_250m( main_clk_250m ),               // output main_clk_250m
                 .idelay_refclk( idelay_refclk ),                //idelay_ref_clk 500m
                 // Status and control signals
                 .reset( ~rst_n_async ),           // input reset
                 .locked( mmcm_locked ),                 // output locked
                 // Clock in ports
                 .clk_in1_p( clk_p ),              // input clk_in1_p
                 .clk_in1_n( clk_n )              // input clk_in1_n
               );


assign sys_rst_n_async = rst_n_async && mmcm_locked;    //异步复位信号

wire dco_rst_n_sync;        //打拍后的同步复位信号
wire sys_rst_n_sync;


reset_sync_n reset_sync_n_mainclk(                   //主时钟域同步复位信号产生
               .clk ( main_clk_250m ),
               .arst_n ( sys_rst_n_async ),
               .srst_n ( sys_rst_n_sync )
             );

reset_sync_n u_reset_sync_n_dcoclk(                  //ADC时钟域同步复位信号产生
               .clk ( adc_dco ),
               .arst_n ( sys_rst_n_async ),
               .srst_n ( dco_rst_n_sync )
             );


//AD9434 数据采集与跨时钟域同步
wire [ 15: 0 ] adc_data;
wire [ 15: 0 ] adc_data_sync;
wire fifo_full;
wire fifo_wr_en;


ad9434 u_ad9434(
         .sys_rst_n ( dco_rst_n_sync ),
         .idelaye3_ref_clk ( idelay_refclk ),
         .fifo_full ( fifo_full ),
         .fifo_wr_en ( fifo_wr_en ),
         .adc_data_p ( adc_data_p ),
         .adc_data_n ( adc_data_n ),
         .adc_dco_p ( adc_dco_p ),
         .adc_dco_n ( adc_dco_n ),
         .adc_dco ( adc_dco ),
         .adc_data_out ( adc_data ),
         .div_param_od0 ( div_param_od0 )
       );


// AD 采样数据同步 FIFO
// 重点：FIFO以FWFT(Show-ahead)模式配置
wire rd_en;
wire empty;

wire fifo_s_axis_data_tvalid;
wire fifo_s_axis_data_tready;

// ======== FWFT FIFO 读取与数据分发逻辑 ========
// 1. 数据有效标志：只要FIFO不空，dout就是有效的
assign fifo_s_axis_data_tvalid = ~empty;

// 2. FIFO读使能：FIFO有数据且下游FIR准备好时，读取(消耗)数据
assign rd_en = ( ~empty ) & fifo_s_axis_data_tready;

// ==============================================

ad_sync_fifo u_ad_sync_fifo (
               .wr_clk( adc_dco ),            // input wire wr_clk
               .wr_rst( ~dco_rst_n_sync ),            // input wire wr_rst
               .rd_clk( main_clk_250m ),            // input wire rd_clk
               .rd_rst( ~sys_rst_n_sync ),            // input wire rd_rst
               .din( adc_data ),                  // input wire [15 : 0] din
               .wr_en( fifo_wr_en ),              // input wire wr_en
               .rd_en( rd_en ),              // input wire rd_en
               .dout( adc_data_sync ),                // output wire [15 : 0] dout
               .full( fifo_full ),                // output wire full
               .empty( empty )              // output wire empty
             );


wire sw_result_valid;
wire sw_result_ready;
wire [ 4: 0 ] sw_result_status;
wire [ 63: 0 ] sw_result_energy;
wire sw_en;
wire package_send_req;
wire package_send_ack;

wire [ 4: 0 ] discharge_stat;
wire [ 63: 0 ] energy_init;
wire [ 15: 0 ] time_breakdown;
wire [ 15: 0 ] time_energy;

Control_FSM u_Control_FSM(
              .clk ( main_clk_250m ),
              .sys_rst_n ( sys_rst_n_sync ),
              .power_trig_async ( power_trig_async ),
              .input_voltage ( adc_data_sync ),         // 【修改】将FIFO的输出直接给FSM
              .sw_result_valid ( sw_result_valid ),
              .sw_result_ready ( sw_result_ready ),
              .sw_result_status ( sw_result_status ),
              .sw_result_energy ( sw_result_energy ),
              .axi_send_done ( package_send_ack ),
              .breakdown_voltage_threshold ( cfg_breakdown ),
              .cfg_update_toggle ( cfg_update_toggle ),
              .slide_window_en ( sw_en ),
              .axi_send_en ( package_send_req ),
              .dis_status ( discharge_stat ),
              .energy_init_latched ( energy_init ),
              .time_bd_buff ( time_breakdown ),
              .time_energy_buff ( time_energy )
            );

wire fir_m_axis_data_tvalid;
wire fir_m_axis_data_tready;

wire [ 15: 0 ] fir_data;

FIR_Filter u_FIR_Filter (
             .aresetn( sys_rst_n_sync ),                                  // input wire aresetn
             .aclk( main_clk_250m ),                                        // input wire aclk
             .s_axis_data_tvalid( fifo_s_axis_data_tvalid ),            // input wire s_axis_data_tvalid
             .s_axis_data_tready( fifo_s_axis_data_tready ),            // output wire s_axis_data_tready
             .s_axis_data_tdata( adc_data_sync ),              // input wire [15 : 0] s_axis_data_tdata
             .m_axis_data_tvalid( fir_m_axis_data_tvalid ),            // output wire m_axis_data_tvalid
             .m_axis_data_tready( fir_m_axis_data_tready ),          // input wire m_axis_data_tready
             .m_axis_data_tdata( fir_data )              // output wire [15 : 0] m_axis_data_tdata
           );

wire [ 31: 0 ] pow_data;
wire pow_m_axis_tvalid;
wire pow_m_axis_tready;

pow_calc u_pow_calc(
           .clk ( main_clk_250m ),
           .sys_rst_n ( sys_rst_n_sync ),
           .s_axis_tvalid ( fir_m_axis_data_tvalid ),
           .s_axis_tready ( fir_m_axis_data_tready ),
           .s_axis_tdata ( fir_data ),
           .m_axis_tvalid ( pow_m_axis_tvalid ),
           .m_axis_tready ( pow_m_axis_tready ),
           .m_axis_tdata ( pow_data )
         );


slide_window u_slide_window(
               .clk ( main_clk_250m ),
               .sys_rst_n ( sys_rst_n_sync ),
               .enable ( sw_en ),
               .ENERGY_THRESHOLD ( cfg_energy_threshold ),
               .cfg_update_toggle ( cfg_update_toggle ),
               .s_axis_tvalid ( pow_m_axis_tvalid ),
               .s_axis_tready ( pow_m_axis_tready ),
               .s_axis_tdata ( pow_data ),
               .stop_signal ( power_stop_signal ),
               .result_valid ( sw_result_valid ),
               .result_ready ( sw_result_ready ),
               .result_energy ( sw_result_energy ),
               .result_status ( sw_result_status ),
               .result_stop ( )
             );


wire package_m_axis_tvalid;
wire package_m_axis_tready;
wire package_m_axis_tlast;
wire [ 127: 0 ] package_m_axis_tdata;
axis_package #(
               .FRAME_DATA_COUNT ( AXIS_FRAME_DATA_COUNT )
             ) u_axis_package(
               .clk ( main_clk_250m ),
               .sys_rst_n ( sys_rst_n_sync ),
               .send_req ( package_send_req ),
               .send_ack ( package_send_ack ),
               .energy_data ( energy_init ),
               .status_data ( discharge_stat ),
               .time_bd_data ( time_breakdown ),
               .time_energy_data ( time_energy ),
               .m_axis_tvalid ( package_m_axis_tvalid ),
               .m_axis_tready ( package_m_axis_tready ),
               .m_axis_tlast ( package_m_axis_tlast ),
               .m_axis_tdata ( package_m_axis_tdata )
             );

axis_data_fifo u_axis_data_fifo (
                 .s_axis_aresetn( sys_rst_n_sync ),            // input wire s_axis_aresetn
                 .s_axis_aclk( main_clk_250m ),                  // input wire s_axis_aclk
                 .s_axis_tvalid( package_m_axis_tvalid ),              // input wire s_axis_tvalid
                 .s_axis_tready( package_m_axis_tready ),              // output wire s_axis_tready
                 .s_axis_tdata( package_m_axis_tdata ),                // input wire [127 : 0] s_axis_tdata
                 .s_axis_tlast( package_m_axis_tlast ),                // input wire s_axis_tlast
                 .m_axis_aclk( ps_clk ),                  // input wire m_axis_aclk
                 .m_axis_tvalid( axi_fifo_m_axis_tvalid ),              // output wire m_axis_tvalid
                 .m_axis_tready( axi_fifo_m_axis_tready ),              // input wire m_axis_tready
                 .m_axis_tdata( axi_fifo_m_axis_tdata ),                // output wire [127 : 0] m_axis_tdata
                 .m_axis_tlast( axi_fifo_m_axis_tlast )                // output wire m_axis_tlast
               );

endmodule

`default_nettype wire


