`timescale 1ns/100ps

module spi_bridge (
  input  wire spi_csn,   // 连到 ZYNQ EMIO SPI 的 CS 
  input  wire spi_clk,   // 连到 ZYNQ EMIO SPI 的 SCLK
  input  wire spi_mosi,  // 连到 ZYNQ EMIO SPI 的 MOSI (m_o)
  output wire spi_miso,  // 连到 ZYNQ EMIO SPI 的 MISO (s_i)

  inout  wire spi_sdio   // 直接引出到 FPGA 外部物理管脚，连 AD9434 的 SDIO
);

  // 内部寄存器
  reg  [5:0] spi_count = 6'd0;
  reg        spi_rd_wr_n = 1'd0;
  reg        spi_enable = 1'd0;

  // 内部信号
  wire       spi_enable_s;

  // 当片选有效(低电平)且处于读模式时，使能输入(T=1)
  assign spi_enable_s = spi_enable & ~spi_csn;

  // 在 SCLK 上升沿 或 CSN 上升沿触发
  always @(posedge spi_clk or posedge spi_csn) begin
    if (spi_csn == 1'b1) begin
      spi_count <= 6'd0;
      spi_rd_wr_n <= 1'd0;
    end else begin
      spi_count <= (spi_count < 6'h3f) ? spi_count + 1'b1 : spi_count;
      // AD9434 的指令字第一个 bit 是读写标志 (1为读，0为写)
      if (spi_count == 6'd0) begin
        spi_rd_wr_n <= spi_mosi; 
      end
    end
  end

  always @(negedge spi_clk or posedge spi_csn) begin
    if (spi_csn == 1'b1) begin
      spi_enable <= 1'b0;
    end else begin
      // AD9434 指令周期为 16 个 bit。第 16 个时钟后，切换方向
      if (spi_count == 6'd16) begin
        spi_enable <= spi_rd_wr_n;
      end
    end
  end

  // 替换为 Xilinx 原生的双向缓冲器 IOBUF
  IOBUF #(
    .DRIVE(12),
    .IOSTANDARD("DEFAULT"),
    .SLEW("SLOW")
  ) IOBUF_inst (
    .O(spi_miso),     // 给内部逻辑的输入
    .IO(spi_sdio),    // 连接到外部物理引脚
    .I(spi_mosi),     // 来自内部逻辑的输出
    .T(spi_enable_s)  // 三态控制：1 为高阻(纯输入)，0 为输出
  );

endmodule