# Slide_window 滑动窗口能量计算模块说明

## 1. 模块概述
`slide_window` 模块是 EDM_Monitor 数据处理链路中的核心特征提取单元。它负责接收前端（`pow_calc` 模块）实时计算输出的“瞬时功率”数据流（AXI4-Stream），并在主控 FSM 下发的 `enable` 周期内，利用**深度为 100 的滑动窗口 (Sliding Window)** 实时累积和更新局部的脉冲放电能量。
通过这种连续的局部能量跟踪比对，它能在脉冲放电期间动态地识别当前的放电状态（正常火花 SPARK 或是恶性电弧 ARC），并在结束时上报最终结论。

## 2. 接口说明
模块采用混合接口标准：数据面输入基于标准的 AXI4-Stream 从机，而结果输出面向主控 FSM 则采用精简的自定义握手协议。

| 信号名 | 方向 | 接口类型 | 描述说明 |
| :--- | :---: | :--- | :--- |
| `clk / sys_rst_n` | Input | System | 主时钟 (250MHz) 与异步低有效复位。 |
| `enable` | Input | Control | FSM 使能信号。由 `Control_FSM` 接管，在脉冲开始 (`POWER_CALC` 阶段) 拉高，在脉冲结束时拉低。 |
| `s_axis_tvalid / tdata` | Input | AXI4-Stream | 前端到来的有效信号与 32位暂态功率数据。 |
| `s_axis_tready` | Output| AXI4-Stream | 恒定为高（`1'b1`）。为了防止阻塞上游的高速流水线，该模块**始终静默吞吐数据**；但只有在 `enable` 为高时，这些数据才会被存入窗口参与运算。 |
| `stop_signal` | Output| Control | 实时的告警停止位。当识别为 ARC（能量太低）时，直接拉高。 |
| `result_valid / ready`| Out/In| Handshake | 自定义握手：放电脉冲结束时（`enable` 下降沿）抛出 valid，等待 FSM ready 确认后收回。 |
| `result_energy` | Output| Data | 64 位初始击穿能量（`energy_init`），供上报使用。 |
| `result_status` | Output| Data | 5 位分类状态码（如 `SPARK`, `ARC` 等），供上报使用。 |

## 3. 关键局部参数
- **`DEPTH = 100`**：设定滑动窗口的时序宽度（100个采样周期）。
- **`WIDTH = 32`**：设定内部移位寄存器的位宽（对应 AXI 传入的功率数据宽度）。
- **`ENERGY_THRESHOLD`**：判决阈值 (设为 `64'h0000_0000_000F_FFFF`)。若连续窗口内能量大于该值则认为是火花（`SPARK`），否则判定为电弧（`ARC`）。

## 4. 内部逻辑实现要点

### 4.1 数据流水线 (Shift Register / Pipe)
- 模块构建了一个深度为 100 的数组 `window_pipe`。
- 在综合阶段，Xilinx Vivado 会自动将这类没有中间抽头、纯顺序移位的长数组通过查找表（LUT）映射为极为高效的 **SRLC32E** (Shift Register LUT) 移位寄存器原语，而非消耗大量触发器（FF），从而节约极其庞大的逻辑资源。
- `p_n_oldest` 线网持续引出这根管道中最老的那个数据（`window_pipe[99]`）。

### 4.2 滑窗能量计数器 (`energy_accumulator`)
能量积分采用**递归滑动**算法替代全加器树：
- **填充期 (`shift_count < 100`)**：直接进行累加计算 `accumulator = accumulator + tdata`。
- **满载滑动期 (`shift_count == 100`)**：每进入一个新数据，就加上这个新数据，同时减掉被挤出管道的老数据 `accumulator = accumulator - oldest_data + tdata`。以此实现最低延迟、极小组合逻辑的固定宽度的窗口能量。

### 4.3 初始能量锁存 (`energy_init`)
- 物理意义上的火花“初始能量”代表了击穿发生后最初一段时间的热能释放。
- 模块利用专门的边沿检测逻辑 `shift_count_max_reached`，精准捕捉 `shift_count` 刚刚由 99 跳变到 100 的唯一周期！此时立刻将当前的滑动窗口总能量锁存入 `energy_init` 寄存器，固化这“首个100拍”的能量。

### 4.4 状态动态判定 (Status & Stop Signal)
- 休眠状态 (`!enable`) 时：所有计数器与累加器清零，状态保持。
- 填充刚开始 (`enable` 上升沿) 时：清空上一次遗留的 `status` 到 `DEFAULT`，并解除 `stop_signal`。
- 判定状态 (`shift_count == 100` 满载后)：每个周期持续判断窗口能量。如果能量跌落到阈值 `ENERGY_THRESHOLD` 以下，实时将 `status` 锁定为 `ARC`，同时拉高 `stop_signal` 用以触发 FSM 中的防电弧急停强切动作；反之则锁定为 `SPARK` 常规进行。

### 4.5 输出触发握手 (Result Handshaking)
- 结果什么时候可用？本模块不直接由时域控制，而是通过 `enable_d`（打拍后的使能信号）进行边沿提取！
- 当检测到 FSM 结束了 `POWER_CALC` 并在主控中拉低了 `enable` 时，便提取这一**下降沿**，立即将 `result_valid` 升为 1。之后死等 FSM 派发 `result_ready` 才拉低撤销。这确保了在不同状态机之间的信息交接绝对安全。