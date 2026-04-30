# Control_FSM 状态机控制模块说明

## 1. 模块用途
`Control_FSM` 是整个 EDM_Monitor（放电加工监测）系统的核心大管家。
其主要职责是：侦测放电脉冲触发信号的到来，管理放电过程的时间轴（击穿时间、放电时间、流水线对齐等），分析放电的早期状态（开路、短路），统筹下游模块的使能调度（启动能量滑窗），并在放电结束后汇总多方计算结果（火花、电弧等），通过握手协议指挥 DMA 封包模块（`axis_package`）最终将数据上报给上位机。

---

## 2. 核心计数器作用说明
在时域管理中，状态机内部维护了三个至关重要的计数器，所有的计时行为均在各自时段被精准钳位和累加：

| 计数器名称 | 作用与物理意义 |
| :--- | :--- |
| **`time_bd_counter`** <br> (击穿时间计数器) | 从脉冲到来（进入 `DIS_START`）开始计数，直到成功击穿。主要用于**短路判定**：如果它在很短时间（`< Short_Circuit_Time_threshold`）内即发生击穿，这说明电极物理短接，判定为极恶性的 `SHORT_CIRCUIT`。 |
| **`time_delay_counter`** <br> (流水线延迟计数器) | 仅在 `BREAK_DELAY` 阶段计数。旨在等待前端 ADC 和 FIFO、FIR 滤波器固有的硬件流水线延迟（`FIR_Cycles + FIR_Latency_Cycles = 110`）。**作用是时域空间对齐**：确保给足时间让真实的击穿波形流出 FIR 后，再启动下游滑动窗口。 |
| **`time_energy_counter`** <br> (持续放电计数器) | 在 `BREAK_DELAY` 和 `POWER_CALC` 整个真实放电期累加。用于记录有效放电火花/电弧维持的总时间，作为最终特征一并上报给上位机。 |

---

## 3. 状态转移表 (State Transition Table)

FSM 设计为一个 5 状态 Mealy/Moore 混合状态机。状态转移及各状态行为如下表所示：

| 当前状态 | 触发条件 / 跳转逻辑 | 下一状态 | 该阶段操作与计数器使能 |
| :--- | :--- | :--- | :--- |
| **IDLE** <br> (空闲等待) | `power_trig_pos == 1` <br> *(收到触发脉冲上升沿)* | **DIS_START** | 全局钳位，清空所有时间计数器；<br>复位所有中间标志与识别状态。 |
| | 其他 | IDLE | |
| **DIS_START** <br> (放电启动/等击穿)| `!power_trig` *(脉冲提早掉电)* | **REPORT** -> `OPEN` | `time_bd_counter_en = 1`<br>*(只累加击穿时间)* |
| | `time_bd_counter < 20` *(处于起始保护窗)* | DIS_START | 忽略电压判断，等待陈旧流水线排空。 |
| | 击穿确认连拍 `< 3` *(尚未完成彻底击穿)* | DIS_START | 累加计数或重置抗噪连拍标志。 |
| | 达成击穿 && 扣除保护窗耗时 `< 10` *(极速击穿)* | **REPORT** -> `SHORT` | 确认为短路。 |
| | 达成击穿 && 正常耗时 | **BREAK_DELAY** | 准备等待滤波流水线对齐。 |
| **BREAK_DELAY** <br> (等流水线对齐) | `!power_trig` *(提早掉电)* | **REPORT** -> `OPEN` | `time_delay_counter_en = 1`<br>`time_energy_counter_en = 1` |
| | `time_delay_counter >= 110` *(延迟耗尽，对齐完成)*| **POWER_CALC** | 准备进入特征提取计算！ |
| | 其他 | BREAK_DELAY | 继续消耗补偿时间。 |
| **POWER_CALC** <br> (特征提取) | `!power_trig` *(脉冲结束/正常掉电)* | **REPORT** | `time_energy_counter_en = 1`<br>`slide_window_en = 1` *(使能滑窗)* |
| | 其他 | POWER_CALC | 数据全速流过滑窗，进行状态分析。 |
| **REPORT** <br> (结果整合上报) | `axi_send_done == 1` *(收到 DMA 封包返回指令)* | **IDLE** | `axi_send_en = 1` *(仅当结果有效)* |
| | 其他 | REPORT | 停滞等待下游 AXI 握手接收完毕。 |

---

## 4. 内部逻辑实现细节

### 4.1 触发同步与边沿检测
外部传来的 `power_trig_async` 通过三级触发器（`_reg1`, `_reg2`, `power_trig`）链消解亚稳态。
随后又专门加了一拍 `power_trig_d`，通过 `assign power_trig_pos = power_trig & ~power_trig_d;` 取得其唯一的**上升沿脉冲**。
在 `IDLE` 跃迁时由原本电平敏感改为上升沿敏感，彻底杜绝了上一轮放电结束后，由于外部触发电平仍高而无限次重复挂入误判死循环的问题。

### 4.2 起始保护窗 (Start Protection Window)
在每次新触发刚刚到来时，ADC 跨时钟域 FIFO 以及 FIR 滤波器内部往往留有上一次脉冲末尾的“陈旧甚至归零废数据”。
在 `DIS_START` 阶段实现了硬性的 `Start_Protect_Cycles` (默认 20 拍) 盲等保护。在此期间，状态机对任何击穿压跳变均不予理会，确保废数据排空，读到的永远是当次放电周期的实况。

### 4.3 抗突发噪声滤波器 (Glitch Filter)
`DIS_START` 的击穿认定基于 `breakdown_cnt` 进行滤波管理：当读到电压低于击穿阈值时，不立刻跳转，必须等到电压坑连续深陷 3 个时钟周期 (`breakdown_cnt >= 3`) 才会确认发生物理击穿，以屏蔽采样电路中的单高频毛刺噪声。

### 4.4 两套判定规则的无缝回填机制
判决标签 `dis_status` 收集来源于两方：
1. **自带判定 (OPEN / SHORT)**：由 FSM 结合流转生命周期天然生成——在等击穿阶段丢电就是开路；击穿太快就是短路。
2. **滑窗判定 (SPARK / ARC)**：由下游 `slide_window` 的积分算法与打补丁得到。由于滑窗处于另外的空间模块并通过握手交互，当 FSM 进入 `REPORT` 时可能滑窗由于使能延迟结果刚刚生成，因此通过 `sw_result_seen`，允许在 `REPORT` 滞留期对有效滑窗结果进行动态回填。

### 4.5 数据特征锁存抓拍
在状态机由任何非测算态转入 `REPORT` 态的**这唯一一个时钟下降点** (`current_state != REPORT && next_state == REPORT`)，触发特征抓怕（Latches）：包括将当时停表前的 `time_bd` 和 `time_energy` 分别推入 `time_bd_buff` / `time_energy_buff`，等待组装并一次性封入报文中。