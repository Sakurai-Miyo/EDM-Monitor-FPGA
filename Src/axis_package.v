`default_nettype none

module axis_package(
         input wire clk,
         input wire sys_rst_n,

         input wire send_req,                   //FSM Send Control Signal
         output reg send_ack,

         input wire [ 63: 0 ] energy_data,         //FSM Data
         input wire [ 4: 0 ] status_data,
         input wire [ 15: 0 ] time_bd_data,
         input wire [ 15: 0 ] time_energy_data,

         output reg m_axis_tvalid,             //AXI4-Stream Interface
         input wire m_axis_tready,
         output reg m_axis_tlast,

         output reg [ 127: 0 ] m_axis_tdata
       );

// NOTE: 后仿专项验证临时配置为6（每6包拉一次TLAST）。
// TODO(实机发布前务必恢复): 将 FRAME_DATA_COUNT 改回 128。
parameter FRAME_DATA_COUNT = 128;

// 128-bit payload mapping (LSB -> MSB):
// [ 63:  0] energy_data
// [ 79: 64] time_energy_data (放电时间)
// [ 95: 80] time_bd_data     (击穿时间)
// [100: 96] status_data      (放电状态)
// [116:101] frame_seq_id     (帧序列)
// [127:117] reserved         (保留)

reg [ 15: 0 ] frame_seq_id;
reg [ 15: 0 ] frame_data_counter;
reg req_holdoff;

wire axis_fire;
wire launch_fire;
assign axis_fire = m_axis_tvalid && m_axis_tready;      //发送端双端都准备好
assign launch_fire = send_req && !req_holdoff && !m_axis_tvalid;     //满足发送条件：有请求、未被holdoff、当前无有效数据在发送

// req_holdoff管理：send_req保持高电平期间防止重复触发发送。
always @( posedge clk or negedge sys_rst_n )
  begin
    if ( !sys_rst_n )
      begin
        req_holdoff <= 1'b0;
      end
    else
      begin
        if ( !send_req )
          begin
            req_holdoff <= 1'b0;
          end
        else if ( launch_fire )
          begin
            req_holdoff <= 1'b1;
          end
      end
  end

// AXIS有效位控制：请求时拉高tvalid，握手后拉低。
always @( posedge clk or negedge sys_rst_n )
  begin
    if ( !sys_rst_n )
      begin
        m_axis_tvalid <= 1'b0;
      end
    else
      begin
        if ( launch_fire )
          begin
            m_axis_tvalid <= 1'b1;
          end
        else if ( axis_fire )
          begin
            m_axis_tvalid <= 1'b0;
          end
      end
  end


// AXIS帧尾控制：仅在每128条的最后一条置位tlast。
always @( posedge clk or negedge sys_rst_n )
  begin
    if ( !sys_rst_n )
      begin
        m_axis_tlast <= 1'b0;
      end
    else
      begin
        if ( launch_fire )
          begin
            m_axis_tlast <= ( frame_data_counter == ( FRAME_DATA_COUNT - 1 ) );
          end
        else if ( axis_fire )
          begin
            m_axis_tlast <= 1'b0;
          end
      end
  end

// AXIS载荷锁存：发起发送时按协议打包128位数据。
always @( posedge clk or negedge sys_rst_n )
  begin
    if ( !sys_rst_n )
      begin
        m_axis_tdata <= 128'd0;
      end
    else
      begin
        if ( launch_fire )
          begin
            m_axis_tdata[ 63: 0 ] <= energy_data;
            m_axis_tdata[ 79: 64 ] <= time_energy_data;
            m_axis_tdata[ 95: 80 ] <= time_bd_data;
            m_axis_tdata[ 100: 96 ] <= status_data;
            m_axis_tdata[ 116: 101 ] <= frame_seq_id;
            m_axis_tdata[ 127: 117 ] <= 11'd0;
          end
      end
  end

// 发送完成应答：每次AXIS握手成功后给FSM一个单拍ack。
always @( posedge clk or negedge sys_rst_n )
  begin
    if ( !sys_rst_n )
      begin
        send_ack <= 1'b0;
      end
    else
      begin
        send_ack <= axis_fire;
      end
  end

// 序列号计数：每次成功发送一条数据后递增。
always @( posedge clk or negedge sys_rst_n )
  begin
    if ( !sys_rst_n )
      begin
        frame_seq_id <= 16'd0;
      end
    else
      begin
        if ( axis_fire )
          begin
            frame_seq_id <= frame_seq_id + 16'd1;
          end
      end
  end

// 帧内计数：统计当前128条中的位置，用于生成tlast。
always @( posedge clk or negedge sys_rst_n )
  begin
    if ( !sys_rst_n )
      begin
        frame_data_counter <= 16'd0;
      end
    else
      begin
        if ( axis_fire )
          begin
            if ( frame_data_counter == ( FRAME_DATA_COUNT - 1 ) )
              begin
                frame_data_counter <= 16'd0;
              end
            else
              begin
                frame_data_counter <= frame_data_counter + 16'd1;
              end
          end
      end
  end



endmodule

`default_nettype wire
