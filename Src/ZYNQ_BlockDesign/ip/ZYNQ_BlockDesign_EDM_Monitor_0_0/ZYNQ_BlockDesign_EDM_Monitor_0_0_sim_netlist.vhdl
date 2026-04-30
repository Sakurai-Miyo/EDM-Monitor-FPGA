-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Fri Apr 10 17:46:26 2026
-- Host        : Hayase-Yuuka running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Code/FPGA_Xilinx_Code/EDM_Monitor/Src/ZYNQ_BlockDesign/ip/ZYNQ_BlockDesign_EDM_Monitor_0_0/ZYNQ_BlockDesign_EDM_Monitor_0_0_sim_netlist.vhdl
-- Design      : ZYNQ_BlockDesign_EDM_Monitor_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu15eg-ffvb1156-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ZYNQ_BlockDesign_EDM_Monitor_0_0_Control_FSM is
  port (
    sw_en : out STD_LOGIC;
    package_send_req : out STD_LOGIC;
    \FSM_onehot_current_state_reg[4]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 100 downto 0 );
    slide_window_en_reg_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    slide_window_en_reg_1 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    power_trig_async : in STD_LOGIC;
    main_clk_250m : in STD_LOGIC;
    \FSM_onehot_current_state_reg[4]_1\ : in STD_LOGIC;
    sw_result_valid : in STD_LOGIC;
    enable_d : in STD_LOGIC;
    package_send_ack : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pow_m_axis_tvalid : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \energy_accumulator_reg[55]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \energy_accumulator_reg[47]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \energy_accumulator_reg[39]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \energy_accumulator_reg[31]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \energy_accumulator_reg[23]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \energy_accumulator_reg[15]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \energy_accumulator_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cfg_update_sync_d : in STD_LOGIC;
    cfg_update_sync : in STD_LOGIC;
    cfg_breakdown : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \sw_status_latched_reg[3]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \energy_init_latched_reg[63]_0\ : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ZYNQ_BlockDesign_EDM_Monitor_0_0_Control_FSM : entity is "Control_FSM";
end ZYNQ_BlockDesign_EDM_Monitor_0_0_Control_FSM;

architecture STRUCTURE of ZYNQ_BlockDesign_EDM_Monitor_0_0_Control_FSM is
  signal \^d\ : STD_LOGIC_VECTOR ( 100 downto 0 );
  signal \FSM_onehot_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[4]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[4]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[4]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[3]\ : STD_LOGIC;
  signal axi_send_en_i_1_n_0 : STD_LOGIC;
  signal axi_send_en_i_2_n_0 : STD_LOGIC;
  signal breakdown_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal breakdown_cnt1_carry_i_10_n_0 : STD_LOGIC;
  signal breakdown_cnt1_carry_i_11_n_0 : STD_LOGIC;
  signal breakdown_cnt1_carry_i_12_n_0 : STD_LOGIC;
  signal breakdown_cnt1_carry_i_13_n_0 : STD_LOGIC;
  signal breakdown_cnt1_carry_i_14_n_0 : STD_LOGIC;
  signal breakdown_cnt1_carry_i_15_n_0 : STD_LOGIC;
  signal breakdown_cnt1_carry_i_16_n_0 : STD_LOGIC;
  signal breakdown_cnt1_carry_i_1_n_0 : STD_LOGIC;
  signal breakdown_cnt1_carry_i_2_n_0 : STD_LOGIC;
  signal breakdown_cnt1_carry_i_3_n_0 : STD_LOGIC;
  signal breakdown_cnt1_carry_i_4_n_0 : STD_LOGIC;
  signal breakdown_cnt1_carry_i_5_n_0 : STD_LOGIC;
  signal breakdown_cnt1_carry_i_6_n_0 : STD_LOGIC;
  signal breakdown_cnt1_carry_i_7_n_0 : STD_LOGIC;
  signal breakdown_cnt1_carry_i_8_n_0 : STD_LOGIC;
  signal breakdown_cnt1_carry_i_9_n_0 : STD_LOGIC;
  signal breakdown_cnt1_carry_n_0 : STD_LOGIC;
  signal breakdown_cnt1_carry_n_1 : STD_LOGIC;
  signal breakdown_cnt1_carry_n_2 : STD_LOGIC;
  signal breakdown_cnt1_carry_n_3 : STD_LOGIC;
  signal breakdown_cnt1_carry_n_4 : STD_LOGIC;
  signal breakdown_cnt1_carry_n_5 : STD_LOGIC;
  signal breakdown_cnt1_carry_n_6 : STD_LOGIC;
  signal breakdown_cnt1_carry_n_7 : STD_LOGIC;
  signal \breakdown_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \breakdown_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \breakdown_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \breakdown_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \breakdown_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal breakdown_voltage_threshold_active : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal cfg_update_pending1 : STD_LOGIC;
  signal cfg_update_pending_i_1_n_0 : STD_LOGIC;
  signal cfg_update_pending_reg_n_0 : STD_LOGIC;
  signal \dis_status[0]_i_1_n_0\ : STD_LOGIC;
  signal \dis_status[0]_i_2_n_0\ : STD_LOGIC;
  signal \dis_status[0]_i_3_n_0\ : STD_LOGIC;
  signal \dis_status[0]_i_4_n_0\ : STD_LOGIC;
  signal \dis_status[0]_i_5_n_0\ : STD_LOGIC;
  signal \dis_status[1]_i_1_n_0\ : STD_LOGIC;
  signal \dis_status[2]_i_1_n_0\ : STD_LOGIC;
  signal \dis_status[3]_i_1_n_0\ : STD_LOGIC;
  signal \dis_status[3]_i_2_n_0\ : STD_LOGIC;
  signal \dis_status[3]_i_3_n_0\ : STD_LOGIC;
  signal \dis_status[3]_i_4_n_0\ : STD_LOGIC;
  signal \dis_status[4]_i_1_n_0\ : STD_LOGIC;
  signal \dis_status[4]_i_2_n_0\ : STD_LOGIC;
  signal \dis_status[4]_i_3_n_0\ : STD_LOGIC;
  signal \dis_status[4]_i_4_n_0\ : STD_LOGIC;
  signal \dis_status[4]_i_5_n_0\ : STD_LOGIC;
  signal \dis_status[4]_i_6_n_0\ : STD_LOGIC;
  signal \dis_status[4]_i_7_n_0\ : STD_LOGIC;
  signal \dis_status[4]_i_8_n_0\ : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal power_trig : STD_LOGIC;
  signal power_trig_d : STD_LOGIC;
  signal power_trig_reg1 : STD_LOGIC;
  signal power_trig_reg2 : STD_LOGIC;
  signal \^sw_en\ : STD_LOGIC;
  signal sw_result_seen : STD_LOGIC;
  signal sw_result_seen_i_1_n_0 : STD_LOGIC;
  signal sw_result_seen_reg_n_0 : STD_LOGIC;
  signal sw_status_latched : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sw_status_latched0 : STD_LOGIC;
  signal time_bd_buff0 : STD_LOGIC;
  signal time_bd_counter : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \time_bd_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \time_bd_counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \time_bd_counter[10]_i_2_n_0\ : STD_LOGIC;
  signal \time_bd_counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \time_bd_counter[12]_i_1_n_0\ : STD_LOGIC;
  signal \time_bd_counter[13]_i_1_n_0\ : STD_LOGIC;
  signal \time_bd_counter[14]_i_1_n_0\ : STD_LOGIC;
  signal \time_bd_counter[14]_i_2_n_0\ : STD_LOGIC;
  signal \time_bd_counter[15]_i_2_n_0\ : STD_LOGIC;
  signal \time_bd_counter[15]_i_3_n_0\ : STD_LOGIC;
  signal \time_bd_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \time_bd_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \time_bd_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \time_bd_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \time_bd_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \time_bd_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \time_bd_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \time_bd_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \time_bd_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \time_bd_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \time_bd_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal time_bd_counter_en_reg_n_0 : STD_LOGIC;
  signal \time_bd_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \time_bd_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \time_bd_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \time_bd_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \time_bd_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \time_bd_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \time_bd_counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \time_bd_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \time_bd_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \time_bd_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \time_bd_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \time_bd_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \time_bd_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \time_bd_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \time_bd_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \time_bd_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal time_delay_counter : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \time_delay_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \time_delay_counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \time_delay_counter[10]_i_2_n_0\ : STD_LOGIC;
  signal \time_delay_counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \time_delay_counter[12]_i_1_n_0\ : STD_LOGIC;
  signal \time_delay_counter[13]_i_1_n_0\ : STD_LOGIC;
  signal \time_delay_counter[14]_i_1_n_0\ : STD_LOGIC;
  signal \time_delay_counter[14]_i_2_n_0\ : STD_LOGIC;
  signal \time_delay_counter[15]_i_2_n_0\ : STD_LOGIC;
  signal \time_delay_counter[15]_i_3_n_0\ : STD_LOGIC;
  signal \time_delay_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \time_delay_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \time_delay_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \time_delay_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \time_delay_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \time_delay_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \time_delay_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \time_delay_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \time_delay_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \time_delay_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \time_delay_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal time_delay_counter_en : STD_LOGIC;
  signal time_delay_counter_en_reg_n_0 : STD_LOGIC;
  signal \time_delay_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \time_delay_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \time_delay_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \time_delay_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \time_delay_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \time_delay_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \time_delay_counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \time_delay_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \time_delay_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \time_delay_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \time_delay_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \time_delay_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \time_delay_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \time_delay_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \time_delay_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \time_delay_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal time_energy_counter : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \time_energy_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \time_energy_counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \time_energy_counter[10]_i_2_n_0\ : STD_LOGIC;
  signal \time_energy_counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \time_energy_counter[12]_i_1_n_0\ : STD_LOGIC;
  signal \time_energy_counter[13]_i_1_n_0\ : STD_LOGIC;
  signal \time_energy_counter[14]_i_1_n_0\ : STD_LOGIC;
  signal \time_energy_counter[14]_i_2_n_0\ : STD_LOGIC;
  signal \time_energy_counter[15]_i_2_n_0\ : STD_LOGIC;
  signal \time_energy_counter[15]_i_3_n_0\ : STD_LOGIC;
  signal \time_energy_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \time_energy_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \time_energy_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \time_energy_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \time_energy_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \time_energy_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \time_energy_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \time_energy_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \time_energy_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \time_energy_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \time_energy_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal time_energy_counter_en : STD_LOGIC;
  signal time_energy_counter_en_reg_n_0 : STD_LOGIC;
  signal \time_energy_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \time_energy_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \time_energy_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \time_energy_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \time_energy_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \time_energy_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \time_energy_counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \time_energy_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \time_energy_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \time_energy_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \time_energy_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \time_energy_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \time_energy_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \time_energy_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \time_energy_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \time_energy_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal NLW_breakdown_cnt1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[2]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[2]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[3]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[4]_i_3\ : label is "soft_lutpair53";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "DIS_START:00010,BREAK_DELAY:00100,POWER_CALC:01000,REPORT:10000,IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "DIS_START:00010,BREAK_DELAY:00100,POWER_CALC:01000,REPORT:10000,IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "DIS_START:00010,BREAK_DELAY:00100,POWER_CALC:01000,REPORT:10000,IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[3]\ : label is "DIS_START:00010,BREAK_DELAY:00100,POWER_CALC:01000,REPORT:10000,IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[4]\ : label is "DIS_START:00010,BREAK_DELAY:00100,POWER_CALC:01000,REPORT:10000,IDLE:00001";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of breakdown_cnt1_carry : label is 11;
  attribute SOFT_HLUTNM of \breakdown_cnt[0]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \breakdown_cnt[1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \breakdown_cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \breakdown_cnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dis_status[0]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \dis_status[0]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \dis_status[4]_i_4\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \dis_status[4]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dis_status[4]_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \dis_status[4]_i_7\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \energy_accumulator[0]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \energy_accumulator[10]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \energy_accumulator[11]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \energy_accumulator[12]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \energy_accumulator[13]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \energy_accumulator[14]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \energy_accumulator[15]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \energy_accumulator[16]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \energy_accumulator[17]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \energy_accumulator[18]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \energy_accumulator[19]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \energy_accumulator[1]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \energy_accumulator[20]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \energy_accumulator[21]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \energy_accumulator[22]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \energy_accumulator[23]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \energy_accumulator[24]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \energy_accumulator[25]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \energy_accumulator[26]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \energy_accumulator[27]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \energy_accumulator[28]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \energy_accumulator[29]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \energy_accumulator[2]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \energy_accumulator[30]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \energy_accumulator[31]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \energy_accumulator[32]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \energy_accumulator[33]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \energy_accumulator[34]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \energy_accumulator[35]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \energy_accumulator[36]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \energy_accumulator[37]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \energy_accumulator[38]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \energy_accumulator[39]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \energy_accumulator[3]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \energy_accumulator[40]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \energy_accumulator[41]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \energy_accumulator[42]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \energy_accumulator[43]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \energy_accumulator[44]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \energy_accumulator[45]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \energy_accumulator[46]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \energy_accumulator[47]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \energy_accumulator[48]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \energy_accumulator[49]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \energy_accumulator[4]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \energy_accumulator[50]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \energy_accumulator[51]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \energy_accumulator[52]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \energy_accumulator[53]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \energy_accumulator[54]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \energy_accumulator[55]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \energy_accumulator[56]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \energy_accumulator[57]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \energy_accumulator[58]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \energy_accumulator[59]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \energy_accumulator[5]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \energy_accumulator[60]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \energy_accumulator[61]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \energy_accumulator[62]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \energy_accumulator[63]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \energy_accumulator[6]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \energy_accumulator[7]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \energy_accumulator[8]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \energy_accumulator[9]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \shift_count_d[2]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \shift_count_d[6]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \time_bd_counter[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \time_bd_counter[10]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \time_bd_counter[11]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \time_bd_counter[12]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \time_bd_counter[13]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \time_bd_counter[15]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \time_bd_counter[15]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \time_bd_counter[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \time_bd_counter[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \time_bd_counter[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \time_bd_counter[5]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \time_bd_counter[6]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \time_bd_counter[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \time_bd_counter[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \time_delay_counter[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \time_delay_counter[10]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \time_delay_counter[11]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \time_delay_counter[12]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \time_delay_counter[13]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \time_delay_counter[15]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \time_delay_counter[15]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \time_delay_counter[1]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \time_delay_counter[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \time_delay_counter[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \time_delay_counter[5]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \time_delay_counter[6]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \time_delay_counter[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \time_delay_counter[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \time_energy_counter[0]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \time_energy_counter[10]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \time_energy_counter[11]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \time_energy_counter[12]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \time_energy_counter[13]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \time_energy_counter[15]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \time_energy_counter[15]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \time_energy_counter[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \time_energy_counter[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \time_energy_counter[5]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \time_energy_counter[6]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \time_energy_counter[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \time_energy_counter[8]_i_1\ : label is "soft_lutpair8";
begin
  D(100 downto 0) <= \^d\(100 downto 0);
  sw_en <= \^sw_en\;
\FSM_onehot_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFF8A8A8A8A"
    )
        port map (
      I0 => \FSM_onehot_current_state[4]_i_3_n_0\,
      I1 => package_send_ack,
      I2 => p_0_in2_in,
      I3 => power_trig_d,
      I4 => power_trig,
      I5 => sw_result_seen,
      O => \FSM_onehot_current_state[0]_i_1_n_0\
    );
\FSM_onehot_current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FC000055000000"
    )
        port map (
      I0 => power_trig_d,
      I1 => \FSM_onehot_current_state[1]_i_2_n_0\,
      I2 => \FSM_onehot_current_state[1]_i_3_n_0\,
      I3 => sw_result_seen,
      I4 => power_trig,
      I5 => p_0_in4_in,
      O => \FSM_onehot_current_state[1]_i_1_n_0\
    );
\FSM_onehot_current_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0111"
    )
        port map (
      I0 => breakdown_cnt(2),
      I1 => breakdown_cnt(3),
      I2 => breakdown_cnt(0),
      I3 => breakdown_cnt(1),
      O => \FSM_onehot_current_state[1]_i_2_n_0\
    );
\FSM_onehot_current_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0155"
    )
        port map (
      I0 => \FSM_onehot_current_state[4]_i_4_n_0\,
      I1 => \time_bd_counter_reg_n_0_[3]\,
      I2 => \time_bd_counter_reg_n_0_[2]\,
      I3 => \time_bd_counter_reg_n_0_[4]\,
      O => \FSM_onehot_current_state[1]_i_3_n_0\
    );
\FSM_onehot_current_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAFB"
    )
        port map (
      I0 => \FSM_onehot_current_state[2]_i_2_n_0\,
      I1 => \time_delay_counter_reg_n_0_[6]\,
      I2 => \FSM_onehot_current_state[3]_i_2_n_0\,
      I3 => \FSM_onehot_current_state[2]_i_3_n_0\,
      I4 => \FSM_onehot_current_state[3]_i_4_n_0\,
      O => \FSM_onehot_current_state[2]_i_1_n_0\
    );
\FSM_onehot_current_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8000000"
    )
        port map (
      I0 => \FSM_onehot_current_state[2]_i_4_n_0\,
      I1 => \time_bd_counter_reg_n_0_[4]\,
      I2 => \FSM_onehot_current_state[4]_i_4_n_0\,
      I3 => \dis_status[4]_i_7_n_0\,
      I4 => p_0_in4_in,
      I5 => \FSM_onehot_current_state[1]_i_2_n_0\,
      O => \FSM_onehot_current_state[2]_i_2_n_0\
    );
\FSM_onehot_current_state[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => power_trig,
      I1 => sw_result_seen,
      I2 => p_0_in4_in,
      I3 => time_delay_counter_en,
      O => \FSM_onehot_current_state[2]_i_3_n_0\
    );
\FSM_onehot_current_state[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \time_bd_counter_reg_n_0_[2]\,
      I1 => \time_bd_counter_reg_n_0_[1]\,
      I2 => \time_bd_counter_reg_n_0_[3]\,
      O => \FSM_onehot_current_state[2]_i_4_n_0\
    );
\FSM_onehot_current_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00F0002200F0"
    )
        port map (
      I0 => \time_delay_counter_reg_n_0_[6]\,
      I1 => \FSM_onehot_current_state[3]_i_2_n_0\,
      I2 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_current_state[3]_i_3_n_0\,
      I4 => time_delay_counter_en,
      I5 => \FSM_onehot_current_state[3]_i_4_n_0\,
      O => \FSM_onehot_current_state[3]_i_1_n_0\
    );
\FSM_onehot_current_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => \time_delay_counter_reg_n_0_[4]\,
      I1 => \time_delay_counter_reg_n_0_[2]\,
      I2 => \time_delay_counter_reg_n_0_[1]\,
      I3 => \time_delay_counter_reg_n_0_[0]\,
      I4 => \time_delay_counter_reg_n_0_[3]\,
      I5 => \time_delay_counter_reg_n_0_[5]\,
      O => \FSM_onehot_current_state[3]_i_2_n_0\
    );
\FSM_onehot_current_state[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => sw_result_seen,
      I2 => power_trig,
      O => \FSM_onehot_current_state[3]_i_3_n_0\
    );
\FSM_onehot_current_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \time_delay_counter_reg_n_0_[8]\,
      I1 => \time_delay_counter_reg_n_0_[9]\,
      I2 => \FSM_onehot_current_state[3]_i_5_n_0\,
      I3 => \time_delay_counter_reg_n_0_[12]\,
      I4 => \time_delay_counter_reg_n_0_[11]\,
      I5 => \time_delay_counter_reg_n_0_[13]\,
      O => \FSM_onehot_current_state[3]_i_4_n_0\
    );
\FSM_onehot_current_state[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \time_delay_counter_reg_n_0_[14]\,
      I1 => \time_delay_counter_reg_n_0_[15]\,
      I2 => \time_delay_counter_reg_n_0_[7]\,
      I3 => \time_delay_counter_reg_n_0_[10]\,
      O => \FSM_onehot_current_state[3]_i_5_n_0\
    );
\FSM_onehot_current_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAABAAFBAAAB"
    )
        port map (
      I0 => \FSM_onehot_current_state[4]_i_2_n_0\,
      I1 => power_trig,
      I2 => \FSM_onehot_current_state[4]_i_3_n_0\,
      I3 => sw_result_seen,
      I4 => p_0_in2_in,
      I5 => package_send_ack,
      O => \FSM_onehot_current_state[4]_i_1_n_0\
    );
\FSM_onehot_current_state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015440000"
    )
        port map (
      I0 => \FSM_onehot_current_state[4]_i_4_n_0\,
      I1 => \time_bd_counter_reg_n_0_[2]\,
      I2 => \time_bd_counter_reg_n_0_[1]\,
      I3 => \time_bd_counter_reg_n_0_[3]\,
      I4 => p_0_in4_in,
      I5 => \FSM_onehot_current_state[4]_i_5_n_0\,
      O => \FSM_onehot_current_state[4]_i_2_n_0\
    );
\FSM_onehot_current_state[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => time_delay_counter_en,
      I2 => \FSM_onehot_current_state_reg_n_0_[3]\,
      O => \FSM_onehot_current_state[4]_i_3_n_0\
    );
\FSM_onehot_current_state[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \time_bd_counter_reg_n_0_[9]\,
      I1 => \time_bd_counter_reg_n_0_[15]\,
      I2 => \time_bd_counter_reg_n_0_[7]\,
      I3 => \FSM_onehot_current_state[4]_i_6_n_0\,
      I4 => \FSM_onehot_current_state[4]_i_7_n_0\,
      O => \FSM_onehot_current_state[4]_i_4_n_0\
    );
\FSM_onehot_current_state[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBFBBBFBBBF"
    )
        port map (
      I0 => sw_result_seen,
      I1 => \time_bd_counter_reg_n_0_[4]\,
      I2 => breakdown_cnt(2),
      I3 => breakdown_cnt(3),
      I4 => breakdown_cnt(0),
      I5 => breakdown_cnt(1),
      O => \FSM_onehot_current_state[4]_i_5_n_0\
    );
\FSM_onehot_current_state[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \time_bd_counter_reg_n_0_[13]\,
      I1 => \time_bd_counter_reg_n_0_[5]\,
      I2 => \time_bd_counter_reg_n_0_[10]\,
      I3 => \time_bd_counter_reg_n_0_[8]\,
      O => \FSM_onehot_current_state[4]_i_6_n_0\
    );
\FSM_onehot_current_state[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \time_bd_counter_reg_n_0_[11]\,
      I1 => \time_bd_counter_reg_n_0_[12]\,
      I2 => \time_bd_counter_reg_n_0_[14]\,
      I3 => \time_bd_counter_reg_n_0_[6]\,
      O => \FSM_onehot_current_state[4]_i_7_n_0\
    );
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => main_clk_250m,
      CE => '1',
      D => \FSM_onehot_current_state[0]_i_1_n_0\,
      PRE => \FSM_onehot_current_state_reg[4]_1\,
      Q => sw_result_seen
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \FSM_onehot_current_state[1]_i_1_n_0\,
      Q => p_0_in4_in
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \FSM_onehot_current_state[2]_i_1_n_0\,
      Q => time_delay_counter_en
    );
\FSM_onehot_current_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \FSM_onehot_current_state[3]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[3]\
    );
\FSM_onehot_current_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \FSM_onehot_current_state[4]_i_1_n_0\,
      Q => p_0_in2_in
    );
axi_send_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00000028"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \^d\(97),
      I2 => \^d\(100),
      I3 => axi_send_en_i_2_n_0,
      I4 => \^d\(96),
      I5 => sw_result_seen_reg_n_0,
      O => axi_send_en_i_1_n_0
    );
axi_send_en_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^d\(99),
      I1 => \^d\(98),
      O => axi_send_en_i_2_n_0
    );
axi_send_en_reg: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => axi_send_en_i_1_n_0,
      Q => package_send_req
    );
breakdown_cnt1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => breakdown_cnt1_carry_n_0,
      CO(6) => breakdown_cnt1_carry_n_1,
      CO(5) => breakdown_cnt1_carry_n_2,
      CO(4) => breakdown_cnt1_carry_n_3,
      CO(3) => breakdown_cnt1_carry_n_4,
      CO(2) => breakdown_cnt1_carry_n_5,
      CO(1) => breakdown_cnt1_carry_n_6,
      CO(0) => breakdown_cnt1_carry_n_7,
      DI(7) => breakdown_cnt1_carry_i_1_n_0,
      DI(6) => breakdown_cnt1_carry_i_2_n_0,
      DI(5) => breakdown_cnt1_carry_i_3_n_0,
      DI(4) => breakdown_cnt1_carry_i_4_n_0,
      DI(3) => breakdown_cnt1_carry_i_5_n_0,
      DI(2) => breakdown_cnt1_carry_i_6_n_0,
      DI(1) => breakdown_cnt1_carry_i_7_n_0,
      DI(0) => breakdown_cnt1_carry_i_8_n_0,
      O(7 downto 0) => NLW_breakdown_cnt1_carry_O_UNCONNECTED(7 downto 0),
      S(7) => breakdown_cnt1_carry_i_9_n_0,
      S(6) => breakdown_cnt1_carry_i_10_n_0,
      S(5) => breakdown_cnt1_carry_i_11_n_0,
      S(4) => breakdown_cnt1_carry_i_12_n_0,
      S(3) => breakdown_cnt1_carry_i_13_n_0,
      S(2) => breakdown_cnt1_carry_i_14_n_0,
      S(1) => breakdown_cnt1_carry_i_15_n_0,
      S(0) => breakdown_cnt1_carry_i_16_n_0
    );
breakdown_cnt1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => breakdown_voltage_threshold_active(14),
      I1 => dout(14),
      I2 => dout(15),
      I3 => breakdown_voltage_threshold_active(15),
      O => breakdown_cnt1_carry_i_1_n_0
    );
breakdown_cnt1_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dout(12),
      I1 => breakdown_voltage_threshold_active(12),
      I2 => dout(13),
      I3 => breakdown_voltage_threshold_active(13),
      O => breakdown_cnt1_carry_i_10_n_0
    );
breakdown_cnt1_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dout(10),
      I1 => breakdown_voltage_threshold_active(10),
      I2 => dout(11),
      I3 => breakdown_voltage_threshold_active(11),
      O => breakdown_cnt1_carry_i_11_n_0
    );
breakdown_cnt1_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dout(8),
      I1 => breakdown_voltage_threshold_active(8),
      I2 => dout(9),
      I3 => breakdown_voltage_threshold_active(9),
      O => breakdown_cnt1_carry_i_12_n_0
    );
breakdown_cnt1_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dout(6),
      I1 => breakdown_voltage_threshold_active(6),
      I2 => dout(7),
      I3 => breakdown_voltage_threshold_active(7),
      O => breakdown_cnt1_carry_i_13_n_0
    );
breakdown_cnt1_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dout(4),
      I1 => breakdown_voltage_threshold_active(4),
      I2 => dout(5),
      I3 => breakdown_voltage_threshold_active(5),
      O => breakdown_cnt1_carry_i_14_n_0
    );
breakdown_cnt1_carry_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dout(2),
      I1 => breakdown_voltage_threshold_active(2),
      I2 => dout(3),
      I3 => breakdown_voltage_threshold_active(3),
      O => breakdown_cnt1_carry_i_15_n_0
    );
breakdown_cnt1_carry_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dout(0),
      I1 => breakdown_voltage_threshold_active(0),
      I2 => dout(1),
      I3 => breakdown_voltage_threshold_active(1),
      O => breakdown_cnt1_carry_i_16_n_0
    );
breakdown_cnt1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => breakdown_voltage_threshold_active(12),
      I1 => dout(12),
      I2 => dout(13),
      I3 => breakdown_voltage_threshold_active(13),
      O => breakdown_cnt1_carry_i_2_n_0
    );
breakdown_cnt1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => breakdown_voltage_threshold_active(10),
      I1 => dout(10),
      I2 => dout(11),
      I3 => breakdown_voltage_threshold_active(11),
      O => breakdown_cnt1_carry_i_3_n_0
    );
breakdown_cnt1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => breakdown_voltage_threshold_active(8),
      I1 => dout(8),
      I2 => dout(9),
      I3 => breakdown_voltage_threshold_active(9),
      O => breakdown_cnt1_carry_i_4_n_0
    );
breakdown_cnt1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => breakdown_voltage_threshold_active(6),
      I1 => dout(6),
      I2 => dout(7),
      I3 => breakdown_voltage_threshold_active(7),
      O => breakdown_cnt1_carry_i_5_n_0
    );
breakdown_cnt1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => breakdown_voltage_threshold_active(4),
      I1 => dout(4),
      I2 => dout(5),
      I3 => breakdown_voltage_threshold_active(5),
      O => breakdown_cnt1_carry_i_6_n_0
    );
breakdown_cnt1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => breakdown_voltage_threshold_active(2),
      I1 => dout(2),
      I2 => dout(3),
      I3 => breakdown_voltage_threshold_active(3),
      O => breakdown_cnt1_carry_i_7_n_0
    );
breakdown_cnt1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => breakdown_voltage_threshold_active(0),
      I1 => dout(0),
      I2 => dout(1),
      I3 => breakdown_voltage_threshold_active(1),
      O => breakdown_cnt1_carry_i_8_n_0
    );
breakdown_cnt1_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dout(14),
      I1 => breakdown_voltage_threshold_active(14),
      I2 => dout(15),
      I3 => breakdown_voltage_threshold_active(15),
      O => breakdown_cnt1_carry_i_9_n_0
    );
\breakdown_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \breakdown_cnt[3]_i_2_n_0\,
      I1 => breakdown_cnt(0),
      O => \breakdown_cnt[0]_i_1_n_0\
    );
\breakdown_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \breakdown_cnt[3]_i_2_n_0\,
      I1 => breakdown_cnt(0),
      I2 => breakdown_cnt(1),
      O => \breakdown_cnt[1]_i_1_n_0\
    );
\breakdown_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \breakdown_cnt[3]_i_2_n_0\,
      I1 => breakdown_cnt(1),
      I2 => breakdown_cnt(0),
      I3 => breakdown_cnt(2),
      O => \breakdown_cnt[2]_i_1_n_0\
    );
\breakdown_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \breakdown_cnt[3]_i_2_n_0\,
      I1 => breakdown_cnt(2),
      I2 => breakdown_cnt(0),
      I3 => breakdown_cnt(1),
      I4 => breakdown_cnt(3),
      O => \breakdown_cnt[3]_i_1_n_0\
    );
\breakdown_cnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA8000000000000"
    )
        port map (
      I0 => \time_bd_counter_reg_n_0_[4]\,
      I1 => \time_bd_counter_reg_n_0_[2]\,
      I2 => \time_bd_counter_reg_n_0_[3]\,
      I3 => \FSM_onehot_current_state[4]_i_4_n_0\,
      I4 => breakdown_cnt1_carry_n_0,
      I5 => p_0_in4_in,
      O => \breakdown_cnt[3]_i_2_n_0\
    );
\breakdown_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \breakdown_cnt[0]_i_1_n_0\,
      Q => breakdown_cnt(0)
    );
\breakdown_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \breakdown_cnt[1]_i_1_n_0\,
      Q => breakdown_cnt(1)
    );
\breakdown_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \breakdown_cnt[2]_i_1_n_0\,
      Q => breakdown_cnt(2)
    );
\breakdown_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \breakdown_cnt[3]_i_1_n_0\,
      Q => breakdown_cnt(3)
    );
\breakdown_voltage_threshold_active[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cfg_update_pending_reg_n_0,
      I1 => sw_result_seen,
      O => cfg_update_pending1
    );
\breakdown_voltage_threshold_active_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => cfg_breakdown(0),
      Q => breakdown_voltage_threshold_active(0)
    );
\breakdown_voltage_threshold_active_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => cfg_breakdown(10),
      Q => breakdown_voltage_threshold_active(10)
    );
\breakdown_voltage_threshold_active_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => cfg_breakdown(11),
      Q => breakdown_voltage_threshold_active(11)
    );
\breakdown_voltage_threshold_active_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => cfg_breakdown(12),
      Q => breakdown_voltage_threshold_active(12)
    );
\breakdown_voltage_threshold_active_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => cfg_breakdown(13),
      Q => breakdown_voltage_threshold_active(13)
    );
\breakdown_voltage_threshold_active_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => cfg_breakdown(14),
      Q => breakdown_voltage_threshold_active(14)
    );
\breakdown_voltage_threshold_active_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      D => cfg_breakdown(15),
      PRE => \FSM_onehot_current_state_reg[4]_1\,
      Q => breakdown_voltage_threshold_active(15)
    );
\breakdown_voltage_threshold_active_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => cfg_breakdown(1),
      Q => breakdown_voltage_threshold_active(1)
    );
\breakdown_voltage_threshold_active_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => cfg_breakdown(2),
      Q => breakdown_voltage_threshold_active(2)
    );
\breakdown_voltage_threshold_active_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => cfg_breakdown(3),
      Q => breakdown_voltage_threshold_active(3)
    );
\breakdown_voltage_threshold_active_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => cfg_breakdown(4),
      Q => breakdown_voltage_threshold_active(4)
    );
\breakdown_voltage_threshold_active_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => cfg_breakdown(5),
      Q => breakdown_voltage_threshold_active(5)
    );
\breakdown_voltage_threshold_active_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => cfg_breakdown(6),
      Q => breakdown_voltage_threshold_active(6)
    );
\breakdown_voltage_threshold_active_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => cfg_breakdown(7),
      Q => breakdown_voltage_threshold_active(7)
    );
\breakdown_voltage_threshold_active_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => cfg_breakdown(8),
      Q => breakdown_voltage_threshold_active(8)
    );
\breakdown_voltage_threshold_active_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => cfg_breakdown(9),
      Q => breakdown_voltage_threshold_active(9)
    );
cfg_update_pending_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4774"
    )
        port map (
      I0 => sw_result_seen,
      I1 => cfg_update_pending_reg_n_0,
      I2 => cfg_update_sync_d,
      I3 => cfg_update_sync,
      O => cfg_update_pending_i_1_n_0
    );
cfg_update_pending_reg: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => cfg_update_pending_i_1_n_0,
      Q => cfg_update_pending_reg_n_0
    );
\dis_status[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF80F0"
    )
        port map (
      I0 => power_trig,
      I1 => \dis_status[3]_i_2_n_0\,
      I2 => sw_status_latched(0),
      I3 => \dis_status[0]_i_2_n_0\,
      I4 => sw_result_seen,
      I5 => \dis_status[0]_i_3_n_0\,
      O => \dis_status[0]_i_1_n_0\
    );
\dis_status[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7770"
    )
        port map (
      I0 => package_send_ack,
      I1 => p_0_in2_in,
      I2 => p_0_in4_in,
      I3 => time_delay_counter_en,
      O => \dis_status[0]_i_2_n_0\
    );
\dis_status[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \dis_status[0]_i_4_n_0\,
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => power_trig,
      I3 => time_delay_counter_en,
      I4 => p_0_in4_in,
      I5 => \dis_status[0]_i_5_n_0\,
      O => \dis_status[0]_i_3_n_0\
    );
\dis_status[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => package_send_ack,
      O => \dis_status[0]_i_4_n_0\
    );
\dis_status[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => sw_status_latched(2),
      I1 => sw_status_latched(3),
      I2 => sw_result_seen_reg_n_0,
      O => \dis_status[0]_i_5_n_0\
    );
\dis_status[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000111011101110"
    )
        port map (
      I0 => power_trig,
      I1 => sw_result_seen,
      I2 => time_delay_counter_en,
      I3 => p_0_in4_in,
      I4 => p_0_in2_in,
      I5 => package_send_ack,
      O => \dis_status[1]_i_1_n_0\
    );
\dis_status[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA020202"
    )
        port map (
      I0 => sw_status_latched(2),
      I1 => sw_status_latched(3),
      I2 => \dis_status[3]_i_4_n_0\,
      I3 => \dis_status[3]_i_2_n_0\,
      I4 => \dis_status[4]_i_7_n_0\,
      I5 => \dis_status[3]_i_3_n_0\,
      O => \dis_status[2]_i_1_n_0\
    );
\dis_status[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F80000F8FF0000"
    )
        port map (
      I0 => \dis_status[3]_i_2_n_0\,
      I1 => \dis_status[4]_i_7_n_0\,
      I2 => \dis_status[3]_i_3_n_0\,
      I3 => \dis_status[3]_i_4_n_0\,
      I4 => sw_status_latched(3),
      I5 => sw_status_latched(2),
      O => \dis_status[3]_i_1_n_0\
    );
\dis_status[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFBFBFBFFFBFF"
    )
        port map (
      I0 => \dis_status[4]_i_5_n_0\,
      I1 => \dis_status[4]_i_4_n_0\,
      I2 => \FSM_onehot_current_state[4]_i_4_n_0\,
      I3 => \time_bd_counter_reg_n_0_[2]\,
      I4 => \time_bd_counter_reg_n_0_[1]\,
      I5 => \time_bd_counter_reg_n_0_[3]\,
      O => \dis_status[3]_i_2_n_0\
    );
\dis_status[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555000100010001"
    )
        port map (
      I0 => sw_result_seen,
      I1 => p_0_in4_in,
      I2 => time_delay_counter_en,
      I3 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I4 => p_0_in2_in,
      I5 => package_send_ack,
      O => \dis_status[3]_i_3_n_0\
    );
\dis_status[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => sw_status_latched(0),
      I1 => sw_result_seen_reg_n_0,
      I2 => sw_result_seen,
      I3 => time_delay_counter_en,
      I4 => p_0_in4_in,
      O => \dis_status[3]_i_4_n_0\
    );
\dis_status[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFAAAAAAAAAA"
    )
        port map (
      I0 => \dis_status[4]_i_3_n_0\,
      I1 => package_send_ack,
      I2 => p_0_in2_in,
      I3 => \dis_status[4]_i_4_n_0\,
      I4 => \dis_status[4]_i_5_n_0\,
      I5 => \dis_status[4]_i_6_n_0\,
      O => \dis_status[4]_i_1_n_0\
    );
\dis_status[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0070000000000000"
    )
        port map (
      I0 => package_send_ack,
      I1 => p_0_in2_in,
      I2 => \dis_status[4]_i_4_n_0\,
      I3 => \dis_status[4]_i_5_n_0\,
      I4 => \dis_status[4]_i_6_n_0\,
      I5 => \dis_status[4]_i_7_n_0\,
      O => \dis_status[4]_i_2_n_0\
    );
\dis_status[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111F1F1111111111"
    )
        port map (
      I0 => \dis_status[3]_i_3_n_0\,
      I1 => \dis_status[4]_i_7_n_0\,
      I2 => \dis_status[4]_i_8_n_0\,
      I3 => sw_status_latched(2),
      I4 => sw_status_latched(3),
      I5 => sw_result_seen_reg_n_0,
      O => \dis_status[4]_i_3_n_0\
    );
\dis_status[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I1 => time_delay_counter_en,
      O => \dis_status[4]_i_4_n_0\
    );
\dis_status[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0007FFFF"
    )
        port map (
      I0 => breakdown_cnt(1),
      I1 => breakdown_cnt(0),
      I2 => breakdown_cnt(3),
      I3 => breakdown_cnt(2),
      I4 => \time_bd_counter_reg_n_0_[4]\,
      O => \dis_status[4]_i_5_n_0\
    );
\dis_status[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002A88"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => \time_bd_counter_reg_n_0_[3]\,
      I2 => \time_bd_counter_reg_n_0_[1]\,
      I3 => \time_bd_counter_reg_n_0_[2]\,
      I4 => \FSM_onehot_current_state[4]_i_4_n_0\,
      O => \dis_status[4]_i_6_n_0\
    );
\dis_status[4]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => power_trig,
      I1 => sw_result_seen,
      O => \dis_status[4]_i_7_n_0\
    );
\dis_status[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFDF"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => sw_status_latched(0),
      I2 => \^d\(96),
      I3 => axi_send_en_i_2_n_0,
      I4 => \^d\(100),
      I5 => \^d\(97),
      O => \dis_status[4]_i_8_n_0\
    );
\dis_status_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => \dis_status[4]_i_1_n_0\,
      D => \dis_status[0]_i_1_n_0\,
      PRE => \FSM_onehot_current_state_reg[4]_1\,
      Q => \^d\(96)
    );
\dis_status_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => \dis_status[4]_i_1_n_0\,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \dis_status[1]_i_1_n_0\,
      Q => \^d\(97)
    );
\dis_status_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => \dis_status[4]_i_1_n_0\,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \dis_status[2]_i_1_n_0\,
      Q => \^d\(98)
    );
\dis_status_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => \dis_status[4]_i_1_n_0\,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \dis_status[3]_i_1_n_0\,
      Q => \^d\(99)
    );
\dis_status_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => \dis_status[4]_i_1_n_0\,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \dis_status[4]_i_2_n_0\,
      Q => \^d\(100)
    );
\energy_accumulator[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[7]\(0),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(0)
    );
\energy_accumulator[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[15]\(2),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(10)
    );
\energy_accumulator[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[15]\(3),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(11)
    );
\energy_accumulator[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[15]\(4),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(12)
    );
\energy_accumulator[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[15]\(5),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(13)
    );
\energy_accumulator[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[15]\(6),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(14)
    );
\energy_accumulator[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[15]\(7),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(15)
    );
\energy_accumulator[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[23]\(0),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(16)
    );
\energy_accumulator[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[23]\(1),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(17)
    );
\energy_accumulator[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[23]\(2),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(18)
    );
\energy_accumulator[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[23]\(3),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(19)
    );
\energy_accumulator[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[7]\(1),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(1)
    );
\energy_accumulator[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[23]\(4),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(20)
    );
\energy_accumulator[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[23]\(5),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(21)
    );
\energy_accumulator[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[23]\(6),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(22)
    );
\energy_accumulator[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[23]\(7),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(23)
    );
\energy_accumulator[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[31]\(0),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(24)
    );
\energy_accumulator[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[31]\(1),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(25)
    );
\energy_accumulator[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[31]\(2),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(26)
    );
\energy_accumulator[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[31]\(3),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(27)
    );
\energy_accumulator[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[31]\(4),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(28)
    );
\energy_accumulator[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[31]\(5),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(29)
    );
\energy_accumulator[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[7]\(2),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(2)
    );
\energy_accumulator[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[31]\(6),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(30)
    );
\energy_accumulator[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[31]\(7),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(31)
    );
\energy_accumulator[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[39]\(0),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(32)
    );
\energy_accumulator[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[39]\(1),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(33)
    );
\energy_accumulator[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[39]\(2),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(34)
    );
\energy_accumulator[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[39]\(3),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(35)
    );
\energy_accumulator[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[39]\(4),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(36)
    );
\energy_accumulator[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[39]\(5),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(37)
    );
\energy_accumulator[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[39]\(6),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(38)
    );
\energy_accumulator[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[39]\(7),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(39)
    );
\energy_accumulator[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[7]\(3),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(3)
    );
\energy_accumulator[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[47]\(0),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(40)
    );
\energy_accumulator[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[47]\(1),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(41)
    );
\energy_accumulator[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[47]\(2),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(42)
    );
\energy_accumulator[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[47]\(3),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(43)
    );
\energy_accumulator[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[47]\(4),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(44)
    );
\energy_accumulator[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[47]\(5),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(45)
    );
\energy_accumulator[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[47]\(6),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(46)
    );
\energy_accumulator[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[47]\(7),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(47)
    );
\energy_accumulator[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[55]\(0),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(48)
    );
\energy_accumulator[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[55]\(1),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(49)
    );
\energy_accumulator[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[7]\(4),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(4)
    );
\energy_accumulator[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[55]\(2),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(50)
    );
\energy_accumulator[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[55]\(3),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(51)
    );
\energy_accumulator[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[55]\(4),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(52)
    );
\energy_accumulator[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[55]\(5),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(53)
    );
\energy_accumulator[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[55]\(6),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(54)
    );
\energy_accumulator[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[55]\(7),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(55)
    );
\energy_accumulator[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => O(0),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(56)
    );
\energy_accumulator[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => O(1),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(57)
    );
\energy_accumulator[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => O(2),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(58)
    );
\energy_accumulator[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => O(3),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(59)
    );
\energy_accumulator[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[7]\(5),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(5)
    );
\energy_accumulator[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => O(4),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(60)
    );
\energy_accumulator[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => O(5),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(61)
    );
\energy_accumulator[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => O(6),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(62)
    );
\energy_accumulator[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => O(7),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(63)
    );
\energy_accumulator[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[7]\(6),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(6)
    );
\energy_accumulator[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[7]\(7),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(7)
    );
\energy_accumulator[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[15]\(0),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(8)
    );
\energy_accumulator[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => \energy_accumulator_reg[15]\(1),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_1(9)
    );
\energy_init_latched_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(0),
      Q => \^d\(0)
    );
\energy_init_latched_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(10),
      Q => \^d\(10)
    );
\energy_init_latched_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(11),
      Q => \^d\(11)
    );
\energy_init_latched_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(12),
      Q => \^d\(12)
    );
\energy_init_latched_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(13),
      Q => \^d\(13)
    );
\energy_init_latched_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(14),
      Q => \^d\(14)
    );
\energy_init_latched_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(15),
      Q => \^d\(15)
    );
\energy_init_latched_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(16),
      Q => \^d\(16)
    );
\energy_init_latched_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(17),
      Q => \^d\(17)
    );
\energy_init_latched_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(18),
      Q => \^d\(18)
    );
\energy_init_latched_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(19),
      Q => \^d\(19)
    );
\energy_init_latched_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(1),
      Q => \^d\(1)
    );
\energy_init_latched_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(20),
      Q => \^d\(20)
    );
\energy_init_latched_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(21),
      Q => \^d\(21)
    );
\energy_init_latched_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(22),
      Q => \^d\(22)
    );
\energy_init_latched_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(23),
      Q => \^d\(23)
    );
\energy_init_latched_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(24),
      Q => \^d\(24)
    );
\energy_init_latched_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(25),
      Q => \^d\(25)
    );
\energy_init_latched_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(26),
      Q => \^d\(26)
    );
\energy_init_latched_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(27),
      Q => \^d\(27)
    );
\energy_init_latched_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(28),
      Q => \^d\(28)
    );
\energy_init_latched_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(29),
      Q => \^d\(29)
    );
\energy_init_latched_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(2),
      Q => \^d\(2)
    );
\energy_init_latched_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(30),
      Q => \^d\(30)
    );
\energy_init_latched_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(31),
      Q => \^d\(31)
    );
\energy_init_latched_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(32),
      Q => \^d\(32)
    );
\energy_init_latched_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(33),
      Q => \^d\(33)
    );
\energy_init_latched_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(34),
      Q => \^d\(34)
    );
\energy_init_latched_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(35),
      Q => \^d\(35)
    );
\energy_init_latched_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(36),
      Q => \^d\(36)
    );
\energy_init_latched_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(37),
      Q => \^d\(37)
    );
\energy_init_latched_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(38),
      Q => \^d\(38)
    );
\energy_init_latched_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(39),
      Q => \^d\(39)
    );
\energy_init_latched_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(3),
      Q => \^d\(3)
    );
\energy_init_latched_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(40),
      Q => \^d\(40)
    );
\energy_init_latched_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(41),
      Q => \^d\(41)
    );
\energy_init_latched_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(42),
      Q => \^d\(42)
    );
\energy_init_latched_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(43),
      Q => \^d\(43)
    );
\energy_init_latched_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(44),
      Q => \^d\(44)
    );
\energy_init_latched_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(45),
      Q => \^d\(45)
    );
\energy_init_latched_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(46),
      Q => \^d\(46)
    );
\energy_init_latched_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(47),
      Q => \^d\(47)
    );
\energy_init_latched_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(48),
      Q => \^d\(48)
    );
\energy_init_latched_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(49),
      Q => \^d\(49)
    );
\energy_init_latched_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(4),
      Q => \^d\(4)
    );
\energy_init_latched_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(50),
      Q => \^d\(50)
    );
\energy_init_latched_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(51),
      Q => \^d\(51)
    );
\energy_init_latched_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(52),
      Q => \^d\(52)
    );
\energy_init_latched_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(53),
      Q => \^d\(53)
    );
\energy_init_latched_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(54),
      Q => \^d\(54)
    );
\energy_init_latched_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(55),
      Q => \^d\(55)
    );
\energy_init_latched_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(56),
      Q => \^d\(56)
    );
\energy_init_latched_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(57),
      Q => \^d\(57)
    );
\energy_init_latched_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(58),
      Q => \^d\(58)
    );
\energy_init_latched_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(59),
      Q => \^d\(59)
    );
\energy_init_latched_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(5),
      Q => \^d\(5)
    );
\energy_init_latched_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(60),
      Q => \^d\(60)
    );
\energy_init_latched_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(61),
      Q => \^d\(61)
    );
\energy_init_latched_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(62),
      Q => \^d\(62)
    );
\energy_init_latched_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(63),
      Q => \^d\(63)
    );
\energy_init_latched_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(6),
      Q => \^d\(6)
    );
\energy_init_latched_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(7),
      Q => \^d\(7)
    );
\energy_init_latched_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(8),
      Q => \^d\(8)
    );
\energy_init_latched_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \energy_init_latched_reg[63]_0\(9),
      Q => \^d\(9)
    );
power_trig_d_reg: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => power_trig,
      Q => power_trig_d
    );
power_trig_reg: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => power_trig_reg2,
      Q => power_trig
    );
power_trig_reg1_reg: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => power_trig_async,
      Q => power_trig_reg1
    );
power_trig_reg2_reg: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => power_trig_reg1,
      Q => power_trig_reg2
    );
result_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1010"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => sw_result_valid,
      I3 => \^sw_en\,
      I4 => enable_d,
      O => \FSM_onehot_current_state_reg[4]_0\
    );
\shift_count_d[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => Q(0),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_0(0)
    );
\shift_count_d[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => Q(1),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_0(1)
    );
\shift_count_d[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sw_en\,
      I1 => Q(2),
      I2 => pow_m_axis_tvalid,
      O => slide_window_en_reg_0(2)
    );
slide_window_en_reg: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \FSM_onehot_current_state_reg_n_0_[3]\,
      Q => \^sw_en\
    );
sw_result_seen_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD55FC00"
    )
        port map (
      I0 => sw_result_seen,
      I1 => p_0_in2_in,
      I2 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I3 => sw_result_valid,
      I4 => sw_result_seen_reg_n_0,
      O => sw_result_seen_i_1_n_0
    );
sw_result_seen_reg: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => sw_result_seen_i_1_n_0,
      Q => sw_result_seen_reg_n_0
    );
\sw_status_latched[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => sw_result_valid,
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => p_0_in2_in,
      O => sw_status_latched0
    );
\sw_status_latched_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      D => \sw_status_latched_reg[3]_0\(0),
      PRE => \FSM_onehot_current_state_reg[4]_1\,
      Q => sw_status_latched(0)
    );
\sw_status_latched_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \sw_status_latched_reg[3]_0\(1),
      Q => sw_status_latched(2)
    );
\sw_status_latched_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => sw_status_latched0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \sw_status_latched_reg[3]_0\(2),
      Q => sw_status_latched(3)
    );
\time_bd_buff[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF010101"
    )
        port map (
      I0 => \FSM_onehot_current_state[4]_i_3_n_0\,
      I1 => power_trig,
      I2 => sw_result_seen,
      I3 => \FSM_onehot_current_state[4]_i_2_n_0\,
      I4 => \dis_status[4]_i_4_n_0\,
      I5 => p_0_in2_in,
      O => time_bd_buff0
    );
\time_bd_buff_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter_reg_n_0_[0]\,
      Q => \^d\(80)
    );
\time_bd_buff_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter_reg_n_0_[10]\,
      Q => \^d\(90)
    );
\time_bd_buff_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter_reg_n_0_[11]\,
      Q => \^d\(91)
    );
\time_bd_buff_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter_reg_n_0_[12]\,
      Q => \^d\(92)
    );
\time_bd_buff_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter_reg_n_0_[13]\,
      Q => \^d\(93)
    );
\time_bd_buff_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter_reg_n_0_[14]\,
      Q => \^d\(94)
    );
\time_bd_buff_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter_reg_n_0_[15]\,
      Q => \^d\(95)
    );
\time_bd_buff_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter_reg_n_0_[1]\,
      Q => \^d\(81)
    );
\time_bd_buff_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter_reg_n_0_[2]\,
      Q => \^d\(82)
    );
\time_bd_buff_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter_reg_n_0_[3]\,
      Q => \^d\(83)
    );
\time_bd_buff_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter_reg_n_0_[4]\,
      Q => \^d\(84)
    );
\time_bd_buff_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter_reg_n_0_[5]\,
      Q => \^d\(85)
    );
\time_bd_buff_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter_reg_n_0_[6]\,
      Q => \^d\(86)
    );
\time_bd_buff_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter_reg_n_0_[7]\,
      Q => \^d\(87)
    );
\time_bd_buff_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter_reg_n_0_[8]\,
      Q => \^d\(88)
    );
\time_bd_buff_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter_reg_n_0_[9]\,
      Q => \^d\(89)
    );
\time_bd_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sw_result_seen,
      I1 => \time_bd_counter_reg_n_0_[0]\,
      O => \time_bd_counter[0]_i_1_n_0\
    );
\time_bd_counter[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \time_bd_counter[10]_i_2_n_0\,
      I1 => \time_bd_counter_reg_n_0_[10]\,
      I2 => sw_result_seen,
      O => \time_bd_counter[10]_i_1_n_0\
    );
\time_bd_counter[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => \time_bd_counter_reg_n_0_[8]\,
      I1 => \time_bd_counter_reg_n_0_[6]\,
      I2 => \time_bd_counter[9]_i_2_n_0\,
      I3 => \time_bd_counter_reg_n_0_[7]\,
      I4 => \time_bd_counter_reg_n_0_[9]\,
      O => \time_bd_counter[10]_i_2_n_0\
    );
\time_bd_counter[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => sw_result_seen,
      I1 => \time_bd_counter[14]_i_2_n_0\,
      I2 => \time_bd_counter_reg_n_0_[11]\,
      O => \time_bd_counter[11]_i_1_n_0\
    );
\time_bd_counter[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5104"
    )
        port map (
      I0 => sw_result_seen,
      I1 => \time_bd_counter_reg_n_0_[11]\,
      I2 => \time_bd_counter[14]_i_2_n_0\,
      I3 => \time_bd_counter_reg_n_0_[12]\,
      O => \time_bd_counter[12]_i_1_n_0\
    );
\time_bd_counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51550400"
    )
        port map (
      I0 => sw_result_seen,
      I1 => \time_bd_counter_reg_n_0_[12]\,
      I2 => \time_bd_counter[14]_i_2_n_0\,
      I3 => \time_bd_counter_reg_n_0_[11]\,
      I4 => \time_bd_counter_reg_n_0_[13]\,
      O => \time_bd_counter[13]_i_1_n_0\
    );
\time_bd_counter[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5515555500400000"
    )
        port map (
      I0 => sw_result_seen,
      I1 => \time_bd_counter_reg_n_0_[13]\,
      I2 => \time_bd_counter_reg_n_0_[11]\,
      I3 => \time_bd_counter[14]_i_2_n_0\,
      I4 => \time_bd_counter_reg_n_0_[12]\,
      I5 => \time_bd_counter_reg_n_0_[14]\,
      O => \time_bd_counter[14]_i_1_n_0\
    );
\time_bd_counter[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \time_bd_counter_reg_n_0_[9]\,
      I1 => \time_bd_counter_reg_n_0_[7]\,
      I2 => \time_bd_counter[9]_i_2_n_0\,
      I3 => \time_bd_counter_reg_n_0_[6]\,
      I4 => \time_bd_counter_reg_n_0_[8]\,
      I5 => \time_bd_counter_reg_n_0_[10]\,
      O => \time_bd_counter[14]_i_2_n_0\
    );
\time_bd_counter[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sw_result_seen,
      I1 => time_bd_counter_en_reg_n_0,
      O => time_bd_counter(0)
    );
\time_bd_counter[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \time_bd_counter_reg_n_0_[14]\,
      I1 => \time_bd_counter[15]_i_3_n_0\,
      I2 => \time_bd_counter_reg_n_0_[15]\,
      I3 => sw_result_seen,
      O => \time_bd_counter[15]_i_2_n_0\
    );
\time_bd_counter[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \time_bd_counter_reg_n_0_[13]\,
      I1 => \time_bd_counter_reg_n_0_[11]\,
      I2 => \time_bd_counter[14]_i_2_n_0\,
      I3 => \time_bd_counter_reg_n_0_[12]\,
      O => \time_bd_counter[15]_i_3_n_0\
    );
\time_bd_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => sw_result_seen,
      I1 => \time_bd_counter_reg_n_0_[0]\,
      I2 => \time_bd_counter_reg_n_0_[1]\,
      O => \time_bd_counter[1]_i_1_n_0\
    );
\time_bd_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => sw_result_seen,
      I1 => \time_bd_counter_reg_n_0_[1]\,
      I2 => \time_bd_counter_reg_n_0_[0]\,
      I3 => \time_bd_counter_reg_n_0_[2]\,
      O => \time_bd_counter[2]_i_1_n_0\
    );
\time_bd_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006CCC"
    )
        port map (
      I0 => \time_bd_counter_reg_n_0_[1]\,
      I1 => \time_bd_counter_reg_n_0_[3]\,
      I2 => \time_bd_counter_reg_n_0_[0]\,
      I3 => \time_bd_counter_reg_n_0_[2]\,
      I4 => sw_result_seen,
      O => \time_bd_counter[3]_i_1_n_0\
    );
\time_bd_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => \time_bd_counter_reg_n_0_[2]\,
      I1 => \time_bd_counter_reg_n_0_[0]\,
      I2 => \time_bd_counter_reg_n_0_[3]\,
      I3 => \time_bd_counter_reg_n_0_[1]\,
      I4 => \time_bd_counter_reg_n_0_[4]\,
      I5 => sw_result_seen,
      O => \time_bd_counter[4]_i_1_n_0\
    );
\time_bd_counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \time_bd_counter[5]_i_2_n_0\,
      I1 => \time_bd_counter_reg_n_0_[5]\,
      I2 => sw_result_seen,
      O => \time_bd_counter[5]_i_1_n_0\
    );
\time_bd_counter[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \time_bd_counter_reg_n_0_[2]\,
      I1 => \time_bd_counter_reg_n_0_[0]\,
      I2 => \time_bd_counter_reg_n_0_[3]\,
      I3 => \time_bd_counter_reg_n_0_[1]\,
      I4 => \time_bd_counter_reg_n_0_[4]\,
      O => \time_bd_counter[5]_i_2_n_0\
    );
\time_bd_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \time_bd_counter[9]_i_2_n_0\,
      I1 => \time_bd_counter_reg_n_0_[6]\,
      I2 => sw_result_seen,
      O => \time_bd_counter[6]_i_1_n_0\
    );
\time_bd_counter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D2"
    )
        port map (
      I0 => \time_bd_counter_reg_n_0_[6]\,
      I1 => \time_bd_counter[9]_i_2_n_0\,
      I2 => \time_bd_counter_reg_n_0_[7]\,
      I3 => sw_result_seen,
      O => \time_bd_counter[7]_i_1_n_0\
    );
\time_bd_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DF20"
    )
        port map (
      I0 => \time_bd_counter_reg_n_0_[7]\,
      I1 => \time_bd_counter[9]_i_2_n_0\,
      I2 => \time_bd_counter_reg_n_0_[6]\,
      I3 => \time_bd_counter_reg_n_0_[8]\,
      I4 => sw_result_seen,
      O => \time_bd_counter[8]_i_1_n_0\
    );
\time_bd_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7FF0800"
    )
        port map (
      I0 => \time_bd_counter_reg_n_0_[8]\,
      I1 => \time_bd_counter_reg_n_0_[6]\,
      I2 => \time_bd_counter[9]_i_2_n_0\,
      I3 => \time_bd_counter_reg_n_0_[7]\,
      I4 => \time_bd_counter_reg_n_0_[9]\,
      I5 => sw_result_seen,
      O => \time_bd_counter[9]_i_1_n_0\
    );
\time_bd_counter[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \time_bd_counter_reg_n_0_[4]\,
      I1 => \time_bd_counter_reg_n_0_[1]\,
      I2 => \time_bd_counter_reg_n_0_[3]\,
      I3 => \time_bd_counter_reg_n_0_[0]\,
      I4 => \time_bd_counter_reg_n_0_[2]\,
      I5 => \time_bd_counter_reg_n_0_[5]\,
      O => \time_bd_counter[9]_i_2_n_0\
    );
time_bd_counter_en_reg: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => p_0_in4_in,
      Q => time_bd_counter_en_reg_n_0
    );
\time_bd_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter[0]_i_1_n_0\,
      Q => \time_bd_counter_reg_n_0_[0]\
    );
\time_bd_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter[10]_i_1_n_0\,
      Q => \time_bd_counter_reg_n_0_[10]\
    );
\time_bd_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter[11]_i_1_n_0\,
      Q => \time_bd_counter_reg_n_0_[11]\
    );
\time_bd_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter[12]_i_1_n_0\,
      Q => \time_bd_counter_reg_n_0_[12]\
    );
\time_bd_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter[13]_i_1_n_0\,
      Q => \time_bd_counter_reg_n_0_[13]\
    );
\time_bd_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter[14]_i_1_n_0\,
      Q => \time_bd_counter_reg_n_0_[14]\
    );
\time_bd_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter[15]_i_2_n_0\,
      Q => \time_bd_counter_reg_n_0_[15]\
    );
\time_bd_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter[1]_i_1_n_0\,
      Q => \time_bd_counter_reg_n_0_[1]\
    );
\time_bd_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter[2]_i_1_n_0\,
      Q => \time_bd_counter_reg_n_0_[2]\
    );
\time_bd_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter[3]_i_1_n_0\,
      Q => \time_bd_counter_reg_n_0_[3]\
    );
\time_bd_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter[4]_i_1_n_0\,
      Q => \time_bd_counter_reg_n_0_[4]\
    );
\time_bd_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter[5]_i_1_n_0\,
      Q => \time_bd_counter_reg_n_0_[5]\
    );
\time_bd_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter[6]_i_1_n_0\,
      Q => \time_bd_counter_reg_n_0_[6]\
    );
\time_bd_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter[7]_i_1_n_0\,
      Q => \time_bd_counter_reg_n_0_[7]\
    );
\time_bd_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter[8]_i_1_n_0\,
      Q => \time_bd_counter_reg_n_0_[8]\
    );
\time_bd_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_bd_counter[9]_i_1_n_0\,
      Q => \time_bd_counter_reg_n_0_[9]\
    );
\time_delay_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sw_result_seen,
      I1 => \time_delay_counter_reg_n_0_[0]\,
      O => \time_delay_counter[0]_i_1_n_0\
    );
\time_delay_counter[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => sw_result_seen,
      I1 => \time_delay_counter[10]_i_2_n_0\,
      I2 => \time_delay_counter_reg_n_0_[10]\,
      O => \time_delay_counter[10]_i_1_n_0\
    );
\time_delay_counter[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => \time_delay_counter_reg_n_0_[8]\,
      I1 => \time_delay_counter_reg_n_0_[6]\,
      I2 => \time_delay_counter[9]_i_2_n_0\,
      I3 => \time_delay_counter_reg_n_0_[7]\,
      I4 => \time_delay_counter_reg_n_0_[9]\,
      O => \time_delay_counter[10]_i_2_n_0\
    );
\time_delay_counter[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => sw_result_seen,
      I1 => \time_delay_counter[14]_i_2_n_0\,
      I2 => \time_delay_counter_reg_n_0_[11]\,
      O => \time_delay_counter[11]_i_1_n_0\
    );
\time_delay_counter[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => sw_result_seen,
      I1 => \time_delay_counter_reg_n_0_[11]\,
      I2 => \time_delay_counter[14]_i_2_n_0\,
      I3 => \time_delay_counter_reg_n_0_[12]\,
      O => \time_delay_counter[12]_i_1_n_0\
    );
\time_delay_counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => sw_result_seen,
      I1 => \time_delay_counter_reg_n_0_[12]\,
      I2 => \time_delay_counter[14]_i_2_n_0\,
      I3 => \time_delay_counter_reg_n_0_[11]\,
      I4 => \time_delay_counter_reg_n_0_[13]\,
      O => \time_delay_counter[13]_i_1_n_0\
    );
\time_delay_counter[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => \time_delay_counter_reg_n_0_[13]\,
      I1 => \time_delay_counter_reg_n_0_[11]\,
      I2 => \time_delay_counter[14]_i_2_n_0\,
      I3 => \time_delay_counter_reg_n_0_[12]\,
      I4 => \time_delay_counter_reg_n_0_[14]\,
      I5 => sw_result_seen,
      O => \time_delay_counter[14]_i_1_n_0\
    );
\time_delay_counter[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \time_delay_counter_reg_n_0_[10]\,
      I1 => \time_delay_counter_reg_n_0_[9]\,
      I2 => \time_delay_counter_reg_n_0_[7]\,
      I3 => \time_delay_counter[9]_i_2_n_0\,
      I4 => \time_delay_counter_reg_n_0_[6]\,
      I5 => \time_delay_counter_reg_n_0_[8]\,
      O => \time_delay_counter[14]_i_2_n_0\
    );
\time_delay_counter[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sw_result_seen,
      I1 => time_delay_counter_en_reg_n_0,
      O => time_delay_counter(0)
    );
\time_delay_counter[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \time_delay_counter_reg_n_0_[14]\,
      I1 => \time_delay_counter[15]_i_3_n_0\,
      I2 => \time_delay_counter_reg_n_0_[15]\,
      I3 => sw_result_seen,
      O => \time_delay_counter[15]_i_2_n_0\
    );
\time_delay_counter[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \time_delay_counter_reg_n_0_[13]\,
      I1 => \time_delay_counter_reg_n_0_[11]\,
      I2 => \time_delay_counter[14]_i_2_n_0\,
      I3 => \time_delay_counter_reg_n_0_[12]\,
      O => \time_delay_counter[15]_i_3_n_0\
    );
\time_delay_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \time_delay_counter_reg_n_0_[1]\,
      I1 => \time_delay_counter_reg_n_0_[0]\,
      I2 => sw_result_seen,
      O => \time_delay_counter[1]_i_1_n_0\
    );
\time_delay_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \time_delay_counter_reg_n_0_[0]\,
      I1 => \time_delay_counter_reg_n_0_[1]\,
      I2 => \time_delay_counter_reg_n_0_[2]\,
      I3 => sw_result_seen,
      O => \time_delay_counter[2]_i_1_n_0\
    );
\time_delay_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \time_delay_counter_reg_n_0_[2]\,
      I1 => \time_delay_counter_reg_n_0_[1]\,
      I2 => \time_delay_counter_reg_n_0_[0]\,
      I3 => \time_delay_counter_reg_n_0_[3]\,
      I4 => sw_result_seen,
      O => \time_delay_counter[3]_i_1_n_0\
    );
\time_delay_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => \time_delay_counter_reg_n_0_[3]\,
      I1 => \time_delay_counter_reg_n_0_[0]\,
      I2 => \time_delay_counter_reg_n_0_[1]\,
      I3 => \time_delay_counter_reg_n_0_[2]\,
      I4 => \time_delay_counter_reg_n_0_[4]\,
      I5 => sw_result_seen,
      O => \time_delay_counter[4]_i_1_n_0\
    );
\time_delay_counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => sw_result_seen,
      I1 => \time_delay_counter_reg_n_0_[5]\,
      I2 => \time_delay_counter[5]_i_2_n_0\,
      O => \time_delay_counter[5]_i_1_n_0\
    );
\time_delay_counter[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \time_delay_counter_reg_n_0_[3]\,
      I1 => \time_delay_counter_reg_n_0_[0]\,
      I2 => \time_delay_counter_reg_n_0_[1]\,
      I3 => \time_delay_counter_reg_n_0_[2]\,
      I4 => \time_delay_counter_reg_n_0_[4]\,
      O => \time_delay_counter[5]_i_2_n_0\
    );
\time_delay_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \time_delay_counter[9]_i_2_n_0\,
      I1 => \time_delay_counter_reg_n_0_[6]\,
      I2 => sw_result_seen,
      O => \time_delay_counter[6]_i_1_n_0\
    );
\time_delay_counter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D2"
    )
        port map (
      I0 => \time_delay_counter_reg_n_0_[6]\,
      I1 => \time_delay_counter[9]_i_2_n_0\,
      I2 => \time_delay_counter_reg_n_0_[7]\,
      I3 => sw_result_seen,
      O => \time_delay_counter[7]_i_1_n_0\
    );
\time_delay_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DF20"
    )
        port map (
      I0 => \time_delay_counter_reg_n_0_[7]\,
      I1 => \time_delay_counter[9]_i_2_n_0\,
      I2 => \time_delay_counter_reg_n_0_[6]\,
      I3 => \time_delay_counter_reg_n_0_[8]\,
      I4 => sw_result_seen,
      O => \time_delay_counter[8]_i_1_n_0\
    );
\time_delay_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7FF0800"
    )
        port map (
      I0 => \time_delay_counter_reg_n_0_[8]\,
      I1 => \time_delay_counter_reg_n_0_[6]\,
      I2 => \time_delay_counter[9]_i_2_n_0\,
      I3 => \time_delay_counter_reg_n_0_[7]\,
      I4 => \time_delay_counter_reg_n_0_[9]\,
      I5 => sw_result_seen,
      O => \time_delay_counter[9]_i_1_n_0\
    );
\time_delay_counter[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \time_delay_counter_reg_n_0_[4]\,
      I1 => \time_delay_counter_reg_n_0_[2]\,
      I2 => \time_delay_counter_reg_n_0_[1]\,
      I3 => \time_delay_counter_reg_n_0_[0]\,
      I4 => \time_delay_counter_reg_n_0_[3]\,
      I5 => \time_delay_counter_reg_n_0_[5]\,
      O => \time_delay_counter[9]_i_2_n_0\
    );
time_delay_counter_en_reg: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => time_delay_counter_en,
      Q => time_delay_counter_en_reg_n_0
    );
\time_delay_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_delay_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_delay_counter[0]_i_1_n_0\,
      Q => \time_delay_counter_reg_n_0_[0]\
    );
\time_delay_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_delay_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_delay_counter[10]_i_1_n_0\,
      Q => \time_delay_counter_reg_n_0_[10]\
    );
\time_delay_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_delay_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_delay_counter[11]_i_1_n_0\,
      Q => \time_delay_counter_reg_n_0_[11]\
    );
\time_delay_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_delay_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_delay_counter[12]_i_1_n_0\,
      Q => \time_delay_counter_reg_n_0_[12]\
    );
\time_delay_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_delay_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_delay_counter[13]_i_1_n_0\,
      Q => \time_delay_counter_reg_n_0_[13]\
    );
\time_delay_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_delay_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_delay_counter[14]_i_1_n_0\,
      Q => \time_delay_counter_reg_n_0_[14]\
    );
\time_delay_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_delay_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_delay_counter[15]_i_2_n_0\,
      Q => \time_delay_counter_reg_n_0_[15]\
    );
\time_delay_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_delay_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_delay_counter[1]_i_1_n_0\,
      Q => \time_delay_counter_reg_n_0_[1]\
    );
\time_delay_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_delay_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_delay_counter[2]_i_1_n_0\,
      Q => \time_delay_counter_reg_n_0_[2]\
    );
\time_delay_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_delay_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_delay_counter[3]_i_1_n_0\,
      Q => \time_delay_counter_reg_n_0_[3]\
    );
\time_delay_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_delay_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_delay_counter[4]_i_1_n_0\,
      Q => \time_delay_counter_reg_n_0_[4]\
    );
\time_delay_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_delay_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_delay_counter[5]_i_1_n_0\,
      Q => \time_delay_counter_reg_n_0_[5]\
    );
\time_delay_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_delay_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_delay_counter[6]_i_1_n_0\,
      Q => \time_delay_counter_reg_n_0_[6]\
    );
\time_delay_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_delay_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_delay_counter[7]_i_1_n_0\,
      Q => \time_delay_counter_reg_n_0_[7]\
    );
\time_delay_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_delay_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_delay_counter[8]_i_1_n_0\,
      Q => \time_delay_counter_reg_n_0_[8]\
    );
\time_delay_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_delay_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_delay_counter[9]_i_1_n_0\,
      Q => \time_delay_counter_reg_n_0_[9]\
    );
\time_energy_buff_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter_reg_n_0_[0]\,
      Q => \^d\(64)
    );
\time_energy_buff_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter_reg_n_0_[10]\,
      Q => \^d\(74)
    );
\time_energy_buff_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter_reg_n_0_[11]\,
      Q => \^d\(75)
    );
\time_energy_buff_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter_reg_n_0_[12]\,
      Q => \^d\(76)
    );
\time_energy_buff_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter_reg_n_0_[13]\,
      Q => \^d\(77)
    );
\time_energy_buff_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter_reg_n_0_[14]\,
      Q => \^d\(78)
    );
\time_energy_buff_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter_reg_n_0_[15]\,
      Q => \^d\(79)
    );
\time_energy_buff_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter_reg_n_0_[1]\,
      Q => \^d\(65)
    );
\time_energy_buff_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter_reg_n_0_[2]\,
      Q => \^d\(66)
    );
\time_energy_buff_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter_reg_n_0_[3]\,
      Q => \^d\(67)
    );
\time_energy_buff_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter_reg_n_0_[4]\,
      Q => \^d\(68)
    );
\time_energy_buff_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter_reg_n_0_[5]\,
      Q => \^d\(69)
    );
\time_energy_buff_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter_reg_n_0_[6]\,
      Q => \^d\(70)
    );
\time_energy_buff_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter_reg_n_0_[7]\,
      Q => \^d\(71)
    );
\time_energy_buff_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter_reg_n_0_[8]\,
      Q => \^d\(72)
    );
\time_energy_buff_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_bd_buff0,
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter_reg_n_0_[9]\,
      Q => \^d\(73)
    );
\time_energy_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sw_result_seen,
      I1 => \time_energy_counter_reg_n_0_[0]\,
      O => \time_energy_counter[0]_i_1_n_0\
    );
\time_energy_counter[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => sw_result_seen,
      I1 => \time_energy_counter[10]_i_2_n_0\,
      I2 => \time_energy_counter_reg_n_0_[10]\,
      O => \time_energy_counter[10]_i_1_n_0\
    );
\time_energy_counter[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => \time_energy_counter_reg_n_0_[8]\,
      I1 => \time_energy_counter_reg_n_0_[6]\,
      I2 => \time_energy_counter[9]_i_2_n_0\,
      I3 => \time_energy_counter_reg_n_0_[7]\,
      I4 => \time_energy_counter_reg_n_0_[9]\,
      O => \time_energy_counter[10]_i_2_n_0\
    );
\time_energy_counter[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => sw_result_seen,
      I1 => \time_energy_counter[14]_i_2_n_0\,
      I2 => \time_energy_counter_reg_n_0_[11]\,
      O => \time_energy_counter[11]_i_1_n_0\
    );
\time_energy_counter[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => sw_result_seen,
      I1 => \time_energy_counter_reg_n_0_[11]\,
      I2 => \time_energy_counter[14]_i_2_n_0\,
      I3 => \time_energy_counter_reg_n_0_[12]\,
      O => \time_energy_counter[12]_i_1_n_0\
    );
\time_energy_counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => sw_result_seen,
      I1 => \time_energy_counter_reg_n_0_[12]\,
      I2 => \time_energy_counter[14]_i_2_n_0\,
      I3 => \time_energy_counter_reg_n_0_[11]\,
      I4 => \time_energy_counter_reg_n_0_[13]\,
      O => \time_energy_counter[13]_i_1_n_0\
    );
\time_energy_counter[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => \time_energy_counter_reg_n_0_[13]\,
      I1 => \time_energy_counter_reg_n_0_[11]\,
      I2 => \time_energy_counter[14]_i_2_n_0\,
      I3 => \time_energy_counter_reg_n_0_[12]\,
      I4 => \time_energy_counter_reg_n_0_[14]\,
      I5 => sw_result_seen,
      O => \time_energy_counter[14]_i_1_n_0\
    );
\time_energy_counter[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \time_energy_counter_reg_n_0_[10]\,
      I1 => \time_energy_counter_reg_n_0_[9]\,
      I2 => \time_energy_counter_reg_n_0_[7]\,
      I3 => \time_energy_counter[9]_i_2_n_0\,
      I4 => \time_energy_counter_reg_n_0_[6]\,
      I5 => \time_energy_counter_reg_n_0_[8]\,
      O => \time_energy_counter[14]_i_2_n_0\
    );
\time_energy_counter[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sw_result_seen,
      I1 => time_energy_counter_en_reg_n_0,
      O => time_energy_counter(0)
    );
\time_energy_counter[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \time_energy_counter_reg_n_0_[14]\,
      I1 => \time_energy_counter[15]_i_3_n_0\,
      I2 => \time_energy_counter_reg_n_0_[15]\,
      I3 => sw_result_seen,
      O => \time_energy_counter[15]_i_2_n_0\
    );
\time_energy_counter[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \time_energy_counter_reg_n_0_[13]\,
      I1 => \time_energy_counter_reg_n_0_[11]\,
      I2 => \time_energy_counter[14]_i_2_n_0\,
      I3 => \time_energy_counter_reg_n_0_[12]\,
      O => \time_energy_counter[15]_i_3_n_0\
    );
\time_energy_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \time_energy_counter_reg_n_0_[1]\,
      I1 => \time_energy_counter_reg_n_0_[0]\,
      I2 => sw_result_seen,
      O => \time_energy_counter[1]_i_1_n_0\
    );
\time_energy_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \time_energy_counter_reg_n_0_[0]\,
      I1 => \time_energy_counter_reg_n_0_[1]\,
      I2 => \time_energy_counter_reg_n_0_[2]\,
      I3 => sw_result_seen,
      O => \time_energy_counter[2]_i_1_n_0\
    );
\time_energy_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \time_energy_counter_reg_n_0_[2]\,
      I1 => \time_energy_counter_reg_n_0_[1]\,
      I2 => \time_energy_counter_reg_n_0_[0]\,
      I3 => \time_energy_counter_reg_n_0_[3]\,
      I4 => sw_result_seen,
      O => \time_energy_counter[3]_i_1_n_0\
    );
\time_energy_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => \time_energy_counter_reg_n_0_[3]\,
      I1 => \time_energy_counter_reg_n_0_[0]\,
      I2 => \time_energy_counter_reg_n_0_[1]\,
      I3 => \time_energy_counter_reg_n_0_[2]\,
      I4 => \time_energy_counter_reg_n_0_[4]\,
      I5 => sw_result_seen,
      O => \time_energy_counter[4]_i_1_n_0\
    );
\time_energy_counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \time_energy_counter[5]_i_2_n_0\,
      I1 => \time_energy_counter_reg_n_0_[5]\,
      I2 => sw_result_seen,
      O => \time_energy_counter[5]_i_1_n_0\
    );
\time_energy_counter[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \time_energy_counter_reg_n_0_[3]\,
      I1 => \time_energy_counter_reg_n_0_[0]\,
      I2 => \time_energy_counter_reg_n_0_[1]\,
      I3 => \time_energy_counter_reg_n_0_[2]\,
      I4 => \time_energy_counter_reg_n_0_[4]\,
      O => \time_energy_counter[5]_i_2_n_0\
    );
\time_energy_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \time_energy_counter[9]_i_2_n_0\,
      I1 => \time_energy_counter_reg_n_0_[6]\,
      I2 => sw_result_seen,
      O => \time_energy_counter[6]_i_1_n_0\
    );
\time_energy_counter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D2"
    )
        port map (
      I0 => \time_energy_counter_reg_n_0_[6]\,
      I1 => \time_energy_counter[9]_i_2_n_0\,
      I2 => \time_energy_counter_reg_n_0_[7]\,
      I3 => sw_result_seen,
      O => \time_energy_counter[7]_i_1_n_0\
    );
\time_energy_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DF20"
    )
        port map (
      I0 => \time_energy_counter_reg_n_0_[7]\,
      I1 => \time_energy_counter[9]_i_2_n_0\,
      I2 => \time_energy_counter_reg_n_0_[6]\,
      I3 => \time_energy_counter_reg_n_0_[8]\,
      I4 => sw_result_seen,
      O => \time_energy_counter[8]_i_1_n_0\
    );
\time_energy_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7FF0800"
    )
        port map (
      I0 => \time_energy_counter_reg_n_0_[8]\,
      I1 => \time_energy_counter_reg_n_0_[6]\,
      I2 => \time_energy_counter[9]_i_2_n_0\,
      I3 => \time_energy_counter_reg_n_0_[7]\,
      I4 => \time_energy_counter_reg_n_0_[9]\,
      I5 => sw_result_seen,
      O => \time_energy_counter[9]_i_1_n_0\
    );
\time_energy_counter[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \time_energy_counter_reg_n_0_[4]\,
      I1 => \time_energy_counter_reg_n_0_[2]\,
      I2 => \time_energy_counter_reg_n_0_[1]\,
      I3 => \time_energy_counter_reg_n_0_[0]\,
      I4 => \time_energy_counter_reg_n_0_[3]\,
      I5 => \time_energy_counter_reg_n_0_[5]\,
      O => \time_energy_counter[9]_i_2_n_0\
    );
time_energy_counter_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_delay_counter_en,
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      O => time_energy_counter_en
    );
time_energy_counter_en_reg: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => time_energy_counter_en,
      Q => time_energy_counter_en_reg_n_0
    );
\time_energy_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_energy_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter[0]_i_1_n_0\,
      Q => \time_energy_counter_reg_n_0_[0]\
    );
\time_energy_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_energy_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter[10]_i_1_n_0\,
      Q => \time_energy_counter_reg_n_0_[10]\
    );
\time_energy_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_energy_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter[11]_i_1_n_0\,
      Q => \time_energy_counter_reg_n_0_[11]\
    );
\time_energy_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_energy_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter[12]_i_1_n_0\,
      Q => \time_energy_counter_reg_n_0_[12]\
    );
\time_energy_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_energy_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter[13]_i_1_n_0\,
      Q => \time_energy_counter_reg_n_0_[13]\
    );
\time_energy_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_energy_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter[14]_i_1_n_0\,
      Q => \time_energy_counter_reg_n_0_[14]\
    );
\time_energy_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_energy_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter[15]_i_2_n_0\,
      Q => \time_energy_counter_reg_n_0_[15]\
    );
\time_energy_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_energy_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter[1]_i_1_n_0\,
      Q => \time_energy_counter_reg_n_0_[1]\
    );
\time_energy_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_energy_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter[2]_i_1_n_0\,
      Q => \time_energy_counter_reg_n_0_[2]\
    );
\time_energy_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_energy_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter[3]_i_1_n_0\,
      Q => \time_energy_counter_reg_n_0_[3]\
    );
\time_energy_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_energy_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter[4]_i_1_n_0\,
      Q => \time_energy_counter_reg_n_0_[4]\
    );
\time_energy_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_energy_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter[5]_i_1_n_0\,
      Q => \time_energy_counter_reg_n_0_[5]\
    );
\time_energy_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_energy_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter[6]_i_1_n_0\,
      Q => \time_energy_counter_reg_n_0_[6]\
    );
\time_energy_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_energy_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter[7]_i_1_n_0\,
      Q => \time_energy_counter_reg_n_0_[7]\
    );
\time_energy_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_energy_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter[8]_i_1_n_0\,
      Q => \time_energy_counter_reg_n_0_[8]\
    );
\time_energy_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => time_energy_counter(0),
      CLR => \FSM_onehot_current_state_reg[4]_1\,
      D => \time_energy_counter[9]_i_1_n_0\,
      Q => \time_energy_counter_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ZYNQ_BlockDesign_EDM_Monitor_0_0_ad9434 is
  port (
    CLK : out STD_LOGIC;
    div_param_od0 : out STD_LOGIC;
    wr_en : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 12 downto 0 );
    adc_data_p : in STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_data_n : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_rst : in STD_LOGIC;
    idelay_refclk : in STD_LOGIC;
    adc_dco_p : in STD_LOGIC;
    adc_dco_n : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    full : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ZYNQ_BlockDesign_EDM_Monitor_0_0_ad9434 : entity is "ad9434";
end ZYNQ_BlockDesign_EDM_Monitor_0_0_ad9434;

architecture STRUCTURE of ZYNQ_BlockDesign_EDM_Monitor_0_0_ad9434 is
  signal \^clk\ : STD_LOGIC;
  signal adc_data_ibuf_0 : STD_LOGIC;
  signal adc_data_ibuf_1 : STD_LOGIC;
  signal adc_data_ibuf_10 : STD_LOGIC;
  signal adc_data_ibuf_11 : STD_LOGIC;
  signal adc_data_ibuf_2 : STD_LOGIC;
  signal adc_data_ibuf_3 : STD_LOGIC;
  signal adc_data_ibuf_4 : STD_LOGIC;
  signal adc_data_ibuf_5 : STD_LOGIC;
  signal adc_data_ibuf_6 : STD_LOGIC;
  signal adc_data_ibuf_7 : STD_LOGIC;
  signal adc_data_ibuf_8 : STD_LOGIC;
  signal adc_data_ibuf_9 : STD_LOGIC;
  signal adc_data_iddre1_11 : STD_LOGIC;
  signal adc_data_idelaye3_0 : STD_LOGIC;
  signal adc_data_idelaye3_1 : STD_LOGIC;
  signal adc_data_idelaye3_10 : STD_LOGIC;
  signal adc_data_idelaye3_11 : STD_LOGIC;
  signal adc_data_idelaye3_2 : STD_LOGIC;
  signal adc_data_idelaye3_3 : STD_LOGIC;
  signal adc_data_idelaye3_4 : STD_LOGIC;
  signal adc_data_idelaye3_5 : STD_LOGIC;
  signal adc_data_idelaye3_6 : STD_LOGIC;
  signal adc_data_idelaye3_7 : STD_LOGIC;
  signal adc_data_idelaye3_8 : STD_LOGIC;
  signal adc_data_idelaye3_9 : STD_LOGIC;
  signal \adc_data_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \adc_data_out[10]_i_2_n_0\ : STD_LOGIC;
  signal \adc_data_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \adc_data_out[15]_i_1_n_0\ : STD_LOGIC;
  signal \adc_data_out[15]_i_2_n_0\ : STD_LOGIC;
  signal \adc_data_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \adc_data_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \adc_data_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \adc_data_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \adc_data_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \adc_data_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \adc_data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \adc_data_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \adc_data_out[9]_i_1_n_0\ : STD_LOGIC;
  signal adc_dco_ibuf : STD_LOGIC;
  signal data_casc_out_0 : STD_LOGIC;
  signal data_casc_out_1 : STD_LOGIC;
  signal data_casc_out_10 : STD_LOGIC;
  signal data_casc_out_11 : STD_LOGIC;
  signal data_casc_out_2 : STD_LOGIC;
  signal data_casc_out_3 : STD_LOGIC;
  signal data_casc_out_4 : STD_LOGIC;
  signal data_casc_out_5 : STD_LOGIC;
  signal data_casc_out_6 : STD_LOGIC;
  signal data_casc_out_7 : STD_LOGIC;
  signal data_casc_out_8 : STD_LOGIC;
  signal data_casc_out_9 : STD_LOGIC;
  signal data_casc_ret_0 : STD_LOGIC;
  signal data_casc_ret_1 : STD_LOGIC;
  signal data_casc_ret_10 : STD_LOGIC;
  signal data_casc_ret_11 : STD_LOGIC;
  signal data_casc_ret_2 : STD_LOGIC;
  signal data_casc_ret_3 : STD_LOGIC;
  signal data_casc_ret_4 : STD_LOGIC;
  signal data_casc_ret_5 : STD_LOGIC;
  signal data_casc_ret_6 : STD_LOGIC;
  signal data_casc_ret_7 : STD_LOGIC;
  signal data_casc_ret_8 : STD_LOGIC;
  signal data_casc_ret_9 : STD_LOGIC;
  signal \gen_adc1_path[0].iddre1_inst1_n_0\ : STD_LOGIC;
  signal \gen_adc1_path[10].iddre1_inst1_n_0\ : STD_LOGIC;
  signal \gen_adc1_path[1].iddre1_inst1_n_0\ : STD_LOGIC;
  signal \gen_adc1_path[2].iddre1_inst1_n_0\ : STD_LOGIC;
  signal \gen_adc1_path[3].iddre1_inst1_n_0\ : STD_LOGIC;
  signal \gen_adc1_path[4].iddre1_inst1_n_0\ : STD_LOGIC;
  signal \gen_adc1_path[5].iddre1_inst1_n_0\ : STD_LOGIC;
  signal \gen_adc1_path[6].iddre1_inst1_n_0\ : STD_LOGIC;
  signal \gen_adc1_path[7].iddre1_inst1_n_0\ : STD_LOGIC;
  signal \gen_adc1_path[8].iddre1_inst1_n_0\ : STD_LOGIC;
  signal \gen_adc1_path[9].iddre1_inst1_n_0\ : STD_LOGIC;
  signal idelayctrl_rdy : STD_LOGIC;
  signal \NLW_gen_adc1_path[0].iddre1_inst1_Q2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[0].idelay_inst_adc1_CASC_IN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[0].idelay_inst_adc1_DATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[0].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_adc1_path[0].odelay_inst_adc1_CASC_OUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[0].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[0].odelay_inst_adc1_CE_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[0].odelay_inst_adc1_INC_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[0].odelay_inst_adc1_LOAD_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[0].odelay_inst_adc1_ODATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[0].odelay_inst_adc1_RST_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[0].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_adc1_path[10].iddre1_inst1_Q2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[10].idelay_inst_adc1_CASC_IN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[10].idelay_inst_adc1_DATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[10].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_adc1_path[10].odelay_inst_adc1_CASC_OUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[10].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[10].odelay_inst_adc1_CE_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[10].odelay_inst_adc1_INC_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[10].odelay_inst_adc1_LOAD_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[10].odelay_inst_adc1_ODATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[10].odelay_inst_adc1_RST_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[10].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_adc1_path[11].iddre1_inst1_Q2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[11].idelay_inst_adc1_CASC_IN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[11].idelay_inst_adc1_DATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[11].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_adc1_path[11].odelay_inst_adc1_CASC_OUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[11].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[11].odelay_inst_adc1_CE_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[11].odelay_inst_adc1_INC_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[11].odelay_inst_adc1_LOAD_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[11].odelay_inst_adc1_ODATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[11].odelay_inst_adc1_RST_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[11].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_adc1_path[1].iddre1_inst1_Q2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[1].idelay_inst_adc1_CASC_IN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[1].idelay_inst_adc1_DATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[1].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_adc1_path[1].odelay_inst_adc1_CASC_OUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[1].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[1].odelay_inst_adc1_CE_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[1].odelay_inst_adc1_INC_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[1].odelay_inst_adc1_LOAD_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[1].odelay_inst_adc1_ODATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[1].odelay_inst_adc1_RST_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[1].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_adc1_path[2].iddre1_inst1_Q2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[2].idelay_inst_adc1_CASC_IN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[2].idelay_inst_adc1_DATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[2].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_adc1_path[2].odelay_inst_adc1_CASC_OUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[2].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[2].odelay_inst_adc1_CE_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[2].odelay_inst_adc1_INC_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[2].odelay_inst_adc1_LOAD_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[2].odelay_inst_adc1_ODATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[2].odelay_inst_adc1_RST_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[2].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_adc1_path[3].iddre1_inst1_Q2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[3].idelay_inst_adc1_CASC_IN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[3].idelay_inst_adc1_DATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[3].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_adc1_path[3].odelay_inst_adc1_CASC_OUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[3].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[3].odelay_inst_adc1_CE_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[3].odelay_inst_adc1_INC_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[3].odelay_inst_adc1_LOAD_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[3].odelay_inst_adc1_ODATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[3].odelay_inst_adc1_RST_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[3].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_adc1_path[4].iddre1_inst1_Q2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[4].idelay_inst_adc1_CASC_IN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[4].idelay_inst_adc1_DATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[4].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_adc1_path[4].odelay_inst_adc1_CASC_OUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[4].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[4].odelay_inst_adc1_CE_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[4].odelay_inst_adc1_INC_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[4].odelay_inst_adc1_LOAD_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[4].odelay_inst_adc1_ODATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[4].odelay_inst_adc1_RST_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[4].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_adc1_path[5].iddre1_inst1_Q2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[5].idelay_inst_adc1_CASC_IN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[5].idelay_inst_adc1_DATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[5].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_adc1_path[5].odelay_inst_adc1_CASC_OUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[5].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[5].odelay_inst_adc1_CE_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[5].odelay_inst_adc1_INC_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[5].odelay_inst_adc1_LOAD_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[5].odelay_inst_adc1_ODATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[5].odelay_inst_adc1_RST_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[5].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_adc1_path[6].iddre1_inst1_Q2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[6].idelay_inst_adc1_CASC_IN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[6].idelay_inst_adc1_DATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[6].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_adc1_path[6].odelay_inst_adc1_CASC_OUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[6].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[6].odelay_inst_adc1_CE_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[6].odelay_inst_adc1_INC_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[6].odelay_inst_adc1_LOAD_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[6].odelay_inst_adc1_ODATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[6].odelay_inst_adc1_RST_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[6].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_adc1_path[7].iddre1_inst1_Q2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[7].idelay_inst_adc1_CASC_IN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[7].idelay_inst_adc1_DATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[7].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_adc1_path[7].odelay_inst_adc1_CASC_OUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[7].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[7].odelay_inst_adc1_CE_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[7].odelay_inst_adc1_INC_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[7].odelay_inst_adc1_LOAD_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[7].odelay_inst_adc1_ODATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[7].odelay_inst_adc1_RST_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[7].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_adc1_path[8].iddre1_inst1_Q2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[8].idelay_inst_adc1_CASC_IN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[8].idelay_inst_adc1_DATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[8].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_adc1_path[8].odelay_inst_adc1_CASC_OUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[8].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[8].odelay_inst_adc1_CE_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[8].odelay_inst_adc1_INC_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[8].odelay_inst_adc1_LOAD_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[8].odelay_inst_adc1_ODATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[8].odelay_inst_adc1_RST_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[8].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_adc1_path[9].iddre1_inst1_Q2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[9].idelay_inst_adc1_CASC_IN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[9].idelay_inst_adc1_DATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[9].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_adc1_path[9].odelay_inst_adc1_CASC_OUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[9].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[9].odelay_inst_adc1_CE_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[9].odelay_inst_adc1_INC_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[9].odelay_inst_adc1_LOAD_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[9].odelay_inst_adc1_ODATAIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[9].odelay_inst_adc1_RST_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_adc1_path[9].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IDELAYCTRL_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of OBUFT_div_param_od0_inst : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OBUFT_div_param_od0_inst : label is "DONT_CARE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \adc_data_out[11]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \adc_data_out[15]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \adc_data_out[1]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \adc_data_out[2]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \adc_data_out[3]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \adc_data_out[4]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \adc_data_out[6]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \adc_data_out[7]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \adc_data_out[8]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \adc_data_out[9]_i_1\ : label is "soft_lutpair61";
  attribute BOX_TYPE of bufg_adc_dco : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of bufg_adc_dco : label is "BUFG";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of bufg_adc_dco : label is "VCC:CE";
  attribute BOX_TYPE of \gen_adc1_path[0].ibuf_data1\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_adc1_path[0].ibuf_data1\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of \gen_adc1_path[0].ibuf_data1\ : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of \gen_adc1_path[0].ibuf_data1\ : label is "AUTO";
  attribute BOX_TYPE of \gen_adc1_path[0].iddre1_inst1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[0].idelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[0].odelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[10].ibuf_data1\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_adc1_path[10].ibuf_data1\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_adc1_path[10].ibuf_data1\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_adc1_path[10].ibuf_data1\ : label is "AUTO";
  attribute BOX_TYPE of \gen_adc1_path[10].iddre1_inst1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[10].idelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[10].odelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[11].ibuf_data1\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_adc1_path[11].ibuf_data1\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_adc1_path[11].ibuf_data1\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_adc1_path[11].ibuf_data1\ : label is "AUTO";
  attribute BOX_TYPE of \gen_adc1_path[11].iddre1_inst1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[11].idelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[11].odelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[1].ibuf_data1\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_adc1_path[1].ibuf_data1\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_adc1_path[1].ibuf_data1\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_adc1_path[1].ibuf_data1\ : label is "AUTO";
  attribute BOX_TYPE of \gen_adc1_path[1].iddre1_inst1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[1].idelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[1].odelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[2].ibuf_data1\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_adc1_path[2].ibuf_data1\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_adc1_path[2].ibuf_data1\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_adc1_path[2].ibuf_data1\ : label is "AUTO";
  attribute BOX_TYPE of \gen_adc1_path[2].iddre1_inst1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[2].idelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[2].odelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[3].ibuf_data1\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_adc1_path[3].ibuf_data1\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_adc1_path[3].ibuf_data1\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_adc1_path[3].ibuf_data1\ : label is "AUTO";
  attribute BOX_TYPE of \gen_adc1_path[3].iddre1_inst1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[3].idelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[3].odelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[4].ibuf_data1\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_adc1_path[4].ibuf_data1\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_adc1_path[4].ibuf_data1\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_adc1_path[4].ibuf_data1\ : label is "AUTO";
  attribute BOX_TYPE of \gen_adc1_path[4].iddre1_inst1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[4].idelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[4].odelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[5].ibuf_data1\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_adc1_path[5].ibuf_data1\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_adc1_path[5].ibuf_data1\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_adc1_path[5].ibuf_data1\ : label is "AUTO";
  attribute BOX_TYPE of \gen_adc1_path[5].iddre1_inst1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[5].idelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[5].odelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[6].ibuf_data1\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_adc1_path[6].ibuf_data1\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_adc1_path[6].ibuf_data1\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_adc1_path[6].ibuf_data1\ : label is "AUTO";
  attribute BOX_TYPE of \gen_adc1_path[6].iddre1_inst1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[6].idelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[6].odelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[7].ibuf_data1\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_adc1_path[7].ibuf_data1\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_adc1_path[7].ibuf_data1\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_adc1_path[7].ibuf_data1\ : label is "AUTO";
  attribute BOX_TYPE of \gen_adc1_path[7].iddre1_inst1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[7].idelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[7].odelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[8].ibuf_data1\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_adc1_path[8].ibuf_data1\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_adc1_path[8].ibuf_data1\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_adc1_path[8].ibuf_data1\ : label is "AUTO";
  attribute BOX_TYPE of \gen_adc1_path[8].iddre1_inst1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[8].idelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[8].odelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[9].ibuf_data1\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \gen_adc1_path[9].ibuf_data1\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \gen_adc1_path[9].ibuf_data1\ : label is "0";
  attribute IFD_DELAY_VALUE of \gen_adc1_path[9].ibuf_data1\ : label is "AUTO";
  attribute BOX_TYPE of \gen_adc1_path[9].iddre1_inst1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[9].idelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_adc1_path[9].odelay_inst_adc1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of ibufds_dco1 : label is "PRIMITIVE";
  attribute CAPACITANCE of ibufds_dco1 : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of ibufds_dco1 : label is "0";
  attribute IFD_DELAY_VALUE of ibufds_dco1 : label is "AUTO";
begin
  CLK <= \^clk\;
IDELAYCTRL_inst: unisim.vcomponents.IDELAYCTRL
    generic map(
      SIM_DEVICE => "ULTRASCALE"
    )
        port map (
      RDY => idelayctrl_rdy,
      REFCLK => idelay_refclk,
      RST => wr_rst
    );
OBUFT_div_param_od0_inst: unisim.vcomponents.OBUFT
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => '0',
      O => div_param_od0,
      T => '1'
    );
\adc_data_out[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000010FFFFFFEF"
    )
        port map (
      I0 => \gen_adc1_path[9].iddre1_inst1_n_0\,
      I1 => \gen_adc1_path[7].iddre1_inst1_n_0\,
      I2 => \adc_data_out[10]_i_2_n_0\,
      I3 => \gen_adc1_path[6].iddre1_inst1_n_0\,
      I4 => \gen_adc1_path[8].iddre1_inst1_n_0\,
      I5 => \gen_adc1_path[10].iddre1_inst1_n_0\,
      O => \adc_data_out[10]_i_1_n_0\
    );
\adc_data_out[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \gen_adc1_path[4].iddre1_inst1_n_0\,
      I1 => \gen_adc1_path[2].iddre1_inst1_n_0\,
      I2 => \gen_adc1_path[0].iddre1_inst1_n_0\,
      I3 => \gen_adc1_path[1].iddre1_inst1_n_0\,
      I4 => \gen_adc1_path[3].iddre1_inst1_n_0\,
      I5 => \gen_adc1_path[5].iddre1_inst1_n_0\,
      O => \adc_data_out[10]_i_2_n_0\
    );
\adc_data_out[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \adc_data_out[15]_i_2_n_0\,
      I1 => adc_data_iddre1_11,
      O => \adc_data_out[11]_i_1_n_0\
    );
\adc_data_out[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \adc_data_out[15]_i_2_n_0\,
      I1 => adc_data_iddre1_11,
      O => \adc_data_out[15]_i_1_n_0\
    );
\adc_data_out[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \gen_adc1_path[9].iddre1_inst1_n_0\,
      I1 => \gen_adc1_path[7].iddre1_inst1_n_0\,
      I2 => \adc_data_out[10]_i_2_n_0\,
      I3 => \gen_adc1_path[6].iddre1_inst1_n_0\,
      I4 => \gen_adc1_path[8].iddre1_inst1_n_0\,
      I5 => \gen_adc1_path[10].iddre1_inst1_n_0\,
      O => \adc_data_out[15]_i_2_n_0\
    );
\adc_data_out[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_adc1_path[0].iddre1_inst1_n_0\,
      I1 => \gen_adc1_path[1].iddre1_inst1_n_0\,
      O => \adc_data_out[1]_i_1_n_0\
    );
\adc_data_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \gen_adc1_path[1].iddre1_inst1_n_0\,
      I1 => \gen_adc1_path[0].iddre1_inst1_n_0\,
      I2 => \gen_adc1_path[2].iddre1_inst1_n_0\,
      O => \adc_data_out[2]_i_1_n_0\
    );
\adc_data_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \gen_adc1_path[2].iddre1_inst1_n_0\,
      I1 => \gen_adc1_path[0].iddre1_inst1_n_0\,
      I2 => \gen_adc1_path[1].iddre1_inst1_n_0\,
      I3 => \gen_adc1_path[3].iddre1_inst1_n_0\,
      O => \adc_data_out[3]_i_1_n_0\
    );
\adc_data_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => \gen_adc1_path[3].iddre1_inst1_n_0\,
      I1 => \gen_adc1_path[1].iddre1_inst1_n_0\,
      I2 => \gen_adc1_path[0].iddre1_inst1_n_0\,
      I3 => \gen_adc1_path[2].iddre1_inst1_n_0\,
      I4 => \gen_adc1_path[4].iddre1_inst1_n_0\,
      O => \adc_data_out[4]_i_1_n_0\
    );
\adc_data_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => \gen_adc1_path[4].iddre1_inst1_n_0\,
      I1 => \gen_adc1_path[2].iddre1_inst1_n_0\,
      I2 => \gen_adc1_path[0].iddre1_inst1_n_0\,
      I3 => \gen_adc1_path[1].iddre1_inst1_n_0\,
      I4 => \gen_adc1_path[3].iddre1_inst1_n_0\,
      I5 => \gen_adc1_path[5].iddre1_inst1_n_0\,
      O => \adc_data_out[5]_i_1_n_0\
    );
\adc_data_out[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \adc_data_out[10]_i_2_n_0\,
      I1 => \gen_adc1_path[6].iddre1_inst1_n_0\,
      O => \adc_data_out[6]_i_1_n_0\
    );
\adc_data_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => \gen_adc1_path[6].iddre1_inst1_n_0\,
      I1 => \adc_data_out[10]_i_2_n_0\,
      I2 => \gen_adc1_path[7].iddre1_inst1_n_0\,
      O => \adc_data_out[7]_i_1_n_0\
    );
\adc_data_out[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FB"
    )
        port map (
      I0 => \gen_adc1_path[7].iddre1_inst1_n_0\,
      I1 => \adc_data_out[10]_i_2_n_0\,
      I2 => \gen_adc1_path[6].iddre1_inst1_n_0\,
      I3 => \gen_adc1_path[8].iddre1_inst1_n_0\,
      O => \adc_data_out[8]_i_1_n_0\
    );
\adc_data_out[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FFEF"
    )
        port map (
      I0 => \gen_adc1_path[8].iddre1_inst1_n_0\,
      I1 => \gen_adc1_path[6].iddre1_inst1_n_0\,
      I2 => \adc_data_out[10]_i_2_n_0\,
      I3 => \gen_adc1_path[7].iddre1_inst1_n_0\,
      I4 => \gen_adc1_path[9].iddre1_inst1_n_0\,
      O => \adc_data_out[9]_i_1_n_0\
    );
\adc_data_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk\,
      CE => '1',
      CLR => wr_rst,
      D => \gen_adc1_path[0].iddre1_inst1_n_0\,
      Q => Q(0)
    );
\adc_data_out_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk\,
      CE => '1',
      CLR => wr_rst,
      D => \adc_data_out[10]_i_1_n_0\,
      Q => Q(10)
    );
\adc_data_out_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk\,
      CE => '1',
      CLR => wr_rst,
      D => \adc_data_out[11]_i_1_n_0\,
      Q => Q(11)
    );
\adc_data_out_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk\,
      CE => '1',
      CLR => wr_rst,
      D => \adc_data_out[15]_i_1_n_0\,
      Q => Q(12)
    );
\adc_data_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk\,
      CE => '1',
      CLR => wr_rst,
      D => \adc_data_out[1]_i_1_n_0\,
      Q => Q(1)
    );
\adc_data_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk\,
      CE => '1',
      CLR => wr_rst,
      D => \adc_data_out[2]_i_1_n_0\,
      Q => Q(2)
    );
\adc_data_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk\,
      CE => '1',
      CLR => wr_rst,
      D => \adc_data_out[3]_i_1_n_0\,
      Q => Q(3)
    );
\adc_data_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk\,
      CE => '1',
      CLR => wr_rst,
      D => \adc_data_out[4]_i_1_n_0\,
      Q => Q(4)
    );
\adc_data_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk\,
      CE => '1',
      CLR => wr_rst,
      D => \adc_data_out[5]_i_1_n_0\,
      Q => Q(5)
    );
\adc_data_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk\,
      CE => '1',
      CLR => wr_rst,
      D => \adc_data_out[6]_i_1_n_0\,
      Q => Q(6)
    );
\adc_data_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk\,
      CE => '1',
      CLR => wr_rst,
      D => \adc_data_out[7]_i_1_n_0\,
      Q => Q(7)
    );
\adc_data_out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk\,
      CE => '1',
      CLR => wr_rst,
      D => \adc_data_out[8]_i_1_n_0\,
      Q => Q(8)
    );
\adc_data_out_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => \^clk\,
      CE => '1',
      CLR => wr_rst,
      D => \adc_data_out[9]_i_1_n_0\,
      Q => Q(9)
    );
bufg_adc_dco: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "ASYNC",
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
        port map (
      CE => '1',
      I => adc_dco_ibuf,
      O => \^clk\
    );
fifo_wr_en: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \out\(0),
      I1 => full,
      I2 => idelayctrl_rdy,
      O => wr_en
    );
\gen_adc1_path[0].ibuf_data1\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => adc_data_p(0),
      IB => adc_data_n(0),
      O => adc_data_ibuf_0
    );
\gen_adc1_path[0].iddre1_inst1\: unisim.vcomponents.IDDRE1
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      IS_CB_INVERTED => '1',
      IS_C_INVERTED => '0'
    )
        port map (
      C => \^clk\,
      CB => \^clk\,
      D => adc_data_idelaye3_0,
      Q1 => \gen_adc1_path[0].iddre1_inst1_n_0\,
      Q2 => \NLW_gen_adc1_path[0].iddre1_inst1_Q2_UNCONNECTED\,
      R => wr_rst
    );
\gen_adc1_path[0].idelay_inst_adc1\: unisim.vcomponents.IDELAYE3
    generic map(
      CASCADE => "MASTER",
      DELAY_FORMAT => "TIME",
      DELAY_SRC => "IDATAIN",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      LOOPBACK => "FALSE",
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => \NLW_gen_adc1_path[0].idelay_inst_adc1_CASC_IN_UNCONNECTED\,
      CASC_OUT => data_casc_out_0,
      CASC_RETURN => data_casc_ret_0,
      CE => '0',
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[0].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAIN => \NLW_gen_adc1_path[0].idelay_inst_adc1_DATAIN_UNCONNECTED\,
      DATAOUT => adc_data_idelaye3_0,
      EN_VTC => '1',
      IDATAIN => adc_data_ibuf_0,
      INC => '0',
      LOAD => '0',
      RST => '0'
    );
\gen_adc1_path[0].odelay_inst_adc1\: unisim.vcomponents.ODELAYE3
    generic map(
      CASCADE => "SLAVE_END",
      DELAY_FORMAT => "TIME",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => data_casc_out_0,
      CASC_OUT => \NLW_gen_adc1_path[0].odelay_inst_adc1_CASC_OUT_UNCONNECTED\,
      CASC_RETURN => \NLW_gen_adc1_path[0].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\,
      CE => \NLW_gen_adc1_path[0].odelay_inst_adc1_CE_UNCONNECTED\,
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[0].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAOUT => data_casc_ret_0,
      EN_VTC => '1',
      INC => \NLW_gen_adc1_path[0].odelay_inst_adc1_INC_UNCONNECTED\,
      LOAD => \NLW_gen_adc1_path[0].odelay_inst_adc1_LOAD_UNCONNECTED\,
      ODATAIN => \NLW_gen_adc1_path[0].odelay_inst_adc1_ODATAIN_UNCONNECTED\,
      RST => \NLW_gen_adc1_path[0].odelay_inst_adc1_RST_UNCONNECTED\
    );
\gen_adc1_path[10].ibuf_data1\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => adc_data_p(10),
      IB => adc_data_n(10),
      O => adc_data_ibuf_10
    );
\gen_adc1_path[10].iddre1_inst1\: unisim.vcomponents.IDDRE1
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      IS_CB_INVERTED => '1',
      IS_C_INVERTED => '0'
    )
        port map (
      C => \^clk\,
      CB => \^clk\,
      D => adc_data_idelaye3_10,
      Q1 => \gen_adc1_path[10].iddre1_inst1_n_0\,
      Q2 => \NLW_gen_adc1_path[10].iddre1_inst1_Q2_UNCONNECTED\,
      R => wr_rst
    );
\gen_adc1_path[10].idelay_inst_adc1\: unisim.vcomponents.IDELAYE3
    generic map(
      CASCADE => "MASTER",
      DELAY_FORMAT => "TIME",
      DELAY_SRC => "IDATAIN",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      LOOPBACK => "FALSE",
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => \NLW_gen_adc1_path[10].idelay_inst_adc1_CASC_IN_UNCONNECTED\,
      CASC_OUT => data_casc_out_10,
      CASC_RETURN => data_casc_ret_10,
      CE => '0',
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[10].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAIN => \NLW_gen_adc1_path[10].idelay_inst_adc1_DATAIN_UNCONNECTED\,
      DATAOUT => adc_data_idelaye3_10,
      EN_VTC => '1',
      IDATAIN => adc_data_ibuf_10,
      INC => '0',
      LOAD => '0',
      RST => '0'
    );
\gen_adc1_path[10].odelay_inst_adc1\: unisim.vcomponents.ODELAYE3
    generic map(
      CASCADE => "SLAVE_END",
      DELAY_FORMAT => "TIME",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => data_casc_out_10,
      CASC_OUT => \NLW_gen_adc1_path[10].odelay_inst_adc1_CASC_OUT_UNCONNECTED\,
      CASC_RETURN => \NLW_gen_adc1_path[10].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\,
      CE => \NLW_gen_adc1_path[10].odelay_inst_adc1_CE_UNCONNECTED\,
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[10].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAOUT => data_casc_ret_10,
      EN_VTC => '1',
      INC => \NLW_gen_adc1_path[10].odelay_inst_adc1_INC_UNCONNECTED\,
      LOAD => \NLW_gen_adc1_path[10].odelay_inst_adc1_LOAD_UNCONNECTED\,
      ODATAIN => \NLW_gen_adc1_path[10].odelay_inst_adc1_ODATAIN_UNCONNECTED\,
      RST => \NLW_gen_adc1_path[10].odelay_inst_adc1_RST_UNCONNECTED\
    );
\gen_adc1_path[11].ibuf_data1\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => adc_data_p(11),
      IB => adc_data_n(11),
      O => adc_data_ibuf_11
    );
\gen_adc1_path[11].iddre1_inst1\: unisim.vcomponents.IDDRE1
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      IS_CB_INVERTED => '1',
      IS_C_INVERTED => '0'
    )
        port map (
      C => \^clk\,
      CB => \^clk\,
      D => adc_data_idelaye3_11,
      Q1 => adc_data_iddre1_11,
      Q2 => \NLW_gen_adc1_path[11].iddre1_inst1_Q2_UNCONNECTED\,
      R => wr_rst
    );
\gen_adc1_path[11].idelay_inst_adc1\: unisim.vcomponents.IDELAYE3
    generic map(
      CASCADE => "MASTER",
      DELAY_FORMAT => "TIME",
      DELAY_SRC => "IDATAIN",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      LOOPBACK => "FALSE",
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => \NLW_gen_adc1_path[11].idelay_inst_adc1_CASC_IN_UNCONNECTED\,
      CASC_OUT => data_casc_out_11,
      CASC_RETURN => data_casc_ret_11,
      CE => '0',
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[11].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAIN => \NLW_gen_adc1_path[11].idelay_inst_adc1_DATAIN_UNCONNECTED\,
      DATAOUT => adc_data_idelaye3_11,
      EN_VTC => '1',
      IDATAIN => adc_data_ibuf_11,
      INC => '0',
      LOAD => '0',
      RST => '0'
    );
\gen_adc1_path[11].odelay_inst_adc1\: unisim.vcomponents.ODELAYE3
    generic map(
      CASCADE => "SLAVE_END",
      DELAY_FORMAT => "TIME",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => data_casc_out_11,
      CASC_OUT => \NLW_gen_adc1_path[11].odelay_inst_adc1_CASC_OUT_UNCONNECTED\,
      CASC_RETURN => \NLW_gen_adc1_path[11].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\,
      CE => \NLW_gen_adc1_path[11].odelay_inst_adc1_CE_UNCONNECTED\,
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[11].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAOUT => data_casc_ret_11,
      EN_VTC => '1',
      INC => \NLW_gen_adc1_path[11].odelay_inst_adc1_INC_UNCONNECTED\,
      LOAD => \NLW_gen_adc1_path[11].odelay_inst_adc1_LOAD_UNCONNECTED\,
      ODATAIN => \NLW_gen_adc1_path[11].odelay_inst_adc1_ODATAIN_UNCONNECTED\,
      RST => \NLW_gen_adc1_path[11].odelay_inst_adc1_RST_UNCONNECTED\
    );
\gen_adc1_path[1].ibuf_data1\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => adc_data_p(1),
      IB => adc_data_n(1),
      O => adc_data_ibuf_1
    );
\gen_adc1_path[1].iddre1_inst1\: unisim.vcomponents.IDDRE1
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      IS_CB_INVERTED => '1',
      IS_C_INVERTED => '0'
    )
        port map (
      C => \^clk\,
      CB => \^clk\,
      D => adc_data_idelaye3_1,
      Q1 => \gen_adc1_path[1].iddre1_inst1_n_0\,
      Q2 => \NLW_gen_adc1_path[1].iddre1_inst1_Q2_UNCONNECTED\,
      R => wr_rst
    );
\gen_adc1_path[1].idelay_inst_adc1\: unisim.vcomponents.IDELAYE3
    generic map(
      CASCADE => "MASTER",
      DELAY_FORMAT => "TIME",
      DELAY_SRC => "IDATAIN",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      LOOPBACK => "FALSE",
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => \NLW_gen_adc1_path[1].idelay_inst_adc1_CASC_IN_UNCONNECTED\,
      CASC_OUT => data_casc_out_1,
      CASC_RETURN => data_casc_ret_1,
      CE => '0',
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[1].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAIN => \NLW_gen_adc1_path[1].idelay_inst_adc1_DATAIN_UNCONNECTED\,
      DATAOUT => adc_data_idelaye3_1,
      EN_VTC => '1',
      IDATAIN => adc_data_ibuf_1,
      INC => '0',
      LOAD => '0',
      RST => '0'
    );
\gen_adc1_path[1].odelay_inst_adc1\: unisim.vcomponents.ODELAYE3
    generic map(
      CASCADE => "SLAVE_END",
      DELAY_FORMAT => "TIME",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => data_casc_out_1,
      CASC_OUT => \NLW_gen_adc1_path[1].odelay_inst_adc1_CASC_OUT_UNCONNECTED\,
      CASC_RETURN => \NLW_gen_adc1_path[1].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\,
      CE => \NLW_gen_adc1_path[1].odelay_inst_adc1_CE_UNCONNECTED\,
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[1].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAOUT => data_casc_ret_1,
      EN_VTC => '1',
      INC => \NLW_gen_adc1_path[1].odelay_inst_adc1_INC_UNCONNECTED\,
      LOAD => \NLW_gen_adc1_path[1].odelay_inst_adc1_LOAD_UNCONNECTED\,
      ODATAIN => \NLW_gen_adc1_path[1].odelay_inst_adc1_ODATAIN_UNCONNECTED\,
      RST => \NLW_gen_adc1_path[1].odelay_inst_adc1_RST_UNCONNECTED\
    );
\gen_adc1_path[2].ibuf_data1\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => adc_data_p(2),
      IB => adc_data_n(2),
      O => adc_data_ibuf_2
    );
\gen_adc1_path[2].iddre1_inst1\: unisim.vcomponents.IDDRE1
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      IS_CB_INVERTED => '1',
      IS_C_INVERTED => '0'
    )
        port map (
      C => \^clk\,
      CB => \^clk\,
      D => adc_data_idelaye3_2,
      Q1 => \gen_adc1_path[2].iddre1_inst1_n_0\,
      Q2 => \NLW_gen_adc1_path[2].iddre1_inst1_Q2_UNCONNECTED\,
      R => wr_rst
    );
\gen_adc1_path[2].idelay_inst_adc1\: unisim.vcomponents.IDELAYE3
    generic map(
      CASCADE => "MASTER",
      DELAY_FORMAT => "TIME",
      DELAY_SRC => "IDATAIN",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      LOOPBACK => "FALSE",
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => \NLW_gen_adc1_path[2].idelay_inst_adc1_CASC_IN_UNCONNECTED\,
      CASC_OUT => data_casc_out_2,
      CASC_RETURN => data_casc_ret_2,
      CE => '0',
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[2].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAIN => \NLW_gen_adc1_path[2].idelay_inst_adc1_DATAIN_UNCONNECTED\,
      DATAOUT => adc_data_idelaye3_2,
      EN_VTC => '1',
      IDATAIN => adc_data_ibuf_2,
      INC => '0',
      LOAD => '0',
      RST => '0'
    );
\gen_adc1_path[2].odelay_inst_adc1\: unisim.vcomponents.ODELAYE3
    generic map(
      CASCADE => "SLAVE_END",
      DELAY_FORMAT => "TIME",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => data_casc_out_2,
      CASC_OUT => \NLW_gen_adc1_path[2].odelay_inst_adc1_CASC_OUT_UNCONNECTED\,
      CASC_RETURN => \NLW_gen_adc1_path[2].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\,
      CE => \NLW_gen_adc1_path[2].odelay_inst_adc1_CE_UNCONNECTED\,
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[2].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAOUT => data_casc_ret_2,
      EN_VTC => '1',
      INC => \NLW_gen_adc1_path[2].odelay_inst_adc1_INC_UNCONNECTED\,
      LOAD => \NLW_gen_adc1_path[2].odelay_inst_adc1_LOAD_UNCONNECTED\,
      ODATAIN => \NLW_gen_adc1_path[2].odelay_inst_adc1_ODATAIN_UNCONNECTED\,
      RST => \NLW_gen_adc1_path[2].odelay_inst_adc1_RST_UNCONNECTED\
    );
\gen_adc1_path[3].ibuf_data1\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => adc_data_p(3),
      IB => adc_data_n(3),
      O => adc_data_ibuf_3
    );
\gen_adc1_path[3].iddre1_inst1\: unisim.vcomponents.IDDRE1
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      IS_CB_INVERTED => '1',
      IS_C_INVERTED => '0'
    )
        port map (
      C => \^clk\,
      CB => \^clk\,
      D => adc_data_idelaye3_3,
      Q1 => \gen_adc1_path[3].iddre1_inst1_n_0\,
      Q2 => \NLW_gen_adc1_path[3].iddre1_inst1_Q2_UNCONNECTED\,
      R => wr_rst
    );
\gen_adc1_path[3].idelay_inst_adc1\: unisim.vcomponents.IDELAYE3
    generic map(
      CASCADE => "MASTER",
      DELAY_FORMAT => "TIME",
      DELAY_SRC => "IDATAIN",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      LOOPBACK => "FALSE",
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => \NLW_gen_adc1_path[3].idelay_inst_adc1_CASC_IN_UNCONNECTED\,
      CASC_OUT => data_casc_out_3,
      CASC_RETURN => data_casc_ret_3,
      CE => '0',
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[3].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAIN => \NLW_gen_adc1_path[3].idelay_inst_adc1_DATAIN_UNCONNECTED\,
      DATAOUT => adc_data_idelaye3_3,
      EN_VTC => '1',
      IDATAIN => adc_data_ibuf_3,
      INC => '0',
      LOAD => '0',
      RST => '0'
    );
\gen_adc1_path[3].odelay_inst_adc1\: unisim.vcomponents.ODELAYE3
    generic map(
      CASCADE => "SLAVE_END",
      DELAY_FORMAT => "TIME",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => data_casc_out_3,
      CASC_OUT => \NLW_gen_adc1_path[3].odelay_inst_adc1_CASC_OUT_UNCONNECTED\,
      CASC_RETURN => \NLW_gen_adc1_path[3].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\,
      CE => \NLW_gen_adc1_path[3].odelay_inst_adc1_CE_UNCONNECTED\,
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[3].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAOUT => data_casc_ret_3,
      EN_VTC => '1',
      INC => \NLW_gen_adc1_path[3].odelay_inst_adc1_INC_UNCONNECTED\,
      LOAD => \NLW_gen_adc1_path[3].odelay_inst_adc1_LOAD_UNCONNECTED\,
      ODATAIN => \NLW_gen_adc1_path[3].odelay_inst_adc1_ODATAIN_UNCONNECTED\,
      RST => \NLW_gen_adc1_path[3].odelay_inst_adc1_RST_UNCONNECTED\
    );
\gen_adc1_path[4].ibuf_data1\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => adc_data_p(4),
      IB => adc_data_n(4),
      O => adc_data_ibuf_4
    );
\gen_adc1_path[4].iddre1_inst1\: unisim.vcomponents.IDDRE1
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      IS_CB_INVERTED => '1',
      IS_C_INVERTED => '0'
    )
        port map (
      C => \^clk\,
      CB => \^clk\,
      D => adc_data_idelaye3_4,
      Q1 => \gen_adc1_path[4].iddre1_inst1_n_0\,
      Q2 => \NLW_gen_adc1_path[4].iddre1_inst1_Q2_UNCONNECTED\,
      R => wr_rst
    );
\gen_adc1_path[4].idelay_inst_adc1\: unisim.vcomponents.IDELAYE3
    generic map(
      CASCADE => "MASTER",
      DELAY_FORMAT => "TIME",
      DELAY_SRC => "IDATAIN",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      LOOPBACK => "FALSE",
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => \NLW_gen_adc1_path[4].idelay_inst_adc1_CASC_IN_UNCONNECTED\,
      CASC_OUT => data_casc_out_4,
      CASC_RETURN => data_casc_ret_4,
      CE => '0',
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[4].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAIN => \NLW_gen_adc1_path[4].idelay_inst_adc1_DATAIN_UNCONNECTED\,
      DATAOUT => adc_data_idelaye3_4,
      EN_VTC => '1',
      IDATAIN => adc_data_ibuf_4,
      INC => '0',
      LOAD => '0',
      RST => '0'
    );
\gen_adc1_path[4].odelay_inst_adc1\: unisim.vcomponents.ODELAYE3
    generic map(
      CASCADE => "SLAVE_END",
      DELAY_FORMAT => "TIME",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => data_casc_out_4,
      CASC_OUT => \NLW_gen_adc1_path[4].odelay_inst_adc1_CASC_OUT_UNCONNECTED\,
      CASC_RETURN => \NLW_gen_adc1_path[4].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\,
      CE => \NLW_gen_adc1_path[4].odelay_inst_adc1_CE_UNCONNECTED\,
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[4].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAOUT => data_casc_ret_4,
      EN_VTC => '1',
      INC => \NLW_gen_adc1_path[4].odelay_inst_adc1_INC_UNCONNECTED\,
      LOAD => \NLW_gen_adc1_path[4].odelay_inst_adc1_LOAD_UNCONNECTED\,
      ODATAIN => \NLW_gen_adc1_path[4].odelay_inst_adc1_ODATAIN_UNCONNECTED\,
      RST => \NLW_gen_adc1_path[4].odelay_inst_adc1_RST_UNCONNECTED\
    );
\gen_adc1_path[5].ibuf_data1\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => adc_data_p(5),
      IB => adc_data_n(5),
      O => adc_data_ibuf_5
    );
\gen_adc1_path[5].iddre1_inst1\: unisim.vcomponents.IDDRE1
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      IS_CB_INVERTED => '1',
      IS_C_INVERTED => '0'
    )
        port map (
      C => \^clk\,
      CB => \^clk\,
      D => adc_data_idelaye3_5,
      Q1 => \gen_adc1_path[5].iddre1_inst1_n_0\,
      Q2 => \NLW_gen_adc1_path[5].iddre1_inst1_Q2_UNCONNECTED\,
      R => wr_rst
    );
\gen_adc1_path[5].idelay_inst_adc1\: unisim.vcomponents.IDELAYE3
    generic map(
      CASCADE => "MASTER",
      DELAY_FORMAT => "TIME",
      DELAY_SRC => "IDATAIN",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      LOOPBACK => "FALSE",
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => \NLW_gen_adc1_path[5].idelay_inst_adc1_CASC_IN_UNCONNECTED\,
      CASC_OUT => data_casc_out_5,
      CASC_RETURN => data_casc_ret_5,
      CE => '0',
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[5].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAIN => \NLW_gen_adc1_path[5].idelay_inst_adc1_DATAIN_UNCONNECTED\,
      DATAOUT => adc_data_idelaye3_5,
      EN_VTC => '1',
      IDATAIN => adc_data_ibuf_5,
      INC => '0',
      LOAD => '0',
      RST => '0'
    );
\gen_adc1_path[5].odelay_inst_adc1\: unisim.vcomponents.ODELAYE3
    generic map(
      CASCADE => "SLAVE_END",
      DELAY_FORMAT => "TIME",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => data_casc_out_5,
      CASC_OUT => \NLW_gen_adc1_path[5].odelay_inst_adc1_CASC_OUT_UNCONNECTED\,
      CASC_RETURN => \NLW_gen_adc1_path[5].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\,
      CE => \NLW_gen_adc1_path[5].odelay_inst_adc1_CE_UNCONNECTED\,
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[5].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAOUT => data_casc_ret_5,
      EN_VTC => '1',
      INC => \NLW_gen_adc1_path[5].odelay_inst_adc1_INC_UNCONNECTED\,
      LOAD => \NLW_gen_adc1_path[5].odelay_inst_adc1_LOAD_UNCONNECTED\,
      ODATAIN => \NLW_gen_adc1_path[5].odelay_inst_adc1_ODATAIN_UNCONNECTED\,
      RST => \NLW_gen_adc1_path[5].odelay_inst_adc1_RST_UNCONNECTED\
    );
\gen_adc1_path[6].ibuf_data1\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => adc_data_p(6),
      IB => adc_data_n(6),
      O => adc_data_ibuf_6
    );
\gen_adc1_path[6].iddre1_inst1\: unisim.vcomponents.IDDRE1
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      IS_CB_INVERTED => '1',
      IS_C_INVERTED => '0'
    )
        port map (
      C => \^clk\,
      CB => \^clk\,
      D => adc_data_idelaye3_6,
      Q1 => \gen_adc1_path[6].iddre1_inst1_n_0\,
      Q2 => \NLW_gen_adc1_path[6].iddre1_inst1_Q2_UNCONNECTED\,
      R => wr_rst
    );
\gen_adc1_path[6].idelay_inst_adc1\: unisim.vcomponents.IDELAYE3
    generic map(
      CASCADE => "MASTER",
      DELAY_FORMAT => "TIME",
      DELAY_SRC => "IDATAIN",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      LOOPBACK => "FALSE",
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => \NLW_gen_adc1_path[6].idelay_inst_adc1_CASC_IN_UNCONNECTED\,
      CASC_OUT => data_casc_out_6,
      CASC_RETURN => data_casc_ret_6,
      CE => '0',
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[6].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAIN => \NLW_gen_adc1_path[6].idelay_inst_adc1_DATAIN_UNCONNECTED\,
      DATAOUT => adc_data_idelaye3_6,
      EN_VTC => '1',
      IDATAIN => adc_data_ibuf_6,
      INC => '0',
      LOAD => '0',
      RST => '0'
    );
\gen_adc1_path[6].odelay_inst_adc1\: unisim.vcomponents.ODELAYE3
    generic map(
      CASCADE => "SLAVE_END",
      DELAY_FORMAT => "TIME",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => data_casc_out_6,
      CASC_OUT => \NLW_gen_adc1_path[6].odelay_inst_adc1_CASC_OUT_UNCONNECTED\,
      CASC_RETURN => \NLW_gen_adc1_path[6].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\,
      CE => \NLW_gen_adc1_path[6].odelay_inst_adc1_CE_UNCONNECTED\,
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[6].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAOUT => data_casc_ret_6,
      EN_VTC => '1',
      INC => \NLW_gen_adc1_path[6].odelay_inst_adc1_INC_UNCONNECTED\,
      LOAD => \NLW_gen_adc1_path[6].odelay_inst_adc1_LOAD_UNCONNECTED\,
      ODATAIN => \NLW_gen_adc1_path[6].odelay_inst_adc1_ODATAIN_UNCONNECTED\,
      RST => \NLW_gen_adc1_path[6].odelay_inst_adc1_RST_UNCONNECTED\
    );
\gen_adc1_path[7].ibuf_data1\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => adc_data_p(7),
      IB => adc_data_n(7),
      O => adc_data_ibuf_7
    );
\gen_adc1_path[7].iddre1_inst1\: unisim.vcomponents.IDDRE1
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      IS_CB_INVERTED => '1',
      IS_C_INVERTED => '0'
    )
        port map (
      C => \^clk\,
      CB => \^clk\,
      D => adc_data_idelaye3_7,
      Q1 => \gen_adc1_path[7].iddre1_inst1_n_0\,
      Q2 => \NLW_gen_adc1_path[7].iddre1_inst1_Q2_UNCONNECTED\,
      R => wr_rst
    );
\gen_adc1_path[7].idelay_inst_adc1\: unisim.vcomponents.IDELAYE3
    generic map(
      CASCADE => "MASTER",
      DELAY_FORMAT => "TIME",
      DELAY_SRC => "IDATAIN",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      LOOPBACK => "FALSE",
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => \NLW_gen_adc1_path[7].idelay_inst_adc1_CASC_IN_UNCONNECTED\,
      CASC_OUT => data_casc_out_7,
      CASC_RETURN => data_casc_ret_7,
      CE => '0',
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[7].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAIN => \NLW_gen_adc1_path[7].idelay_inst_adc1_DATAIN_UNCONNECTED\,
      DATAOUT => adc_data_idelaye3_7,
      EN_VTC => '1',
      IDATAIN => adc_data_ibuf_7,
      INC => '0',
      LOAD => '0',
      RST => '0'
    );
\gen_adc1_path[7].odelay_inst_adc1\: unisim.vcomponents.ODELAYE3
    generic map(
      CASCADE => "SLAVE_END",
      DELAY_FORMAT => "TIME",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => data_casc_out_7,
      CASC_OUT => \NLW_gen_adc1_path[7].odelay_inst_adc1_CASC_OUT_UNCONNECTED\,
      CASC_RETURN => \NLW_gen_adc1_path[7].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\,
      CE => \NLW_gen_adc1_path[7].odelay_inst_adc1_CE_UNCONNECTED\,
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[7].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAOUT => data_casc_ret_7,
      EN_VTC => '1',
      INC => \NLW_gen_adc1_path[7].odelay_inst_adc1_INC_UNCONNECTED\,
      LOAD => \NLW_gen_adc1_path[7].odelay_inst_adc1_LOAD_UNCONNECTED\,
      ODATAIN => \NLW_gen_adc1_path[7].odelay_inst_adc1_ODATAIN_UNCONNECTED\,
      RST => \NLW_gen_adc1_path[7].odelay_inst_adc1_RST_UNCONNECTED\
    );
\gen_adc1_path[8].ibuf_data1\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => adc_data_p(8),
      IB => adc_data_n(8),
      O => adc_data_ibuf_8
    );
\gen_adc1_path[8].iddre1_inst1\: unisim.vcomponents.IDDRE1
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      IS_CB_INVERTED => '1',
      IS_C_INVERTED => '0'
    )
        port map (
      C => \^clk\,
      CB => \^clk\,
      D => adc_data_idelaye3_8,
      Q1 => \gen_adc1_path[8].iddre1_inst1_n_0\,
      Q2 => \NLW_gen_adc1_path[8].iddre1_inst1_Q2_UNCONNECTED\,
      R => wr_rst
    );
\gen_adc1_path[8].idelay_inst_adc1\: unisim.vcomponents.IDELAYE3
    generic map(
      CASCADE => "MASTER",
      DELAY_FORMAT => "TIME",
      DELAY_SRC => "IDATAIN",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      LOOPBACK => "FALSE",
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => \NLW_gen_adc1_path[8].idelay_inst_adc1_CASC_IN_UNCONNECTED\,
      CASC_OUT => data_casc_out_8,
      CASC_RETURN => data_casc_ret_8,
      CE => '0',
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[8].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAIN => \NLW_gen_adc1_path[8].idelay_inst_adc1_DATAIN_UNCONNECTED\,
      DATAOUT => adc_data_idelaye3_8,
      EN_VTC => '1',
      IDATAIN => adc_data_ibuf_8,
      INC => '0',
      LOAD => '0',
      RST => '0'
    );
\gen_adc1_path[8].odelay_inst_adc1\: unisim.vcomponents.ODELAYE3
    generic map(
      CASCADE => "SLAVE_END",
      DELAY_FORMAT => "TIME",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => data_casc_out_8,
      CASC_OUT => \NLW_gen_adc1_path[8].odelay_inst_adc1_CASC_OUT_UNCONNECTED\,
      CASC_RETURN => \NLW_gen_adc1_path[8].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\,
      CE => \NLW_gen_adc1_path[8].odelay_inst_adc1_CE_UNCONNECTED\,
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[8].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAOUT => data_casc_ret_8,
      EN_VTC => '1',
      INC => \NLW_gen_adc1_path[8].odelay_inst_adc1_INC_UNCONNECTED\,
      LOAD => \NLW_gen_adc1_path[8].odelay_inst_adc1_LOAD_UNCONNECTED\,
      ODATAIN => \NLW_gen_adc1_path[8].odelay_inst_adc1_ODATAIN_UNCONNECTED\,
      RST => \NLW_gen_adc1_path[8].odelay_inst_adc1_RST_UNCONNECTED\
    );
\gen_adc1_path[9].ibuf_data1\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => adc_data_p(9),
      IB => adc_data_n(9),
      O => adc_data_ibuf_9
    );
\gen_adc1_path[9].iddre1_inst1\: unisim.vcomponents.IDDRE1
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      IS_CB_INVERTED => '1',
      IS_C_INVERTED => '0'
    )
        port map (
      C => \^clk\,
      CB => \^clk\,
      D => adc_data_idelaye3_9,
      Q1 => \gen_adc1_path[9].iddre1_inst1_n_0\,
      Q2 => \NLW_gen_adc1_path[9].iddre1_inst1_Q2_UNCONNECTED\,
      R => wr_rst
    );
\gen_adc1_path[9].idelay_inst_adc1\: unisim.vcomponents.IDELAYE3
    generic map(
      CASCADE => "MASTER",
      DELAY_FORMAT => "TIME",
      DELAY_SRC => "IDATAIN",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      LOOPBACK => "FALSE",
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => \NLW_gen_adc1_path[9].idelay_inst_adc1_CASC_IN_UNCONNECTED\,
      CASC_OUT => data_casc_out_9,
      CASC_RETURN => data_casc_ret_9,
      CE => '0',
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[9].idelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAIN => \NLW_gen_adc1_path[9].idelay_inst_adc1_DATAIN_UNCONNECTED\,
      DATAOUT => adc_data_idelaye3_9,
      EN_VTC => '1',
      IDATAIN => adc_data_ibuf_9,
      INC => '0',
      LOAD => '0',
      RST => '0'
    );
\gen_adc1_path[9].odelay_inst_adc1\: unisim.vcomponents.ODELAYE3
    generic map(
      CASCADE => "SLAVE_END",
      DELAY_FORMAT => "TIME",
      DELAY_TYPE => "FIXED",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REFCLK_FREQUENCY => 500.000000,
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => data_casc_out_9,
      CASC_OUT => \NLW_gen_adc1_path[9].odelay_inst_adc1_CASC_OUT_UNCONNECTED\,
      CASC_RETURN => \NLW_gen_adc1_path[9].odelay_inst_adc1_CASC_RETURN_UNCONNECTED\,
      CE => \NLW_gen_adc1_path[9].odelay_inst_adc1_CE_UNCONNECTED\,
      CLK => \^clk\,
      CNTVALUEIN(8 downto 0) => B"111111111",
      CNTVALUEOUT(8 downto 0) => \NLW_gen_adc1_path[9].odelay_inst_adc1_CNTVALUEOUT_UNCONNECTED\(8 downto 0),
      DATAOUT => data_casc_ret_9,
      EN_VTC => '1',
      INC => \NLW_gen_adc1_path[9].odelay_inst_adc1_INC_UNCONNECTED\,
      LOAD => \NLW_gen_adc1_path[9].odelay_inst_adc1_LOAD_UNCONNECTED\,
      ODATAIN => \NLW_gen_adc1_path[9].odelay_inst_adc1_ODATAIN_UNCONNECTED\,
      RST => \NLW_gen_adc1_path[9].odelay_inst_adc1_RST_UNCONNECTED\
    );
ibufds_dco1: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => adc_dco_p,
      IB => adc_dco_n,
      O => adc_dco_ibuf
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ZYNQ_BlockDesign_EDM_Monitor_0_0_axis_package is
  port (
    package_m_axis_tvalid : out STD_LOGIC;
    package_send_ack : out STD_LOGIC;
    s_axis_tlast : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 116 downto 0 );
    main_clk_250m : in STD_LOGIC;
    \frame_seq_id_reg[0]_0\ : in STD_LOGIC;
    package_send_req : in STD_LOGIC;
    s_axis_tready : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 100 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ZYNQ_BlockDesign_EDM_Monitor_0_0_axis_package : entity is "axis_package";
end ZYNQ_BlockDesign_EDM_Monitor_0_0_axis_package;

architecture STRUCTURE of ZYNQ_BlockDesign_EDM_Monitor_0_0_axis_package is
  signal axis_fire : STD_LOGIC;
  signal frame_data_counter : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \frame_data_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \frame_data_counter[6]_i_2_n_0\ : STD_LOGIC;
  signal \frame_data_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \frame_data_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \frame_data_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \frame_data_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \frame_data_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \frame_data_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \frame_data_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \frame_seq_id0_carry__0_n_2\ : STD_LOGIC;
  signal \frame_seq_id0_carry__0_n_3\ : STD_LOGIC;
  signal \frame_seq_id0_carry__0_n_4\ : STD_LOGIC;
  signal \frame_seq_id0_carry__0_n_5\ : STD_LOGIC;
  signal \frame_seq_id0_carry__0_n_6\ : STD_LOGIC;
  signal \frame_seq_id0_carry__0_n_7\ : STD_LOGIC;
  signal frame_seq_id0_carry_n_0 : STD_LOGIC;
  signal frame_seq_id0_carry_n_1 : STD_LOGIC;
  signal frame_seq_id0_carry_n_2 : STD_LOGIC;
  signal frame_seq_id0_carry_n_3 : STD_LOGIC;
  signal frame_seq_id0_carry_n_4 : STD_LOGIC;
  signal frame_seq_id0_carry_n_5 : STD_LOGIC;
  signal frame_seq_id0_carry_n_6 : STD_LOGIC;
  signal frame_seq_id0_carry_n_7 : STD_LOGIC;
  signal frame_seq_id_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal launch_fire : STD_LOGIC;
  signal m_axis_tlast_i_1_n_0 : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^package_m_axis_tvalid\ : STD_LOGIC;
  signal req_holdoff_i_1_n_0 : STD_LOGIC;
  signal req_holdoff_reg_n_0 : STD_LOGIC;
  signal \NLW_frame_seq_id0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_frame_seq_id0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \frame_data_counter[1]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \frame_data_counter[2]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \frame_data_counter[3]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \frame_data_counter[4]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \frame_data_counter[6]_i_1\ : label is "soft_lutpair66";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of frame_seq_id0_carry : label is 35;
  attribute ADDER_THRESHOLD of \frame_seq_id0_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of m_axis_tlast_i_1 : label is "soft_lutpair66";
begin
  package_m_axis_tvalid <= \^package_m_axis_tvalid\;
\frame_data_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \frame_data_counter_reg_n_0_[0]\,
      O => frame_data_counter(0)
    );
\frame_data_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \frame_data_counter_reg_n_0_[0]\,
      I1 => \frame_data_counter_reg_n_0_[1]\,
      O => frame_data_counter(1)
    );
\frame_data_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \frame_data_counter_reg_n_0_[0]\,
      I1 => \frame_data_counter_reg_n_0_[1]\,
      I2 => \frame_data_counter_reg_n_0_[2]\,
      O => frame_data_counter(2)
    );
\frame_data_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \frame_data_counter_reg_n_0_[3]\,
      I1 => \frame_data_counter_reg_n_0_[0]\,
      I2 => \frame_data_counter_reg_n_0_[1]\,
      I3 => \frame_data_counter_reg_n_0_[2]\,
      O => frame_data_counter(3)
    );
\frame_data_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \frame_data_counter_reg_n_0_[4]\,
      I1 => \frame_data_counter_reg_n_0_[2]\,
      I2 => \frame_data_counter_reg_n_0_[3]\,
      I3 => \frame_data_counter_reg_n_0_[0]\,
      I4 => \frame_data_counter_reg_n_0_[1]\,
      O => \frame_data_counter[4]_i_1_n_0\
    );
\frame_data_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \frame_data_counter_reg_n_0_[5]\,
      I1 => \frame_data_counter_reg_n_0_[2]\,
      I2 => \frame_data_counter_reg_n_0_[3]\,
      I3 => \frame_data_counter_reg_n_0_[0]\,
      I4 => \frame_data_counter_reg_n_0_[1]\,
      I5 => \frame_data_counter_reg_n_0_[4]\,
      O => frame_data_counter(5)
    );
\frame_data_counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \frame_data_counter_reg_n_0_[6]\,
      I1 => \frame_data_counter[6]_i_2_n_0\,
      O => frame_data_counter(6)
    );
\frame_data_counter[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \frame_data_counter_reg_n_0_[4]\,
      I1 => \frame_data_counter_reg_n_0_[1]\,
      I2 => \frame_data_counter_reg_n_0_[0]\,
      I3 => \frame_data_counter_reg_n_0_[3]\,
      I4 => \frame_data_counter_reg_n_0_[2]\,
      I5 => \frame_data_counter_reg_n_0_[5]\,
      O => \frame_data_counter[6]_i_2_n_0\
    );
\frame_data_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => axis_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => frame_data_counter(0),
      Q => \frame_data_counter_reg_n_0_[0]\
    );
\frame_data_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => axis_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => frame_data_counter(1),
      Q => \frame_data_counter_reg_n_0_[1]\
    );
\frame_data_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => axis_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => frame_data_counter(2),
      Q => \frame_data_counter_reg_n_0_[2]\
    );
\frame_data_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => axis_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => frame_data_counter(3),
      Q => \frame_data_counter_reg_n_0_[3]\
    );
\frame_data_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => axis_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => \frame_data_counter[4]_i_1_n_0\,
      Q => \frame_data_counter_reg_n_0_[4]\
    );
\frame_data_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => axis_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => frame_data_counter(5),
      Q => \frame_data_counter_reg_n_0_[5]\
    );
\frame_data_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => axis_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => frame_data_counter(6),
      Q => \frame_data_counter_reg_n_0_[6]\
    );
frame_seq_id0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => frame_seq_id_reg(0),
      CI_TOP => '0',
      CO(7) => frame_seq_id0_carry_n_0,
      CO(6) => frame_seq_id0_carry_n_1,
      CO(5) => frame_seq_id0_carry_n_2,
      CO(4) => frame_seq_id0_carry_n_3,
      CO(3) => frame_seq_id0_carry_n_4,
      CO(2) => frame_seq_id0_carry_n_5,
      CO(1) => frame_seq_id0_carry_n_6,
      CO(0) => frame_seq_id0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => p_0_in(8 downto 1),
      S(7 downto 0) => frame_seq_id_reg(8 downto 1)
    );
\frame_seq_id0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => frame_seq_id0_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_frame_seq_id0_carry__0_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \frame_seq_id0_carry__0_n_2\,
      CO(4) => \frame_seq_id0_carry__0_n_3\,
      CO(3) => \frame_seq_id0_carry__0_n_4\,
      CO(2) => \frame_seq_id0_carry__0_n_5\,
      CO(1) => \frame_seq_id0_carry__0_n_6\,
      CO(0) => \frame_seq_id0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_frame_seq_id0_carry__0_O_UNCONNECTED\(7),
      O(6 downto 0) => p_0_in(15 downto 9),
      S(7) => '0',
      S(6 downto 0) => frame_seq_id_reg(15 downto 9)
    );
\frame_seq_id[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_seq_id_reg(0),
      O => p_0_in(0)
    );
\frame_seq_id_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => axis_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => p_0_in(0),
      Q => frame_seq_id_reg(0)
    );
\frame_seq_id_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => axis_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => p_0_in(10),
      Q => frame_seq_id_reg(10)
    );
\frame_seq_id_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => axis_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => p_0_in(11),
      Q => frame_seq_id_reg(11)
    );
\frame_seq_id_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => axis_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => p_0_in(12),
      Q => frame_seq_id_reg(12)
    );
\frame_seq_id_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => axis_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => p_0_in(13),
      Q => frame_seq_id_reg(13)
    );
\frame_seq_id_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => axis_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => p_0_in(14),
      Q => frame_seq_id_reg(14)
    );
\frame_seq_id_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => axis_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => p_0_in(15),
      Q => frame_seq_id_reg(15)
    );
\frame_seq_id_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => axis_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => p_0_in(1),
      Q => frame_seq_id_reg(1)
    );
\frame_seq_id_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => axis_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => p_0_in(2),
      Q => frame_seq_id_reg(2)
    );
\frame_seq_id_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => axis_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => p_0_in(3),
      Q => frame_seq_id_reg(3)
    );
\frame_seq_id_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => axis_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => p_0_in(4),
      Q => frame_seq_id_reg(4)
    );
\frame_seq_id_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => axis_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => p_0_in(5),
      Q => frame_seq_id_reg(5)
    );
\frame_seq_id_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => axis_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => p_0_in(6),
      Q => frame_seq_id_reg(6)
    );
\frame_seq_id_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => axis_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => p_0_in(7),
      Q => frame_seq_id_reg(7)
    );
\frame_seq_id_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => axis_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => p_0_in(8),
      Q => frame_seq_id_reg(8)
    );
\frame_seq_id_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => axis_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => p_0_in(9),
      Q => frame_seq_id_reg(9)
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(0),
      Q => Q(0)
    );
\m_axis_tdata_reg[100]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(100),
      Q => Q(100)
    );
\m_axis_tdata_reg[101]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => frame_seq_id_reg(0),
      Q => Q(101)
    );
\m_axis_tdata_reg[102]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => frame_seq_id_reg(1),
      Q => Q(102)
    );
\m_axis_tdata_reg[103]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => frame_seq_id_reg(2),
      Q => Q(103)
    );
\m_axis_tdata_reg[104]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => frame_seq_id_reg(3),
      Q => Q(104)
    );
\m_axis_tdata_reg[105]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => frame_seq_id_reg(4),
      Q => Q(105)
    );
\m_axis_tdata_reg[106]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => frame_seq_id_reg(5),
      Q => Q(106)
    );
\m_axis_tdata_reg[107]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => frame_seq_id_reg(6),
      Q => Q(107)
    );
\m_axis_tdata_reg[108]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => frame_seq_id_reg(7),
      Q => Q(108)
    );
\m_axis_tdata_reg[109]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => frame_seq_id_reg(8),
      Q => Q(109)
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(10),
      Q => Q(10)
    );
\m_axis_tdata_reg[110]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => frame_seq_id_reg(9),
      Q => Q(110)
    );
\m_axis_tdata_reg[111]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => frame_seq_id_reg(10),
      Q => Q(111)
    );
\m_axis_tdata_reg[112]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => frame_seq_id_reg(11),
      Q => Q(112)
    );
\m_axis_tdata_reg[113]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => frame_seq_id_reg(12),
      Q => Q(113)
    );
\m_axis_tdata_reg[114]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => frame_seq_id_reg(13),
      Q => Q(114)
    );
\m_axis_tdata_reg[115]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => frame_seq_id_reg(14),
      Q => Q(115)
    );
\m_axis_tdata_reg[116]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => frame_seq_id_reg(15),
      Q => Q(116)
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(11),
      Q => Q(11)
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(12),
      Q => Q(12)
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(13),
      Q => Q(13)
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(14),
      Q => Q(14)
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(15),
      Q => Q(15)
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(16),
      Q => Q(16)
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(17),
      Q => Q(17)
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(18),
      Q => Q(18)
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(19),
      Q => Q(19)
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(1),
      Q => Q(1)
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(20),
      Q => Q(20)
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(21),
      Q => Q(21)
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(22),
      Q => Q(22)
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(23),
      Q => Q(23)
    );
\m_axis_tdata_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(24),
      Q => Q(24)
    );
\m_axis_tdata_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(25),
      Q => Q(25)
    );
\m_axis_tdata_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(26),
      Q => Q(26)
    );
\m_axis_tdata_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(27),
      Q => Q(27)
    );
\m_axis_tdata_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(28),
      Q => Q(28)
    );
\m_axis_tdata_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(29),
      Q => Q(29)
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(2),
      Q => Q(2)
    );
\m_axis_tdata_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(30),
      Q => Q(30)
    );
\m_axis_tdata_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(31),
      Q => Q(31)
    );
\m_axis_tdata_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(32),
      Q => Q(32)
    );
\m_axis_tdata_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(33),
      Q => Q(33)
    );
\m_axis_tdata_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(34),
      Q => Q(34)
    );
\m_axis_tdata_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(35),
      Q => Q(35)
    );
\m_axis_tdata_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(36),
      Q => Q(36)
    );
\m_axis_tdata_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(37),
      Q => Q(37)
    );
\m_axis_tdata_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(38),
      Q => Q(38)
    );
\m_axis_tdata_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(39),
      Q => Q(39)
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(3),
      Q => Q(3)
    );
\m_axis_tdata_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(40),
      Q => Q(40)
    );
\m_axis_tdata_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(41),
      Q => Q(41)
    );
\m_axis_tdata_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(42),
      Q => Q(42)
    );
\m_axis_tdata_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(43),
      Q => Q(43)
    );
\m_axis_tdata_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(44),
      Q => Q(44)
    );
\m_axis_tdata_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(45),
      Q => Q(45)
    );
\m_axis_tdata_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(46),
      Q => Q(46)
    );
\m_axis_tdata_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(47),
      Q => Q(47)
    );
\m_axis_tdata_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(48),
      Q => Q(48)
    );
\m_axis_tdata_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(49),
      Q => Q(49)
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(4),
      Q => Q(4)
    );
\m_axis_tdata_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(50),
      Q => Q(50)
    );
\m_axis_tdata_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(51),
      Q => Q(51)
    );
\m_axis_tdata_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(52),
      Q => Q(52)
    );
\m_axis_tdata_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(53),
      Q => Q(53)
    );
\m_axis_tdata_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(54),
      Q => Q(54)
    );
\m_axis_tdata_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(55),
      Q => Q(55)
    );
\m_axis_tdata_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(56),
      Q => Q(56)
    );
\m_axis_tdata_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(57),
      Q => Q(57)
    );
\m_axis_tdata_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(58),
      Q => Q(58)
    );
\m_axis_tdata_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(59),
      Q => Q(59)
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(5),
      Q => Q(5)
    );
\m_axis_tdata_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(60),
      Q => Q(60)
    );
\m_axis_tdata_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(61),
      Q => Q(61)
    );
\m_axis_tdata_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(62),
      Q => Q(62)
    );
\m_axis_tdata_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(63),
      Q => Q(63)
    );
\m_axis_tdata_reg[64]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(64),
      Q => Q(64)
    );
\m_axis_tdata_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(65),
      Q => Q(65)
    );
\m_axis_tdata_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(66),
      Q => Q(66)
    );
\m_axis_tdata_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(67),
      Q => Q(67)
    );
\m_axis_tdata_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(68),
      Q => Q(68)
    );
\m_axis_tdata_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(69),
      Q => Q(69)
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(6),
      Q => Q(6)
    );
\m_axis_tdata_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(70),
      Q => Q(70)
    );
\m_axis_tdata_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(71),
      Q => Q(71)
    );
\m_axis_tdata_reg[72]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(72),
      Q => Q(72)
    );
\m_axis_tdata_reg[73]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(73),
      Q => Q(73)
    );
\m_axis_tdata_reg[74]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(74),
      Q => Q(74)
    );
\m_axis_tdata_reg[75]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(75),
      Q => Q(75)
    );
\m_axis_tdata_reg[76]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(76),
      Q => Q(76)
    );
\m_axis_tdata_reg[77]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(77),
      Q => Q(77)
    );
\m_axis_tdata_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(78),
      Q => Q(78)
    );
\m_axis_tdata_reg[79]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(79),
      Q => Q(79)
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(7),
      Q => Q(7)
    );
\m_axis_tdata_reg[80]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(80),
      Q => Q(80)
    );
\m_axis_tdata_reg[81]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(81),
      Q => Q(81)
    );
\m_axis_tdata_reg[82]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(82),
      Q => Q(82)
    );
\m_axis_tdata_reg[83]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(83),
      Q => Q(83)
    );
\m_axis_tdata_reg[84]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(84),
      Q => Q(84)
    );
\m_axis_tdata_reg[85]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(85),
      Q => Q(85)
    );
\m_axis_tdata_reg[86]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(86),
      Q => Q(86)
    );
\m_axis_tdata_reg[87]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(87),
      Q => Q(87)
    );
\m_axis_tdata_reg[88]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(88),
      Q => Q(88)
    );
\m_axis_tdata_reg[89]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(89),
      Q => Q(89)
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(8),
      Q => Q(8)
    );
\m_axis_tdata_reg[90]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(90),
      Q => Q(90)
    );
\m_axis_tdata_reg[91]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(91),
      Q => Q(91)
    );
\m_axis_tdata_reg[92]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(92),
      Q => Q(92)
    );
\m_axis_tdata_reg[93]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(93),
      Q => Q(93)
    );
\m_axis_tdata_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(94),
      Q => Q(94)
    );
\m_axis_tdata_reg[95]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(95),
      Q => Q(95)
    );
\m_axis_tdata_reg[96]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(96),
      Q => Q(96)
    );
\m_axis_tdata_reg[97]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(97),
      Q => Q(97)
    );
\m_axis_tdata_reg[98]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(98),
      Q => Q(98)
    );
\m_axis_tdata_reg[99]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(99),
      Q => Q(99)
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => launch_fire,
      CLR => \frame_seq_id_reg[0]_0\,
      D => D(9),
      Q => Q(9)
    );
m_axis_tlast_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => req_holdoff_reg_n_0,
      I1 => package_send_req,
      I2 => \^package_m_axis_tvalid\,
      I3 => \frame_data_counter_reg_n_0_[6]\,
      I4 => \frame_data_counter[6]_i_2_n_0\,
      O => m_axis_tlast_i_1_n_0
    );
m_axis_tlast_reg: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => m_axis_tvalid_i_1_n_0,
      CLR => \frame_seq_id_reg[0]_0\,
      D => m_axis_tlast_i_1_n_0,
      Q => s_axis_tlast
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F404"
    )
        port map (
      I0 => req_holdoff_reg_n_0,
      I1 => package_send_req,
      I2 => \^package_m_axis_tvalid\,
      I3 => s_axis_tready,
      O => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^package_m_axis_tvalid\,
      I1 => package_send_req,
      I2 => req_holdoff_reg_n_0,
      O => launch_fire
    );
m_axis_tvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => m_axis_tvalid_i_1_n_0,
      CLR => \frame_seq_id_reg[0]_0\,
      D => launch_fire,
      Q => \^package_m_axis_tvalid\
    );
req_holdoff_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => req_holdoff_reg_n_0,
      I1 => \^package_m_axis_tvalid\,
      I2 => package_send_req,
      O => req_holdoff_i_1_n_0
    );
req_holdoff_reg: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \frame_seq_id_reg[0]_0\,
      D => req_holdoff_i_1_n_0,
      Q => req_holdoff_reg_n_0
    );
send_ack_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_tready,
      I1 => \^package_m_axis_tvalid\,
      O => axis_fire
    );
send_ack_reg: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \frame_seq_id_reg[0]_0\,
      D => axis_fire,
      Q => package_send_ack
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ZYNQ_BlockDesign_EDM_Monitor_0_0_pow_calc is
  port (
    P : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sample_fire : out STD_LOGIC;
    pow_m_axis_tvalid : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    pow_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : in STD_LOGIC;
    main_clk_250m : in STD_LOGIC;
    m_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sw_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \window_pipe_reg[31][31]_srl32\ : in STD_LOGIC;
    m_axis_tvalid_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ZYNQ_BlockDesign_EDM_Monitor_0_0_pow_calc : entity is "pow_calc";
end ZYNQ_BlockDesign_EDM_Monitor_0_0_pow_calc;

architecture STRUCTURE of ZYNQ_BlockDesign_EDM_Monitor_0_0_pow_calc is
  signal \^p\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^pow_m_axis_tvalid\ : STD_LOGIC;
  signal NLW_m_axis_tdata0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_m_axis_tdata0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_m_axis_tdata0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_m_axis_tdata0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_m_axis_tdata0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_m_axis_tdata0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_m_axis_tdata0_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_m_axis_tdata0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_m_axis_tdata0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m_axis_tdata0_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_m_axis_tdata0_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_m_axis_tdata0_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of m_axis_tdata0 : label is "YES";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of m_axis_tdata0 : label is "{SYNTH-12 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \shift_count[6]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \shift_count_d[0]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \shift_count_d[1]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \shift_count_d[4]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \shift_count_d[5]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][0]_srl32_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][10]_srl32_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][11]_srl32_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][12]_srl32_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][13]_srl32_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][14]_srl32_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][15]_srl32_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][16]_srl32_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][17]_srl32_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][18]_srl32_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][19]_srl32_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][1]_srl32_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][20]_srl32_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][21]_srl32_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][22]_srl32_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][23]_srl32_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][24]_srl32_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][25]_srl32_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][26]_srl32_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][27]_srl32_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][28]_srl32_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][29]_srl32_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][2]_srl32_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][30]_srl32_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][31]_srl32_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][31]_srl32_i_2\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][3]_srl32_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][4]_srl32_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][5]_srl32_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][6]_srl32_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][7]_srl32_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][8]_srl32_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \window_pipe_reg[31][9]_srl32_i_1\ : label is "soft_lutpair76";
begin
  P(31 downto 0) <= \^p\(31 downto 0);
  pow_m_axis_tvalid <= \^pow_m_axis_tvalid\;
m_axis_tdata0: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => m_axis_data_tdata(15),
      A(28) => m_axis_data_tdata(15),
      A(27) => m_axis_data_tdata(15),
      A(26) => m_axis_data_tdata(15),
      A(25) => m_axis_data_tdata(15),
      A(24) => m_axis_data_tdata(15),
      A(23) => m_axis_data_tdata(15),
      A(22) => m_axis_data_tdata(15),
      A(21) => m_axis_data_tdata(15),
      A(20) => m_axis_data_tdata(15),
      A(19) => m_axis_data_tdata(15),
      A(18) => m_axis_data_tdata(15),
      A(17) => m_axis_data_tdata(15),
      A(16) => m_axis_data_tdata(15),
      A(15 downto 0) => m_axis_data_tdata(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_m_axis_tdata0_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => m_axis_data_tdata(15),
      B(16) => m_axis_data_tdata(15),
      B(15 downto 0) => m_axis_data_tdata(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_m_axis_tdata0_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_m_axis_tdata0_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_m_axis_tdata0_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => m_axis_data_tvalid,
      CLK => main_clk_250m,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_m_axis_tdata0_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => NLW_m_axis_tdata0_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_m_axis_tdata0_P_UNCONNECTED(47 downto 32),
      P(31 downto 0) => \^p\(31 downto 0),
      PATTERNBDETECT => NLW_m_axis_tdata0_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_m_axis_tdata0_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_m_axis_tdata0_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_m_axis_tdata0_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_m_axis_tdata0_XOROUT_UNCONNECTED(7 downto 0)
    );
m_axis_tvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => m_axis_tvalid_reg_0,
      D => m_axis_data_tvalid,
      Q => \^pow_m_axis_tvalid\
    );
\shift_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^pow_m_axis_tvalid\,
      I1 => sw_en,
      O => E(0)
    );
\shift_count_d[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^pow_m_axis_tvalid\,
      I1 => Q(0),
      I2 => sw_en,
      O => D(0)
    );
\shift_count_d[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^pow_m_axis_tvalid\,
      I1 => Q(1),
      I2 => sw_en,
      O => D(1)
    );
\shift_count_d[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^pow_m_axis_tvalid\,
      I1 => Q(2),
      I2 => sw_en,
      O => D(2)
    );
\shift_count_d[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^pow_m_axis_tvalid\,
      I1 => Q(3),
      I2 => sw_en,
      O => D(3)
    );
\window_pipe_reg[31][0]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(0),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(0)
    );
\window_pipe_reg[31][10]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(10),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(10)
    );
\window_pipe_reg[31][11]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(11),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(11)
    );
\window_pipe_reg[31][12]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(12),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(12)
    );
\window_pipe_reg[31][13]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(13),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(13)
    );
\window_pipe_reg[31][14]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(14),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(14)
    );
\window_pipe_reg[31][15]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(15),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(15)
    );
\window_pipe_reg[31][16]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(16),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(16)
    );
\window_pipe_reg[31][17]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(17),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(17)
    );
\window_pipe_reg[31][18]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(18),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(18)
    );
\window_pipe_reg[31][19]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(19),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(19)
    );
\window_pipe_reg[31][1]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(1),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(1)
    );
\window_pipe_reg[31][20]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(20),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(20)
    );
\window_pipe_reg[31][21]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(21),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(21)
    );
\window_pipe_reg[31][22]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(22),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(22)
    );
\window_pipe_reg[31][23]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(23),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(23)
    );
\window_pipe_reg[31][24]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(24),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(24)
    );
\window_pipe_reg[31][25]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(25),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(25)
    );
\window_pipe_reg[31][26]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(26),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(26)
    );
\window_pipe_reg[31][27]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(27),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(27)
    );
\window_pipe_reg[31][28]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(28),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(28)
    );
\window_pipe_reg[31][29]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(29),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(29)
    );
\window_pipe_reg[31][2]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(2),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(2)
    );
\window_pipe_reg[31][30]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(30),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(30)
    );
\window_pipe_reg[31][31]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^pow_m_axis_tvalid\,
      I1 => sw_en,
      O => sample_fire
    );
\window_pipe_reg[31][31]_srl32_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(31),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(31)
    );
\window_pipe_reg[31][3]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(3),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(3)
    );
\window_pipe_reg[31][4]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(4),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(4)
    );
\window_pipe_reg[31][5]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(5),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(5)
    );
\window_pipe_reg[31][6]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(6),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(6)
    );
\window_pipe_reg[31][7]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(7),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(7)
    );
\window_pipe_reg[31][8]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(8),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(8)
    );
\window_pipe_reg[31][9]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p\(9),
      I1 => \window_pipe_reg[31][31]_srl32\,
      O => pow_data(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ZYNQ_BlockDesign_EDM_Monitor_0_0_reset_sync_n is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sync_ff_reg[2]_0\ : out STD_LOGIC;
    rst_n_async_0 : out STD_LOGIC;
    rst_n_async : in STD_LOGIC;
    locked : in STD_LOGIC;
    main_clk_250m : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ZYNQ_BlockDesign_EDM_Monitor_0_0_reset_sync_n : entity is "reset_sync_n";
end ZYNQ_BlockDesign_EDM_Monitor_0_0_reset_sync_n;

architecture STRUCTURE of ZYNQ_BlockDesign_EDM_Monitor_0_0_reset_sync_n is
  signal \^rst_n_async_0\ : STD_LOGIC;
  signal sync_ff : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync_ff : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync_ff_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync_ff_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync_ff_reg[2]\ : label is "yes";
begin
  \out\(0) <= sync_ff(2);
  rst_n_async_0 <= \^rst_n_async_0\;
stop_signal_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sync_ff(2),
      O => \sync_ff_reg[2]_0\
    );
\sync_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => rst_n_async,
      I1 => locked,
      O => \^rst_n_async_0\
    );
\sync_ff_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \^rst_n_async_0\,
      D => '1',
      Q => sync_ff(0)
    );
\sync_ff_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \^rst_n_async_0\,
      D => sync_ff(0),
      Q => sync_ff(1)
    );
\sync_ff_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \^rst_n_async_0\,
      D => sync_ff(1),
      Q => sync_ff(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ZYNQ_BlockDesign_EDM_Monitor_0_0_reset_sync_n_0 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_rst : out STD_LOGIC;
    CLK : in STD_LOGIC;
    \sync_ff_reg[2]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ZYNQ_BlockDesign_EDM_Monitor_0_0_reset_sync_n_0 : entity is "reset_sync_n";
end ZYNQ_BlockDesign_EDM_Monitor_0_0_reset_sync_n_0;

architecture STRUCTURE of ZYNQ_BlockDesign_EDM_Monitor_0_0_reset_sync_n_0 is
  signal sync_ff : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync_ff : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync_ff_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync_ff_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync_ff_reg[2]\ : label is "yes";
begin
  \out\(0) <= sync_ff(2);
\gen_adc1_path[0].iddre1_inst1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sync_ff(2),
      O => wr_rst
    );
\sync_ff_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \sync_ff_reg[2]_0\,
      D => '1',
      Q => sync_ff(0)
    );
\sync_ff_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \sync_ff_reg[2]_0\,
      D => sync_ff(0),
      Q => sync_ff(1)
    );
\sync_ff_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \sync_ff_reg[2]_0\,
      D => sync_ff(1),
      Q => sync_ff(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ZYNQ_BlockDesign_EDM_Monitor_0_0_slide_window is
  port (
    enable_d : out STD_LOGIC;
    sw_result_valid : out STD_LOGIC;
    cfg_update_sync : out STD_LOGIC;
    cfg_update_sync_d : out STD_LOGIC;
    \energy_accumulator_reg[6]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \energy_accumulator_reg[14]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \energy_accumulator_reg[22]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \energy_accumulator_reg[30]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \energy_accumulator_reg[38]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \energy_accumulator_reg[46]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \energy_accumulator_reg[54]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    power_stop_signal : out STD_LOGIC;
    \energy_init_reg[63]_0\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    \status_reg[3]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    sw_en : in STD_LOGIC;
    main_clk_250m : in STD_LOGIC;
    \energy_threshold_active_reg[63]_0\ : in STD_LOGIC;
    result_valid_reg_0 : in STD_LOGIC;
    cfg_update_toggle : in STD_LOGIC;
    sample_fire : in STD_LOGIC;
    pow_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pow_m_axis_tvalid : in STD_LOGIC;
    \energy_accumulator0__0_carry__3_0\ : in STD_LOGIC;
    P : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cfg_energy_threshold : in STD_LOGIC_VECTOR ( 63 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \shift_count_d_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ZYNQ_BlockDesign_EDM_Monitor_0_0_slide_window : entity is "slide_window";
end ZYNQ_BlockDesign_EDM_Monitor_0_0_slide_window;

architecture STRUCTURE of ZYNQ_BlockDesign_EDM_Monitor_0_0_slide_window is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal cfg_update_meta : STD_LOGIC;
  signal cfg_update_pending1 : STD_LOGIC;
  signal \cfg_update_pending_i_1__0_n_0\ : STD_LOGIC;
  signal cfg_update_pending_reg_n_0 : STD_LOGIC;
  signal \^cfg_update_sync\ : STD_LOGIC;
  signal \^cfg_update_sync_d\ : STD_LOGIC;
  signal \^enable_d\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_n_1\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_n_2\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_n_3\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_n_4\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_n_5\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_n_6\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__0_n_7\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_i_15_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_i_16_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_n_1\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_n_2\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_n_3\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_n_4\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_n_5\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_n_6\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__1_n_7\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_i_12_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_i_13_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_i_14_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_i_15_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_i_16_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_n_1\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_n_2\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_n_3\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_n_4\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_n_5\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_n_6\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__2_n_7\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_i_10_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_i_11_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_i_12_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_i_13_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_i_14_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_i_15_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_i_16_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_i_9_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_n_1\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_n_2\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_n_3\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_n_4\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_n_5\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_n_6\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__3_n_7\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_i_10_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_i_11_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_i_12_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_i_13_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_i_14_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_i_15_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_i_16_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_i_5_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_i_6_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_i_7_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_i_8_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_i_9_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_n_1\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_n_2\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_n_3\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_n_4\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_n_5\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_n_6\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__4_n_7\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_i_10_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_i_11_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_i_12_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_i_13_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_i_14_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_i_15_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_i_16_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_i_5_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_i_6_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_i_7_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_i_8_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_i_9_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_n_1\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_n_2\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_n_3\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_n_4\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_n_5\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_n_6\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__5_n_7\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__6_i_10_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__6_i_11_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__6_i_12_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__6_i_13_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__6_i_14_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__6_i_15_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__6_i_5_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__6_i_6_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__6_i_7_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__6_i_8_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__6_i_9_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__6_n_1\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__6_n_2\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__6_n_3\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__6_n_4\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__6_n_5\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__6_n_6\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry__6_n_7\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_i_10_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_i_11_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_i_12_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_i_13_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_i_14_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_i_15_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_i_16_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_i_7_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_i_8_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_i_9_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_n_1\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_n_2\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_n_3\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_n_4\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_n_5\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_n_6\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_n_7\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[0]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[10]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[11]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[12]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[13]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[14]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[15]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[16]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[17]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[18]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[19]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[1]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[20]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[21]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[22]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[23]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[24]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[25]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[26]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[27]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[28]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[29]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[2]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[30]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[31]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[32]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[33]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[34]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[35]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[36]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[37]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[38]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[39]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[3]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[40]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[41]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[42]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[43]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[44]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[45]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[46]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[47]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[48]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[49]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[4]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[50]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[51]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[52]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[53]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[54]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[55]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[56]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[57]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[58]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[59]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[5]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[60]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[61]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[62]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[63]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[6]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[7]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[8]\ : STD_LOGIC;
  signal \energy_accumulator_reg_n_0_[9]\ : STD_LOGIC;
  signal \energy_init[63]_i_2_n_0\ : STD_LOGIC;
  signal energy_threshold_active : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 62 to 62 );
  signal \^power_stop_signal\ : STD_LOGIC;
  signal \shift_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \shift_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \shift_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \shift_count[2]_i_2_n_0\ : STD_LOGIC;
  signal \shift_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \shift_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \shift_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \shift_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \shift_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \shift_count[6]_i_2_n_0\ : STD_LOGIC;
  signal \shift_count[6]_i_3_n_0\ : STD_LOGIC;
  signal shift_count_d : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal shift_count_max_reached : STD_LOGIC;
  signal status : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \status1_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \status1_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \status1_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \status1_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \status1_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \status1_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \status1_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \status1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \status1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \status1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \status1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \status1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \status1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \status1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \status1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \status1_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \status1_carry__0_n_0\ : STD_LOGIC;
  signal \status1_carry__0_n_1\ : STD_LOGIC;
  signal \status1_carry__0_n_2\ : STD_LOGIC;
  signal \status1_carry__0_n_3\ : STD_LOGIC;
  signal \status1_carry__0_n_4\ : STD_LOGIC;
  signal \status1_carry__0_n_5\ : STD_LOGIC;
  signal \status1_carry__0_n_6\ : STD_LOGIC;
  signal \status1_carry__0_n_7\ : STD_LOGIC;
  signal \status1_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \status1_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \status1_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \status1_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \status1_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \status1_carry__1_i_15_n_0\ : STD_LOGIC;
  signal \status1_carry__1_i_16_n_0\ : STD_LOGIC;
  signal \status1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \status1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \status1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \status1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \status1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \status1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \status1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \status1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \status1_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \status1_carry__1_n_0\ : STD_LOGIC;
  signal \status1_carry__1_n_1\ : STD_LOGIC;
  signal \status1_carry__1_n_2\ : STD_LOGIC;
  signal \status1_carry__1_n_3\ : STD_LOGIC;
  signal \status1_carry__1_n_4\ : STD_LOGIC;
  signal \status1_carry__1_n_5\ : STD_LOGIC;
  signal \status1_carry__1_n_6\ : STD_LOGIC;
  signal \status1_carry__1_n_7\ : STD_LOGIC;
  signal \status1_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \status1_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \status1_carry__2_i_12_n_0\ : STD_LOGIC;
  signal \status1_carry__2_i_13_n_0\ : STD_LOGIC;
  signal \status1_carry__2_i_14_n_0\ : STD_LOGIC;
  signal \status1_carry__2_i_15_n_0\ : STD_LOGIC;
  signal \status1_carry__2_i_16_n_0\ : STD_LOGIC;
  signal \status1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \status1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \status1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \status1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \status1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \status1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \status1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \status1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \status1_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \status1_carry__2_n_0\ : STD_LOGIC;
  signal \status1_carry__2_n_1\ : STD_LOGIC;
  signal \status1_carry__2_n_2\ : STD_LOGIC;
  signal \status1_carry__2_n_3\ : STD_LOGIC;
  signal \status1_carry__2_n_4\ : STD_LOGIC;
  signal \status1_carry__2_n_5\ : STD_LOGIC;
  signal \status1_carry__2_n_6\ : STD_LOGIC;
  signal \status1_carry__2_n_7\ : STD_LOGIC;
  signal status1_carry_i_10_n_0 : STD_LOGIC;
  signal status1_carry_i_11_n_0 : STD_LOGIC;
  signal status1_carry_i_12_n_0 : STD_LOGIC;
  signal status1_carry_i_13_n_0 : STD_LOGIC;
  signal status1_carry_i_14_n_0 : STD_LOGIC;
  signal status1_carry_i_15_n_0 : STD_LOGIC;
  signal status1_carry_i_16_n_0 : STD_LOGIC;
  signal status1_carry_i_1_n_0 : STD_LOGIC;
  signal status1_carry_i_2_n_0 : STD_LOGIC;
  signal status1_carry_i_3_n_0 : STD_LOGIC;
  signal status1_carry_i_4_n_0 : STD_LOGIC;
  signal status1_carry_i_5_n_0 : STD_LOGIC;
  signal status1_carry_i_6_n_0 : STD_LOGIC;
  signal status1_carry_i_7_n_0 : STD_LOGIC;
  signal status1_carry_i_8_n_0 : STD_LOGIC;
  signal status1_carry_i_9_n_0 : STD_LOGIC;
  signal status1_carry_n_0 : STD_LOGIC;
  signal status1_carry_n_1 : STD_LOGIC;
  signal status1_carry_n_2 : STD_LOGIC;
  signal status1_carry_n_3 : STD_LOGIC;
  signal status1_carry_n_4 : STD_LOGIC;
  signal status1_carry_n_5 : STD_LOGIC;
  signal status1_carry_n_6 : STD_LOGIC;
  signal status1_carry_n_7 : STD_LOGIC;
  signal \status[3]_i_1_n_0\ : STD_LOGIC;
  signal stop_signal_i_1_n_0 : STD_LOGIC;
  signal stop_signal_i_4_n_0 : STD_LOGIC;
  signal \window_pipe_reg[31][0]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][10]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][11]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][12]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][13]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][14]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][15]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][16]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][17]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][18]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][19]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][1]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][20]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][21]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][22]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][23]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][24]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][25]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][26]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][27]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][28]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][29]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][2]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][30]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][31]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][3]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][4]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][5]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][6]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][7]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][8]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[31][9]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][0]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][10]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][11]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][12]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][13]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][14]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][15]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][16]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][17]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][18]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][19]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][1]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][20]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][21]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][22]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][23]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][24]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][25]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][26]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][27]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][28]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][29]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][2]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][30]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][31]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][3]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][4]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][5]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][6]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][7]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][8]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[63][9]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][0]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][10]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][11]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][12]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][13]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][14]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][15]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][16]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][17]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][18]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][19]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][1]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][20]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][21]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][22]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][23]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][24]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][25]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][26]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][27]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][28]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][29]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][2]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][30]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][31]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][3]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][4]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][5]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][6]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][7]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][8]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[95][9]_srl32_n_1\ : STD_LOGIC;
  signal \window_pipe_reg[98][0]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][10]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][11]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][12]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][13]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][14]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][15]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][16]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][17]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][18]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][19]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][1]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][20]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][21]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][22]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][23]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][24]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][25]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][26]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][27]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][28]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][29]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][2]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][30]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][31]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][3]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][4]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][5]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][6]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][7]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][8]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[98][9]_srl3_n_0\ : STD_LOGIC;
  signal \window_pipe_reg[99]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_energy_accumulator0__0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_status1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_status1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_status1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_status1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_window_pipe_reg[31][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][10]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][11]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][12]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][13]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][14]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][15]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][16]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][17]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][18]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][19]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][20]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][21]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][22]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][23]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][24]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][25]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][26]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][27]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][28]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][29]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][2]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][30]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][31]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][3]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][4]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][5]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][6]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][7]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][8]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[31][9]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][10]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][11]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][12]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][13]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][14]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][15]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][16]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][17]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][18]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][19]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][20]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][21]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][22]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][23]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][24]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][25]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][26]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][27]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][28]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][29]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][2]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][30]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][31]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][3]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][4]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][5]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][6]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][7]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][8]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[63][9]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][10]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][11]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][12]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][13]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][14]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][15]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][16]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][17]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][18]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][19]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][20]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][21]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][22]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][23]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][24]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][25]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][26]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][27]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][28]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][29]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][2]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][30]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][31]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][3]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][4]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][5]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][6]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][7]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][8]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[95][9]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][0]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][10]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][11]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][12]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][13]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][14]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][15]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][16]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][17]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][18]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][19]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][1]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][20]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][21]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][22]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][23]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][24]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][25]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][26]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][27]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][28]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][29]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][2]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][30]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][31]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][3]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][4]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][5]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][6]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][7]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][8]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_window_pipe_reg[98][9]_srl3_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \energy_accumulator0__0_carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \energy_accumulator0__0_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \energy_accumulator0__0_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \energy_accumulator0__0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \energy_accumulator0__0_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \energy_accumulator0__0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \energy_accumulator0__0_carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \energy_accumulator0__0_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \energy_accumulator0__0_carry__3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \energy_accumulator0__0_carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \energy_accumulator0__0_carry__4\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \energy_accumulator0__0_carry__4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \energy_accumulator0__0_carry__5\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \energy_accumulator0__0_carry__5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \energy_accumulator0__0_carry__6\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \energy_accumulator0__0_carry__6\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \shift_count[0]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \shift_count[1]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \shift_count[2]_i_2\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \shift_count[4]_i_2\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \shift_count[5]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \shift_count[6]_i_2\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \shift_count[6]_i_3\ : label is "soft_lutpair91";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of status1_carry : label is 11;
  attribute METHODOLOGY_DRC_VIOS of status1_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \status1_carry__0\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \status1_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \status1_carry__1\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \status1_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \status1_carry__2\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \status1_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \status[2]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \status[3]_i_2\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of stop_signal_i_4 : label is "soft_lutpair88";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \window_pipe_reg[31][0]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name : string;
  attribute srl_name of \window_pipe_reg[31][0]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][0]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][10]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][10]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][10]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][11]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][11]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][11]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][12]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][12]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][12]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][13]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][13]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][13]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][14]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][14]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][14]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][15]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][15]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][15]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][16]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][16]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][16]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][17]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][17]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][17]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][18]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][18]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][18]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][19]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][19]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][19]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][1]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][1]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][1]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][20]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][20]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][20]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][21]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][21]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][21]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][22]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][22]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][22]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][23]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][23]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][23]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][24]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][24]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][24]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][25]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][25]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][25]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][26]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][26]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][26]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][27]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][27]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][27]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][28]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][28]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][28]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][29]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][29]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][29]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][2]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][2]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][2]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][30]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][30]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][30]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][31]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][31]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][31]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][3]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][3]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][3]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][4]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][4]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][4]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][5]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][5]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][5]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][6]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][6]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][6]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][7]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][7]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][7]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][8]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][8]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][8]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[31][9]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31] ";
  attribute srl_name of \window_pipe_reg[31][9]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[31][9]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][0]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][0]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][0]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][10]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][10]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][10]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][11]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][11]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][11]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][12]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][12]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][12]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][13]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][13]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][13]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][14]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][14]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][14]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][15]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][15]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][15]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][16]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][16]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][16]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][17]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][17]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][17]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][18]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][18]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][18]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][19]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][19]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][19]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][1]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][1]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][1]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][20]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][20]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][20]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][21]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][21]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][21]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][22]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][22]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][22]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][23]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][23]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][23]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][24]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][24]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][24]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][25]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][25]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][25]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][26]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][26]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][26]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][27]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][27]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][27]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][28]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][28]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][28]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][29]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][29]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][29]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][2]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][2]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][2]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][30]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][30]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][30]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][31]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][31]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][31]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][3]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][3]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][3]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][4]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][4]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][4]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][5]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][5]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][5]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][6]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][6]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][6]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][7]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][7]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][7]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][8]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][8]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][8]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[63][9]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63] ";
  attribute srl_name of \window_pipe_reg[63][9]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[63][9]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][0]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][0]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][0]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][10]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][10]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][10]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][11]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][11]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][11]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][12]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][12]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][12]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][13]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][13]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][13]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][14]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][14]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][14]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][15]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][15]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][15]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][16]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][16]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][16]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][17]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][17]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][17]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][18]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][18]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][18]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][19]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][19]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][19]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][1]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][1]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][1]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][20]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][20]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][20]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][21]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][21]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][21]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][22]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][22]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][22]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][23]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][23]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][23]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][24]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][24]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][24]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][25]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][25]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][25]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][26]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][26]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][26]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][27]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][27]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][27]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][28]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][28]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][28]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][29]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][29]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][29]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][2]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][2]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][2]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][30]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][30]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][30]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][31]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][31]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][31]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][3]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][3]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][3]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][4]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][4]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][4]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][5]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][5]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][5]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][6]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][6]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][6]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][7]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][7]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][7]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][8]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][8]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][8]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[95][9]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95] ";
  attribute srl_name of \window_pipe_reg[95][9]_srl32\ : label is "inst/\u_slide_window/window_pipe_reg[95][9]_srl32 ";
  attribute srl_bus_name of \window_pipe_reg[98][0]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][0]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][0]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][10]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][10]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][10]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][11]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][11]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][11]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][12]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][12]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][12]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][13]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][13]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][13]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][14]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][14]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][14]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][15]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][15]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][15]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][16]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][16]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][16]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][17]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][17]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][17]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][18]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][18]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][18]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][19]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][19]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][19]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][1]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][1]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][1]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][20]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][20]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][20]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][21]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][21]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][21]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][22]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][22]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][22]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][23]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][23]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][23]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][24]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][24]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][24]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][25]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][25]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][25]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][26]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][26]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][26]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][27]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][27]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][27]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][28]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][28]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][28]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][29]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][29]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][29]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][2]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][2]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][2]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][30]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][30]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][30]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][31]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][31]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][31]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][3]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][3]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][3]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][4]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][4]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][4]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][5]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][5]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][5]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][6]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][6]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][6]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][7]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][7]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][7]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][8]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][8]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][8]_srl3 ";
  attribute srl_bus_name of \window_pipe_reg[98][9]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98] ";
  attribute srl_name of \window_pipe_reg[98][9]_srl3\ : label is "inst/\u_slide_window/window_pipe_reg[98][9]_srl3 ";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
  cfg_update_sync <= \^cfg_update_sync\;
  cfg_update_sync_d <= \^cfg_update_sync_d\;
  enable_d <= \^enable_d\;
  power_stop_signal <= \^power_stop_signal\;
cfg_update_meta_reg: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_update_toggle,
      Q => cfg_update_meta
    );
\cfg_update_pending_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F066"
    )
        port map (
      I0 => \^cfg_update_sync_d\,
      I1 => \^cfg_update_sync\,
      I2 => sw_en,
      I3 => cfg_update_pending_reg_n_0,
      O => \cfg_update_pending_i_1__0_n_0\
    );
cfg_update_pending_reg: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \cfg_update_pending_i_1__0_n_0\,
      Q => cfg_update_pending_reg_n_0
    );
cfg_update_sync_d_reg: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \^cfg_update_sync\,
      Q => \^cfg_update_sync_d\
    );
cfg_update_sync_reg: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_update_meta,
      Q => \^cfg_update_sync\
    );
enable_d_reg: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \energy_threshold_active_reg[63]_0\,
      D => sw_en,
      Q => \^enable_d\
    );
\energy_accumulator0__0_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \energy_accumulator0__0_carry_n_0\,
      CO(6) => \energy_accumulator0__0_carry_n_1\,
      CO(5) => \energy_accumulator0__0_carry_n_2\,
      CO(4) => \energy_accumulator0__0_carry_n_3\,
      CO(3) => \energy_accumulator0__0_carry_n_4\,
      CO(2) => \energy_accumulator0__0_carry_n_5\,
      CO(1) => \energy_accumulator0__0_carry_n_6\,
      CO(0) => \energy_accumulator0__0_carry_n_7\,
      DI(7) => \energy_accumulator0__0_carry_i_1_n_0\,
      DI(6) => \energy_accumulator0__0_carry_i_2_n_0\,
      DI(5) => \energy_accumulator0__0_carry_i_3_n_0\,
      DI(4) => \energy_accumulator0__0_carry_i_4_n_0\,
      DI(3) => \energy_accumulator0__0_carry_i_5_n_0\,
      DI(2) => \energy_accumulator0__0_carry_i_6_n_0\,
      DI(1) => \energy_accumulator0__0_carry_i_7_n_0\,
      DI(0) => \energy_accumulator0__0_carry_i_8_n_0\,
      O(7 downto 0) => \energy_accumulator_reg[6]_0\(7 downto 0),
      S(7) => \energy_accumulator0__0_carry_i_9_n_0\,
      S(6) => \energy_accumulator0__0_carry_i_10_n_0\,
      S(5) => \energy_accumulator0__0_carry_i_11_n_0\,
      S(4) => \energy_accumulator0__0_carry_i_12_n_0\,
      S(3) => \energy_accumulator0__0_carry_i_13_n_0\,
      S(2) => \energy_accumulator0__0_carry_i_14_n_0\,
      S(1) => \energy_accumulator0__0_carry_i_15_n_0\,
      S(0) => \energy_accumulator0__0_carry_i_16_n_0\
    );
\energy_accumulator0__0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \energy_accumulator0__0_carry_n_0\,
      CI_TOP => '0',
      CO(7) => \energy_accumulator0__0_carry__0_n_0\,
      CO(6) => \energy_accumulator0__0_carry__0_n_1\,
      CO(5) => \energy_accumulator0__0_carry__0_n_2\,
      CO(4) => \energy_accumulator0__0_carry__0_n_3\,
      CO(3) => \energy_accumulator0__0_carry__0_n_4\,
      CO(2) => \energy_accumulator0__0_carry__0_n_5\,
      CO(1) => \energy_accumulator0__0_carry__0_n_6\,
      CO(0) => \energy_accumulator0__0_carry__0_n_7\,
      DI(7) => \energy_accumulator0__0_carry__0_i_1_n_0\,
      DI(6) => \energy_accumulator0__0_carry__0_i_2_n_0\,
      DI(5) => \energy_accumulator0__0_carry__0_i_3_n_0\,
      DI(4) => \energy_accumulator0__0_carry__0_i_4_n_0\,
      DI(3) => \energy_accumulator0__0_carry__0_i_5_n_0\,
      DI(2) => \energy_accumulator0__0_carry__0_i_6_n_0\,
      DI(1) => \energy_accumulator0__0_carry__0_i_7_n_0\,
      DI(0) => \energy_accumulator0__0_carry__0_i_8_n_0\,
      O(7 downto 0) => \energy_accumulator_reg[14]_0\(7 downto 0),
      S(7) => \energy_accumulator0__0_carry__0_i_9_n_0\,
      S(6) => \energy_accumulator0__0_carry__0_i_10_n_0\,
      S(5) => \energy_accumulator0__0_carry__0_i_11_n_0\,
      S(4) => \energy_accumulator0__0_carry__0_i_12_n_0\,
      S(3) => \energy_accumulator0__0_carry__0_i_13_n_0\,
      S(2) => \energy_accumulator0__0_carry__0_i_14_n_0\,
      S(1) => \energy_accumulator0__0_carry__0_i_15_n_0\,
      S(0) => \energy_accumulator0__0_carry__0_i_16_n_0\
    );
\energy_accumulator0__0_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[14]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(14),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(14),
      O => \energy_accumulator0__0_carry__0_i_1_n_0\
    );
\energy_accumulator0__0_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__0_i_2_n_0\,
      I1 => \energy_accumulator_reg_n_0_[14]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(14),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(14),
      O => \energy_accumulator0__0_carry__0_i_10_n_0\
    );
\energy_accumulator0__0_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__0_i_3_n_0\,
      I1 => \energy_accumulator_reg_n_0_[13]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(13),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(13),
      O => \energy_accumulator0__0_carry__0_i_11_n_0\
    );
\energy_accumulator0__0_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__0_i_4_n_0\,
      I1 => \energy_accumulator_reg_n_0_[12]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(12),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(12),
      O => \energy_accumulator0__0_carry__0_i_12_n_0\
    );
\energy_accumulator0__0_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__0_i_5_n_0\,
      I1 => \energy_accumulator_reg_n_0_[11]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(11),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(11),
      O => \energy_accumulator0__0_carry__0_i_13_n_0\
    );
\energy_accumulator0__0_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__0_i_6_n_0\,
      I1 => \energy_accumulator_reg_n_0_[10]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(10),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(10),
      O => \energy_accumulator0__0_carry__0_i_14_n_0\
    );
\energy_accumulator0__0_carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__0_i_7_n_0\,
      I1 => \energy_accumulator_reg_n_0_[9]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(9),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(9),
      O => \energy_accumulator0__0_carry__0_i_15_n_0\
    );
\energy_accumulator0__0_carry__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__0_i_8_n_0\,
      I1 => \energy_accumulator_reg_n_0_[8]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(8),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(8),
      O => \energy_accumulator0__0_carry__0_i_16_n_0\
    );
\energy_accumulator0__0_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[13]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(13),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(13),
      O => \energy_accumulator0__0_carry__0_i_2_n_0\
    );
\energy_accumulator0__0_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[12]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(12),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(12),
      O => \energy_accumulator0__0_carry__0_i_3_n_0\
    );
\energy_accumulator0__0_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[11]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(11),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(11),
      O => \energy_accumulator0__0_carry__0_i_4_n_0\
    );
\energy_accumulator0__0_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[10]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(10),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(10),
      O => \energy_accumulator0__0_carry__0_i_5_n_0\
    );
\energy_accumulator0__0_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[9]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(9),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(9),
      O => \energy_accumulator0__0_carry__0_i_6_n_0\
    );
\energy_accumulator0__0_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[8]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(8),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(8),
      O => \energy_accumulator0__0_carry__0_i_7_n_0\
    );
\energy_accumulator0__0_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[7]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(7),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(7),
      O => \energy_accumulator0__0_carry__0_i_8_n_0\
    );
\energy_accumulator0__0_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A65959A659A659A6"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__0_i_1_n_0\,
      I1 => p_0_out(62),
      I2 => \window_pipe_reg[99]_0\(15),
      I3 => \energy_accumulator_reg_n_0_[15]\,
      I4 => \energy_accumulator0__0_carry__3_0\,
      I5 => P(15),
      O => \energy_accumulator0__0_carry__0_i_9_n_0\
    );
\energy_accumulator0__0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \energy_accumulator0__0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \energy_accumulator0__0_carry__1_n_0\,
      CO(6) => \energy_accumulator0__0_carry__1_n_1\,
      CO(5) => \energy_accumulator0__0_carry__1_n_2\,
      CO(4) => \energy_accumulator0__0_carry__1_n_3\,
      CO(3) => \energy_accumulator0__0_carry__1_n_4\,
      CO(2) => \energy_accumulator0__0_carry__1_n_5\,
      CO(1) => \energy_accumulator0__0_carry__1_n_6\,
      CO(0) => \energy_accumulator0__0_carry__1_n_7\,
      DI(7) => \energy_accumulator0__0_carry__1_i_1_n_0\,
      DI(6) => \energy_accumulator0__0_carry__1_i_2_n_0\,
      DI(5) => \energy_accumulator0__0_carry__1_i_3_n_0\,
      DI(4) => \energy_accumulator0__0_carry__1_i_4_n_0\,
      DI(3) => \energy_accumulator0__0_carry__1_i_5_n_0\,
      DI(2) => \energy_accumulator0__0_carry__1_i_6_n_0\,
      DI(1) => \energy_accumulator0__0_carry__1_i_7_n_0\,
      DI(0) => \energy_accumulator0__0_carry__1_i_8_n_0\,
      O(7 downto 0) => \energy_accumulator_reg[22]_0\(7 downto 0),
      S(7) => \energy_accumulator0__0_carry__1_i_9_n_0\,
      S(6) => \energy_accumulator0__0_carry__1_i_10_n_0\,
      S(5) => \energy_accumulator0__0_carry__1_i_11_n_0\,
      S(4) => \energy_accumulator0__0_carry__1_i_12_n_0\,
      S(3) => \energy_accumulator0__0_carry__1_i_13_n_0\,
      S(2) => \energy_accumulator0__0_carry__1_i_14_n_0\,
      S(1) => \energy_accumulator0__0_carry__1_i_15_n_0\,
      S(0) => \energy_accumulator0__0_carry__1_i_16_n_0\
    );
\energy_accumulator0__0_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[22]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(22),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(22),
      O => \energy_accumulator0__0_carry__1_i_1_n_0\
    );
\energy_accumulator0__0_carry__1_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__1_i_2_n_0\,
      I1 => \energy_accumulator_reg_n_0_[22]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(22),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(22),
      O => \energy_accumulator0__0_carry__1_i_10_n_0\
    );
\energy_accumulator0__0_carry__1_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__1_i_3_n_0\,
      I1 => \energy_accumulator_reg_n_0_[21]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(21),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(21),
      O => \energy_accumulator0__0_carry__1_i_11_n_0\
    );
\energy_accumulator0__0_carry__1_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__1_i_4_n_0\,
      I1 => \energy_accumulator_reg_n_0_[20]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(20),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(20),
      O => \energy_accumulator0__0_carry__1_i_12_n_0\
    );
\energy_accumulator0__0_carry__1_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__1_i_5_n_0\,
      I1 => \energy_accumulator_reg_n_0_[19]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(19),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(19),
      O => \energy_accumulator0__0_carry__1_i_13_n_0\
    );
\energy_accumulator0__0_carry__1_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__1_i_6_n_0\,
      I1 => \energy_accumulator_reg_n_0_[18]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(18),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(18),
      O => \energy_accumulator0__0_carry__1_i_14_n_0\
    );
\energy_accumulator0__0_carry__1_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__1_i_7_n_0\,
      I1 => \energy_accumulator_reg_n_0_[17]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(17),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(17),
      O => \energy_accumulator0__0_carry__1_i_15_n_0\
    );
\energy_accumulator0__0_carry__1_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__1_i_8_n_0\,
      I1 => \energy_accumulator_reg_n_0_[16]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(16),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(16),
      O => \energy_accumulator0__0_carry__1_i_16_n_0\
    );
\energy_accumulator0__0_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[21]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(21),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(21),
      O => \energy_accumulator0__0_carry__1_i_2_n_0\
    );
\energy_accumulator0__0_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[20]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(20),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(20),
      O => \energy_accumulator0__0_carry__1_i_3_n_0\
    );
\energy_accumulator0__0_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[19]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(19),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(19),
      O => \energy_accumulator0__0_carry__1_i_4_n_0\
    );
\energy_accumulator0__0_carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[18]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(18),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(18),
      O => \energy_accumulator0__0_carry__1_i_5_n_0\
    );
\energy_accumulator0__0_carry__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[17]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(17),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(17),
      O => \energy_accumulator0__0_carry__1_i_6_n_0\
    );
\energy_accumulator0__0_carry__1_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[16]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(16),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(16),
      O => \energy_accumulator0__0_carry__1_i_7_n_0\
    );
\energy_accumulator0__0_carry__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[15]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(15),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(15),
      O => \energy_accumulator0__0_carry__1_i_8_n_0\
    );
\energy_accumulator0__0_carry__1_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A65959A659A659A6"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__1_i_1_n_0\,
      I1 => p_0_out(62),
      I2 => \window_pipe_reg[99]_0\(23),
      I3 => \energy_accumulator_reg_n_0_[23]\,
      I4 => \energy_accumulator0__0_carry__3_0\,
      I5 => P(23),
      O => \energy_accumulator0__0_carry__1_i_9_n_0\
    );
\energy_accumulator0__0_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \energy_accumulator0__0_carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \energy_accumulator0__0_carry__2_n_0\,
      CO(6) => \energy_accumulator0__0_carry__2_n_1\,
      CO(5) => \energy_accumulator0__0_carry__2_n_2\,
      CO(4) => \energy_accumulator0__0_carry__2_n_3\,
      CO(3) => \energy_accumulator0__0_carry__2_n_4\,
      CO(2) => \energy_accumulator0__0_carry__2_n_5\,
      CO(1) => \energy_accumulator0__0_carry__2_n_6\,
      CO(0) => \energy_accumulator0__0_carry__2_n_7\,
      DI(7) => \energy_accumulator0__0_carry__2_i_1_n_0\,
      DI(6) => \energy_accumulator0__0_carry__2_i_2_n_0\,
      DI(5) => \energy_accumulator0__0_carry__2_i_3_n_0\,
      DI(4) => \energy_accumulator0__0_carry__2_i_4_n_0\,
      DI(3) => \energy_accumulator0__0_carry__2_i_5_n_0\,
      DI(2) => \energy_accumulator0__0_carry__2_i_6_n_0\,
      DI(1) => \energy_accumulator0__0_carry__2_i_7_n_0\,
      DI(0) => \energy_accumulator0__0_carry__2_i_8_n_0\,
      O(7 downto 0) => \energy_accumulator_reg[30]_0\(7 downto 0),
      S(7) => \energy_accumulator0__0_carry__2_i_9_n_0\,
      S(6) => \energy_accumulator0__0_carry__2_i_10_n_0\,
      S(5) => \energy_accumulator0__0_carry__2_i_11_n_0\,
      S(4) => \energy_accumulator0__0_carry__2_i_12_n_0\,
      S(3) => \energy_accumulator0__0_carry__2_i_13_n_0\,
      S(2) => \energy_accumulator0__0_carry__2_i_14_n_0\,
      S(1) => \energy_accumulator0__0_carry__2_i_15_n_0\,
      S(0) => \energy_accumulator0__0_carry__2_i_16_n_0\
    );
\energy_accumulator0__0_carry__2_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[30]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(30),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(30),
      O => \energy_accumulator0__0_carry__2_i_1_n_0\
    );
\energy_accumulator0__0_carry__2_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__2_i_2_n_0\,
      I1 => \energy_accumulator_reg_n_0_[30]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(30),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(30),
      O => \energy_accumulator0__0_carry__2_i_10_n_0\
    );
\energy_accumulator0__0_carry__2_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__2_i_3_n_0\,
      I1 => \energy_accumulator_reg_n_0_[29]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(29),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(29),
      O => \energy_accumulator0__0_carry__2_i_11_n_0\
    );
\energy_accumulator0__0_carry__2_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__2_i_4_n_0\,
      I1 => \energy_accumulator_reg_n_0_[28]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(28),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(28),
      O => \energy_accumulator0__0_carry__2_i_12_n_0\
    );
\energy_accumulator0__0_carry__2_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__2_i_5_n_0\,
      I1 => \energy_accumulator_reg_n_0_[27]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(27),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(27),
      O => \energy_accumulator0__0_carry__2_i_13_n_0\
    );
\energy_accumulator0__0_carry__2_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__2_i_6_n_0\,
      I1 => \energy_accumulator_reg_n_0_[26]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(26),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(26),
      O => \energy_accumulator0__0_carry__2_i_14_n_0\
    );
\energy_accumulator0__0_carry__2_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__2_i_7_n_0\,
      I1 => \energy_accumulator_reg_n_0_[25]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(25),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(25),
      O => \energy_accumulator0__0_carry__2_i_15_n_0\
    );
\energy_accumulator0__0_carry__2_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__2_i_8_n_0\,
      I1 => \energy_accumulator_reg_n_0_[24]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(24),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(24),
      O => \energy_accumulator0__0_carry__2_i_16_n_0\
    );
\energy_accumulator0__0_carry__2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[29]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(29),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(29),
      O => \energy_accumulator0__0_carry__2_i_2_n_0\
    );
\energy_accumulator0__0_carry__2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[28]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(28),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(28),
      O => \energy_accumulator0__0_carry__2_i_3_n_0\
    );
\energy_accumulator0__0_carry__2_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[27]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(27),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(27),
      O => \energy_accumulator0__0_carry__2_i_4_n_0\
    );
\energy_accumulator0__0_carry__2_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[26]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(26),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(26),
      O => \energy_accumulator0__0_carry__2_i_5_n_0\
    );
\energy_accumulator0__0_carry__2_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[25]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(25),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(25),
      O => \energy_accumulator0__0_carry__2_i_6_n_0\
    );
\energy_accumulator0__0_carry__2_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[24]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(24),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(24),
      O => \energy_accumulator0__0_carry__2_i_7_n_0\
    );
\energy_accumulator0__0_carry__2_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[23]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(23),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(23),
      O => \energy_accumulator0__0_carry__2_i_8_n_0\
    );
\energy_accumulator0__0_carry__2_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A65959A659A659A6"
    )
        port map (
      I0 => \energy_accumulator0__0_carry__2_i_1_n_0\,
      I1 => p_0_out(62),
      I2 => \window_pipe_reg[99]_0\(31),
      I3 => \energy_accumulator_reg_n_0_[31]\,
      I4 => \energy_accumulator0__0_carry__3_0\,
      I5 => P(31),
      O => \energy_accumulator0__0_carry__2_i_9_n_0\
    );
\energy_accumulator0__0_carry__3\: unisim.vcomponents.CARRY8
     port map (
      CI => \energy_accumulator0__0_carry__2_n_0\,
      CI_TOP => '0',
      CO(7) => \energy_accumulator0__0_carry__3_n_0\,
      CO(6) => \energy_accumulator0__0_carry__3_n_1\,
      CO(5) => \energy_accumulator0__0_carry__3_n_2\,
      CO(4) => \energy_accumulator0__0_carry__3_n_3\,
      CO(3) => \energy_accumulator0__0_carry__3_n_4\,
      CO(2) => \energy_accumulator0__0_carry__3_n_5\,
      CO(1) => \energy_accumulator0__0_carry__3_n_6\,
      CO(0) => \energy_accumulator0__0_carry__3_n_7\,
      DI(7) => \energy_accumulator0__0_carry__3_i_1_n_0\,
      DI(6) => \energy_accumulator0__0_carry__3_i_2_n_0\,
      DI(5) => \energy_accumulator0__0_carry__3_i_3_n_0\,
      DI(4) => \energy_accumulator0__0_carry__3_i_4_n_0\,
      DI(3) => \energy_accumulator0__0_carry__3_i_5_n_0\,
      DI(2) => \energy_accumulator0__0_carry__3_i_6_n_0\,
      DI(1) => \energy_accumulator0__0_carry__3_i_7_n_0\,
      DI(0) => \energy_accumulator0__0_carry__3_i_8_n_0\,
      O(7 downto 0) => \energy_accumulator_reg[38]_0\(7 downto 0),
      S(7) => \energy_accumulator0__0_carry__3_i_9_n_0\,
      S(6) => \energy_accumulator0__0_carry__3_i_10_n_0\,
      S(5) => \energy_accumulator0__0_carry__3_i_11_n_0\,
      S(4) => \energy_accumulator0__0_carry__3_i_12_n_0\,
      S(3) => \energy_accumulator0__0_carry__3_i_13_n_0\,
      S(2) => \energy_accumulator0__0_carry__3_i_14_n_0\,
      S(1) => \energy_accumulator0__0_carry__3_i_15_n_0\,
      S(0) => \energy_accumulator0__0_carry__3_i_16_n_0\
    );
\energy_accumulator0__0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[38]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__3_i_1_n_0\
    );
\energy_accumulator0__0_carry__3_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[37]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[38]\,
      O => \energy_accumulator0__0_carry__3_i_10_n_0\
    );
\energy_accumulator0__0_carry__3_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[36]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[37]\,
      O => \energy_accumulator0__0_carry__3_i_11_n_0\
    );
\energy_accumulator0__0_carry__3_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[35]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[36]\,
      O => \energy_accumulator0__0_carry__3_i_12_n_0\
    );
\energy_accumulator0__0_carry__3_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[34]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[35]\,
      O => \energy_accumulator0__0_carry__3_i_13_n_0\
    );
\energy_accumulator0__0_carry__3_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[33]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[34]\,
      O => \energy_accumulator0__0_carry__3_i_14_n_0\
    );
\energy_accumulator0__0_carry__3_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[32]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[33]\,
      O => \energy_accumulator0__0_carry__3_i_15_n_0\
    );
\energy_accumulator0__0_carry__3_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5403FFF2ABFC000"
    )
        port map (
      I0 => \window_pipe_reg[99]_0\(31),
      I1 => P(31),
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => \energy_accumulator_reg_n_0_[31]\,
      I4 => p_0_out(62),
      I5 => \energy_accumulator_reg_n_0_[32]\,
      O => \energy_accumulator0__0_carry__3_i_16_n_0\
    );
\energy_accumulator0__0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[37]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__3_i_2_n_0\
    );
\energy_accumulator0__0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[36]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__3_i_3_n_0\
    );
\energy_accumulator0__0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[35]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__3_i_4_n_0\
    );
\energy_accumulator0__0_carry__3_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[34]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__3_i_5_n_0\
    );
\energy_accumulator0__0_carry__3_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[33]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__3_i_6_n_0\
    );
\energy_accumulator0__0_carry__3_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[32]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__3_i_7_n_0\
    );
\energy_accumulator0__0_carry__3_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[31]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(31),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(31),
      O => \energy_accumulator0__0_carry__3_i_8_n_0\
    );
\energy_accumulator0__0_carry__3_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[38]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[39]\,
      O => \energy_accumulator0__0_carry__3_i_9_n_0\
    );
\energy_accumulator0__0_carry__4\: unisim.vcomponents.CARRY8
     port map (
      CI => \energy_accumulator0__0_carry__3_n_0\,
      CI_TOP => '0',
      CO(7) => \energy_accumulator0__0_carry__4_n_0\,
      CO(6) => \energy_accumulator0__0_carry__4_n_1\,
      CO(5) => \energy_accumulator0__0_carry__4_n_2\,
      CO(4) => \energy_accumulator0__0_carry__4_n_3\,
      CO(3) => \energy_accumulator0__0_carry__4_n_4\,
      CO(2) => \energy_accumulator0__0_carry__4_n_5\,
      CO(1) => \energy_accumulator0__0_carry__4_n_6\,
      CO(0) => \energy_accumulator0__0_carry__4_n_7\,
      DI(7) => \energy_accumulator0__0_carry__4_i_1_n_0\,
      DI(6) => \energy_accumulator0__0_carry__4_i_2_n_0\,
      DI(5) => \energy_accumulator0__0_carry__4_i_3_n_0\,
      DI(4) => \energy_accumulator0__0_carry__4_i_4_n_0\,
      DI(3) => \energy_accumulator0__0_carry__4_i_5_n_0\,
      DI(2) => \energy_accumulator0__0_carry__4_i_6_n_0\,
      DI(1) => \energy_accumulator0__0_carry__4_i_7_n_0\,
      DI(0) => \energy_accumulator0__0_carry__4_i_8_n_0\,
      O(7 downto 0) => \energy_accumulator_reg[46]_0\(7 downto 0),
      S(7) => \energy_accumulator0__0_carry__4_i_9_n_0\,
      S(6) => \energy_accumulator0__0_carry__4_i_10_n_0\,
      S(5) => \energy_accumulator0__0_carry__4_i_11_n_0\,
      S(4) => \energy_accumulator0__0_carry__4_i_12_n_0\,
      S(3) => \energy_accumulator0__0_carry__4_i_13_n_0\,
      S(2) => \energy_accumulator0__0_carry__4_i_14_n_0\,
      S(1) => \energy_accumulator0__0_carry__4_i_15_n_0\,
      S(0) => \energy_accumulator0__0_carry__4_i_16_n_0\
    );
\energy_accumulator0__0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[46]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__4_i_1_n_0\
    );
\energy_accumulator0__0_carry__4_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[45]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[46]\,
      O => \energy_accumulator0__0_carry__4_i_10_n_0\
    );
\energy_accumulator0__0_carry__4_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[44]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[45]\,
      O => \energy_accumulator0__0_carry__4_i_11_n_0\
    );
\energy_accumulator0__0_carry__4_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[43]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[44]\,
      O => \energy_accumulator0__0_carry__4_i_12_n_0\
    );
\energy_accumulator0__0_carry__4_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[42]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[43]\,
      O => \energy_accumulator0__0_carry__4_i_13_n_0\
    );
\energy_accumulator0__0_carry__4_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[41]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[42]\,
      O => \energy_accumulator0__0_carry__4_i_14_n_0\
    );
\energy_accumulator0__0_carry__4_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[40]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[41]\,
      O => \energy_accumulator0__0_carry__4_i_15_n_0\
    );
\energy_accumulator0__0_carry__4_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[39]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[40]\,
      O => \energy_accumulator0__0_carry__4_i_16_n_0\
    );
\energy_accumulator0__0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[45]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__4_i_2_n_0\
    );
\energy_accumulator0__0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[44]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__4_i_3_n_0\
    );
\energy_accumulator0__0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[43]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__4_i_4_n_0\
    );
\energy_accumulator0__0_carry__4_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[42]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__4_i_5_n_0\
    );
\energy_accumulator0__0_carry__4_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[41]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__4_i_6_n_0\
    );
\energy_accumulator0__0_carry__4_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[40]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__4_i_7_n_0\
    );
\energy_accumulator0__0_carry__4_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[39]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__4_i_8_n_0\
    );
\energy_accumulator0__0_carry__4_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[46]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[47]\,
      O => \energy_accumulator0__0_carry__4_i_9_n_0\
    );
\energy_accumulator0__0_carry__5\: unisim.vcomponents.CARRY8
     port map (
      CI => \energy_accumulator0__0_carry__4_n_0\,
      CI_TOP => '0',
      CO(7) => \energy_accumulator0__0_carry__5_n_0\,
      CO(6) => \energy_accumulator0__0_carry__5_n_1\,
      CO(5) => \energy_accumulator0__0_carry__5_n_2\,
      CO(4) => \energy_accumulator0__0_carry__5_n_3\,
      CO(3) => \energy_accumulator0__0_carry__5_n_4\,
      CO(2) => \energy_accumulator0__0_carry__5_n_5\,
      CO(1) => \energy_accumulator0__0_carry__5_n_6\,
      CO(0) => \energy_accumulator0__0_carry__5_n_7\,
      DI(7) => \energy_accumulator0__0_carry__5_i_1_n_0\,
      DI(6) => \energy_accumulator0__0_carry__5_i_2_n_0\,
      DI(5) => \energy_accumulator0__0_carry__5_i_3_n_0\,
      DI(4) => \energy_accumulator0__0_carry__5_i_4_n_0\,
      DI(3) => \energy_accumulator0__0_carry__5_i_5_n_0\,
      DI(2) => \energy_accumulator0__0_carry__5_i_6_n_0\,
      DI(1) => \energy_accumulator0__0_carry__5_i_7_n_0\,
      DI(0) => \energy_accumulator0__0_carry__5_i_8_n_0\,
      O(7 downto 0) => \energy_accumulator_reg[54]_0\(7 downto 0),
      S(7) => \energy_accumulator0__0_carry__5_i_9_n_0\,
      S(6) => \energy_accumulator0__0_carry__5_i_10_n_0\,
      S(5) => \energy_accumulator0__0_carry__5_i_11_n_0\,
      S(4) => \energy_accumulator0__0_carry__5_i_12_n_0\,
      S(3) => \energy_accumulator0__0_carry__5_i_13_n_0\,
      S(2) => \energy_accumulator0__0_carry__5_i_14_n_0\,
      S(1) => \energy_accumulator0__0_carry__5_i_15_n_0\,
      S(0) => \energy_accumulator0__0_carry__5_i_16_n_0\
    );
\energy_accumulator0__0_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[54]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__5_i_1_n_0\
    );
\energy_accumulator0__0_carry__5_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[53]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[54]\,
      O => \energy_accumulator0__0_carry__5_i_10_n_0\
    );
\energy_accumulator0__0_carry__5_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[52]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[53]\,
      O => \energy_accumulator0__0_carry__5_i_11_n_0\
    );
\energy_accumulator0__0_carry__5_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[51]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[52]\,
      O => \energy_accumulator0__0_carry__5_i_12_n_0\
    );
\energy_accumulator0__0_carry__5_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[50]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[51]\,
      O => \energy_accumulator0__0_carry__5_i_13_n_0\
    );
\energy_accumulator0__0_carry__5_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[49]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[50]\,
      O => \energy_accumulator0__0_carry__5_i_14_n_0\
    );
\energy_accumulator0__0_carry__5_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[48]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[49]\,
      O => \energy_accumulator0__0_carry__5_i_15_n_0\
    );
\energy_accumulator0__0_carry__5_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[47]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[48]\,
      O => \energy_accumulator0__0_carry__5_i_16_n_0\
    );
\energy_accumulator0__0_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[53]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__5_i_2_n_0\
    );
\energy_accumulator0__0_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[52]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__5_i_3_n_0\
    );
\energy_accumulator0__0_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[51]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__5_i_4_n_0\
    );
\energy_accumulator0__0_carry__5_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[50]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__5_i_5_n_0\
    );
\energy_accumulator0__0_carry__5_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[49]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__5_i_6_n_0\
    );
\energy_accumulator0__0_carry__5_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[48]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__5_i_7_n_0\
    );
\energy_accumulator0__0_carry__5_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[47]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__5_i_8_n_0\
    );
\energy_accumulator0__0_carry__5_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[54]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[55]\,
      O => \energy_accumulator0__0_carry__5_i_9_n_0\
    );
\energy_accumulator0__0_carry__6\: unisim.vcomponents.CARRY8
     port map (
      CI => \energy_accumulator0__0_carry__5_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_energy_accumulator0__0_carry__6_CO_UNCONNECTED\(7),
      CO(6) => \energy_accumulator0__0_carry__6_n_1\,
      CO(5) => \energy_accumulator0__0_carry__6_n_2\,
      CO(4) => \energy_accumulator0__0_carry__6_n_3\,
      CO(3) => \energy_accumulator0__0_carry__6_n_4\,
      CO(2) => \energy_accumulator0__0_carry__6_n_5\,
      CO(1) => \energy_accumulator0__0_carry__6_n_6\,
      CO(0) => \energy_accumulator0__0_carry__6_n_7\,
      DI(7) => '0',
      DI(6) => \energy_accumulator0__0_carry__6_i_1_n_0\,
      DI(5) => \energy_accumulator0__0_carry__6_i_2_n_0\,
      DI(4) => \energy_accumulator0__0_carry__6_i_3_n_0\,
      DI(3) => \energy_accumulator0__0_carry__6_i_4_n_0\,
      DI(2) => \energy_accumulator0__0_carry__6_i_5_n_0\,
      DI(1) => \energy_accumulator0__0_carry__6_i_6_n_0\,
      DI(0) => \energy_accumulator0__0_carry__6_i_7_n_0\,
      O(7 downto 0) => O(7 downto 0),
      S(7) => \energy_accumulator0__0_carry__6_i_8_n_0\,
      S(6) => \energy_accumulator0__0_carry__6_i_9_n_0\,
      S(5) => \energy_accumulator0__0_carry__6_i_10_n_0\,
      S(4) => \energy_accumulator0__0_carry__6_i_11_n_0\,
      S(3) => \energy_accumulator0__0_carry__6_i_12_n_0\,
      S(2) => \energy_accumulator0__0_carry__6_i_13_n_0\,
      S(1) => \energy_accumulator0__0_carry__6_i_14_n_0\,
      S(0) => \energy_accumulator0__0_carry__6_i_15_n_0\
    );
\energy_accumulator0__0_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[61]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__6_i_1_n_0\
    );
\energy_accumulator0__0_carry__6_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[60]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[61]\,
      O => \energy_accumulator0__0_carry__6_i_10_n_0\
    );
\energy_accumulator0__0_carry__6_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[59]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[60]\,
      O => \energy_accumulator0__0_carry__6_i_11_n_0\
    );
\energy_accumulator0__0_carry__6_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[58]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[59]\,
      O => \energy_accumulator0__0_carry__6_i_12_n_0\
    );
\energy_accumulator0__0_carry__6_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[57]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[58]\,
      O => \energy_accumulator0__0_carry__6_i_13_n_0\
    );
\energy_accumulator0__0_carry__6_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[56]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[57]\,
      O => \energy_accumulator0__0_carry__6_i_14_n_0\
    );
\energy_accumulator0__0_carry__6_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[55]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[56]\,
      O => \energy_accumulator0__0_carry__6_i_15_n_0\
    );
\energy_accumulator0__0_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[60]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__6_i_2_n_0\
    );
\energy_accumulator0__0_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[59]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__6_i_3_n_0\
    );
\energy_accumulator0__0_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[58]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__6_i_4_n_0\
    );
\energy_accumulator0__0_carry__6_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[57]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__6_i_5_n_0\
    );
\energy_accumulator0__0_carry__6_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[56]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__6_i_6_n_0\
    );
\energy_accumulator0__0_carry__6_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[55]\,
      I1 => p_0_out(62),
      O => \energy_accumulator0__0_carry__6_i_7_n_0\
    );
\energy_accumulator0__0_carry__6_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => p_0_out(62),
      I1 => \energy_accumulator_reg_n_0_[62]\,
      I2 => \energy_accumulator_reg_n_0_[63]\,
      O => \energy_accumulator0__0_carry__6_i_8_n_0\
    );
\energy_accumulator0__0_carry__6_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[61]\,
      I1 => p_0_out(62),
      I2 => \energy_accumulator_reg_n_0_[62]\,
      O => \energy_accumulator0__0_carry__6_i_9_n_0\
    );
\energy_accumulator0__0_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[6]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(6),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(6),
      O => \energy_accumulator0__0_carry_i_1_n_0\
    );
\energy_accumulator0__0_carry_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry_i_2_n_0\,
      I1 => \energy_accumulator_reg_n_0_[6]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(6),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(6),
      O => \energy_accumulator0__0_carry_i_10_n_0\
    );
\energy_accumulator0__0_carry_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry_i_3_n_0\,
      I1 => \energy_accumulator_reg_n_0_[5]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(5),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(5),
      O => \energy_accumulator0__0_carry_i_11_n_0\
    );
\energy_accumulator0__0_carry_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry_i_4_n_0\,
      I1 => \energy_accumulator_reg_n_0_[4]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(4),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(4),
      O => \energy_accumulator0__0_carry_i_12_n_0\
    );
\energy_accumulator0__0_carry_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry_i_5_n_0\,
      I1 => \energy_accumulator_reg_n_0_[3]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(3),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(3),
      O => \energy_accumulator0__0_carry_i_13_n_0\
    );
\energy_accumulator0__0_carry_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry_i_6_n_0\,
      I1 => \energy_accumulator_reg_n_0_[2]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(2),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(2),
      O => \energy_accumulator0__0_carry_i_14_n_0\
    );
\energy_accumulator0__0_carry_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966669999666"
    )
        port map (
      I0 => \energy_accumulator0__0_carry_i_7_n_0\,
      I1 => \energy_accumulator_reg_n_0_[1]\,
      I2 => \energy_accumulator0__0_carry__3_0\,
      I3 => P(1),
      I4 => p_0_out(62),
      I5 => \window_pipe_reg[99]_0\(1),
      O => \energy_accumulator0__0_carry_i_15_n_0\
    );
\energy_accumulator0__0_carry_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"956A6A6A"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[0]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(0),
      I3 => \window_pipe_reg[99]_0\(0),
      I4 => p_0_out(62),
      O => \energy_accumulator0__0_carry_i_16_n_0\
    );
\energy_accumulator0__0_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[5]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(5),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(5),
      O => \energy_accumulator0__0_carry_i_2_n_0\
    );
\energy_accumulator0__0_carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[4]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(4),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(4),
      O => \energy_accumulator0__0_carry_i_3_n_0\
    );
\energy_accumulator0__0_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[3]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(3),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(3),
      O => \energy_accumulator0__0_carry_i_4_n_0\
    );
\energy_accumulator0__0_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[2]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(2),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(2),
      O => \energy_accumulator0__0_carry_i_5_n_0\
    );
\energy_accumulator0__0_carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080EA80"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[1]\,
      I1 => \energy_accumulator0__0_carry__3_0\,
      I2 => P(1),
      I3 => p_0_out(62),
      I4 => \window_pipe_reg[99]_0\(1),
      O => \energy_accumulator0__0_carry_i_6_n_0\
    );
\energy_accumulator0__0_carry_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2202020"
    )
        port map (
      I0 => p_0_out(62),
      I1 => \window_pipe_reg[99]_0\(0),
      I2 => \energy_accumulator_reg_n_0_[0]\,
      I3 => \energy_accumulator0__0_carry__3_0\,
      I4 => P(0),
      O => \energy_accumulator0__0_carry_i_7_n_0\
    );
\energy_accumulator0__0_carry_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4BBBB444"
    )
        port map (
      I0 => \window_pipe_reg[99]_0\(0),
      I1 => p_0_out(62),
      I2 => P(0),
      I3 => \energy_accumulator0__0_carry__3_0\,
      I4 => \energy_accumulator_reg_n_0_[0]\,
      O => \energy_accumulator0__0_carry_i_8_n_0\
    );
\energy_accumulator0__0_carry_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A65959A659A659A6"
    )
        port map (
      I0 => \energy_accumulator0__0_carry_i_1_n_0\,
      I1 => p_0_out(62),
      I2 => \window_pipe_reg[99]_0\(7),
      I3 => \energy_accumulator_reg_n_0_[7]\,
      I4 => \energy_accumulator0__0_carry__3_0\,
      I5 => P(7),
      O => \energy_accumulator0__0_carry_i_9_n_0\
    );
\energy_accumulator_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(0),
      Q => \energy_accumulator_reg_n_0_[0]\
    );
\energy_accumulator_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(10),
      Q => \energy_accumulator_reg_n_0_[10]\
    );
\energy_accumulator_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(11),
      Q => \energy_accumulator_reg_n_0_[11]\
    );
\energy_accumulator_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(12),
      Q => \energy_accumulator_reg_n_0_[12]\
    );
\energy_accumulator_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(13),
      Q => \energy_accumulator_reg_n_0_[13]\
    );
\energy_accumulator_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(14),
      Q => \energy_accumulator_reg_n_0_[14]\
    );
\energy_accumulator_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(15),
      Q => \energy_accumulator_reg_n_0_[15]\
    );
\energy_accumulator_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(16),
      Q => \energy_accumulator_reg_n_0_[16]\
    );
\energy_accumulator_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(17),
      Q => \energy_accumulator_reg_n_0_[17]\
    );
\energy_accumulator_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(18),
      Q => \energy_accumulator_reg_n_0_[18]\
    );
\energy_accumulator_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(19),
      Q => \energy_accumulator_reg_n_0_[19]\
    );
\energy_accumulator_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(1),
      Q => \energy_accumulator_reg_n_0_[1]\
    );
\energy_accumulator_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(20),
      Q => \energy_accumulator_reg_n_0_[20]\
    );
\energy_accumulator_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(21),
      Q => \energy_accumulator_reg_n_0_[21]\
    );
\energy_accumulator_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(22),
      Q => \energy_accumulator_reg_n_0_[22]\
    );
\energy_accumulator_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(23),
      Q => \energy_accumulator_reg_n_0_[23]\
    );
\energy_accumulator_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(24),
      Q => \energy_accumulator_reg_n_0_[24]\
    );
\energy_accumulator_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(25),
      Q => \energy_accumulator_reg_n_0_[25]\
    );
\energy_accumulator_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(26),
      Q => \energy_accumulator_reg_n_0_[26]\
    );
\energy_accumulator_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(27),
      Q => \energy_accumulator_reg_n_0_[27]\
    );
\energy_accumulator_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(28),
      Q => \energy_accumulator_reg_n_0_[28]\
    );
\energy_accumulator_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(29),
      Q => \energy_accumulator_reg_n_0_[29]\
    );
\energy_accumulator_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(2),
      Q => \energy_accumulator_reg_n_0_[2]\
    );
\energy_accumulator_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(30),
      Q => \energy_accumulator_reg_n_0_[30]\
    );
\energy_accumulator_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(31),
      Q => \energy_accumulator_reg_n_0_[31]\
    );
\energy_accumulator_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(32),
      Q => \energy_accumulator_reg_n_0_[32]\
    );
\energy_accumulator_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(33),
      Q => \energy_accumulator_reg_n_0_[33]\
    );
\energy_accumulator_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(34),
      Q => \energy_accumulator_reg_n_0_[34]\
    );
\energy_accumulator_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(35),
      Q => \energy_accumulator_reg_n_0_[35]\
    );
\energy_accumulator_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(36),
      Q => \energy_accumulator_reg_n_0_[36]\
    );
\energy_accumulator_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(37),
      Q => \energy_accumulator_reg_n_0_[37]\
    );
\energy_accumulator_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(38),
      Q => \energy_accumulator_reg_n_0_[38]\
    );
\energy_accumulator_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(39),
      Q => \energy_accumulator_reg_n_0_[39]\
    );
\energy_accumulator_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(3),
      Q => \energy_accumulator_reg_n_0_[3]\
    );
\energy_accumulator_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(40),
      Q => \energy_accumulator_reg_n_0_[40]\
    );
\energy_accumulator_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(41),
      Q => \energy_accumulator_reg_n_0_[41]\
    );
\energy_accumulator_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(42),
      Q => \energy_accumulator_reg_n_0_[42]\
    );
\energy_accumulator_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(43),
      Q => \energy_accumulator_reg_n_0_[43]\
    );
\energy_accumulator_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(44),
      Q => \energy_accumulator_reg_n_0_[44]\
    );
\energy_accumulator_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(45),
      Q => \energy_accumulator_reg_n_0_[45]\
    );
\energy_accumulator_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(46),
      Q => \energy_accumulator_reg_n_0_[46]\
    );
\energy_accumulator_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(47),
      Q => \energy_accumulator_reg_n_0_[47]\
    );
\energy_accumulator_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(48),
      Q => \energy_accumulator_reg_n_0_[48]\
    );
\energy_accumulator_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(49),
      Q => \energy_accumulator_reg_n_0_[49]\
    );
\energy_accumulator_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(4),
      Q => \energy_accumulator_reg_n_0_[4]\
    );
\energy_accumulator_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(50),
      Q => \energy_accumulator_reg_n_0_[50]\
    );
\energy_accumulator_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(51),
      Q => \energy_accumulator_reg_n_0_[51]\
    );
\energy_accumulator_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(52),
      Q => \energy_accumulator_reg_n_0_[52]\
    );
\energy_accumulator_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(53),
      Q => \energy_accumulator_reg_n_0_[53]\
    );
\energy_accumulator_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(54),
      Q => \energy_accumulator_reg_n_0_[54]\
    );
\energy_accumulator_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(55),
      Q => \energy_accumulator_reg_n_0_[55]\
    );
\energy_accumulator_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(56),
      Q => \energy_accumulator_reg_n_0_[56]\
    );
\energy_accumulator_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(57),
      Q => \energy_accumulator_reg_n_0_[57]\
    );
\energy_accumulator_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(58),
      Q => \energy_accumulator_reg_n_0_[58]\
    );
\energy_accumulator_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(59),
      Q => \energy_accumulator_reg_n_0_[59]\
    );
\energy_accumulator_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(5),
      Q => \energy_accumulator_reg_n_0_[5]\
    );
\energy_accumulator_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(60),
      Q => \energy_accumulator_reg_n_0_[60]\
    );
\energy_accumulator_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(61),
      Q => \energy_accumulator_reg_n_0_[61]\
    );
\energy_accumulator_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(62),
      Q => \energy_accumulator_reg_n_0_[62]\
    );
\energy_accumulator_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(63),
      Q => \energy_accumulator_reg_n_0_[63]\
    );
\energy_accumulator_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(6),
      Q => \energy_accumulator_reg_n_0_[6]\
    );
\energy_accumulator_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(7),
      Q => \energy_accumulator_reg_n_0_[7]\
    );
\energy_accumulator_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(8),
      Q => \energy_accumulator_reg_n_0_[8]\
    );
\energy_accumulator_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => D(9),
      Q => \energy_accumulator_reg_n_0_[9]\
    );
\energy_init[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => p_0_out(62),
      I1 => \energy_init[63]_i_2_n_0\,
      I2 => shift_count_d(5),
      I3 => shift_count_d(6),
      I4 => shift_count_d(0),
      O => shift_count_max_reached
    );
\energy_init[63]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => shift_count_d(3),
      I1 => shift_count_d(4),
      I2 => shift_count_d(2),
      I3 => shift_count_d(1),
      O => \energy_init[63]_i_2_n_0\
    );
\energy_init_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[0]\,
      Q => \energy_init_reg[63]_0\(0)
    );
\energy_init_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[10]\,
      Q => \energy_init_reg[63]_0\(10)
    );
\energy_init_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[11]\,
      Q => \energy_init_reg[63]_0\(11)
    );
\energy_init_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[12]\,
      Q => \energy_init_reg[63]_0\(12)
    );
\energy_init_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[13]\,
      Q => \energy_init_reg[63]_0\(13)
    );
\energy_init_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[14]\,
      Q => \energy_init_reg[63]_0\(14)
    );
\energy_init_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[15]\,
      Q => \energy_init_reg[63]_0\(15)
    );
\energy_init_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[16]\,
      Q => \energy_init_reg[63]_0\(16)
    );
\energy_init_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[17]\,
      Q => \energy_init_reg[63]_0\(17)
    );
\energy_init_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[18]\,
      Q => \energy_init_reg[63]_0\(18)
    );
\energy_init_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[19]\,
      Q => \energy_init_reg[63]_0\(19)
    );
\energy_init_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[1]\,
      Q => \energy_init_reg[63]_0\(1)
    );
\energy_init_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[20]\,
      Q => \energy_init_reg[63]_0\(20)
    );
\energy_init_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[21]\,
      Q => \energy_init_reg[63]_0\(21)
    );
\energy_init_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[22]\,
      Q => \energy_init_reg[63]_0\(22)
    );
\energy_init_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[23]\,
      Q => \energy_init_reg[63]_0\(23)
    );
\energy_init_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[24]\,
      Q => \energy_init_reg[63]_0\(24)
    );
\energy_init_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[25]\,
      Q => \energy_init_reg[63]_0\(25)
    );
\energy_init_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[26]\,
      Q => \energy_init_reg[63]_0\(26)
    );
\energy_init_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[27]\,
      Q => \energy_init_reg[63]_0\(27)
    );
\energy_init_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[28]\,
      Q => \energy_init_reg[63]_0\(28)
    );
\energy_init_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[29]\,
      Q => \energy_init_reg[63]_0\(29)
    );
\energy_init_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[2]\,
      Q => \energy_init_reg[63]_0\(2)
    );
\energy_init_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[30]\,
      Q => \energy_init_reg[63]_0\(30)
    );
\energy_init_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[31]\,
      Q => \energy_init_reg[63]_0\(31)
    );
\energy_init_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[32]\,
      Q => \energy_init_reg[63]_0\(32)
    );
\energy_init_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[33]\,
      Q => \energy_init_reg[63]_0\(33)
    );
\energy_init_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[34]\,
      Q => \energy_init_reg[63]_0\(34)
    );
\energy_init_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[35]\,
      Q => \energy_init_reg[63]_0\(35)
    );
\energy_init_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[36]\,
      Q => \energy_init_reg[63]_0\(36)
    );
\energy_init_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[37]\,
      Q => \energy_init_reg[63]_0\(37)
    );
\energy_init_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[38]\,
      Q => \energy_init_reg[63]_0\(38)
    );
\energy_init_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[39]\,
      Q => \energy_init_reg[63]_0\(39)
    );
\energy_init_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[3]\,
      Q => \energy_init_reg[63]_0\(3)
    );
\energy_init_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[40]\,
      Q => \energy_init_reg[63]_0\(40)
    );
\energy_init_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[41]\,
      Q => \energy_init_reg[63]_0\(41)
    );
\energy_init_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[42]\,
      Q => \energy_init_reg[63]_0\(42)
    );
\energy_init_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[43]\,
      Q => \energy_init_reg[63]_0\(43)
    );
\energy_init_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[44]\,
      Q => \energy_init_reg[63]_0\(44)
    );
\energy_init_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[45]\,
      Q => \energy_init_reg[63]_0\(45)
    );
\energy_init_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[46]\,
      Q => \energy_init_reg[63]_0\(46)
    );
\energy_init_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[47]\,
      Q => \energy_init_reg[63]_0\(47)
    );
\energy_init_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[48]\,
      Q => \energy_init_reg[63]_0\(48)
    );
\energy_init_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[49]\,
      Q => \energy_init_reg[63]_0\(49)
    );
\energy_init_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[4]\,
      Q => \energy_init_reg[63]_0\(4)
    );
\energy_init_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[50]\,
      Q => \energy_init_reg[63]_0\(50)
    );
\energy_init_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[51]\,
      Q => \energy_init_reg[63]_0\(51)
    );
\energy_init_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[52]\,
      Q => \energy_init_reg[63]_0\(52)
    );
\energy_init_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[53]\,
      Q => \energy_init_reg[63]_0\(53)
    );
\energy_init_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[54]\,
      Q => \energy_init_reg[63]_0\(54)
    );
\energy_init_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[55]\,
      Q => \energy_init_reg[63]_0\(55)
    );
\energy_init_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[56]\,
      Q => \energy_init_reg[63]_0\(56)
    );
\energy_init_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[57]\,
      Q => \energy_init_reg[63]_0\(57)
    );
\energy_init_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[58]\,
      Q => \energy_init_reg[63]_0\(58)
    );
\energy_init_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[59]\,
      Q => \energy_init_reg[63]_0\(59)
    );
\energy_init_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[5]\,
      Q => \energy_init_reg[63]_0\(5)
    );
\energy_init_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[60]\,
      Q => \energy_init_reg[63]_0\(60)
    );
\energy_init_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[61]\,
      Q => \energy_init_reg[63]_0\(61)
    );
\energy_init_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[62]\,
      Q => \energy_init_reg[63]_0\(62)
    );
\energy_init_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[63]\,
      Q => \energy_init_reg[63]_0\(63)
    );
\energy_init_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[6]\,
      Q => \energy_init_reg[63]_0\(6)
    );
\energy_init_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[7]\,
      Q => \energy_init_reg[63]_0\(7)
    );
\energy_init_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[8]\,
      Q => \energy_init_reg[63]_0\(8)
    );
\energy_init_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => shift_count_max_reached,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \energy_accumulator_reg_n_0_[9]\,
      Q => \energy_init_reg[63]_0\(9)
    );
\energy_threshold_active[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cfg_update_pending_reg_n_0,
      I1 => sw_en,
      O => cfg_update_pending1
    );
\energy_threshold_active_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      D => cfg_energy_threshold(0),
      PRE => \energy_threshold_active_reg[63]_0\,
      Q => energy_threshold_active(0)
    );
\energy_threshold_active_reg[10]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      D => cfg_energy_threshold(10),
      PRE => \energy_threshold_active_reg[63]_0\,
      Q => energy_threshold_active(10)
    );
\energy_threshold_active_reg[11]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      D => cfg_energy_threshold(11),
      PRE => \energy_threshold_active_reg[63]_0\,
      Q => energy_threshold_active(11)
    );
\energy_threshold_active_reg[12]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      D => cfg_energy_threshold(12),
      PRE => \energy_threshold_active_reg[63]_0\,
      Q => energy_threshold_active(12)
    );
\energy_threshold_active_reg[13]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      D => cfg_energy_threshold(13),
      PRE => \energy_threshold_active_reg[63]_0\,
      Q => energy_threshold_active(13)
    );
\energy_threshold_active_reg[14]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      D => cfg_energy_threshold(14),
      PRE => \energy_threshold_active_reg[63]_0\,
      Q => energy_threshold_active(14)
    );
\energy_threshold_active_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      D => cfg_energy_threshold(15),
      PRE => \energy_threshold_active_reg[63]_0\,
      Q => energy_threshold_active(15)
    );
\energy_threshold_active_reg[16]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      D => cfg_energy_threshold(16),
      PRE => \energy_threshold_active_reg[63]_0\,
      Q => energy_threshold_active(16)
    );
\energy_threshold_active_reg[17]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      D => cfg_energy_threshold(17),
      PRE => \energy_threshold_active_reg[63]_0\,
      Q => energy_threshold_active(17)
    );
\energy_threshold_active_reg[18]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      D => cfg_energy_threshold(18),
      PRE => \energy_threshold_active_reg[63]_0\,
      Q => energy_threshold_active(18)
    );
\energy_threshold_active_reg[19]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      D => cfg_energy_threshold(19),
      PRE => \energy_threshold_active_reg[63]_0\,
      Q => energy_threshold_active(19)
    );
\energy_threshold_active_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      D => cfg_energy_threshold(1),
      PRE => \energy_threshold_active_reg[63]_0\,
      Q => energy_threshold_active(1)
    );
\energy_threshold_active_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(20),
      Q => energy_threshold_active(20)
    );
\energy_threshold_active_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(21),
      Q => energy_threshold_active(21)
    );
\energy_threshold_active_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(22),
      Q => energy_threshold_active(22)
    );
\energy_threshold_active_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(23),
      Q => energy_threshold_active(23)
    );
\energy_threshold_active_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(24),
      Q => energy_threshold_active(24)
    );
\energy_threshold_active_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(25),
      Q => energy_threshold_active(25)
    );
\energy_threshold_active_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(26),
      Q => energy_threshold_active(26)
    );
\energy_threshold_active_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(27),
      Q => energy_threshold_active(27)
    );
\energy_threshold_active_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(28),
      Q => energy_threshold_active(28)
    );
\energy_threshold_active_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(29),
      Q => energy_threshold_active(29)
    );
\energy_threshold_active_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      D => cfg_energy_threshold(2),
      PRE => \energy_threshold_active_reg[63]_0\,
      Q => energy_threshold_active(2)
    );
\energy_threshold_active_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(30),
      Q => energy_threshold_active(30)
    );
\energy_threshold_active_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(31),
      Q => energy_threshold_active(31)
    );
\energy_threshold_active_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(32),
      Q => energy_threshold_active(32)
    );
\energy_threshold_active_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(33),
      Q => energy_threshold_active(33)
    );
\energy_threshold_active_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(34),
      Q => energy_threshold_active(34)
    );
\energy_threshold_active_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(35),
      Q => energy_threshold_active(35)
    );
\energy_threshold_active_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(36),
      Q => energy_threshold_active(36)
    );
\energy_threshold_active_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(37),
      Q => energy_threshold_active(37)
    );
\energy_threshold_active_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(38),
      Q => energy_threshold_active(38)
    );
\energy_threshold_active_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(39),
      Q => energy_threshold_active(39)
    );
\energy_threshold_active_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      D => cfg_energy_threshold(3),
      PRE => \energy_threshold_active_reg[63]_0\,
      Q => energy_threshold_active(3)
    );
\energy_threshold_active_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(40),
      Q => energy_threshold_active(40)
    );
\energy_threshold_active_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(41),
      Q => energy_threshold_active(41)
    );
\energy_threshold_active_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(42),
      Q => energy_threshold_active(42)
    );
\energy_threshold_active_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(43),
      Q => energy_threshold_active(43)
    );
\energy_threshold_active_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(44),
      Q => energy_threshold_active(44)
    );
\energy_threshold_active_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(45),
      Q => energy_threshold_active(45)
    );
\energy_threshold_active_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(46),
      Q => energy_threshold_active(46)
    );
\energy_threshold_active_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(47),
      Q => energy_threshold_active(47)
    );
\energy_threshold_active_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(48),
      Q => energy_threshold_active(48)
    );
\energy_threshold_active_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(49),
      Q => energy_threshold_active(49)
    );
\energy_threshold_active_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      D => cfg_energy_threshold(4),
      PRE => \energy_threshold_active_reg[63]_0\,
      Q => energy_threshold_active(4)
    );
\energy_threshold_active_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(50),
      Q => energy_threshold_active(50)
    );
\energy_threshold_active_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(51),
      Q => energy_threshold_active(51)
    );
\energy_threshold_active_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(52),
      Q => energy_threshold_active(52)
    );
\energy_threshold_active_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(53),
      Q => energy_threshold_active(53)
    );
\energy_threshold_active_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(54),
      Q => energy_threshold_active(54)
    );
\energy_threshold_active_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(55),
      Q => energy_threshold_active(55)
    );
\energy_threshold_active_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(56),
      Q => energy_threshold_active(56)
    );
\energy_threshold_active_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(57),
      Q => energy_threshold_active(57)
    );
\energy_threshold_active_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(58),
      Q => energy_threshold_active(58)
    );
\energy_threshold_active_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(59),
      Q => energy_threshold_active(59)
    );
\energy_threshold_active_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      D => cfg_energy_threshold(5),
      PRE => \energy_threshold_active_reg[63]_0\,
      Q => energy_threshold_active(5)
    );
\energy_threshold_active_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(60),
      Q => energy_threshold_active(60)
    );
\energy_threshold_active_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(61),
      Q => energy_threshold_active(61)
    );
\energy_threshold_active_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(62),
      Q => energy_threshold_active(62)
    );
\energy_threshold_active_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => cfg_energy_threshold(63),
      Q => energy_threshold_active(63)
    );
\energy_threshold_active_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      D => cfg_energy_threshold(6),
      PRE => \energy_threshold_active_reg[63]_0\,
      Q => energy_threshold_active(6)
    );
\energy_threshold_active_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      D => cfg_energy_threshold(7),
      PRE => \energy_threshold_active_reg[63]_0\,
      Q => energy_threshold_active(7)
    );
\energy_threshold_active_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      D => cfg_energy_threshold(8),
      PRE => \energy_threshold_active_reg[63]_0\,
      Q => energy_threshold_active(8)
    );
\energy_threshold_active_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => cfg_update_pending1,
      D => cfg_energy_threshold(9),
      PRE => \energy_threshold_active_reg[63]_0\,
      Q => energy_threshold_active(9)
    );
result_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \energy_threshold_active_reg[63]_0\,
      D => result_valid_reg_0,
      Q => sw_result_valid
    );
\shift_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5070"
    )
        port map (
      I0 => pow_m_axis_tvalid,
      I1 => \shift_count[2]_i_2_n_0\,
      I2 => sw_en,
      I3 => \^q\(0),
      O => \shift_count[0]_i_1_n_0\
    );
\shift_count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50707050"
    )
        port map (
      I0 => pow_m_axis_tvalid,
      I1 => \shift_count[2]_i_2_n_0\,
      I2 => sw_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \shift_count[1]_i_1_n_0\
    );
\shift_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AA8AAAAAA88AAAA"
    )
        port map (
      I0 => sw_en,
      I1 => \shift_count[2]_i_2_n_0\,
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => pow_m_axis_tvalid,
      I5 => \^q\(1),
      O => \shift_count[2]_i_1_n_0\
    );
\shift_count[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      I2 => \^q\(4),
      I3 => \^q\(3),
      I4 => \^q\(2),
      O => \shift_count[2]_i_2_n_0\
    );
\shift_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55007D007D007D00"
    )
        port map (
      I0 => pow_m_axis_tvalid,
      I1 => \^q\(3),
      I2 => \shift_count[3]_i_2_n_0\,
      I3 => sw_en,
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \shift_count[3]_i_1_n_0\
    );
\shift_count[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \shift_count[3]_i_2_n_0\
    );
\shift_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"557D7D7D00000000"
    )
        port map (
      I0 => pow_m_axis_tvalid,
      I1 => \^q\(4),
      I2 => \shift_count[4]_i_2_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(5),
      I5 => sw_en,
      O => \shift_count[4]_i_1_n_0\
    );
\shift_count[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \shift_count[4]_i_2_n_0\
    );
\shift_count[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF00F300"
    )
        port map (
      I0 => \^q\(6),
      I1 => pow_m_axis_tvalid,
      I2 => \^q\(5),
      I3 => sw_en,
      I4 => \shift_count[6]_i_3_n_0\,
      O => \shift_count[5]_i_1_n_0\
    );
\shift_count[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8F0000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \shift_count[6]_i_3_n_0\,
      I2 => pow_m_axis_tvalid,
      I3 => \^q\(6),
      I4 => sw_en,
      O => \shift_count[6]_i_2_n_0\
    );
\shift_count[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \shift_count[6]_i_3_n_0\
    );
\shift_count_d_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \shift_count_d_reg[6]_0\(0),
      Q => shift_count_d(0)
    );
\shift_count_d_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \shift_count_d_reg[6]_0\(1),
      Q => shift_count_d(1)
    );
\shift_count_d_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \shift_count_d_reg[6]_0\(2),
      Q => shift_count_d(2)
    );
\shift_count_d_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \shift_count_d_reg[6]_0\(3),
      Q => shift_count_d(3)
    );
\shift_count_d_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \shift_count_d_reg[6]_0\(4),
      Q => shift_count_d(4)
    );
\shift_count_d_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \shift_count_d_reg[6]_0\(5),
      Q => shift_count_d(5)
    );
\shift_count_d_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \shift_count_d_reg[6]_0\(6),
      Q => shift_count_d(6)
    );
\shift_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \shift_count[0]_i_1_n_0\,
      Q => \^q\(0)
    );
\shift_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \shift_count[1]_i_1_n_0\,
      Q => \^q\(1)
    );
\shift_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \shift_count[2]_i_1_n_0\,
      Q => \^q\(2)
    );
\shift_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \shift_count[3]_i_1_n_0\,
      Q => \^q\(3)
    );
\shift_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \shift_count[4]_i_1_n_0\,
      Q => \^q\(4)
    );
\shift_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \shift_count[5]_i_1_n_0\,
      Q => \^q\(5)
    );
\shift_count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => E(0),
      CLR => \energy_threshold_active_reg[63]_0\,
      D => \shift_count[6]_i_2_n_0\,
      Q => \^q\(6)
    );
status1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => status1_carry_n_0,
      CO(6) => status1_carry_n_1,
      CO(5) => status1_carry_n_2,
      CO(4) => status1_carry_n_3,
      CO(3) => status1_carry_n_4,
      CO(2) => status1_carry_n_5,
      CO(1) => status1_carry_n_6,
      CO(0) => status1_carry_n_7,
      DI(7) => status1_carry_i_1_n_0,
      DI(6) => status1_carry_i_2_n_0,
      DI(5) => status1_carry_i_3_n_0,
      DI(4) => status1_carry_i_4_n_0,
      DI(3) => status1_carry_i_5_n_0,
      DI(2) => status1_carry_i_6_n_0,
      DI(1) => status1_carry_i_7_n_0,
      DI(0) => status1_carry_i_8_n_0,
      O(7 downto 0) => NLW_status1_carry_O_UNCONNECTED(7 downto 0),
      S(7) => status1_carry_i_9_n_0,
      S(6) => status1_carry_i_10_n_0,
      S(5) => status1_carry_i_11_n_0,
      S(4) => status1_carry_i_12_n_0,
      S(3) => status1_carry_i_13_n_0,
      S(2) => status1_carry_i_14_n_0,
      S(1) => status1_carry_i_15_n_0,
      S(0) => status1_carry_i_16_n_0
    );
\status1_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => status1_carry_n_0,
      CI_TOP => '0',
      CO(7) => \status1_carry__0_n_0\,
      CO(6) => \status1_carry__0_n_1\,
      CO(5) => \status1_carry__0_n_2\,
      CO(4) => \status1_carry__0_n_3\,
      CO(3) => \status1_carry__0_n_4\,
      CO(2) => \status1_carry__0_n_5\,
      CO(1) => \status1_carry__0_n_6\,
      CO(0) => \status1_carry__0_n_7\,
      DI(7) => \status1_carry__0_i_1_n_0\,
      DI(6) => \status1_carry__0_i_2_n_0\,
      DI(5) => \status1_carry__0_i_3_n_0\,
      DI(4) => \status1_carry__0_i_4_n_0\,
      DI(3) => \status1_carry__0_i_5_n_0\,
      DI(2) => \status1_carry__0_i_6_n_0\,
      DI(1) => \status1_carry__0_i_7_n_0\,
      DI(0) => \status1_carry__0_i_8_n_0\,
      O(7 downto 0) => \NLW_status1_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \status1_carry__0_i_9_n_0\,
      S(6) => \status1_carry__0_i_10_n_0\,
      S(5) => \status1_carry__0_i_11_n_0\,
      S(4) => \status1_carry__0_i_12_n_0\,
      S(3) => \status1_carry__0_i_13_n_0\,
      S(2) => \status1_carry__0_i_14_n_0\,
      S(1) => \status1_carry__0_i_15_n_0\,
      S(0) => \status1_carry__0_i_16_n_0\
    );
\status1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[30]\,
      I1 => energy_threshold_active(30),
      I2 => energy_threshold_active(31),
      I3 => \energy_accumulator_reg_n_0_[31]\,
      O => \status1_carry__0_i_1_n_0\
    );
\status1_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(28),
      I1 => \energy_accumulator_reg_n_0_[28]\,
      I2 => energy_threshold_active(29),
      I3 => \energy_accumulator_reg_n_0_[29]\,
      O => \status1_carry__0_i_10_n_0\
    );
\status1_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(26),
      I1 => \energy_accumulator_reg_n_0_[26]\,
      I2 => energy_threshold_active(27),
      I3 => \energy_accumulator_reg_n_0_[27]\,
      O => \status1_carry__0_i_11_n_0\
    );
\status1_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(24),
      I1 => \energy_accumulator_reg_n_0_[24]\,
      I2 => energy_threshold_active(25),
      I3 => \energy_accumulator_reg_n_0_[25]\,
      O => \status1_carry__0_i_12_n_0\
    );
\status1_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(22),
      I1 => \energy_accumulator_reg_n_0_[22]\,
      I2 => energy_threshold_active(23),
      I3 => \energy_accumulator_reg_n_0_[23]\,
      O => \status1_carry__0_i_13_n_0\
    );
\status1_carry__0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(20),
      I1 => \energy_accumulator_reg_n_0_[20]\,
      I2 => energy_threshold_active(21),
      I3 => \energy_accumulator_reg_n_0_[21]\,
      O => \status1_carry__0_i_14_n_0\
    );
\status1_carry__0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(18),
      I1 => \energy_accumulator_reg_n_0_[18]\,
      I2 => energy_threshold_active(19),
      I3 => \energy_accumulator_reg_n_0_[19]\,
      O => \status1_carry__0_i_15_n_0\
    );
\status1_carry__0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(16),
      I1 => \energy_accumulator_reg_n_0_[16]\,
      I2 => energy_threshold_active(17),
      I3 => \energy_accumulator_reg_n_0_[17]\,
      O => \status1_carry__0_i_16_n_0\
    );
\status1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[28]\,
      I1 => energy_threshold_active(28),
      I2 => energy_threshold_active(29),
      I3 => \energy_accumulator_reg_n_0_[29]\,
      O => \status1_carry__0_i_2_n_0\
    );
\status1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[26]\,
      I1 => energy_threshold_active(26),
      I2 => energy_threshold_active(27),
      I3 => \energy_accumulator_reg_n_0_[27]\,
      O => \status1_carry__0_i_3_n_0\
    );
\status1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[24]\,
      I1 => energy_threshold_active(24),
      I2 => energy_threshold_active(25),
      I3 => \energy_accumulator_reg_n_0_[25]\,
      O => \status1_carry__0_i_4_n_0\
    );
\status1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[22]\,
      I1 => energy_threshold_active(22),
      I2 => energy_threshold_active(23),
      I3 => \energy_accumulator_reg_n_0_[23]\,
      O => \status1_carry__0_i_5_n_0\
    );
\status1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[20]\,
      I1 => energy_threshold_active(20),
      I2 => energy_threshold_active(21),
      I3 => \energy_accumulator_reg_n_0_[21]\,
      O => \status1_carry__0_i_6_n_0\
    );
\status1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[18]\,
      I1 => energy_threshold_active(18),
      I2 => energy_threshold_active(19),
      I3 => \energy_accumulator_reg_n_0_[19]\,
      O => \status1_carry__0_i_7_n_0\
    );
\status1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[16]\,
      I1 => energy_threshold_active(16),
      I2 => energy_threshold_active(17),
      I3 => \energy_accumulator_reg_n_0_[17]\,
      O => \status1_carry__0_i_8_n_0\
    );
\status1_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(30),
      I1 => \energy_accumulator_reg_n_0_[30]\,
      I2 => energy_threshold_active(31),
      I3 => \energy_accumulator_reg_n_0_[31]\,
      O => \status1_carry__0_i_9_n_0\
    );
\status1_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \status1_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \status1_carry__1_n_0\,
      CO(6) => \status1_carry__1_n_1\,
      CO(5) => \status1_carry__1_n_2\,
      CO(4) => \status1_carry__1_n_3\,
      CO(3) => \status1_carry__1_n_4\,
      CO(2) => \status1_carry__1_n_5\,
      CO(1) => \status1_carry__1_n_6\,
      CO(0) => \status1_carry__1_n_7\,
      DI(7) => \status1_carry__1_i_1_n_0\,
      DI(6) => \status1_carry__1_i_2_n_0\,
      DI(5) => \status1_carry__1_i_3_n_0\,
      DI(4) => \status1_carry__1_i_4_n_0\,
      DI(3) => \status1_carry__1_i_5_n_0\,
      DI(2) => \status1_carry__1_i_6_n_0\,
      DI(1) => \status1_carry__1_i_7_n_0\,
      DI(0) => \status1_carry__1_i_8_n_0\,
      O(7 downto 0) => \NLW_status1_carry__1_O_UNCONNECTED\(7 downto 0),
      S(7) => \status1_carry__1_i_9_n_0\,
      S(6) => \status1_carry__1_i_10_n_0\,
      S(5) => \status1_carry__1_i_11_n_0\,
      S(4) => \status1_carry__1_i_12_n_0\,
      S(3) => \status1_carry__1_i_13_n_0\,
      S(2) => \status1_carry__1_i_14_n_0\,
      S(1) => \status1_carry__1_i_15_n_0\,
      S(0) => \status1_carry__1_i_16_n_0\
    );
\status1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[46]\,
      I1 => energy_threshold_active(46),
      I2 => energy_threshold_active(47),
      I3 => \energy_accumulator_reg_n_0_[47]\,
      O => \status1_carry__1_i_1_n_0\
    );
\status1_carry__1_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(44),
      I1 => \energy_accumulator_reg_n_0_[44]\,
      I2 => energy_threshold_active(45),
      I3 => \energy_accumulator_reg_n_0_[45]\,
      O => \status1_carry__1_i_10_n_0\
    );
\status1_carry__1_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(42),
      I1 => \energy_accumulator_reg_n_0_[42]\,
      I2 => energy_threshold_active(43),
      I3 => \energy_accumulator_reg_n_0_[43]\,
      O => \status1_carry__1_i_11_n_0\
    );
\status1_carry__1_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(40),
      I1 => \energy_accumulator_reg_n_0_[40]\,
      I2 => energy_threshold_active(41),
      I3 => \energy_accumulator_reg_n_0_[41]\,
      O => \status1_carry__1_i_12_n_0\
    );
\status1_carry__1_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(38),
      I1 => \energy_accumulator_reg_n_0_[38]\,
      I2 => energy_threshold_active(39),
      I3 => \energy_accumulator_reg_n_0_[39]\,
      O => \status1_carry__1_i_13_n_0\
    );
\status1_carry__1_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(36),
      I1 => \energy_accumulator_reg_n_0_[36]\,
      I2 => energy_threshold_active(37),
      I3 => \energy_accumulator_reg_n_0_[37]\,
      O => \status1_carry__1_i_14_n_0\
    );
\status1_carry__1_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(34),
      I1 => \energy_accumulator_reg_n_0_[34]\,
      I2 => energy_threshold_active(35),
      I3 => \energy_accumulator_reg_n_0_[35]\,
      O => \status1_carry__1_i_15_n_0\
    );
\status1_carry__1_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(32),
      I1 => \energy_accumulator_reg_n_0_[32]\,
      I2 => energy_threshold_active(33),
      I3 => \energy_accumulator_reg_n_0_[33]\,
      O => \status1_carry__1_i_16_n_0\
    );
\status1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[44]\,
      I1 => energy_threshold_active(44),
      I2 => energy_threshold_active(45),
      I3 => \energy_accumulator_reg_n_0_[45]\,
      O => \status1_carry__1_i_2_n_0\
    );
\status1_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[42]\,
      I1 => energy_threshold_active(42),
      I2 => energy_threshold_active(43),
      I3 => \energy_accumulator_reg_n_0_[43]\,
      O => \status1_carry__1_i_3_n_0\
    );
\status1_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[40]\,
      I1 => energy_threshold_active(40),
      I2 => energy_threshold_active(41),
      I3 => \energy_accumulator_reg_n_0_[41]\,
      O => \status1_carry__1_i_4_n_0\
    );
\status1_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[38]\,
      I1 => energy_threshold_active(38),
      I2 => energy_threshold_active(39),
      I3 => \energy_accumulator_reg_n_0_[39]\,
      O => \status1_carry__1_i_5_n_0\
    );
\status1_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[36]\,
      I1 => energy_threshold_active(36),
      I2 => energy_threshold_active(37),
      I3 => \energy_accumulator_reg_n_0_[37]\,
      O => \status1_carry__1_i_6_n_0\
    );
\status1_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[34]\,
      I1 => energy_threshold_active(34),
      I2 => energy_threshold_active(35),
      I3 => \energy_accumulator_reg_n_0_[35]\,
      O => \status1_carry__1_i_7_n_0\
    );
\status1_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[32]\,
      I1 => energy_threshold_active(32),
      I2 => energy_threshold_active(33),
      I3 => \energy_accumulator_reg_n_0_[33]\,
      O => \status1_carry__1_i_8_n_0\
    );
\status1_carry__1_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(46),
      I1 => \energy_accumulator_reg_n_0_[46]\,
      I2 => energy_threshold_active(47),
      I3 => \energy_accumulator_reg_n_0_[47]\,
      O => \status1_carry__1_i_9_n_0\
    );
\status1_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \status1_carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \status1_carry__2_n_0\,
      CO(6) => \status1_carry__2_n_1\,
      CO(5) => \status1_carry__2_n_2\,
      CO(4) => \status1_carry__2_n_3\,
      CO(3) => \status1_carry__2_n_4\,
      CO(2) => \status1_carry__2_n_5\,
      CO(1) => \status1_carry__2_n_6\,
      CO(0) => \status1_carry__2_n_7\,
      DI(7) => \status1_carry__2_i_1_n_0\,
      DI(6) => \status1_carry__2_i_2_n_0\,
      DI(5) => \status1_carry__2_i_3_n_0\,
      DI(4) => \status1_carry__2_i_4_n_0\,
      DI(3) => \status1_carry__2_i_5_n_0\,
      DI(2) => \status1_carry__2_i_6_n_0\,
      DI(1) => \status1_carry__2_i_7_n_0\,
      DI(0) => \status1_carry__2_i_8_n_0\,
      O(7 downto 0) => \NLW_status1_carry__2_O_UNCONNECTED\(7 downto 0),
      S(7) => \status1_carry__2_i_9_n_0\,
      S(6) => \status1_carry__2_i_10_n_0\,
      S(5) => \status1_carry__2_i_11_n_0\,
      S(4) => \status1_carry__2_i_12_n_0\,
      S(3) => \status1_carry__2_i_13_n_0\,
      S(2) => \status1_carry__2_i_14_n_0\,
      S(1) => \status1_carry__2_i_15_n_0\,
      S(0) => \status1_carry__2_i_16_n_0\
    );
\status1_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[62]\,
      I1 => energy_threshold_active(62),
      I2 => energy_threshold_active(63),
      I3 => \energy_accumulator_reg_n_0_[63]\,
      O => \status1_carry__2_i_1_n_0\
    );
\status1_carry__2_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(60),
      I1 => \energy_accumulator_reg_n_0_[60]\,
      I2 => energy_threshold_active(61),
      I3 => \energy_accumulator_reg_n_0_[61]\,
      O => \status1_carry__2_i_10_n_0\
    );
\status1_carry__2_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(58),
      I1 => \energy_accumulator_reg_n_0_[58]\,
      I2 => energy_threshold_active(59),
      I3 => \energy_accumulator_reg_n_0_[59]\,
      O => \status1_carry__2_i_11_n_0\
    );
\status1_carry__2_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(56),
      I1 => \energy_accumulator_reg_n_0_[56]\,
      I2 => energy_threshold_active(57),
      I3 => \energy_accumulator_reg_n_0_[57]\,
      O => \status1_carry__2_i_12_n_0\
    );
\status1_carry__2_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(54),
      I1 => \energy_accumulator_reg_n_0_[54]\,
      I2 => energy_threshold_active(55),
      I3 => \energy_accumulator_reg_n_0_[55]\,
      O => \status1_carry__2_i_13_n_0\
    );
\status1_carry__2_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(52),
      I1 => \energy_accumulator_reg_n_0_[52]\,
      I2 => energy_threshold_active(53),
      I3 => \energy_accumulator_reg_n_0_[53]\,
      O => \status1_carry__2_i_14_n_0\
    );
\status1_carry__2_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(50),
      I1 => \energy_accumulator_reg_n_0_[50]\,
      I2 => energy_threshold_active(51),
      I3 => \energy_accumulator_reg_n_0_[51]\,
      O => \status1_carry__2_i_15_n_0\
    );
\status1_carry__2_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(48),
      I1 => \energy_accumulator_reg_n_0_[48]\,
      I2 => energy_threshold_active(49),
      I3 => \energy_accumulator_reg_n_0_[49]\,
      O => \status1_carry__2_i_16_n_0\
    );
\status1_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[60]\,
      I1 => energy_threshold_active(60),
      I2 => energy_threshold_active(61),
      I3 => \energy_accumulator_reg_n_0_[61]\,
      O => \status1_carry__2_i_2_n_0\
    );
\status1_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[58]\,
      I1 => energy_threshold_active(58),
      I2 => energy_threshold_active(59),
      I3 => \energy_accumulator_reg_n_0_[59]\,
      O => \status1_carry__2_i_3_n_0\
    );
\status1_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[56]\,
      I1 => energy_threshold_active(56),
      I2 => energy_threshold_active(57),
      I3 => \energy_accumulator_reg_n_0_[57]\,
      O => \status1_carry__2_i_4_n_0\
    );
\status1_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[54]\,
      I1 => energy_threshold_active(54),
      I2 => energy_threshold_active(55),
      I3 => \energy_accumulator_reg_n_0_[55]\,
      O => \status1_carry__2_i_5_n_0\
    );
\status1_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[52]\,
      I1 => energy_threshold_active(52),
      I2 => energy_threshold_active(53),
      I3 => \energy_accumulator_reg_n_0_[53]\,
      O => \status1_carry__2_i_6_n_0\
    );
\status1_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[50]\,
      I1 => energy_threshold_active(50),
      I2 => energy_threshold_active(51),
      I3 => \energy_accumulator_reg_n_0_[51]\,
      O => \status1_carry__2_i_7_n_0\
    );
\status1_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[48]\,
      I1 => energy_threshold_active(48),
      I2 => energy_threshold_active(49),
      I3 => \energy_accumulator_reg_n_0_[49]\,
      O => \status1_carry__2_i_8_n_0\
    );
\status1_carry__2_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(62),
      I1 => \energy_accumulator_reg_n_0_[62]\,
      I2 => energy_threshold_active(63),
      I3 => \energy_accumulator_reg_n_0_[63]\,
      O => \status1_carry__2_i_9_n_0\
    );
status1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[14]\,
      I1 => energy_threshold_active(14),
      I2 => energy_threshold_active(15),
      I3 => \energy_accumulator_reg_n_0_[15]\,
      O => status1_carry_i_1_n_0
    );
status1_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(12),
      I1 => \energy_accumulator_reg_n_0_[12]\,
      I2 => energy_threshold_active(13),
      I3 => \energy_accumulator_reg_n_0_[13]\,
      O => status1_carry_i_10_n_0
    );
status1_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(10),
      I1 => \energy_accumulator_reg_n_0_[10]\,
      I2 => energy_threshold_active(11),
      I3 => \energy_accumulator_reg_n_0_[11]\,
      O => status1_carry_i_11_n_0
    );
status1_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(8),
      I1 => \energy_accumulator_reg_n_0_[8]\,
      I2 => energy_threshold_active(9),
      I3 => \energy_accumulator_reg_n_0_[9]\,
      O => status1_carry_i_12_n_0
    );
status1_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(6),
      I1 => \energy_accumulator_reg_n_0_[6]\,
      I2 => energy_threshold_active(7),
      I3 => \energy_accumulator_reg_n_0_[7]\,
      O => status1_carry_i_13_n_0
    );
status1_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(4),
      I1 => \energy_accumulator_reg_n_0_[4]\,
      I2 => energy_threshold_active(5),
      I3 => \energy_accumulator_reg_n_0_[5]\,
      O => status1_carry_i_14_n_0
    );
status1_carry_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(2),
      I1 => \energy_accumulator_reg_n_0_[2]\,
      I2 => energy_threshold_active(3),
      I3 => \energy_accumulator_reg_n_0_[3]\,
      O => status1_carry_i_15_n_0
    );
status1_carry_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(0),
      I1 => \energy_accumulator_reg_n_0_[0]\,
      I2 => energy_threshold_active(1),
      I3 => \energy_accumulator_reg_n_0_[1]\,
      O => status1_carry_i_16_n_0
    );
status1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[12]\,
      I1 => energy_threshold_active(12),
      I2 => energy_threshold_active(13),
      I3 => \energy_accumulator_reg_n_0_[13]\,
      O => status1_carry_i_2_n_0
    );
status1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[10]\,
      I1 => energy_threshold_active(10),
      I2 => energy_threshold_active(11),
      I3 => \energy_accumulator_reg_n_0_[11]\,
      O => status1_carry_i_3_n_0
    );
status1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[8]\,
      I1 => energy_threshold_active(8),
      I2 => energy_threshold_active(9),
      I3 => \energy_accumulator_reg_n_0_[9]\,
      O => status1_carry_i_4_n_0
    );
status1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[6]\,
      I1 => energy_threshold_active(6),
      I2 => energy_threshold_active(7),
      I3 => \energy_accumulator_reg_n_0_[7]\,
      O => status1_carry_i_5_n_0
    );
status1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[4]\,
      I1 => energy_threshold_active(4),
      I2 => energy_threshold_active(5),
      I3 => \energy_accumulator_reg_n_0_[5]\,
      O => status1_carry_i_6_n_0
    );
status1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[2]\,
      I1 => energy_threshold_active(2),
      I2 => energy_threshold_active(3),
      I3 => \energy_accumulator_reg_n_0_[3]\,
      O => status1_carry_i_7_n_0
    );
status1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \energy_accumulator_reg_n_0_[0]\,
      I1 => energy_threshold_active(0),
      I2 => energy_threshold_active(1),
      I3 => \energy_accumulator_reg_n_0_[1]\,
      O => status1_carry_i_8_n_0
    );
status1_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => energy_threshold_active(14),
      I1 => \energy_accumulator_reg_n_0_[14]\,
      I2 => energy_threshold_active(15),
      I3 => \energy_accumulator_reg_n_0_[15]\,
      O => status1_carry_i_9_n_0
    );
\status[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^enable_d\,
      O => status(0)
    );
\status[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^enable_d\,
      I1 => \status1_carry__2_n_0\,
      O => status(2)
    );
\status[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80AA"
    )
        port map (
      I0 => sw_en,
      I1 => pow_m_axis_tvalid,
      I2 => p_0_out(62),
      I3 => \^enable_d\,
      O => \status[3]_i_1_n_0\
    );
\status[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^enable_d\,
      I1 => \status1_carry__2_n_0\,
      O => status(3)
    );
\status_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => main_clk_250m,
      CE => \status[3]_i_1_n_0\,
      D => status(0),
      PRE => \energy_threshold_active_reg[63]_0\,
      Q => \status_reg[3]_0\(0)
    );
\status_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => \status[3]_i_1_n_0\,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => status(2),
      Q => \status_reg[3]_0\(1)
    );
\status_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => \status[3]_i_1_n_0\,
      CLR => \energy_threshold_active_reg[63]_0\,
      D => status(3),
      Q => \status_reg[3]_0\(2)
    );
stop_signal_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4CCC000040000000"
    )
        port map (
      I0 => \status1_carry__2_n_0\,
      I1 => sw_en,
      I2 => pow_m_axis_tvalid,
      I3 => p_0_out(62),
      I4 => \^enable_d\,
      I5 => \^power_stop_signal\,
      O => stop_signal_i_1_n_0
    );
stop_signal_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => stop_signal_i_4_n_0,
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => p_0_out(62)
    );
stop_signal_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      O => stop_signal_i_4_n_0
    );
stop_signal_reg: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => \energy_threshold_active_reg[63]_0\,
      D => stop_signal_i_1_n_0,
      Q => \^power_stop_signal\
    );
\window_pipe_reg[31][0]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(0),
      Q => \NLW_window_pipe_reg[31][0]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][0]_srl32_n_1\
    );
\window_pipe_reg[31][10]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(10),
      Q => \NLW_window_pipe_reg[31][10]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][10]_srl32_n_1\
    );
\window_pipe_reg[31][11]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(11),
      Q => \NLW_window_pipe_reg[31][11]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][11]_srl32_n_1\
    );
\window_pipe_reg[31][12]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(12),
      Q => \NLW_window_pipe_reg[31][12]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][12]_srl32_n_1\
    );
\window_pipe_reg[31][13]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(13),
      Q => \NLW_window_pipe_reg[31][13]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][13]_srl32_n_1\
    );
\window_pipe_reg[31][14]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(14),
      Q => \NLW_window_pipe_reg[31][14]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][14]_srl32_n_1\
    );
\window_pipe_reg[31][15]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(15),
      Q => \NLW_window_pipe_reg[31][15]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][15]_srl32_n_1\
    );
\window_pipe_reg[31][16]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(16),
      Q => \NLW_window_pipe_reg[31][16]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][16]_srl32_n_1\
    );
\window_pipe_reg[31][17]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(17),
      Q => \NLW_window_pipe_reg[31][17]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][17]_srl32_n_1\
    );
\window_pipe_reg[31][18]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(18),
      Q => \NLW_window_pipe_reg[31][18]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][18]_srl32_n_1\
    );
\window_pipe_reg[31][19]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(19),
      Q => \NLW_window_pipe_reg[31][19]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][19]_srl32_n_1\
    );
\window_pipe_reg[31][1]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(1),
      Q => \NLW_window_pipe_reg[31][1]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][1]_srl32_n_1\
    );
\window_pipe_reg[31][20]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(20),
      Q => \NLW_window_pipe_reg[31][20]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][20]_srl32_n_1\
    );
\window_pipe_reg[31][21]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(21),
      Q => \NLW_window_pipe_reg[31][21]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][21]_srl32_n_1\
    );
\window_pipe_reg[31][22]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(22),
      Q => \NLW_window_pipe_reg[31][22]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][22]_srl32_n_1\
    );
\window_pipe_reg[31][23]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(23),
      Q => \NLW_window_pipe_reg[31][23]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][23]_srl32_n_1\
    );
\window_pipe_reg[31][24]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(24),
      Q => \NLW_window_pipe_reg[31][24]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][24]_srl32_n_1\
    );
\window_pipe_reg[31][25]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(25),
      Q => \NLW_window_pipe_reg[31][25]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][25]_srl32_n_1\
    );
\window_pipe_reg[31][26]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(26),
      Q => \NLW_window_pipe_reg[31][26]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][26]_srl32_n_1\
    );
\window_pipe_reg[31][27]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(27),
      Q => \NLW_window_pipe_reg[31][27]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][27]_srl32_n_1\
    );
\window_pipe_reg[31][28]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(28),
      Q => \NLW_window_pipe_reg[31][28]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][28]_srl32_n_1\
    );
\window_pipe_reg[31][29]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(29),
      Q => \NLW_window_pipe_reg[31][29]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][29]_srl32_n_1\
    );
\window_pipe_reg[31][2]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(2),
      Q => \NLW_window_pipe_reg[31][2]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][2]_srl32_n_1\
    );
\window_pipe_reg[31][30]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(30),
      Q => \NLW_window_pipe_reg[31][30]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][30]_srl32_n_1\
    );
\window_pipe_reg[31][31]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(31),
      Q => \NLW_window_pipe_reg[31][31]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][31]_srl32_n_1\
    );
\window_pipe_reg[31][3]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(3),
      Q => \NLW_window_pipe_reg[31][3]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][3]_srl32_n_1\
    );
\window_pipe_reg[31][4]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(4),
      Q => \NLW_window_pipe_reg[31][4]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][4]_srl32_n_1\
    );
\window_pipe_reg[31][5]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(5),
      Q => \NLW_window_pipe_reg[31][5]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][5]_srl32_n_1\
    );
\window_pipe_reg[31][6]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(6),
      Q => \NLW_window_pipe_reg[31][6]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][6]_srl32_n_1\
    );
\window_pipe_reg[31][7]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(7),
      Q => \NLW_window_pipe_reg[31][7]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][7]_srl32_n_1\
    );
\window_pipe_reg[31][8]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(8),
      Q => \NLW_window_pipe_reg[31][8]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][8]_srl32_n_1\
    );
\window_pipe_reg[31][9]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => pow_data(9),
      Q => \NLW_window_pipe_reg[31][9]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[31][9]_srl32_n_1\
    );
\window_pipe_reg[63][0]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][0]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][0]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][0]_srl32_n_1\
    );
\window_pipe_reg[63][10]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][10]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][10]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][10]_srl32_n_1\
    );
\window_pipe_reg[63][11]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][11]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][11]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][11]_srl32_n_1\
    );
\window_pipe_reg[63][12]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][12]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][12]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][12]_srl32_n_1\
    );
\window_pipe_reg[63][13]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][13]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][13]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][13]_srl32_n_1\
    );
\window_pipe_reg[63][14]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][14]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][14]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][14]_srl32_n_1\
    );
\window_pipe_reg[63][15]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][15]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][15]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][15]_srl32_n_1\
    );
\window_pipe_reg[63][16]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][16]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][16]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][16]_srl32_n_1\
    );
\window_pipe_reg[63][17]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][17]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][17]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][17]_srl32_n_1\
    );
\window_pipe_reg[63][18]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][18]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][18]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][18]_srl32_n_1\
    );
\window_pipe_reg[63][19]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][19]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][19]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][19]_srl32_n_1\
    );
\window_pipe_reg[63][1]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][1]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][1]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][1]_srl32_n_1\
    );
\window_pipe_reg[63][20]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][20]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][20]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][20]_srl32_n_1\
    );
\window_pipe_reg[63][21]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][21]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][21]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][21]_srl32_n_1\
    );
\window_pipe_reg[63][22]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][22]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][22]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][22]_srl32_n_1\
    );
\window_pipe_reg[63][23]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][23]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][23]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][23]_srl32_n_1\
    );
\window_pipe_reg[63][24]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][24]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][24]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][24]_srl32_n_1\
    );
\window_pipe_reg[63][25]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][25]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][25]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][25]_srl32_n_1\
    );
\window_pipe_reg[63][26]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][26]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][26]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][26]_srl32_n_1\
    );
\window_pipe_reg[63][27]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][27]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][27]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][27]_srl32_n_1\
    );
\window_pipe_reg[63][28]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][28]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][28]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][28]_srl32_n_1\
    );
\window_pipe_reg[63][29]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][29]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][29]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][29]_srl32_n_1\
    );
\window_pipe_reg[63][2]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][2]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][2]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][2]_srl32_n_1\
    );
\window_pipe_reg[63][30]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][30]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][30]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][30]_srl32_n_1\
    );
\window_pipe_reg[63][31]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][31]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][31]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][31]_srl32_n_1\
    );
\window_pipe_reg[63][3]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][3]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][3]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][3]_srl32_n_1\
    );
\window_pipe_reg[63][4]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][4]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][4]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][4]_srl32_n_1\
    );
\window_pipe_reg[63][5]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][5]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][5]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][5]_srl32_n_1\
    );
\window_pipe_reg[63][6]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][6]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][6]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][6]_srl32_n_1\
    );
\window_pipe_reg[63][7]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][7]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][7]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][7]_srl32_n_1\
    );
\window_pipe_reg[63][8]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][8]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][8]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][8]_srl32_n_1\
    );
\window_pipe_reg[63][9]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[31][9]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[63][9]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[63][9]_srl32_n_1\
    );
\window_pipe_reg[95][0]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][0]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][0]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][0]_srl32_n_1\
    );
\window_pipe_reg[95][10]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][10]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][10]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][10]_srl32_n_1\
    );
\window_pipe_reg[95][11]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][11]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][11]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][11]_srl32_n_1\
    );
\window_pipe_reg[95][12]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][12]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][12]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][12]_srl32_n_1\
    );
\window_pipe_reg[95][13]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][13]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][13]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][13]_srl32_n_1\
    );
\window_pipe_reg[95][14]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][14]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][14]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][14]_srl32_n_1\
    );
\window_pipe_reg[95][15]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][15]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][15]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][15]_srl32_n_1\
    );
\window_pipe_reg[95][16]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][16]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][16]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][16]_srl32_n_1\
    );
\window_pipe_reg[95][17]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][17]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][17]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][17]_srl32_n_1\
    );
\window_pipe_reg[95][18]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][18]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][18]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][18]_srl32_n_1\
    );
\window_pipe_reg[95][19]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][19]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][19]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][19]_srl32_n_1\
    );
\window_pipe_reg[95][1]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][1]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][1]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][1]_srl32_n_1\
    );
\window_pipe_reg[95][20]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][20]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][20]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][20]_srl32_n_1\
    );
\window_pipe_reg[95][21]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][21]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][21]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][21]_srl32_n_1\
    );
\window_pipe_reg[95][22]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][22]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][22]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][22]_srl32_n_1\
    );
\window_pipe_reg[95][23]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][23]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][23]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][23]_srl32_n_1\
    );
\window_pipe_reg[95][24]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][24]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][24]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][24]_srl32_n_1\
    );
\window_pipe_reg[95][25]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][25]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][25]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][25]_srl32_n_1\
    );
\window_pipe_reg[95][26]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][26]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][26]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][26]_srl32_n_1\
    );
\window_pipe_reg[95][27]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][27]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][27]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][27]_srl32_n_1\
    );
\window_pipe_reg[95][28]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][28]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][28]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][28]_srl32_n_1\
    );
\window_pipe_reg[95][29]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][29]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][29]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][29]_srl32_n_1\
    );
\window_pipe_reg[95][2]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][2]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][2]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][2]_srl32_n_1\
    );
\window_pipe_reg[95][30]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][30]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][30]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][30]_srl32_n_1\
    );
\window_pipe_reg[95][31]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][31]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][31]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][31]_srl32_n_1\
    );
\window_pipe_reg[95][3]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][3]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][3]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][3]_srl32_n_1\
    );
\window_pipe_reg[95][4]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][4]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][4]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][4]_srl32_n_1\
    );
\window_pipe_reg[95][5]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][5]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][5]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][5]_srl32_n_1\
    );
\window_pipe_reg[95][6]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][6]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][6]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][6]_srl32_n_1\
    );
\window_pipe_reg[95][7]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][7]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][7]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][7]_srl32_n_1\
    );
\window_pipe_reg[95][8]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][8]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][8]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][8]_srl32_n_1\
    );
\window_pipe_reg[95][9]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[63][9]_srl32_n_1\,
      Q => \NLW_window_pipe_reg[95][9]_srl32_Q_UNCONNECTED\,
      Q31 => \window_pipe_reg[95][9]_srl32_n_1\
    );
\window_pipe_reg[98][0]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][0]_srl32_n_1\,
      Q => \window_pipe_reg[98][0]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][0]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][10]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][10]_srl32_n_1\,
      Q => \window_pipe_reg[98][10]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][10]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][11]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][11]_srl32_n_1\,
      Q => \window_pipe_reg[98][11]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][11]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][12]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][12]_srl32_n_1\,
      Q => \window_pipe_reg[98][12]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][12]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][13]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][13]_srl32_n_1\,
      Q => \window_pipe_reg[98][13]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][13]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][14]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][14]_srl32_n_1\,
      Q => \window_pipe_reg[98][14]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][14]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][15]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][15]_srl32_n_1\,
      Q => \window_pipe_reg[98][15]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][15]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][16]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][16]_srl32_n_1\,
      Q => \window_pipe_reg[98][16]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][16]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][17]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][17]_srl32_n_1\,
      Q => \window_pipe_reg[98][17]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][17]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][18]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][18]_srl32_n_1\,
      Q => \window_pipe_reg[98][18]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][18]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][19]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][19]_srl32_n_1\,
      Q => \window_pipe_reg[98][19]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][19]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][1]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][1]_srl32_n_1\,
      Q => \window_pipe_reg[98][1]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][1]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][20]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][20]_srl32_n_1\,
      Q => \window_pipe_reg[98][20]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][20]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][21]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][21]_srl32_n_1\,
      Q => \window_pipe_reg[98][21]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][21]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][22]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][22]_srl32_n_1\,
      Q => \window_pipe_reg[98][22]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][22]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][23]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][23]_srl32_n_1\,
      Q => \window_pipe_reg[98][23]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][23]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][24]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][24]_srl32_n_1\,
      Q => \window_pipe_reg[98][24]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][24]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][25]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][25]_srl32_n_1\,
      Q => \window_pipe_reg[98][25]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][25]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][26]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][26]_srl32_n_1\,
      Q => \window_pipe_reg[98][26]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][26]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][27]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][27]_srl32_n_1\,
      Q => \window_pipe_reg[98][27]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][27]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][28]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][28]_srl32_n_1\,
      Q => \window_pipe_reg[98][28]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][28]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][29]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][29]_srl32_n_1\,
      Q => \window_pipe_reg[98][29]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][29]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][2]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][2]_srl32_n_1\,
      Q => \window_pipe_reg[98][2]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][2]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][30]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][30]_srl32_n_1\,
      Q => \window_pipe_reg[98][30]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][30]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][31]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][31]_srl32_n_1\,
      Q => \window_pipe_reg[98][31]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][31]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][3]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][3]_srl32_n_1\,
      Q => \window_pipe_reg[98][3]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][3]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][4]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][4]_srl32_n_1\,
      Q => \window_pipe_reg[98][4]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][4]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][5]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][5]_srl32_n_1\,
      Q => \window_pipe_reg[98][5]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][5]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][6]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][6]_srl32_n_1\,
      Q => \window_pipe_reg[98][6]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][6]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][7]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][7]_srl32_n_1\,
      Q => \window_pipe_reg[98][7]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][7]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][8]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][8]_srl32_n_1\,
      Q => \window_pipe_reg[98][8]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][8]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[98][9]_srl3\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"00010",
      CE => sample_fire,
      CLK => main_clk_250m,
      D => \window_pipe_reg[95][9]_srl32_n_1\,
      Q => \window_pipe_reg[98][9]_srl3_n_0\,
      Q31 => \NLW_window_pipe_reg[98][9]_srl3_Q31_UNCONNECTED\
    );
\window_pipe_reg[99][0]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][0]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(0),
      R => '0'
    );
\window_pipe_reg[99][10]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][10]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(10),
      R => '0'
    );
\window_pipe_reg[99][11]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][11]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(11),
      R => '0'
    );
\window_pipe_reg[99][12]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][12]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(12),
      R => '0'
    );
\window_pipe_reg[99][13]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][13]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(13),
      R => '0'
    );
\window_pipe_reg[99][14]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][14]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(14),
      R => '0'
    );
\window_pipe_reg[99][15]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][15]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(15),
      R => '0'
    );
\window_pipe_reg[99][16]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][16]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(16),
      R => '0'
    );
\window_pipe_reg[99][17]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][17]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(17),
      R => '0'
    );
\window_pipe_reg[99][18]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][18]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(18),
      R => '0'
    );
\window_pipe_reg[99][19]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][19]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(19),
      R => '0'
    );
\window_pipe_reg[99][1]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][1]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(1),
      R => '0'
    );
\window_pipe_reg[99][20]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][20]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(20),
      R => '0'
    );
\window_pipe_reg[99][21]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][21]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(21),
      R => '0'
    );
\window_pipe_reg[99][22]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][22]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(22),
      R => '0'
    );
\window_pipe_reg[99][23]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][23]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(23),
      R => '0'
    );
\window_pipe_reg[99][24]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][24]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(24),
      R => '0'
    );
\window_pipe_reg[99][25]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][25]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(25),
      R => '0'
    );
\window_pipe_reg[99][26]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][26]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(26),
      R => '0'
    );
\window_pipe_reg[99][27]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][27]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(27),
      R => '0'
    );
\window_pipe_reg[99][28]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][28]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(28),
      R => '0'
    );
\window_pipe_reg[99][29]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][29]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(29),
      R => '0'
    );
\window_pipe_reg[99][2]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][2]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(2),
      R => '0'
    );
\window_pipe_reg[99][30]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][30]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(30),
      R => '0'
    );
\window_pipe_reg[99][31]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][31]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(31),
      R => '0'
    );
\window_pipe_reg[99][3]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][3]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(3),
      R => '0'
    );
\window_pipe_reg[99][4]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][4]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(4),
      R => '0'
    );
\window_pipe_reg[99][5]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][5]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(5),
      R => '0'
    );
\window_pipe_reg[99][6]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][6]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(6),
      R => '0'
    );
\window_pipe_reg[99][7]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][7]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(7),
      R => '0'
    );
\window_pipe_reg[99][8]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][8]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(8),
      R => '0'
    );
\window_pipe_reg[99][9]\: unisim.vcomponents.FDRE
     port map (
      C => main_clk_250m,
      CE => sample_fire,
      D => \window_pipe_reg[98][9]_srl3_n_0\,
      Q => \window_pipe_reg[99]_0\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ZYNQ_BlockDesign_EDM_Monitor_0_0_EDM_Monitor is
  port (
    clk_p : in STD_LOGIC;
    clk_n : in STD_LOGIC;
    rst_n_async : in STD_LOGIC;
    adc_data_p : in STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_data_n : in STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_dco_p : in STD_LOGIC;
    adc_dco_n : in STD_LOGIC;
    div_param_od0 : out STD_LOGIC;
    power_trig_async : in STD_LOGIC;
    cfg_breakdown : in STD_LOGIC_VECTOR ( 15 downto 0 );
    cfg_energy_threshold : in STD_LOGIC_VECTOR ( 63 downto 0 );
    cfg_update_toggle : in STD_LOGIC;
    ps_clk : in STD_LOGIC;
    power_stop_signal : out STD_LOGIC;
    axi_fifo_m_axis_tvalid : out STD_LOGIC;
    axi_fifo_m_axis_tready : in STD_LOGIC;
    axi_fifo_m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    axi_fifo_m_axis_tlast : out STD_LOGIC
  );
  attribute AXIS_FRAME_DATA_COUNT : integer;
  attribute AXIS_FRAME_DATA_COUNT of ZYNQ_BlockDesign_EDM_Monitor_0_0_EDM_Monitor : entity is 128;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ZYNQ_BlockDesign_EDM_Monitor_0_0_EDM_Monitor : entity is "EDM_Monitor";
end ZYNQ_BlockDesign_EDM_Monitor_0_0_EDM_Monitor;

architecture STRUCTURE of ZYNQ_BlockDesign_EDM_Monitor_0_0_EDM_Monitor is
  component ZYNQ_BlockDesign_EDM_Monitor_0_0_FIR_Filter is
  port (
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tready : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ZYNQ_BlockDesign_EDM_Monitor_0_0_FIR_Filter;
  component ZYNQ_BlockDesign_EDM_Monitor_0_0_ad_sync_fifo is
  port (
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  end component ZYNQ_BlockDesign_EDM_Monitor_0_0_ad_sync_fifo;
  component ZYNQ_BlockDesign_EDM_Monitor_0_0_axis_data_fifo is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component ZYNQ_BlockDesign_EDM_Monitor_0_0_axis_data_fifo;
  component ZYNQ_BlockDesign_EDM_Monitor_0_0_global_clk_wiz is
  port (
    main_clk_250m : out STD_LOGIC;
    idelay_refclk : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );
  end component ZYNQ_BlockDesign_EDM_Monitor_0_0_global_clk_wiz;
  signal adc_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal adc_data_sync : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal adc_dco : STD_LOGIC;
  signal cfg_update_sync : STD_LOGIC;
  signal cfg_update_sync_d : STD_LOGIC;
  signal dco_rst_n_sync : STD_LOGIC;
  signal discharge_stat : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal empty : STD_LOGIC;
  signal enable_d : STD_LOGIC;
  signal energy_accumulator : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \energy_accumulator0__0_carry_i_17_n_0\ : STD_LOGIC;
  signal \energy_accumulator0__0_carry_i_18_n_0\ : STD_LOGIC;
  signal energy_init : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal fifo_full : STD_LOGIC;
  signal fifo_s_axis_data_tready : STD_LOGIC;
  signal fifo_s_axis_data_tvalid : STD_LOGIC;
  signal fifo_wr_en : STD_LOGIC;
  signal fir_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fir_m_axis_data_tvalid : STD_LOGIC;
  signal idelay_refclk : STD_LOGIC;
  signal main_clk_250m : STD_LOGIC;
  signal mmcm_locked : STD_LOGIC;
  signal package_m_axis_tdata : STD_LOGIC_VECTOR ( 116 downto 0 );
  signal package_m_axis_tlast : STD_LOGIC;
  signal package_m_axis_tready : STD_LOGIC;
  signal package_m_axis_tvalid : STD_LOGIC;
  signal package_send_ack : STD_LOGIC;
  signal package_send_req : STD_LOGIC;
  signal pow_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pow_m_axis_tvalid : STD_LOGIC;
  signal reset_sync_n_mainclk_n_1 : STD_LOGIC;
  signal reset_sync_n_mainclk_n_2 : STD_LOGIC;
  signal sample_fire : STD_LOGIC;
  signal shift_count : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sw_en : STD_LOGIC;
  signal sw_result_energy : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal sw_result_status : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sw_result_valid : STD_LOGIC;
  signal sys_rst_n_sync : STD_LOGIC;
  signal time_breakdown : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal time_energy : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal u_Control_FSM_n_104 : STD_LOGIC;
  signal u_Control_FSM_n_105 : STD_LOGIC;
  signal u_Control_FSM_n_106 : STD_LOGIC;
  signal u_Control_FSM_n_107 : STD_LOGIC;
  signal u_Control_FSM_n_108 : STD_LOGIC;
  signal u_Control_FSM_n_109 : STD_LOGIC;
  signal u_Control_FSM_n_110 : STD_LOGIC;
  signal u_Control_FSM_n_111 : STD_LOGIC;
  signal u_Control_FSM_n_112 : STD_LOGIC;
  signal u_Control_FSM_n_113 : STD_LOGIC;
  signal u_Control_FSM_n_114 : STD_LOGIC;
  signal u_Control_FSM_n_115 : STD_LOGIC;
  signal u_Control_FSM_n_116 : STD_LOGIC;
  signal u_Control_FSM_n_117 : STD_LOGIC;
  signal u_Control_FSM_n_118 : STD_LOGIC;
  signal u_Control_FSM_n_119 : STD_LOGIC;
  signal u_Control_FSM_n_120 : STD_LOGIC;
  signal u_Control_FSM_n_121 : STD_LOGIC;
  signal u_Control_FSM_n_122 : STD_LOGIC;
  signal u_Control_FSM_n_123 : STD_LOGIC;
  signal u_Control_FSM_n_124 : STD_LOGIC;
  signal u_Control_FSM_n_125 : STD_LOGIC;
  signal u_Control_FSM_n_126 : STD_LOGIC;
  signal u_Control_FSM_n_127 : STD_LOGIC;
  signal u_Control_FSM_n_128 : STD_LOGIC;
  signal u_Control_FSM_n_129 : STD_LOGIC;
  signal u_Control_FSM_n_130 : STD_LOGIC;
  signal u_Control_FSM_n_131 : STD_LOGIC;
  signal u_Control_FSM_n_132 : STD_LOGIC;
  signal u_Control_FSM_n_133 : STD_LOGIC;
  signal u_Control_FSM_n_134 : STD_LOGIC;
  signal u_Control_FSM_n_135 : STD_LOGIC;
  signal u_Control_FSM_n_136 : STD_LOGIC;
  signal u_Control_FSM_n_137 : STD_LOGIC;
  signal u_Control_FSM_n_138 : STD_LOGIC;
  signal u_Control_FSM_n_139 : STD_LOGIC;
  signal u_Control_FSM_n_140 : STD_LOGIC;
  signal u_Control_FSM_n_141 : STD_LOGIC;
  signal u_Control_FSM_n_142 : STD_LOGIC;
  signal u_Control_FSM_n_143 : STD_LOGIC;
  signal u_Control_FSM_n_144 : STD_LOGIC;
  signal u_Control_FSM_n_145 : STD_LOGIC;
  signal u_Control_FSM_n_146 : STD_LOGIC;
  signal u_Control_FSM_n_147 : STD_LOGIC;
  signal u_Control_FSM_n_148 : STD_LOGIC;
  signal u_Control_FSM_n_149 : STD_LOGIC;
  signal u_Control_FSM_n_150 : STD_LOGIC;
  signal u_Control_FSM_n_151 : STD_LOGIC;
  signal u_Control_FSM_n_152 : STD_LOGIC;
  signal u_Control_FSM_n_153 : STD_LOGIC;
  signal u_Control_FSM_n_154 : STD_LOGIC;
  signal u_Control_FSM_n_155 : STD_LOGIC;
  signal u_Control_FSM_n_156 : STD_LOGIC;
  signal u_Control_FSM_n_157 : STD_LOGIC;
  signal u_Control_FSM_n_158 : STD_LOGIC;
  signal u_Control_FSM_n_159 : STD_LOGIC;
  signal u_Control_FSM_n_160 : STD_LOGIC;
  signal u_Control_FSM_n_161 : STD_LOGIC;
  signal u_Control_FSM_n_162 : STD_LOGIC;
  signal u_Control_FSM_n_163 : STD_LOGIC;
  signal u_Control_FSM_n_164 : STD_LOGIC;
  signal u_Control_FSM_n_165 : STD_LOGIC;
  signal u_Control_FSM_n_166 : STD_LOGIC;
  signal u_Control_FSM_n_167 : STD_LOGIC;
  signal u_Control_FSM_n_168 : STD_LOGIC;
  signal u_Control_FSM_n_169 : STD_LOGIC;
  signal u_Control_FSM_n_170 : STD_LOGIC;
  signal u_Control_FSM_n_2 : STD_LOGIC;
  signal u_ad_sync_fifo_i_1_n_0 : STD_LOGIC;
  signal u_global_clk_wiz_i_1_n_0 : STD_LOGIC;
  signal u_pow_calc_n_0 : STD_LOGIC;
  signal u_pow_calc_n_1 : STD_LOGIC;
  signal u_pow_calc_n_10 : STD_LOGIC;
  signal u_pow_calc_n_11 : STD_LOGIC;
  signal u_pow_calc_n_12 : STD_LOGIC;
  signal u_pow_calc_n_13 : STD_LOGIC;
  signal u_pow_calc_n_14 : STD_LOGIC;
  signal u_pow_calc_n_15 : STD_LOGIC;
  signal u_pow_calc_n_16 : STD_LOGIC;
  signal u_pow_calc_n_17 : STD_LOGIC;
  signal u_pow_calc_n_18 : STD_LOGIC;
  signal u_pow_calc_n_19 : STD_LOGIC;
  signal u_pow_calc_n_2 : STD_LOGIC;
  signal u_pow_calc_n_20 : STD_LOGIC;
  signal u_pow_calc_n_21 : STD_LOGIC;
  signal u_pow_calc_n_22 : STD_LOGIC;
  signal u_pow_calc_n_23 : STD_LOGIC;
  signal u_pow_calc_n_24 : STD_LOGIC;
  signal u_pow_calc_n_25 : STD_LOGIC;
  signal u_pow_calc_n_26 : STD_LOGIC;
  signal u_pow_calc_n_27 : STD_LOGIC;
  signal u_pow_calc_n_28 : STD_LOGIC;
  signal u_pow_calc_n_29 : STD_LOGIC;
  signal u_pow_calc_n_3 : STD_LOGIC;
  signal u_pow_calc_n_30 : STD_LOGIC;
  signal u_pow_calc_n_31 : STD_LOGIC;
  signal u_pow_calc_n_34 : STD_LOGIC;
  signal u_pow_calc_n_35 : STD_LOGIC;
  signal u_pow_calc_n_36 : STD_LOGIC;
  signal u_pow_calc_n_37 : STD_LOGIC;
  signal u_pow_calc_n_4 : STD_LOGIC;
  signal u_pow_calc_n_5 : STD_LOGIC;
  signal u_pow_calc_n_6 : STD_LOGIC;
  signal u_pow_calc_n_7 : STD_LOGIC;
  signal u_pow_calc_n_8 : STD_LOGIC;
  signal u_pow_calc_n_9 : STD_LOGIC;
  signal u_reset_sync_n_dcoclk_n_1 : STD_LOGIC;
  signal u_slide_window_n_10 : STD_LOGIC;
  signal u_slide_window_n_11 : STD_LOGIC;
  signal u_slide_window_n_12 : STD_LOGIC;
  signal u_slide_window_n_13 : STD_LOGIC;
  signal u_slide_window_n_14 : STD_LOGIC;
  signal u_slide_window_n_15 : STD_LOGIC;
  signal u_slide_window_n_16 : STD_LOGIC;
  signal u_slide_window_n_17 : STD_LOGIC;
  signal u_slide_window_n_18 : STD_LOGIC;
  signal u_slide_window_n_19 : STD_LOGIC;
  signal u_slide_window_n_20 : STD_LOGIC;
  signal u_slide_window_n_21 : STD_LOGIC;
  signal u_slide_window_n_22 : STD_LOGIC;
  signal u_slide_window_n_23 : STD_LOGIC;
  signal u_slide_window_n_24 : STD_LOGIC;
  signal u_slide_window_n_25 : STD_LOGIC;
  signal u_slide_window_n_26 : STD_LOGIC;
  signal u_slide_window_n_27 : STD_LOGIC;
  signal u_slide_window_n_28 : STD_LOGIC;
  signal u_slide_window_n_29 : STD_LOGIC;
  signal u_slide_window_n_30 : STD_LOGIC;
  signal u_slide_window_n_31 : STD_LOGIC;
  signal u_slide_window_n_32 : STD_LOGIC;
  signal u_slide_window_n_33 : STD_LOGIC;
  signal u_slide_window_n_34 : STD_LOGIC;
  signal u_slide_window_n_35 : STD_LOGIC;
  signal u_slide_window_n_36 : STD_LOGIC;
  signal u_slide_window_n_37 : STD_LOGIC;
  signal u_slide_window_n_38 : STD_LOGIC;
  signal u_slide_window_n_39 : STD_LOGIC;
  signal u_slide_window_n_4 : STD_LOGIC;
  signal u_slide_window_n_40 : STD_LOGIC;
  signal u_slide_window_n_41 : STD_LOGIC;
  signal u_slide_window_n_42 : STD_LOGIC;
  signal u_slide_window_n_43 : STD_LOGIC;
  signal u_slide_window_n_44 : STD_LOGIC;
  signal u_slide_window_n_45 : STD_LOGIC;
  signal u_slide_window_n_46 : STD_LOGIC;
  signal u_slide_window_n_47 : STD_LOGIC;
  signal u_slide_window_n_48 : STD_LOGIC;
  signal u_slide_window_n_49 : STD_LOGIC;
  signal u_slide_window_n_5 : STD_LOGIC;
  signal u_slide_window_n_50 : STD_LOGIC;
  signal u_slide_window_n_51 : STD_LOGIC;
  signal u_slide_window_n_52 : STD_LOGIC;
  signal u_slide_window_n_53 : STD_LOGIC;
  signal u_slide_window_n_54 : STD_LOGIC;
  signal u_slide_window_n_55 : STD_LOGIC;
  signal u_slide_window_n_56 : STD_LOGIC;
  signal u_slide_window_n_57 : STD_LOGIC;
  signal u_slide_window_n_58 : STD_LOGIC;
  signal u_slide_window_n_59 : STD_LOGIC;
  signal u_slide_window_n_6 : STD_LOGIC;
  signal u_slide_window_n_60 : STD_LOGIC;
  signal u_slide_window_n_61 : STD_LOGIC;
  signal u_slide_window_n_62 : STD_LOGIC;
  signal u_slide_window_n_63 : STD_LOGIC;
  signal u_slide_window_n_64 : STD_LOGIC;
  signal u_slide_window_n_65 : STD_LOGIC;
  signal u_slide_window_n_66 : STD_LOGIC;
  signal u_slide_window_n_67 : STD_LOGIC;
  signal u_slide_window_n_7 : STD_LOGIC;
  signal u_slide_window_n_8 : STD_LOGIC;
  signal u_slide_window_n_9 : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of u_FIR_Filter : label is "FIR_Filter,fir_compiler_v7_2_26,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of u_FIR_Filter : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of u_FIR_Filter : label is "fir_compiler_v7_2_26,Vivado 2025.2";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of u_FIR_Filter_i_1 : label is "soft_lutpair93";
  attribute CHECK_LICENSE_TYPE of u_ad_sync_fifo : label is "ad_sync_fifo,fifo_generator_v13_2_14,{}";
  attribute downgradeipidentifiedwarnings of u_ad_sync_fifo : label is "yes";
  attribute x_core_info of u_ad_sync_fifo : label is "fifo_generator_v13_2_14,Vivado 2025.2";
  attribute SOFT_HLUTNM of u_ad_sync_fifo_i_1 : label is "soft_lutpair93";
  attribute CHECK_LICENSE_TYPE of u_axis_data_fifo : label is "axis_data_fifo,axis_data_fifo_v2_0_17_top,{}";
  attribute downgradeipidentifiedwarnings of u_axis_data_fifo : label is "yes";
  attribute x_core_info of u_axis_data_fifo : label is "axis_data_fifo_v2_0_17_top,Vivado 2025.2";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ps_clk : signal is "xilinx.com:signal:clock:1.0 ps_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ps_clk : signal is "ASSOCIATED_BUSIF axi_fifo_m_axis";
begin
\energy_accumulator0__0_carry_i_17\: unisim.vcomponents.FDCE
     port map (
      C => main_clk_250m,
      CE => '1',
      CLR => reset_sync_n_mainclk_n_1,
      D => \energy_accumulator0__0_carry_i_18_n_0\,
      Q => \energy_accumulator0__0_carry_i_17_n_0\
    );
\energy_accumulator0__0_carry_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fir_m_axis_data_tvalid,
      I1 => \energy_accumulator0__0_carry_i_17_n_0\,
      O => \energy_accumulator0__0_carry_i_18_n_0\
    );
reset_sync_n_mainclk: entity work.ZYNQ_BlockDesign_EDM_Monitor_0_0_reset_sync_n
     port map (
      locked => mmcm_locked,
      main_clk_250m => main_clk_250m,
      \out\(0) => sys_rst_n_sync,
      rst_n_async => rst_n_async,
      rst_n_async_0 => reset_sync_n_mainclk_n_2,
      \sync_ff_reg[2]_0\ => reset_sync_n_mainclk_n_1
    );
u_Control_FSM: entity work.ZYNQ_BlockDesign_EDM_Monitor_0_0_Control_FSM
     port map (
      D(100 downto 96) => discharge_stat(4 downto 0),
      D(95 downto 80) => time_breakdown(15 downto 0),
      D(79 downto 64) => time_energy(15 downto 0),
      D(63 downto 0) => energy_init(63 downto 0),
      \FSM_onehot_current_state_reg[4]_0\ => u_Control_FSM_n_2,
      \FSM_onehot_current_state_reg[4]_1\ => reset_sync_n_mainclk_n_1,
      O(7) => u_slide_window_n_60,
      O(6) => u_slide_window_n_61,
      O(5) => u_slide_window_n_62,
      O(4) => u_slide_window_n_63,
      O(3) => u_slide_window_n_64,
      O(2) => u_slide_window_n_65,
      O(1) => u_slide_window_n_66,
      O(0) => u_slide_window_n_67,
      Q(2) => shift_count(6),
      Q(1 downto 0) => shift_count(3 downto 2),
      cfg_breakdown(15 downto 0) => cfg_breakdown(15 downto 0),
      cfg_update_sync => cfg_update_sync,
      cfg_update_sync_d => cfg_update_sync_d,
      dout(15 downto 0) => adc_data_sync(15 downto 0),
      enable_d => enable_d,
      \energy_accumulator_reg[15]\(7) => u_slide_window_n_12,
      \energy_accumulator_reg[15]\(6) => u_slide_window_n_13,
      \energy_accumulator_reg[15]\(5) => u_slide_window_n_14,
      \energy_accumulator_reg[15]\(4) => u_slide_window_n_15,
      \energy_accumulator_reg[15]\(3) => u_slide_window_n_16,
      \energy_accumulator_reg[15]\(2) => u_slide_window_n_17,
      \energy_accumulator_reg[15]\(1) => u_slide_window_n_18,
      \energy_accumulator_reg[15]\(0) => u_slide_window_n_19,
      \energy_accumulator_reg[23]\(7) => u_slide_window_n_20,
      \energy_accumulator_reg[23]\(6) => u_slide_window_n_21,
      \energy_accumulator_reg[23]\(5) => u_slide_window_n_22,
      \energy_accumulator_reg[23]\(4) => u_slide_window_n_23,
      \energy_accumulator_reg[23]\(3) => u_slide_window_n_24,
      \energy_accumulator_reg[23]\(2) => u_slide_window_n_25,
      \energy_accumulator_reg[23]\(1) => u_slide_window_n_26,
      \energy_accumulator_reg[23]\(0) => u_slide_window_n_27,
      \energy_accumulator_reg[31]\(7) => u_slide_window_n_28,
      \energy_accumulator_reg[31]\(6) => u_slide_window_n_29,
      \energy_accumulator_reg[31]\(5) => u_slide_window_n_30,
      \energy_accumulator_reg[31]\(4) => u_slide_window_n_31,
      \energy_accumulator_reg[31]\(3) => u_slide_window_n_32,
      \energy_accumulator_reg[31]\(2) => u_slide_window_n_33,
      \energy_accumulator_reg[31]\(1) => u_slide_window_n_34,
      \energy_accumulator_reg[31]\(0) => u_slide_window_n_35,
      \energy_accumulator_reg[39]\(7) => u_slide_window_n_36,
      \energy_accumulator_reg[39]\(6) => u_slide_window_n_37,
      \energy_accumulator_reg[39]\(5) => u_slide_window_n_38,
      \energy_accumulator_reg[39]\(4) => u_slide_window_n_39,
      \energy_accumulator_reg[39]\(3) => u_slide_window_n_40,
      \energy_accumulator_reg[39]\(2) => u_slide_window_n_41,
      \energy_accumulator_reg[39]\(1) => u_slide_window_n_42,
      \energy_accumulator_reg[39]\(0) => u_slide_window_n_43,
      \energy_accumulator_reg[47]\(7) => u_slide_window_n_44,
      \energy_accumulator_reg[47]\(6) => u_slide_window_n_45,
      \energy_accumulator_reg[47]\(5) => u_slide_window_n_46,
      \energy_accumulator_reg[47]\(4) => u_slide_window_n_47,
      \energy_accumulator_reg[47]\(3) => u_slide_window_n_48,
      \energy_accumulator_reg[47]\(2) => u_slide_window_n_49,
      \energy_accumulator_reg[47]\(1) => u_slide_window_n_50,
      \energy_accumulator_reg[47]\(0) => u_slide_window_n_51,
      \energy_accumulator_reg[55]\(7) => u_slide_window_n_52,
      \energy_accumulator_reg[55]\(6) => u_slide_window_n_53,
      \energy_accumulator_reg[55]\(5) => u_slide_window_n_54,
      \energy_accumulator_reg[55]\(4) => u_slide_window_n_55,
      \energy_accumulator_reg[55]\(3) => u_slide_window_n_56,
      \energy_accumulator_reg[55]\(2) => u_slide_window_n_57,
      \energy_accumulator_reg[55]\(1) => u_slide_window_n_58,
      \energy_accumulator_reg[55]\(0) => u_slide_window_n_59,
      \energy_accumulator_reg[7]\(7) => u_slide_window_n_4,
      \energy_accumulator_reg[7]\(6) => u_slide_window_n_5,
      \energy_accumulator_reg[7]\(5) => u_slide_window_n_6,
      \energy_accumulator_reg[7]\(4) => u_slide_window_n_7,
      \energy_accumulator_reg[7]\(3) => u_slide_window_n_8,
      \energy_accumulator_reg[7]\(2) => u_slide_window_n_9,
      \energy_accumulator_reg[7]\(1) => u_slide_window_n_10,
      \energy_accumulator_reg[7]\(0) => u_slide_window_n_11,
      \energy_init_latched_reg[63]_0\(63 downto 0) => sw_result_energy(63 downto 0),
      main_clk_250m => main_clk_250m,
      package_send_ack => package_send_ack,
      package_send_req => package_send_req,
      pow_m_axis_tvalid => pow_m_axis_tvalid,
      power_trig_async => power_trig_async,
      slide_window_en_reg_0(2) => u_Control_FSM_n_104,
      slide_window_en_reg_0(1) => u_Control_FSM_n_105,
      slide_window_en_reg_0(0) => u_Control_FSM_n_106,
      slide_window_en_reg_1(63) => u_Control_FSM_n_107,
      slide_window_en_reg_1(62) => u_Control_FSM_n_108,
      slide_window_en_reg_1(61) => u_Control_FSM_n_109,
      slide_window_en_reg_1(60) => u_Control_FSM_n_110,
      slide_window_en_reg_1(59) => u_Control_FSM_n_111,
      slide_window_en_reg_1(58) => u_Control_FSM_n_112,
      slide_window_en_reg_1(57) => u_Control_FSM_n_113,
      slide_window_en_reg_1(56) => u_Control_FSM_n_114,
      slide_window_en_reg_1(55) => u_Control_FSM_n_115,
      slide_window_en_reg_1(54) => u_Control_FSM_n_116,
      slide_window_en_reg_1(53) => u_Control_FSM_n_117,
      slide_window_en_reg_1(52) => u_Control_FSM_n_118,
      slide_window_en_reg_1(51) => u_Control_FSM_n_119,
      slide_window_en_reg_1(50) => u_Control_FSM_n_120,
      slide_window_en_reg_1(49) => u_Control_FSM_n_121,
      slide_window_en_reg_1(48) => u_Control_FSM_n_122,
      slide_window_en_reg_1(47) => u_Control_FSM_n_123,
      slide_window_en_reg_1(46) => u_Control_FSM_n_124,
      slide_window_en_reg_1(45) => u_Control_FSM_n_125,
      slide_window_en_reg_1(44) => u_Control_FSM_n_126,
      slide_window_en_reg_1(43) => u_Control_FSM_n_127,
      slide_window_en_reg_1(42) => u_Control_FSM_n_128,
      slide_window_en_reg_1(41) => u_Control_FSM_n_129,
      slide_window_en_reg_1(40) => u_Control_FSM_n_130,
      slide_window_en_reg_1(39) => u_Control_FSM_n_131,
      slide_window_en_reg_1(38) => u_Control_FSM_n_132,
      slide_window_en_reg_1(37) => u_Control_FSM_n_133,
      slide_window_en_reg_1(36) => u_Control_FSM_n_134,
      slide_window_en_reg_1(35) => u_Control_FSM_n_135,
      slide_window_en_reg_1(34) => u_Control_FSM_n_136,
      slide_window_en_reg_1(33) => u_Control_FSM_n_137,
      slide_window_en_reg_1(32) => u_Control_FSM_n_138,
      slide_window_en_reg_1(31) => u_Control_FSM_n_139,
      slide_window_en_reg_1(30) => u_Control_FSM_n_140,
      slide_window_en_reg_1(29) => u_Control_FSM_n_141,
      slide_window_en_reg_1(28) => u_Control_FSM_n_142,
      slide_window_en_reg_1(27) => u_Control_FSM_n_143,
      slide_window_en_reg_1(26) => u_Control_FSM_n_144,
      slide_window_en_reg_1(25) => u_Control_FSM_n_145,
      slide_window_en_reg_1(24) => u_Control_FSM_n_146,
      slide_window_en_reg_1(23) => u_Control_FSM_n_147,
      slide_window_en_reg_1(22) => u_Control_FSM_n_148,
      slide_window_en_reg_1(21) => u_Control_FSM_n_149,
      slide_window_en_reg_1(20) => u_Control_FSM_n_150,
      slide_window_en_reg_1(19) => u_Control_FSM_n_151,
      slide_window_en_reg_1(18) => u_Control_FSM_n_152,
      slide_window_en_reg_1(17) => u_Control_FSM_n_153,
      slide_window_en_reg_1(16) => u_Control_FSM_n_154,
      slide_window_en_reg_1(15) => u_Control_FSM_n_155,
      slide_window_en_reg_1(14) => u_Control_FSM_n_156,
      slide_window_en_reg_1(13) => u_Control_FSM_n_157,
      slide_window_en_reg_1(12) => u_Control_FSM_n_158,
      slide_window_en_reg_1(11) => u_Control_FSM_n_159,
      slide_window_en_reg_1(10) => u_Control_FSM_n_160,
      slide_window_en_reg_1(9) => u_Control_FSM_n_161,
      slide_window_en_reg_1(8) => u_Control_FSM_n_162,
      slide_window_en_reg_1(7) => u_Control_FSM_n_163,
      slide_window_en_reg_1(6) => u_Control_FSM_n_164,
      slide_window_en_reg_1(5) => u_Control_FSM_n_165,
      slide_window_en_reg_1(4) => u_Control_FSM_n_166,
      slide_window_en_reg_1(3) => u_Control_FSM_n_167,
      slide_window_en_reg_1(2) => u_Control_FSM_n_168,
      slide_window_en_reg_1(1) => u_Control_FSM_n_169,
      slide_window_en_reg_1(0) => u_Control_FSM_n_170,
      sw_en => sw_en,
      sw_result_valid => sw_result_valid,
      \sw_status_latched_reg[3]_0\(2 downto 1) => sw_result_status(3 downto 2),
      \sw_status_latched_reg[3]_0\(0) => sw_result_status(0)
    );
u_FIR_Filter: component ZYNQ_BlockDesign_EDM_Monitor_0_0_FIR_Filter
     port map (
      aclk => main_clk_250m,
      aresetn => sys_rst_n_sync,
      m_axis_data_tdata(15 downto 0) => fir_data(15 downto 0),
      m_axis_data_tready => '1',
      m_axis_data_tvalid => fir_m_axis_data_tvalid,
      s_axis_data_tdata(15 downto 0) => adc_data_sync(15 downto 0),
      s_axis_data_tready => fifo_s_axis_data_tready,
      s_axis_data_tvalid => fifo_s_axis_data_tvalid
    );
u_FIR_Filter_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => empty,
      O => fifo_s_axis_data_tvalid
    );
u_ad9434: entity work.ZYNQ_BlockDesign_EDM_Monitor_0_0_ad9434
     port map (
      CLK => adc_dco,
      Q(12) => adc_data(15),
      Q(11 downto 0) => adc_data(11 downto 0),
      adc_data_n(11 downto 0) => adc_data_n(11 downto 0),
      adc_data_p(11 downto 0) => adc_data_p(11 downto 0),
      adc_dco_n => adc_dco_n,
      adc_dco_p => adc_dco_p,
      div_param_od0 => div_param_od0,
      full => fifo_full,
      idelay_refclk => idelay_refclk,
      \out\(0) => dco_rst_n_sync,
      wr_en => fifo_wr_en,
      wr_rst => u_reset_sync_n_dcoclk_n_1
    );
u_ad_sync_fifo: component ZYNQ_BlockDesign_EDM_Monitor_0_0_ad_sync_fifo
     port map (
      din(15) => adc_data(15),
      din(14) => adc_data(15),
      din(13) => adc_data(15),
      din(12) => adc_data(15),
      din(11 downto 0) => adc_data(11 downto 0),
      dout(15 downto 0) => adc_data_sync(15 downto 0),
      empty => empty,
      full => fifo_full,
      rd_clk => main_clk_250m,
      rd_en => u_ad_sync_fifo_i_1_n_0,
      rd_rst => reset_sync_n_mainclk_n_1,
      wr_clk => adc_dco,
      wr_en => fifo_wr_en,
      wr_rst => u_reset_sync_n_dcoclk_n_1
    );
u_ad_sync_fifo_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fifo_s_axis_data_tready,
      I1 => empty,
      O => u_ad_sync_fifo_i_1_n_0
    );
u_axis_data_fifo: component ZYNQ_BlockDesign_EDM_Monitor_0_0_axis_data_fifo
     port map (
      m_axis_aclk => ps_clk,
      m_axis_tdata(127 downto 0) => axi_fifo_m_axis_tdata(127 downto 0),
      m_axis_tlast => axi_fifo_m_axis_tlast,
      m_axis_tready => axi_fifo_m_axis_tready,
      m_axis_tvalid => axi_fifo_m_axis_tvalid,
      s_axis_aclk => main_clk_250m,
      s_axis_aresetn => sys_rst_n_sync,
      s_axis_tdata(127 downto 117) => B"00000000000",
      s_axis_tdata(116 downto 0) => package_m_axis_tdata(116 downto 0),
      s_axis_tlast => package_m_axis_tlast,
      s_axis_tready => package_m_axis_tready,
      s_axis_tvalid => package_m_axis_tvalid
    );
u_axis_package: entity work.ZYNQ_BlockDesign_EDM_Monitor_0_0_axis_package
     port map (
      D(100 downto 96) => discharge_stat(4 downto 0),
      D(95 downto 80) => time_breakdown(15 downto 0),
      D(79 downto 64) => time_energy(15 downto 0),
      D(63 downto 0) => energy_init(63 downto 0),
      Q(116 downto 0) => package_m_axis_tdata(116 downto 0),
      \frame_seq_id_reg[0]_0\ => reset_sync_n_mainclk_n_1,
      main_clk_250m => main_clk_250m,
      package_m_axis_tvalid => package_m_axis_tvalid,
      package_send_ack => package_send_ack,
      package_send_req => package_send_req,
      s_axis_tlast => package_m_axis_tlast,
      s_axis_tready => package_m_axis_tready
    );
u_global_clk_wiz: component ZYNQ_BlockDesign_EDM_Monitor_0_0_global_clk_wiz
     port map (
      clk_in1_n => clk_n,
      clk_in1_p => clk_p,
      idelay_refclk => idelay_refclk,
      locked => mmcm_locked,
      main_clk_250m => main_clk_250m,
      reset => u_global_clk_wiz_i_1_n_0
    );
u_global_clk_wiz_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n_async,
      O => u_global_clk_wiz_i_1_n_0
    );
u_pow_calc: entity work.ZYNQ_BlockDesign_EDM_Monitor_0_0_pow_calc
     port map (
      D(3) => u_pow_calc_n_34,
      D(2) => u_pow_calc_n_35,
      D(1) => u_pow_calc_n_36,
      D(0) => u_pow_calc_n_37,
      E(0) => energy_accumulator(0),
      P(31) => u_pow_calc_n_0,
      P(30) => u_pow_calc_n_1,
      P(29) => u_pow_calc_n_2,
      P(28) => u_pow_calc_n_3,
      P(27) => u_pow_calc_n_4,
      P(26) => u_pow_calc_n_5,
      P(25) => u_pow_calc_n_6,
      P(24) => u_pow_calc_n_7,
      P(23) => u_pow_calc_n_8,
      P(22) => u_pow_calc_n_9,
      P(21) => u_pow_calc_n_10,
      P(20) => u_pow_calc_n_11,
      P(19) => u_pow_calc_n_12,
      P(18) => u_pow_calc_n_13,
      P(17) => u_pow_calc_n_14,
      P(16) => u_pow_calc_n_15,
      P(15) => u_pow_calc_n_16,
      P(14) => u_pow_calc_n_17,
      P(13) => u_pow_calc_n_18,
      P(12) => u_pow_calc_n_19,
      P(11) => u_pow_calc_n_20,
      P(10) => u_pow_calc_n_21,
      P(9) => u_pow_calc_n_22,
      P(8) => u_pow_calc_n_23,
      P(7) => u_pow_calc_n_24,
      P(6) => u_pow_calc_n_25,
      P(5) => u_pow_calc_n_26,
      P(4) => u_pow_calc_n_27,
      P(3) => u_pow_calc_n_28,
      P(2) => u_pow_calc_n_29,
      P(1) => u_pow_calc_n_30,
      P(0) => u_pow_calc_n_31,
      Q(3 downto 2) => shift_count(5 downto 4),
      Q(1 downto 0) => shift_count(1 downto 0),
      m_axis_data_tdata(15 downto 0) => fir_data(15 downto 0),
      m_axis_data_tvalid => fir_m_axis_data_tvalid,
      m_axis_tvalid_reg_0 => reset_sync_n_mainclk_n_1,
      main_clk_250m => main_clk_250m,
      pow_data(31 downto 0) => pow_data(31 downto 0),
      pow_m_axis_tvalid => pow_m_axis_tvalid,
      sample_fire => sample_fire,
      sw_en => sw_en,
      \window_pipe_reg[31][31]_srl32\ => \energy_accumulator0__0_carry_i_17_n_0\
    );
u_reset_sync_n_dcoclk: entity work.ZYNQ_BlockDesign_EDM_Monitor_0_0_reset_sync_n_0
     port map (
      CLK => adc_dco,
      \out\(0) => dco_rst_n_sync,
      \sync_ff_reg[2]_0\ => reset_sync_n_mainclk_n_2,
      wr_rst => u_reset_sync_n_dcoclk_n_1
    );
u_slide_window: entity work.ZYNQ_BlockDesign_EDM_Monitor_0_0_slide_window
     port map (
      D(63) => u_Control_FSM_n_107,
      D(62) => u_Control_FSM_n_108,
      D(61) => u_Control_FSM_n_109,
      D(60) => u_Control_FSM_n_110,
      D(59) => u_Control_FSM_n_111,
      D(58) => u_Control_FSM_n_112,
      D(57) => u_Control_FSM_n_113,
      D(56) => u_Control_FSM_n_114,
      D(55) => u_Control_FSM_n_115,
      D(54) => u_Control_FSM_n_116,
      D(53) => u_Control_FSM_n_117,
      D(52) => u_Control_FSM_n_118,
      D(51) => u_Control_FSM_n_119,
      D(50) => u_Control_FSM_n_120,
      D(49) => u_Control_FSM_n_121,
      D(48) => u_Control_FSM_n_122,
      D(47) => u_Control_FSM_n_123,
      D(46) => u_Control_FSM_n_124,
      D(45) => u_Control_FSM_n_125,
      D(44) => u_Control_FSM_n_126,
      D(43) => u_Control_FSM_n_127,
      D(42) => u_Control_FSM_n_128,
      D(41) => u_Control_FSM_n_129,
      D(40) => u_Control_FSM_n_130,
      D(39) => u_Control_FSM_n_131,
      D(38) => u_Control_FSM_n_132,
      D(37) => u_Control_FSM_n_133,
      D(36) => u_Control_FSM_n_134,
      D(35) => u_Control_FSM_n_135,
      D(34) => u_Control_FSM_n_136,
      D(33) => u_Control_FSM_n_137,
      D(32) => u_Control_FSM_n_138,
      D(31) => u_Control_FSM_n_139,
      D(30) => u_Control_FSM_n_140,
      D(29) => u_Control_FSM_n_141,
      D(28) => u_Control_FSM_n_142,
      D(27) => u_Control_FSM_n_143,
      D(26) => u_Control_FSM_n_144,
      D(25) => u_Control_FSM_n_145,
      D(24) => u_Control_FSM_n_146,
      D(23) => u_Control_FSM_n_147,
      D(22) => u_Control_FSM_n_148,
      D(21) => u_Control_FSM_n_149,
      D(20) => u_Control_FSM_n_150,
      D(19) => u_Control_FSM_n_151,
      D(18) => u_Control_FSM_n_152,
      D(17) => u_Control_FSM_n_153,
      D(16) => u_Control_FSM_n_154,
      D(15) => u_Control_FSM_n_155,
      D(14) => u_Control_FSM_n_156,
      D(13) => u_Control_FSM_n_157,
      D(12) => u_Control_FSM_n_158,
      D(11) => u_Control_FSM_n_159,
      D(10) => u_Control_FSM_n_160,
      D(9) => u_Control_FSM_n_161,
      D(8) => u_Control_FSM_n_162,
      D(7) => u_Control_FSM_n_163,
      D(6) => u_Control_FSM_n_164,
      D(5) => u_Control_FSM_n_165,
      D(4) => u_Control_FSM_n_166,
      D(3) => u_Control_FSM_n_167,
      D(2) => u_Control_FSM_n_168,
      D(1) => u_Control_FSM_n_169,
      D(0) => u_Control_FSM_n_170,
      E(0) => energy_accumulator(0),
      O(7) => u_slide_window_n_60,
      O(6) => u_slide_window_n_61,
      O(5) => u_slide_window_n_62,
      O(4) => u_slide_window_n_63,
      O(3) => u_slide_window_n_64,
      O(2) => u_slide_window_n_65,
      O(1) => u_slide_window_n_66,
      O(0) => u_slide_window_n_67,
      P(31) => u_pow_calc_n_0,
      P(30) => u_pow_calc_n_1,
      P(29) => u_pow_calc_n_2,
      P(28) => u_pow_calc_n_3,
      P(27) => u_pow_calc_n_4,
      P(26) => u_pow_calc_n_5,
      P(25) => u_pow_calc_n_6,
      P(24) => u_pow_calc_n_7,
      P(23) => u_pow_calc_n_8,
      P(22) => u_pow_calc_n_9,
      P(21) => u_pow_calc_n_10,
      P(20) => u_pow_calc_n_11,
      P(19) => u_pow_calc_n_12,
      P(18) => u_pow_calc_n_13,
      P(17) => u_pow_calc_n_14,
      P(16) => u_pow_calc_n_15,
      P(15) => u_pow_calc_n_16,
      P(14) => u_pow_calc_n_17,
      P(13) => u_pow_calc_n_18,
      P(12) => u_pow_calc_n_19,
      P(11) => u_pow_calc_n_20,
      P(10) => u_pow_calc_n_21,
      P(9) => u_pow_calc_n_22,
      P(8) => u_pow_calc_n_23,
      P(7) => u_pow_calc_n_24,
      P(6) => u_pow_calc_n_25,
      P(5) => u_pow_calc_n_26,
      P(4) => u_pow_calc_n_27,
      P(3) => u_pow_calc_n_28,
      P(2) => u_pow_calc_n_29,
      P(1) => u_pow_calc_n_30,
      P(0) => u_pow_calc_n_31,
      Q(6 downto 0) => shift_count(6 downto 0),
      cfg_energy_threshold(63 downto 0) => cfg_energy_threshold(63 downto 0),
      cfg_update_sync => cfg_update_sync,
      cfg_update_sync_d => cfg_update_sync_d,
      cfg_update_toggle => cfg_update_toggle,
      enable_d => enable_d,
      \energy_accumulator0__0_carry__3_0\ => \energy_accumulator0__0_carry_i_17_n_0\,
      \energy_accumulator_reg[14]_0\(7) => u_slide_window_n_12,
      \energy_accumulator_reg[14]_0\(6) => u_slide_window_n_13,
      \energy_accumulator_reg[14]_0\(5) => u_slide_window_n_14,
      \energy_accumulator_reg[14]_0\(4) => u_slide_window_n_15,
      \energy_accumulator_reg[14]_0\(3) => u_slide_window_n_16,
      \energy_accumulator_reg[14]_0\(2) => u_slide_window_n_17,
      \energy_accumulator_reg[14]_0\(1) => u_slide_window_n_18,
      \energy_accumulator_reg[14]_0\(0) => u_slide_window_n_19,
      \energy_accumulator_reg[22]_0\(7) => u_slide_window_n_20,
      \energy_accumulator_reg[22]_0\(6) => u_slide_window_n_21,
      \energy_accumulator_reg[22]_0\(5) => u_slide_window_n_22,
      \energy_accumulator_reg[22]_0\(4) => u_slide_window_n_23,
      \energy_accumulator_reg[22]_0\(3) => u_slide_window_n_24,
      \energy_accumulator_reg[22]_0\(2) => u_slide_window_n_25,
      \energy_accumulator_reg[22]_0\(1) => u_slide_window_n_26,
      \energy_accumulator_reg[22]_0\(0) => u_slide_window_n_27,
      \energy_accumulator_reg[30]_0\(7) => u_slide_window_n_28,
      \energy_accumulator_reg[30]_0\(6) => u_slide_window_n_29,
      \energy_accumulator_reg[30]_0\(5) => u_slide_window_n_30,
      \energy_accumulator_reg[30]_0\(4) => u_slide_window_n_31,
      \energy_accumulator_reg[30]_0\(3) => u_slide_window_n_32,
      \energy_accumulator_reg[30]_0\(2) => u_slide_window_n_33,
      \energy_accumulator_reg[30]_0\(1) => u_slide_window_n_34,
      \energy_accumulator_reg[30]_0\(0) => u_slide_window_n_35,
      \energy_accumulator_reg[38]_0\(7) => u_slide_window_n_36,
      \energy_accumulator_reg[38]_0\(6) => u_slide_window_n_37,
      \energy_accumulator_reg[38]_0\(5) => u_slide_window_n_38,
      \energy_accumulator_reg[38]_0\(4) => u_slide_window_n_39,
      \energy_accumulator_reg[38]_0\(3) => u_slide_window_n_40,
      \energy_accumulator_reg[38]_0\(2) => u_slide_window_n_41,
      \energy_accumulator_reg[38]_0\(1) => u_slide_window_n_42,
      \energy_accumulator_reg[38]_0\(0) => u_slide_window_n_43,
      \energy_accumulator_reg[46]_0\(7) => u_slide_window_n_44,
      \energy_accumulator_reg[46]_0\(6) => u_slide_window_n_45,
      \energy_accumulator_reg[46]_0\(5) => u_slide_window_n_46,
      \energy_accumulator_reg[46]_0\(4) => u_slide_window_n_47,
      \energy_accumulator_reg[46]_0\(3) => u_slide_window_n_48,
      \energy_accumulator_reg[46]_0\(2) => u_slide_window_n_49,
      \energy_accumulator_reg[46]_0\(1) => u_slide_window_n_50,
      \energy_accumulator_reg[46]_0\(0) => u_slide_window_n_51,
      \energy_accumulator_reg[54]_0\(7) => u_slide_window_n_52,
      \energy_accumulator_reg[54]_0\(6) => u_slide_window_n_53,
      \energy_accumulator_reg[54]_0\(5) => u_slide_window_n_54,
      \energy_accumulator_reg[54]_0\(4) => u_slide_window_n_55,
      \energy_accumulator_reg[54]_0\(3) => u_slide_window_n_56,
      \energy_accumulator_reg[54]_0\(2) => u_slide_window_n_57,
      \energy_accumulator_reg[54]_0\(1) => u_slide_window_n_58,
      \energy_accumulator_reg[54]_0\(0) => u_slide_window_n_59,
      \energy_accumulator_reg[6]_0\(7) => u_slide_window_n_4,
      \energy_accumulator_reg[6]_0\(6) => u_slide_window_n_5,
      \energy_accumulator_reg[6]_0\(5) => u_slide_window_n_6,
      \energy_accumulator_reg[6]_0\(4) => u_slide_window_n_7,
      \energy_accumulator_reg[6]_0\(3) => u_slide_window_n_8,
      \energy_accumulator_reg[6]_0\(2) => u_slide_window_n_9,
      \energy_accumulator_reg[6]_0\(1) => u_slide_window_n_10,
      \energy_accumulator_reg[6]_0\(0) => u_slide_window_n_11,
      \energy_init_reg[63]_0\(63 downto 0) => sw_result_energy(63 downto 0),
      \energy_threshold_active_reg[63]_0\ => reset_sync_n_mainclk_n_1,
      main_clk_250m => main_clk_250m,
      pow_data(31 downto 0) => pow_data(31 downto 0),
      pow_m_axis_tvalid => pow_m_axis_tvalid,
      power_stop_signal => power_stop_signal,
      result_valid_reg_0 => u_Control_FSM_n_2,
      sample_fire => sample_fire,
      \shift_count_d_reg[6]_0\(6) => u_Control_FSM_n_104,
      \shift_count_d_reg[6]_0\(5) => u_pow_calc_n_34,
      \shift_count_d_reg[6]_0\(4) => u_pow_calc_n_35,
      \shift_count_d_reg[6]_0\(3) => u_Control_FSM_n_105,
      \shift_count_d_reg[6]_0\(2) => u_Control_FSM_n_106,
      \shift_count_d_reg[6]_0\(1) => u_pow_calc_n_36,
      \shift_count_d_reg[6]_0\(0) => u_pow_calc_n_37,
      \status_reg[3]_0\(2 downto 1) => sw_result_status(3 downto 2),
      \status_reg[3]_0\(0) => sw_result_status(0),
      sw_en => sw_en,
      sw_result_valid => sw_result_valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ZYNQ_BlockDesign_EDM_Monitor_0_0 is
  port (
    clk_p : in STD_LOGIC;
    clk_n : in STD_LOGIC;
    rst_n_async : in STD_LOGIC;
    adc_data_p : in STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_data_n : in STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_dco_p : in STD_LOGIC;
    adc_dco_n : in STD_LOGIC;
    div_param_od0 : out STD_LOGIC;
    power_trig_async : in STD_LOGIC;
    cfg_breakdown : in STD_LOGIC_VECTOR ( 15 downto 0 );
    cfg_energy_threshold : in STD_LOGIC_VECTOR ( 63 downto 0 );
    cfg_update_toggle : in STD_LOGIC;
    ps_clk : in STD_LOGIC;
    power_stop_signal : out STD_LOGIC;
    axi_fifo_m_axis_tvalid : out STD_LOGIC;
    axi_fifo_m_axis_tready : in STD_LOGIC;
    axi_fifo_m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    axi_fifo_m_axis_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ZYNQ_BlockDesign_EDM_Monitor_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ZYNQ_BlockDesign_EDM_Monitor_0_0 : entity is "ZYNQ_BlockDesign_EDM_Monitor_0_0,EDM_Monitor,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ZYNQ_BlockDesign_EDM_Monitor_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ZYNQ_BlockDesign_EDM_Monitor_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ZYNQ_BlockDesign_EDM_Monitor_0_0 : entity is "EDM_Monitor,Vivado 2025.2";
end ZYNQ_BlockDesign_EDM_Monitor_0_0;

architecture STRUCTURE of ZYNQ_BlockDesign_EDM_Monitor_0_0 is
  attribute AXIS_FRAME_DATA_COUNT : integer;
  attribute AXIS_FRAME_DATA_COUNT of inst : label is 128;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of axi_fifo_m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 axi_fifo_m_axis TLAST";
  attribute X_INTERFACE_INFO of axi_fifo_m_axis_tready : signal is "xilinx.com:interface:axis:1.0 axi_fifo_m_axis TREADY";
  attribute X_INTERFACE_INFO of axi_fifo_m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 axi_fifo_m_axis TVALID";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of axi_fifo_m_axis_tvalid : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of axi_fifo_m_axis_tvalid : signal is "XIL_INTERFACENAME axi_fifo_m_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN ZYNQ_BlockDesign_zynq_ultra_ps_e_0_1_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk_n : signal is "xilinx.com:signal:clock:1.0 clk_n CLK";
  attribute X_INTERFACE_MODE of clk_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk_n : signal is "XIL_INTERFACENAME clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ZYNQ_BlockDesign_clk_n_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk_p : signal is "xilinx.com:signal:clock:1.0 clk_p CLK";
  attribute X_INTERFACE_MODE of clk_p : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk_p : signal is "XIL_INTERFACENAME clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ZYNQ_BlockDesign_clk_p_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ps_clk : signal is "xilinx.com:signal:clock:1.0 ps_clk CLK";
  attribute X_INTERFACE_MODE of ps_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ps_clk : signal is "XIL_INTERFACENAME ps_clk, ASSOCIATED_BUSIF axi_fifo_m_axis, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ZYNQ_BlockDesign_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_fifo_m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 axi_fifo_m_axis TDATA";
begin
inst: entity work.ZYNQ_BlockDesign_EDM_Monitor_0_0_EDM_Monitor
     port map (
      adc_data_n(11 downto 0) => adc_data_n(11 downto 0),
      adc_data_p(11 downto 0) => adc_data_p(11 downto 0),
      adc_dco_n => adc_dco_n,
      adc_dco_p => adc_dco_p,
      axi_fifo_m_axis_tdata(127 downto 0) => axi_fifo_m_axis_tdata(127 downto 0),
      axi_fifo_m_axis_tlast => axi_fifo_m_axis_tlast,
      axi_fifo_m_axis_tready => axi_fifo_m_axis_tready,
      axi_fifo_m_axis_tvalid => axi_fifo_m_axis_tvalid,
      cfg_breakdown(15 downto 0) => cfg_breakdown(15 downto 0),
      cfg_energy_threshold(63 downto 0) => cfg_energy_threshold(63 downto 0),
      cfg_update_toggle => cfg_update_toggle,
      clk_n => clk_n,
      clk_p => clk_p,
      div_param_od0 => div_param_od0,
      power_stop_signal => power_stop_signal,
      power_trig_async => power_trig_async,
      ps_clk => ps_clk,
      rst_n_async => rst_n_async
    );
end STRUCTURE;
