`default_nettype none

module pow_calc (
         input wire clk,
         input wire sys_rst_n,

         // AXI4-Stream Slave (接收前级 FIR 的数据)
         input wire s_axis_tvalid,                     //上级数据有效信号
         output wire s_axis_tready,                    //本模块准备好接收数据
         input wire signed [ 15: 0 ] s_axis_tdata,     //上级数据总线（16位有符号整数）

         // AXI4-Stream Master (输出平方后的功率数据)
         output reg m_axis_tvalid,                  //本模块输出数据有效信号
         input wire m_axis_tready,                 //下级准备好接收数据
         output reg [ 31: 0 ] m_axis_tdata      // 输出数据总线（32位无符号整数，存储功率值）
       );

wire out_fire;  //下游数据被成功取走
wire in_fire;   //上游数据被成功写入


// 下游成功取走本模块数据的条件：M端主从双方都准备好
assign out_fire = m_axis_tvalid & m_axis_tready;

// 本模块准备好接收上游数据的条件：
// 条件 A: 本模块输出寄存器为空，输出无效 ( ~m_axis_tvalid )
// 条件 B: 虽有数据，但在当前时钟沿刚好会被下游取走 ( m_axis_tready )
// 优势: 这能实现 100% 吞吐量的背靠背(Back-to-Back)传输，不浪费任何时钟周期
assign s_axis_tready = ( ~m_axis_tvalid ) | m_axis_tready;

// 上游成功将数据写入本模块的条件：S端主从双方都准备好
assign in_fire = s_axis_tvalid & s_axis_tready;


always @( posedge clk or negedge sys_rst_n )   //控制信号逻辑
  begin
    if ( !sys_rst_n )
      begin

        m_axis_tvalid <= 1'b0;
      end
    else
      begin
        if ( in_fire )
          begin
            // 只要成功接收了新数据，下一拍必定有有效数据输出
            m_axis_tvalid <= 1'b1;
          end
        else if ( out_fire )
          begin
            // 没有新输入，但老数据被下游抽走，输出寄存器空了，下一拍输出无效
            m_axis_tvalid <= 1'b0;
          end
        else
          begin
            //数据准备好但下游没有取走数据，按照AXI4-Stream协议应保持TValid不变，进入等待状态
            m_axis_tvalid <= m_axis_tvalid;
          end
      end
  end

always @( posedge clk or negedge sys_rst_n )    //输出数据逻辑
  begin
    if ( !sys_rst_n )
      begin
        m_axis_tdata <= 32'd0;
      end
    else if ( in_fire )
      begin
        m_axis_tdata <= $signed( s_axis_tdata ) * $signed( s_axis_tdata );
      end

  end

endmodule

`default_nettype wire
