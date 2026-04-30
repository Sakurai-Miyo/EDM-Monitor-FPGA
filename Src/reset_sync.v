`default_nettype none

module reset_sync_n (
         input  wire clk,
         input  wire arst_n,    // async assert low
         output wire srst_n     // sync deassert high
       );

// 【极其重要】强制综合器将其识别为同步寄存器链
// 1. 防止被优化合并 
// 2. 强制这 3 个触发器在物理布局上紧紧靠在一起，最大化缩短布线延迟，降低亚稳态概率
(* ASYNC_REG = "TRUE" *) reg [ 2: 0 ] sync_ff;

// 触发列表必须包含 negedge arst_n，赋予其越过时钟的特权
always @( posedge clk or negedge arst_n )
  begin
    if ( !arst_n ) 
      begin
        // 第一阶段：异步复位 (瞬间清零全链路)
        sync_ff <= 3'b000; 
      end
    else 
      begin
        // 第二阶段：同步释放 (移位操作)
        // 外部复位撤销后，每个时钟沿将 1'b1 移入最低位，原数据左移
        sync_ff <= { sync_ff[ 1: 0 ], 1'b1 }; 
      end
  end

assign srst_n = sync_ff[ 2 ];

endmodule

`default_nettype wire