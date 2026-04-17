-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "01/16/2025 22:14:32"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	text_convert IS
    PORT (
	CLK : IN std_logic;
	RSTn : IN std_logic;
	SER_RX : IN std_logic;
	SER_TX : OUT std_logic;
	SRAM_ADDR : OUT std_logic_vector(17 DOWNTO 0);
	SRAM_DQ : INOUT std_logic_vector(15 DOWNTO 0);
	SRAM_WE_N : OUT std_logic;
	SRAM_OE_N : OUT std_logic;
	SRAM_CE_N : OUT std_logic;
	SRAM_UB_N : OUT std_logic;
	SRAM_LB_N : OUT std_logic;
	MODE : IN std_logic;
	LED : OUT std_logic_vector(6 DOWNTO 1);
	NUM_ONES : OUT std_logic_vector(6 DOWNTO 0);
	NUM_TENS : OUT std_logic_vector(6 DOWNTO 0);
	NUM_HUNDS : OUT std_logic_vector(6 DOWNTO 0);
	NUM_THOUS : OUT std_logic_vector(6 DOWNTO 0)
	);
END text_convert;

-- Design Ports Information
-- SER_TX	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[0]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[2]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[3]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[4]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[6]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[7]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[8]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[9]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[10]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[11]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[12]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[13]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[14]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[15]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[16]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[17]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_WE_N	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_OE_N	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_CE_N	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_UB_N	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_LB_N	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_ONES[0]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_ONES[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_ONES[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_ONES[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_ONES[4]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_ONES[5]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_ONES[6]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_TENS[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_TENS[1]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_TENS[2]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_TENS[3]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_TENS[4]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_TENS[5]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_TENS[6]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_HUNDS[0]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_HUNDS[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_HUNDS[2]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_HUNDS[3]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_HUNDS[4]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_HUNDS[5]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_HUNDS[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_THOUS[0]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_THOUS[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_THOUS[2]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_THOUS[3]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_THOUS[4]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_THOUS[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NUM_THOUS[6]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[0]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[1]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[4]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[5]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[6]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[7]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[8]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[9]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[10]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[11]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[12]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[13]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[14]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[15]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSTn	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SER_RX	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MODE	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF text_convert IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RSTn : std_logic;
SIGNAL ww_SER_RX : std_logic;
SIGNAL ww_SER_TX : std_logic;
SIGNAL ww_SRAM_ADDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_SRAM_WE_N : std_logic;
SIGNAL ww_SRAM_OE_N : std_logic;
SIGNAL ww_SRAM_CE_N : std_logic;
SIGNAL ww_SRAM_UB_N : std_logic;
SIGNAL ww_SRAM_LB_N : std_logic;
SIGNAL ww_MODE : std_logic;
SIGNAL ww_LED : std_logic_vector(6 DOWNTO 1);
SIGNAL ww_NUM_ONES : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_NUM_TENS : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_NUM_HUNDS : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_NUM_THOUS : std_logic_vector(6 DOWNTO 0);
SIGNAL \SRAM_DQ[0]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[1]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[2]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[3]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[4]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[5]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[6]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[7]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[8]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[9]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[10]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[11]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[12]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[13]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[14]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[15]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \RSTn~input_o\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~33_sumout\ : std_logic;
SIGNAL \SER_RX~input_o\ : std_logic;
SIGNAL \u1_uart|u3_rx_sync|sig_in_d~0_combout\ : std_logic;
SIGNAL \u1_uart|u3_rx_sync|sig_in_d~q\ : std_logic;
SIGNAL \u1_uart|u3_rx_sync|SIG_OUT~q\ : std_logic;
SIGNAL \u1_uart|u2_rx|Selector19~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|Selector17~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|current_state.st_stop_bit~q\ : std_logic;
SIGNAL \u1_uart|u2_rx|current_state.st_idle~q\ : std_logic;
SIGNAL \u1_uart|u2_rx|Selector14~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|current_state.st_idle~DUPLICATE_q\ : std_logic;
SIGNAL \u1_uart|u2_rx|clk_cnt[0]~1_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|LessThan0~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|LessThan0~1_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|LessThan0~2_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|Selector15~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|current_state.st_start_bit~q\ : std_logic;
SIGNAL \u1_uart|u2_rx|clk_cnt[0]~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~34\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~37_sumout\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~38\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~29_sumout\ : std_logic;
SIGNAL \u1_uart|u2_rx|clk_cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~30\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~25_sumout\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~26\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~21_sumout\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~22\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~17_sumout\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~18\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~13_sumout\ : std_logic;
SIGNAL \u1_uart|u2_rx|clk_cnt[6]~DUPLICATE_q\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~14\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~45_sumout\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~46\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~49_sumout\ : std_logic;
SIGNAL \u1_uart|u2_rx|clk_cnt[8]~DUPLICATE_q\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~50\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~41_sumout\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~42\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~9_sumout\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~10\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~5_sumout\ : std_logic;
SIGNAL \u1_uart|u2_rx|clk_cnt[11]~DUPLICATE_q\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~6\ : std_logic;
SIGNAL \u1_uart|u2_rx|Add0~1_sumout\ : std_logic;
SIGNAL \u1_uart|u2_rx|LessThan2~1_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|LessThan2~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|LessThan2~2_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|bit_cnt[0]~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|Selector18~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|bit_cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u1_uart|u2_rx|register_sig[3]~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|register_sig[7]~1_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|Selector16~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|current_state.st_data_bits~q\ : std_logic;
SIGNAL \u1_uart|u2_rx|Selector20~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|bit_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u1_uart|u2_rx|Decoder0~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|register_sig[0]~2_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|register_sig[0]~3_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|RX_DATA[0]~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|Selector0~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|RX_DATA_VAILD~q\ : std_logic;
SIGNAL \u2_controller|chars_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|Add1~46\ : std_logic;
SIGNAL \u2_controller|Add1~53_sumout\ : std_logic;
SIGNAL \u2_controller|chars_cnt~13_combout\ : std_logic;
SIGNAL \u2_controller|Add1~54\ : std_logic;
SIGNAL \u2_controller|Add1~49_sumout\ : std_logic;
SIGNAL \u2_controller|chars_cnt~12_combout\ : std_logic;
SIGNAL \u2_controller|Add1~50\ : std_logic;
SIGNAL \u2_controller|Add1~41_sumout\ : std_logic;
SIGNAL \u2_controller|chars_cnt~10_combout\ : std_logic;
SIGNAL \u2_controller|Add1~42\ : std_logic;
SIGNAL \u2_controller|Add1~13_sumout\ : std_logic;
SIGNAL \u2_controller|chars_cnt~3_combout\ : std_logic;
SIGNAL \u2_controller|Add1~14\ : std_logic;
SIGNAL \u2_controller|Add1~10\ : std_logic;
SIGNAL \u2_controller|Add1~5_sumout\ : std_logic;
SIGNAL \u2_controller|chars_cnt~1_combout\ : std_logic;
SIGNAL \u2_controller|chars_cnt[6]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|Add1~6\ : std_logic;
SIGNAL \u2_controller|Add1~1_sumout\ : std_logic;
SIGNAL \u2_controller|chars_cnt~0_combout\ : std_logic;
SIGNAL \u2_controller|chars_cnt[7]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|Add1~2\ : std_logic;
SIGNAL \u2_controller|Add1~21_sumout\ : std_logic;
SIGNAL \u2_controller|chars_cnt~5_combout\ : std_logic;
SIGNAL \u2_controller|chars_cnt[8]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|Add1~22\ : std_logic;
SIGNAL \u2_controller|Add1~17_sumout\ : std_logic;
SIGNAL \u2_controller|chars_cnt~4_combout\ : std_logic;
SIGNAL \u2_controller|chars_cnt[9]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|Add1~18\ : std_logic;
SIGNAL \u2_controller|Add1~29_sumout\ : std_logic;
SIGNAL \u2_controller|chars_cnt~7_combout\ : std_logic;
SIGNAL \u2_controller|chars_cnt[10]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|Add1~30\ : std_logic;
SIGNAL \u2_controller|Add1~37_sumout\ : std_logic;
SIGNAL \u2_controller|chars_cnt~9_combout\ : std_logic;
SIGNAL \u2_controller|chars_cnt[12]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|Add1~38\ : std_logic;
SIGNAL \u2_controller|Add1~33_sumout\ : std_logic;
SIGNAL \u2_controller|chars_cnt~8_combout\ : std_logic;
SIGNAL \u2_controller|LessThan3~0_combout\ : std_logic;
SIGNAL \u2_controller|LessThan3~1_combout\ : std_logic;
SIGNAL \u2_controller|LessThan9~1_combout\ : std_logic;
SIGNAL \u2_controller|LessThan3~2_combout\ : std_logic;
SIGNAL \u2_controller|Add1~9_sumout\ : std_logic;
SIGNAL \u2_controller|chars_cnt~2_combout\ : std_logic;
SIGNAL \u2_controller|chars_cnt[5]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|LessThan9~0_combout\ : std_logic;
SIGNAL \u2_controller|LessThan1~0_combout\ : std_logic;
SIGNAL \u2_controller|chars_cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|LessThan1~1_combout\ : std_logic;
SIGNAL \u2_controller|LessThan1~2_combout\ : std_logic;
SIGNAL \MODE~input_o\ : std_logic;
SIGNAL \u3_mode_sync|sig_in_d[1]~0_combout\ : std_logic;
SIGNAL \u3_mode_sync|SIG_OUT~0_combout\ : std_logic;
SIGNAL \u3_mode_sync|SIG_OUT~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|current_state.st_idle~feeder_combout\ : std_logic;
SIGNAL \u3_mode_sync|SIG_OUT~q\ : std_logic;
SIGNAL \u2_controller|Selector52~1_combout\ : std_logic;
SIGNAL \u2_controller|current_state.st_idle~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|Selector51~0_combout\ : std_logic;
SIGNAL \u2_controller|current_state.st_receive~q\ : std_logic;
SIGNAL \u2_controller|Selector52~0_combout\ : std_logic;
SIGNAL \u2_controller|current_state.st_transmit~q\ : std_logic;
SIGNAL \u2_controller|Add1~34\ : std_logic;
SIGNAL \u2_controller|Add1~25_sumout\ : std_logic;
SIGNAL \u2_controller|chars_cnt~6_combout\ : std_logic;
SIGNAL \u2_controller|chars_cnt[13]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|LessThan0~0_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_ADDR~0_combout\ : std_logic;
SIGNAL \u2_controller|Add1~45_sumout\ : std_logic;
SIGNAL \u2_controller|chars_cnt~11_combout\ : std_logic;
SIGNAL \u2_controller|bin_in_char_cnt[13]~0_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[7]~16_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[0]~reg0_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[0]~enfeeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[0]~en_q\ : std_logic;
SIGNAL \u1_uart|u2_rx|register_sig[1]~4_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|register_sig[1]~5_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[1]~reg0feeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[1]~reg0_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[1]~enfeeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[1]~en_q\ : std_logic;
SIGNAL \u1_uart|u2_rx|register_sig[2]~6_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|register_sig[2]~7_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[2]~reg0_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[2]~enfeeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[2]~en_q\ : std_logic;
SIGNAL \u1_uart|u2_rx|register_sig[3]~8_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[3]~reg0feeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[3]~reg0_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[3]~enfeeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[3]~en_q\ : std_logic;
SIGNAL \u1_uart|u2_rx|register_sig[4]~9_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|register_sig[4]~10_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[4]~reg0feeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[4]~reg0_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[4]~en_q\ : std_logic;
SIGNAL \u1_uart|u2_rx|Decoder0~1_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|register_sig[5]~11_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[5]~reg0feeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[5]~reg0_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[5]~enfeeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[5]~en_q\ : std_logic;
SIGNAL \u1_uart|u2_rx|register_sig[6]~12_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|register_sig[6]~13_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[6]~reg0feeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[6]~reg0_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[6]~enfeeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[6]~en_q\ : std_logic;
SIGNAL \u1_uart|u2_rx|register_sig[7]~14_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[7]~reg0_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[7]~enfeeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[7]~en_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[8]~reg0feeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[15]~17_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[8]~reg0_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[8]~enfeeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[8]~en_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[9]~reg0feeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[9]~reg0_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[9]~enfeeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[9]~en_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[10]~reg0_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[10]~enfeeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[10]~en_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[11]~reg0feeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[11]~reg0_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[11]~enfeeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[11]~en_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[12]~reg0feeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[12]~reg0_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[12]~enfeeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[12]~en_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[13]~reg0_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[13]~enfeeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[13]~en_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[14]~reg0_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[14]~enfeeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[14]~en_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[15]~reg0_q\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[15]~enfeeder_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ[15]~en_q\ : std_logic;
SIGNAL \u1_uart|u1_tx|current_state.st_idle~feeder_combout\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~37_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~38\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~33_sumout\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~34\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~29_sumout\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~30\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~25_sumout\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~26\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~21_sumout\ : std_logic;
SIGNAL \u1_uart|u1_tx|clk_cnt[4]~DUPLICATE_q\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~22\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~17_sumout\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~18\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~13_sumout\ : std_logic;
SIGNAL \u1_uart|u1_tx|clk_cnt[6]~DUPLICATE_q\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~14\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~49_sumout\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~50\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~45_sumout\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~46\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~41_sumout\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~42\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~9_sumout\ : std_logic;
SIGNAL \u1_uart|u1_tx|clk_cnt[10]~DUPLICATE_q\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~10\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~5_sumout\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~6\ : std_logic;
SIGNAL \u1_uart|u1_tx|Add0~1_sumout\ : std_logic;
SIGNAL \u1_uart|u1_tx|LessThan1~1_combout\ : std_logic;
SIGNAL \u1_uart|u1_tx|LessThan1~0_combout\ : std_logic;
SIGNAL \u1_uart|u1_tx|LessThan1~2_combout\ : std_logic;
SIGNAL \u1_uart|u1_tx|current_state.st_idle~q\ : std_logic;
SIGNAL \u1_uart|u1_tx|SER_TX~q\ : std_logic;
SIGNAL \u2_controller|Selector36~0_combout\ : std_logic;
SIGNAL \u2_controller|address_cnt~0_combout\ : std_logic;
SIGNAL \u2_controller|address_cnt[9]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|address_cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|address_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|Add0~2\ : std_logic;
SIGNAL \u2_controller|Add0~5_sumout\ : std_logic;
SIGNAL \u2_controller|Add2~2\ : std_logic;
SIGNAL \u2_controller|Add2~5_sumout\ : std_logic;
SIGNAL \u2_controller|address_cnt~3_combout\ : std_logic;
SIGNAL \u2_controller|address_cnt~4_combout\ : std_logic;
SIGNAL \u2_controller|address_cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|Add2~6\ : std_logic;
SIGNAL \u2_controller|Add2~9_sumout\ : std_logic;
SIGNAL \u2_controller|Add0~6\ : std_logic;
SIGNAL \u2_controller|Add0~9_sumout\ : std_logic;
SIGNAL \u2_controller|address_cnt~5_combout\ : std_logic;
SIGNAL \u2_controller|address_cnt~6_combout\ : std_logic;
SIGNAL \u2_controller|address_cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|Add2~10\ : std_logic;
SIGNAL \u2_controller|Add2~13_sumout\ : std_logic;
SIGNAL \u2_controller|Add0~10\ : std_logic;
SIGNAL \u2_controller|Add0~13_sumout\ : std_logic;
SIGNAL \u2_controller|address_cnt~7_combout\ : std_logic;
SIGNAL \u2_controller|address_cnt~8_combout\ : std_logic;
SIGNAL \u2_controller|Add0~14\ : std_logic;
SIGNAL \u2_controller|Add0~17_sumout\ : std_logic;
SIGNAL \u2_controller|address_cnt[4]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|Add2~14\ : std_logic;
SIGNAL \u2_controller|Add2~17_sumout\ : std_logic;
SIGNAL \u2_controller|address_cnt~9_combout\ : std_logic;
SIGNAL \u2_controller|address_cnt~10_combout\ : std_logic;
SIGNAL \u2_controller|Add0~18\ : std_logic;
SIGNAL \u2_controller|Add0~21_sumout\ : std_logic;
SIGNAL \u2_controller|address_cnt[5]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|Add2~18\ : std_logic;
SIGNAL \u2_controller|Add2~21_sumout\ : std_logic;
SIGNAL \u2_controller|address_cnt~11_combout\ : std_logic;
SIGNAL \u2_controller|address_cnt~12_combout\ : std_logic;
SIGNAL \u2_controller|Add0~22\ : std_logic;
SIGNAL \u2_controller|Add0~25_sumout\ : std_logic;
SIGNAL \u2_controller|Add2~22\ : std_logic;
SIGNAL \u2_controller|Add2~25_sumout\ : std_logic;
SIGNAL \u2_controller|address_cnt~13_combout\ : std_logic;
SIGNAL \u2_controller|address_cnt~14_combout\ : std_logic;
SIGNAL \u2_controller|Add0~26\ : std_logic;
SIGNAL \u2_controller|Add0~29_sumout\ : std_logic;
SIGNAL \u2_controller|Add2~26\ : std_logic;
SIGNAL \u2_controller|Add2~29_sumout\ : std_logic;
SIGNAL \u2_controller|address_cnt~15_combout\ : std_logic;
SIGNAL \u2_controller|address_cnt~16_combout\ : std_logic;
SIGNAL \u2_controller|Add2~30\ : std_logic;
SIGNAL \u2_controller|Add2~33_sumout\ : std_logic;
SIGNAL \u2_controller|Add0~30\ : std_logic;
SIGNAL \u2_controller|Add0~33_sumout\ : std_logic;
SIGNAL \u2_controller|address_cnt~17_combout\ : std_logic;
SIGNAL \u2_controller|address_cnt~18_combout\ : std_logic;
SIGNAL \u2_controller|address_cnt[8]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|Add0~34\ : std_logic;
SIGNAL \u2_controller|Add0~37_sumout\ : std_logic;
SIGNAL \u2_controller|Add2~34\ : std_logic;
SIGNAL \u2_controller|Add2~37_sumout\ : std_logic;
SIGNAL \u2_controller|address_cnt~19_combout\ : std_logic;
SIGNAL \u2_controller|address_cnt~20_combout\ : std_logic;
SIGNAL \u2_controller|Add0~38\ : std_logic;
SIGNAL \u2_controller|Add0~41_sumout\ : std_logic;
SIGNAL \u2_controller|Add2~38\ : std_logic;
SIGNAL \u2_controller|Add2~41_sumout\ : std_logic;
SIGNAL \u2_controller|address_cnt~21_combout\ : std_logic;
SIGNAL \u2_controller|address_cnt~22_combout\ : std_logic;
SIGNAL \u2_controller|Add0~42\ : std_logic;
SIGNAL \u2_controller|Add0~45_sumout\ : std_logic;
SIGNAL \u2_controller|address_cnt[11]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|Add2~42\ : std_logic;
SIGNAL \u2_controller|Add2~45_sumout\ : std_logic;
SIGNAL \u2_controller|address_cnt~23_combout\ : std_logic;
SIGNAL \u2_controller|address_cnt~24_combout\ : std_logic;
SIGNAL \u2_controller|Add0~46\ : std_logic;
SIGNAL \u2_controller|Add0~49_sumout\ : std_logic;
SIGNAL \u2_controller|Add2~46\ : std_logic;
SIGNAL \u2_controller|Add2~49_sumout\ : std_logic;
SIGNAL \u2_controller|address_cnt~25_combout\ : std_logic;
SIGNAL \u2_controller|address_cnt~26_combout\ : std_logic;
SIGNAL \u2_controller|LessThan5~0_combout\ : std_logic;
SIGNAL \u2_controller|LessThan5~1_combout\ : std_logic;
SIGNAL \u2_controller|LessThan5~2_combout\ : std_logic;
SIGNAL \u2_controller|Add2~1_sumout\ : std_logic;
SIGNAL \u2_controller|Add0~1_sumout\ : std_logic;
SIGNAL \u2_controller|address_cnt~1_combout\ : std_logic;
SIGNAL \u2_controller|address_cnt~2_combout\ : std_logic;
SIGNAL \u2_controller|Selector17~0_combout\ : std_logic;
SIGNAL \u2_controller|Selector16~0_combout\ : std_logic;
SIGNAL \u2_controller|Selector15~0_combout\ : std_logic;
SIGNAL \u2_controller|Selector14~0_combout\ : std_logic;
SIGNAL \u2_controller|Selector13~0_combout\ : std_logic;
SIGNAL \u2_controller|Selector12~0_combout\ : std_logic;
SIGNAL \u2_controller|Selector11~0_combout\ : std_logic;
SIGNAL \u2_controller|Selector10~0_combout\ : std_logic;
SIGNAL \u2_controller|Selector9~0_combout\ : std_logic;
SIGNAL \u2_controller|Selector8~0_combout\ : std_logic;
SIGNAL \u2_controller|Selector7~0_combout\ : std_logic;
SIGNAL \u2_controller|Selector6~0_combout\ : std_logic;
SIGNAL \u2_controller|Selector5~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|RX_DATA_VAILD~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|LED~0_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_WE_N~0_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_WE_N~q\ : std_logic;
SIGNAL \u2_controller|Selector18~0_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_OE_N~q\ : std_logic;
SIGNAL \u2_controller|LessThan0~1_combout\ : std_logic;
SIGNAL \u2_controller|Selector19~0_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_CE_N~q\ : std_logic;
SIGNAL \u2_controller|Selector20~0_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_UB_N~0_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_UB_N~q\ : std_logic;
SIGNAL \u2_controller|Selector21~0_combout\ : std_logic;
SIGNAL \u2_controller|SRAM_LB_N~q\ : std_logic;
SIGNAL \u2_controller|current_state.st_idle~q\ : std_logic;
SIGNAL \u2_controller|LED[3]~feeder_combout\ : std_logic;
SIGNAL \u2_controller|LED[4]~feeder_combout\ : std_logic;
SIGNAL \u2_controller|LED~1_combout\ : std_logic;
SIGNAL \u2_controller|u1|reg_in[2]~feeder_combout\ : std_logic;
SIGNAL \u2_controller|bin_in_char_cnt[6]~feeder_combout\ : std_logic;
SIGNAL \u2_controller|bin_in_char_cnt[5]~feeder_combout\ : std_logic;
SIGNAL \u2_controller|bin_in_char_cnt[8]~feeder_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~1_combout\ : std_logic;
SIGNAL \u2_controller|bin_in_char_cnt[7]~feeder_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~0_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~2_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~5_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~4_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~3_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~7_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~6_combout\ : std_logic;
SIGNAL \u2_controller|u1|LessThan26~0_combout\ : std_logic;
SIGNAL \u2_controller|u1|bcd1:BCD[1]~0_combout\ : std_logic;
SIGNAL \u2_controller|u1|reg_in[0]~feeder_combout\ : std_logic;
SIGNAL \u2_controller|u1|bcd1:BCD[2]~0_combout\ : std_logic;
SIGNAL \u2_controller|u1|bcd1:BCD[3]~0_combout\ : std_logic;
SIGNAL \u5_ones|Mux6~0_combout\ : std_logic;
SIGNAL \u5_ones|Mux5~0_combout\ : std_logic;
SIGNAL \u5_ones|Mux4~0_combout\ : std_logic;
SIGNAL \u5_ones|Mux3~0_combout\ : std_logic;
SIGNAL \u5_ones|Mux2~0_combout\ : std_logic;
SIGNAL \u5_ones|Mux1~0_combout\ : std_logic;
SIGNAL \u5_ones|Mux0~0_combout\ : std_logic;
SIGNAL \u2_controller|u1|bcd1:BCD[4]~0_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~14_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~15_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~12_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~13_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~16_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~11_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~19_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~17_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~10_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~9_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~18_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~8_combout\ : std_logic;
SIGNAL \u2_controller|u1|bcd1:BCD[7]~0_combout\ : std_logic;
SIGNAL \u2_controller|u1|bcd1:BCD[5]~0_combout\ : std_logic;
SIGNAL \u2_controller|LessThan9~2_combout\ : std_logic;
SIGNAL \u2_controller|DISPLAY_SHUTDOWNn~0_combout\ : std_logic;
SIGNAL \u2_controller|DISPLAY_SHUTDOWNn~1_combout\ : std_logic;
SIGNAL \u2_controller|DISPLAY_SHUTDOWNn[1]~2_combout\ : std_logic;
SIGNAL \u2_controller|u1|bcd1:BCD[6]~0_combout\ : std_logic;
SIGNAL \u6_tens|Mux6~0_combout\ : std_logic;
SIGNAL \u6_tens|Mux5~0_combout\ : std_logic;
SIGNAL \u6_tens|Mux4~0_combout\ : std_logic;
SIGNAL \u6_tens|Mux3~0_combout\ : std_logic;
SIGNAL \u6_tens|Mux2~0_combout\ : std_logic;
SIGNAL \u6_tens|Mux1~0_combout\ : std_logic;
SIGNAL \u6_tens|Mux0~0_combout\ : std_logic;
SIGNAL \u2_controller|u1|LessThan2~0_combout\ : std_logic;
SIGNAL \u2_controller|u1|LessThan8~0_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~23_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~21_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~24_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~22_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~25_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~27_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~28_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~26_combout\ : std_logic;
SIGNAL \u2_controller|u1|BCD~20_combout\ : std_logic;
SIGNAL \u2_controller|u1|bcd1:BCD[9]~0_combout\ : std_logic;
SIGNAL \u2_controller|u1|bcd1:BCD[10]~0_combout\ : std_logic;
SIGNAL \u2_controller|u1|bcd1:BCD[11]~0_combout\ : std_logic;
SIGNAL \u2_controller|u1|bcd1:BCD[8]~0_combout\ : std_logic;
SIGNAL \u2_controller|DISPLAY_SHUTDOWNn~3_combout\ : std_logic;
SIGNAL \u2_controller|DISPLAY_SHUTDOWNn~4_combout\ : std_logic;
SIGNAL \u7_hunds|Mux6~0_combout\ : std_logic;
SIGNAL \u7_hunds|Mux5~0_combout\ : std_logic;
SIGNAL \u7_hunds|Mux4~0_combout\ : std_logic;
SIGNAL \u7_hunds|Mux3~0_combout\ : std_logic;
SIGNAL \u7_hunds|Mux2~0_combout\ : std_logic;
SIGNAL \u7_hunds|Mux1~0_combout\ : std_logic;
SIGNAL \u7_hunds|Mux0~0_combout\ : std_logic;
SIGNAL \u1_uart|u1_tx|clk_cnt\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u2_controller|LED\ : std_logic_vector(6 DOWNTO 1);
SIGNAL \u1_uart|u2_rx|clk_cnt\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u2_controller|SRAM_ADDR\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u2_controller|address_cnt\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u2_controller|u1|ones\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2_controller|DISPLAY_SHUTDOWNn\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2_controller|u1|tenths\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2_controller|u1|hundredths\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2_controller|chars_cnt\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \u2_controller|bin_in_char_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u2_controller|u1|reg_in\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u3_mode_sync|sig_in_d\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \u1_uart|u2_rx|bit_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u1_uart|u2_rx|RX_DATA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1_uart|u2_rx|register_sig\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1_uart|u2_rx|ALT_INV_current_state.st_idle~DUPLICATE_q\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_bit_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_bit_cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u3_mode_sync|ALT_INV_SIG_OUT~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_current_state.st_idle~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_address_cnt[11]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_address_cnt[9]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_address_cnt[8]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_address_cnt[5]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_address_cnt[4]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_address_cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_address_cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_address_cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_RX_DATA_VAILD~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_chars_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_chars_cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_chars_cnt[12]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_chars_cnt[10]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_chars_cnt[13]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_chars_cnt[8]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_chars_cnt[9]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_chars_cnt[5]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_chars_cnt[6]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_chars_cnt[7]~DUPLICATE_q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_address_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_clk_cnt[8]~DUPLICATE_q\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_clk_cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_clk_cnt[6]~DUPLICATE_q\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_clk_cnt[11]~DUPLICATE_q\ : std_logic;
SIGNAL \u1_uart|u1_tx|ALT_INV_clk_cnt[4]~DUPLICATE_q\ : std_logic;
SIGNAL \u1_uart|u1_tx|ALT_INV_clk_cnt[6]~DUPLICATE_q\ : std_logic;
SIGNAL \u1_uart|u1_tx|ALT_INV_clk_cnt[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_MODE~input_o\ : std_logic;
SIGNAL \ALT_INV_SER_RX~input_o\ : std_logic;
SIGNAL \ALT_INV_RSTn~input_o\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_register_sig[6]~12_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_register_sig[4]~9_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_register_sig[2]~6_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_register_sig[1]~4_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_register_sig[0]~2_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_register_sig\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1_uart|u2_rx|ALT_INV_RX_DATA\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u1_uart|u2_rx|ALT_INV_register_sig[7]~1_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_register_sig[3]~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_current_state.st_idle~q\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_bit_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u2_controller|ALT_INV_bin_in_char_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u3_mode_sync|ALT_INV_sig_in_d\ : std_logic_vector(3 DOWNTO 2);
SIGNAL \u2_controller|ALT_INV_address_cnt~25_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_address_cnt~23_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_address_cnt~21_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_address_cnt~19_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_address_cnt~17_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_address_cnt~15_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_address_cnt~13_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_address_cnt~11_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_address_cnt~9_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_address_cnt~7_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_address_cnt~5_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_address_cnt~3_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_current_state.st_data_bits~q\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_current_state.st_start_bit~q\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_current_state.st_stop_bit~q\ : std_logic;
SIGNAL \u1_uart|u3_rx_sync|ALT_INV_SIG_OUT~q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_address_cnt~1_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_address_cnt~0_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_LessThan5~2_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Selector36~0_combout\ : std_logic;
SIGNAL \u1_uart|u1_tx|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \u1_uart|u1_tx|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~28_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~27_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~26_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~25_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~24_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~23_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~22_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~21_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_LessThan8~0_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~20_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_DISPLAY_SHUTDOWNn~3_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~19_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~18_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~17_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~16_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~15_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~14_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~13_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~12_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~11_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~10_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~9_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~8_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_DISPLAY_SHUTDOWNn~1_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_DISPLAY_SHUTDOWNn~0_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_LessThan9~2_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_LessThan26~0_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~7_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~6_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~5_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~4_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~3_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~2_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~1_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_BCD~0_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_reg_in\ : std_logic_vector(13 DOWNTO 1);
SIGNAL \u3_mode_sync|ALT_INV_SIG_OUT~q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_current_state.st_idle~q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_LED~0_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_address_cnt\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u2_controller|ALT_INV_SRAM_ADDR~0_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_RX_DATA_VAILD~q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_LessThan9~1_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_current_state.st_receive~q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_chars_cnt\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \u2_controller|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_LessThan9~0_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_current_state.st_transmit~q\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_hundredths\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2_controller|ALT_INV_DISPLAY_SHUTDOWNn\ : std_logic_vector(2 DOWNTO 1);
SIGNAL \u2_controller|u1|ALT_INV_tenths\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u5_ones|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \u2_controller|u1|ALT_INV_ones\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2_controller|ALT_INV_LED\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \u2_controller|ALT_INV_SRAM_LB_N~q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_SRAM_UB_N~q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_SRAM_CE_N~q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_SRAM_OE_N~q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_SRAM_WE_N~q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_SRAM_ADDR\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1_uart|u1_tx|ALT_INV_SER_TX~q\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add2~49_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add2~45_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \u1_uart|u2_rx|ALT_INV_clk_cnt\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u2_controller|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \u1_uart|u1_tx|ALT_INV_clk_cnt\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1_uart|u1_tx|ALT_INV_current_state.st_idle~q\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RSTn <= RSTn;
ww_SER_RX <= SER_RX;
SER_TX <= ww_SER_TX;
SRAM_ADDR <= ww_SRAM_ADDR;
SRAM_WE_N <= ww_SRAM_WE_N;
SRAM_OE_N <= ww_SRAM_OE_N;
SRAM_CE_N <= ww_SRAM_CE_N;
SRAM_UB_N <= ww_SRAM_UB_N;
SRAM_LB_N <= ww_SRAM_LB_N;
ww_MODE <= MODE;
LED <= ww_LED;
NUM_ONES <= ww_NUM_ONES;
NUM_TENS <= ww_NUM_TENS;
NUM_HUNDS <= ww_NUM_HUNDS;
NUM_THOUS <= ww_NUM_THOUS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\u1_uart|u2_rx|ALT_INV_current_state.st_idle~DUPLICATE_q\ <= NOT \u1_uart|u2_rx|current_state.st_idle~DUPLICATE_q\;
\u1_uart|u2_rx|ALT_INV_bit_cnt[0]~DUPLICATE_q\ <= NOT \u1_uart|u2_rx|bit_cnt[0]~DUPLICATE_q\;
\u1_uart|u2_rx|ALT_INV_bit_cnt[2]~DUPLICATE_q\ <= NOT \u1_uart|u2_rx|bit_cnt[2]~DUPLICATE_q\;
\u3_mode_sync|ALT_INV_SIG_OUT~DUPLICATE_q\ <= NOT \u3_mode_sync|SIG_OUT~DUPLICATE_q\;
\u2_controller|ALT_INV_current_state.st_idle~DUPLICATE_q\ <= NOT \u2_controller|current_state.st_idle~DUPLICATE_q\;
\u2_controller|ALT_INV_address_cnt[11]~DUPLICATE_q\ <= NOT \u2_controller|address_cnt[11]~DUPLICATE_q\;
\u2_controller|ALT_INV_address_cnt[9]~DUPLICATE_q\ <= NOT \u2_controller|address_cnt[9]~DUPLICATE_q\;
\u2_controller|ALT_INV_address_cnt[8]~DUPLICATE_q\ <= NOT \u2_controller|address_cnt[8]~DUPLICATE_q\;
\u2_controller|ALT_INV_address_cnt[5]~DUPLICATE_q\ <= NOT \u2_controller|address_cnt[5]~DUPLICATE_q\;
\u2_controller|ALT_INV_address_cnt[4]~DUPLICATE_q\ <= NOT \u2_controller|address_cnt[4]~DUPLICATE_q\;
\u2_controller|ALT_INV_address_cnt[3]~DUPLICATE_q\ <= NOT \u2_controller|address_cnt[3]~DUPLICATE_q\;
\u2_controller|ALT_INV_address_cnt[2]~DUPLICATE_q\ <= NOT \u2_controller|address_cnt[2]~DUPLICATE_q\;
\u2_controller|ALT_INV_address_cnt[1]~DUPLICATE_q\ <= NOT \u2_controller|address_cnt[1]~DUPLICATE_q\;
\u1_uart|u2_rx|ALT_INV_RX_DATA_VAILD~DUPLICATE_q\ <= NOT \u1_uart|u2_rx|RX_DATA_VAILD~DUPLICATE_q\;
\u2_controller|ALT_INV_chars_cnt[0]~DUPLICATE_q\ <= NOT \u2_controller|chars_cnt[0]~DUPLICATE_q\;
\u2_controller|ALT_INV_chars_cnt[3]~DUPLICATE_q\ <= NOT \u2_controller|chars_cnt[3]~DUPLICATE_q\;
\u2_controller|ALT_INV_chars_cnt[12]~DUPLICATE_q\ <= NOT \u2_controller|chars_cnt[12]~DUPLICATE_q\;
\u2_controller|ALT_INV_chars_cnt[10]~DUPLICATE_q\ <= NOT \u2_controller|chars_cnt[10]~DUPLICATE_q\;
\u2_controller|ALT_INV_chars_cnt[13]~DUPLICATE_q\ <= NOT \u2_controller|chars_cnt[13]~DUPLICATE_q\;
\u2_controller|ALT_INV_chars_cnt[8]~DUPLICATE_q\ <= NOT \u2_controller|chars_cnt[8]~DUPLICATE_q\;
\u2_controller|ALT_INV_chars_cnt[9]~DUPLICATE_q\ <= NOT \u2_controller|chars_cnt[9]~DUPLICATE_q\;
\u2_controller|ALT_INV_chars_cnt[5]~DUPLICATE_q\ <= NOT \u2_controller|chars_cnt[5]~DUPLICATE_q\;
\u2_controller|ALT_INV_chars_cnt[6]~DUPLICATE_q\ <= NOT \u2_controller|chars_cnt[6]~DUPLICATE_q\;
\u2_controller|ALT_INV_chars_cnt[7]~DUPLICATE_q\ <= NOT \u2_controller|chars_cnt[7]~DUPLICATE_q\;
\u2_controller|ALT_INV_address_cnt[0]~DUPLICATE_q\ <= NOT \u2_controller|address_cnt[0]~DUPLICATE_q\;
\u1_uart|u2_rx|ALT_INV_clk_cnt[8]~DUPLICATE_q\ <= NOT \u1_uart|u2_rx|clk_cnt[8]~DUPLICATE_q\;
\u1_uart|u2_rx|ALT_INV_clk_cnt[2]~DUPLICATE_q\ <= NOT \u1_uart|u2_rx|clk_cnt[2]~DUPLICATE_q\;
\u1_uart|u2_rx|ALT_INV_clk_cnt[6]~DUPLICATE_q\ <= NOT \u1_uart|u2_rx|clk_cnt[6]~DUPLICATE_q\;
\u1_uart|u2_rx|ALT_INV_clk_cnt[11]~DUPLICATE_q\ <= NOT \u1_uart|u2_rx|clk_cnt[11]~DUPLICATE_q\;
\u1_uart|u1_tx|ALT_INV_clk_cnt[4]~DUPLICATE_q\ <= NOT \u1_uart|u1_tx|clk_cnt[4]~DUPLICATE_q\;
\u1_uart|u1_tx|ALT_INV_clk_cnt[6]~DUPLICATE_q\ <= NOT \u1_uart|u1_tx|clk_cnt[6]~DUPLICATE_q\;
\u1_uart|u1_tx|ALT_INV_clk_cnt[10]~DUPLICATE_q\ <= NOT \u1_uart|u1_tx|clk_cnt[10]~DUPLICATE_q\;
\ALT_INV_MODE~input_o\ <= NOT \MODE~input_o\;
\ALT_INV_SER_RX~input_o\ <= NOT \SER_RX~input_o\;
\ALT_INV_RSTn~input_o\ <= NOT \RSTn~input_o\;
\u1_uart|u2_rx|ALT_INV_register_sig[6]~12_combout\ <= NOT \u1_uart|u2_rx|register_sig[6]~12_combout\;
\u1_uart|u2_rx|ALT_INV_Decoder0~1_combout\ <= NOT \u1_uart|u2_rx|Decoder0~1_combout\;
\u1_uart|u2_rx|ALT_INV_register_sig[4]~9_combout\ <= NOT \u1_uart|u2_rx|register_sig[4]~9_combout\;
\u1_uart|u2_rx|ALT_INV_register_sig[2]~6_combout\ <= NOT \u1_uart|u2_rx|register_sig[2]~6_combout\;
\u1_uart|u2_rx|ALT_INV_register_sig[1]~4_combout\ <= NOT \u1_uart|u2_rx|register_sig[1]~4_combout\;
\u1_uart|u2_rx|ALT_INV_register_sig[0]~2_combout\ <= NOT \u1_uart|u2_rx|register_sig[0]~2_combout\;
\u1_uart|u2_rx|ALT_INV_Decoder0~0_combout\ <= NOT \u1_uart|u2_rx|Decoder0~0_combout\;
\u1_uart|u2_rx|ALT_INV_register_sig\(7) <= NOT \u1_uart|u2_rx|register_sig\(7);
\u1_uart|u2_rx|ALT_INV_register_sig\(6) <= NOT \u1_uart|u2_rx|register_sig\(6);
\u1_uart|u2_rx|ALT_INV_register_sig\(5) <= NOT \u1_uart|u2_rx|register_sig\(5);
\u1_uart|u2_rx|ALT_INV_register_sig\(4) <= NOT \u1_uart|u2_rx|register_sig\(4);
\u1_uart|u2_rx|ALT_INV_register_sig\(3) <= NOT \u1_uart|u2_rx|register_sig\(3);
\u1_uart|u2_rx|ALT_INV_register_sig\(2) <= NOT \u1_uart|u2_rx|register_sig\(2);
\u1_uart|u2_rx|ALT_INV_register_sig\(1) <= NOT \u1_uart|u2_rx|register_sig\(1);
\u1_uart|u2_rx|ALT_INV_register_sig\(0) <= NOT \u1_uart|u2_rx|register_sig\(0);
\u1_uart|u2_rx|ALT_INV_RX_DATA\(6) <= NOT \u1_uart|u2_rx|RX_DATA\(6);
\u1_uart|u2_rx|ALT_INV_RX_DATA\(5) <= NOT \u1_uart|u2_rx|RX_DATA\(5);
\u1_uart|u2_rx|ALT_INV_RX_DATA\(4) <= NOT \u1_uart|u2_rx|RX_DATA\(4);
\u1_uart|u2_rx|ALT_INV_RX_DATA\(3) <= NOT \u1_uart|u2_rx|RX_DATA\(3);
\u1_uart|u2_rx|ALT_INV_RX_DATA\(1) <= NOT \u1_uart|u2_rx|RX_DATA\(1);
\u1_uart|u2_rx|ALT_INV_RX_DATA\(0) <= NOT \u1_uart|u2_rx|RX_DATA\(0);
\u1_uart|u2_rx|ALT_INV_register_sig[7]~1_combout\ <= NOT \u1_uart|u2_rx|register_sig[7]~1_combout\;
\u1_uart|u2_rx|ALT_INV_register_sig[3]~0_combout\ <= NOT \u1_uart|u2_rx|register_sig[3]~0_combout\;
\u1_uart|u2_rx|ALT_INV_LessThan0~2_combout\ <= NOT \u1_uart|u2_rx|LessThan0~2_combout\;
\u1_uart|u2_rx|ALT_INV_LessThan0~1_combout\ <= NOT \u1_uart|u2_rx|LessThan0~1_combout\;
\u1_uart|u2_rx|ALT_INV_LessThan0~0_combout\ <= NOT \u1_uart|u2_rx|LessThan0~0_combout\;
\u1_uart|u2_rx|ALT_INV_current_state.st_idle~q\ <= NOT \u1_uart|u2_rx|current_state.st_idle~q\;
\u1_uart|u2_rx|ALT_INV_bit_cnt\(0) <= NOT \u1_uart|u2_rx|bit_cnt\(0);
\u1_uart|u2_rx|ALT_INV_bit_cnt\(1) <= NOT \u1_uart|u2_rx|bit_cnt\(1);
\u1_uart|u2_rx|ALT_INV_bit_cnt\(2) <= NOT \u1_uart|u2_rx|bit_cnt\(2);
\u2_controller|ALT_INV_bin_in_char_cnt\(2) <= NOT \u2_controller|bin_in_char_cnt\(2);
\u3_mode_sync|ALT_INV_sig_in_d\(2) <= NOT \u3_mode_sync|sig_in_d\(2);
\u3_mode_sync|ALT_INV_sig_in_d\(3) <= NOT \u3_mode_sync|sig_in_d\(3);
\u2_controller|ALT_INV_address_cnt~25_combout\ <= NOT \u2_controller|address_cnt~25_combout\;
\u2_controller|ALT_INV_address_cnt~23_combout\ <= NOT \u2_controller|address_cnt~23_combout\;
\u2_controller|ALT_INV_address_cnt~21_combout\ <= NOT \u2_controller|address_cnt~21_combout\;
\u2_controller|ALT_INV_address_cnt~19_combout\ <= NOT \u2_controller|address_cnt~19_combout\;
\u2_controller|ALT_INV_address_cnt~17_combout\ <= NOT \u2_controller|address_cnt~17_combout\;
\u2_controller|ALT_INV_address_cnt~15_combout\ <= NOT \u2_controller|address_cnt~15_combout\;
\u2_controller|ALT_INV_address_cnt~13_combout\ <= NOT \u2_controller|address_cnt~13_combout\;
\u2_controller|ALT_INV_address_cnt~11_combout\ <= NOT \u2_controller|address_cnt~11_combout\;
\u2_controller|ALT_INV_address_cnt~9_combout\ <= NOT \u2_controller|address_cnt~9_combout\;
\u2_controller|ALT_INV_address_cnt~7_combout\ <= NOT \u2_controller|address_cnt~7_combout\;
\u2_controller|ALT_INV_address_cnt~5_combout\ <= NOT \u2_controller|address_cnt~5_combout\;
\u2_controller|ALT_INV_address_cnt~3_combout\ <= NOT \u2_controller|address_cnt~3_combout\;
\u1_uart|u2_rx|ALT_INV_current_state.st_data_bits~q\ <= NOT \u1_uart|u2_rx|current_state.st_data_bits~q\;
\u1_uart|u2_rx|ALT_INV_current_state.st_start_bit~q\ <= NOT \u1_uart|u2_rx|current_state.st_start_bit~q\;
\u1_uart|u2_rx|ALT_INV_LessThan2~2_combout\ <= NOT \u1_uart|u2_rx|LessThan2~2_combout\;
\u1_uart|u2_rx|ALT_INV_LessThan2~1_combout\ <= NOT \u1_uart|u2_rx|LessThan2~1_combout\;
\u1_uart|u2_rx|ALT_INV_LessThan2~0_combout\ <= NOT \u1_uart|u2_rx|LessThan2~0_combout\;
\u1_uart|u2_rx|ALT_INV_current_state.st_stop_bit~q\ <= NOT \u1_uart|u2_rx|current_state.st_stop_bit~q\;
\u1_uart|u3_rx_sync|ALT_INV_SIG_OUT~q\ <= NOT \u1_uart|u3_rx_sync|SIG_OUT~q\;
\u2_controller|ALT_INV_LessThan3~2_combout\ <= NOT \u2_controller|LessThan3~2_combout\;
\u2_controller|ALT_INV_address_cnt~1_combout\ <= NOT \u2_controller|address_cnt~1_combout\;
\u2_controller|ALT_INV_address_cnt~0_combout\ <= NOT \u2_controller|address_cnt~0_combout\;
\u2_controller|ALT_INV_LessThan5~2_combout\ <= NOT \u2_controller|LessThan5~2_combout\;
\u2_controller|ALT_INV_LessThan5~1_combout\ <= NOT \u2_controller|LessThan5~1_combout\;
\u2_controller|ALT_INV_LessThan5~0_combout\ <= NOT \u2_controller|LessThan5~0_combout\;
\u2_controller|ALT_INV_Selector36~0_combout\ <= NOT \u2_controller|Selector36~0_combout\;
\u1_uart|u1_tx|ALT_INV_LessThan1~1_combout\ <= NOT \u1_uart|u1_tx|LessThan1~1_combout\;
\u1_uart|u1_tx|ALT_INV_LessThan1~0_combout\ <= NOT \u1_uart|u1_tx|LessThan1~0_combout\;
\u2_controller|u1|ALT_INV_BCD~28_combout\ <= NOT \u2_controller|u1|BCD~28_combout\;
\u2_controller|u1|ALT_INV_BCD~27_combout\ <= NOT \u2_controller|u1|BCD~27_combout\;
\u2_controller|u1|ALT_INV_BCD~26_combout\ <= NOT \u2_controller|u1|BCD~26_combout\;
\u2_controller|u1|ALT_INV_BCD~25_combout\ <= NOT \u2_controller|u1|BCD~25_combout\;
\u2_controller|u1|ALT_INV_BCD~24_combout\ <= NOT \u2_controller|u1|BCD~24_combout\;
\u2_controller|u1|ALT_INV_BCD~23_combout\ <= NOT \u2_controller|u1|BCD~23_combout\;
\u2_controller|u1|ALT_INV_BCD~22_combout\ <= NOT \u2_controller|u1|BCD~22_combout\;
\u2_controller|u1|ALT_INV_BCD~21_combout\ <= NOT \u2_controller|u1|BCD~21_combout\;
\u2_controller|u1|ALT_INV_LessThan8~0_combout\ <= NOT \u2_controller|u1|LessThan8~0_combout\;
\u2_controller|u1|ALT_INV_LessThan2~0_combout\ <= NOT \u2_controller|u1|LessThan2~0_combout\;
\u2_controller|u1|ALT_INV_BCD~20_combout\ <= NOT \u2_controller|u1|BCD~20_combout\;
\u2_controller|ALT_INV_DISPLAY_SHUTDOWNn~3_combout\ <= NOT \u2_controller|DISPLAY_SHUTDOWNn~3_combout\;
\u2_controller|u1|ALT_INV_BCD~19_combout\ <= NOT \u2_controller|u1|BCD~19_combout\;
\u2_controller|u1|ALT_INV_BCD~18_combout\ <= NOT \u2_controller|u1|BCD~18_combout\;
\u2_controller|u1|ALT_INV_BCD~17_combout\ <= NOT \u2_controller|u1|BCD~17_combout\;
\u2_controller|u1|ALT_INV_BCD~16_combout\ <= NOT \u2_controller|u1|BCD~16_combout\;
\u2_controller|u1|ALT_INV_BCD~15_combout\ <= NOT \u2_controller|u1|BCD~15_combout\;
\u2_controller|u1|ALT_INV_BCD~14_combout\ <= NOT \u2_controller|u1|BCD~14_combout\;
\u2_controller|u1|ALT_INV_BCD~13_combout\ <= NOT \u2_controller|u1|BCD~13_combout\;
\u2_controller|u1|ALT_INV_BCD~12_combout\ <= NOT \u2_controller|u1|BCD~12_combout\;
\u2_controller|u1|ALT_INV_BCD~11_combout\ <= NOT \u2_controller|u1|BCD~11_combout\;
\u2_controller|u1|ALT_INV_BCD~10_combout\ <= NOT \u2_controller|u1|BCD~10_combout\;
\u2_controller|u1|ALT_INV_BCD~9_combout\ <= NOT \u2_controller|u1|BCD~9_combout\;
\u2_controller|u1|ALT_INV_BCD~8_combout\ <= NOT \u2_controller|u1|BCD~8_combout\;
\u2_controller|ALT_INV_DISPLAY_SHUTDOWNn~1_combout\ <= NOT \u2_controller|DISPLAY_SHUTDOWNn~1_combout\;
\u2_controller|ALT_INV_DISPLAY_SHUTDOWNn~0_combout\ <= NOT \u2_controller|DISPLAY_SHUTDOWNn~0_combout\;
\u2_controller|ALT_INV_LessThan9~2_combout\ <= NOT \u2_controller|LessThan9~2_combout\;
\u2_controller|u1|ALT_INV_LessThan26~0_combout\ <= NOT \u2_controller|u1|LessThan26~0_combout\;
\u2_controller|u1|ALT_INV_BCD~7_combout\ <= NOT \u2_controller|u1|BCD~7_combout\;
\u2_controller|u1|ALT_INV_BCD~6_combout\ <= NOT \u2_controller|u1|BCD~6_combout\;
\u2_controller|u1|ALT_INV_BCD~5_combout\ <= NOT \u2_controller|u1|BCD~5_combout\;
\u2_controller|u1|ALT_INV_BCD~4_combout\ <= NOT \u2_controller|u1|BCD~4_combout\;
\u2_controller|u1|ALT_INV_BCD~3_combout\ <= NOT \u2_controller|u1|BCD~3_combout\;
\u2_controller|u1|ALT_INV_BCD~2_combout\ <= NOT \u2_controller|u1|BCD~2_combout\;
\u2_controller|u1|ALT_INV_BCD~1_combout\ <= NOT \u2_controller|u1|BCD~1_combout\;
\u2_controller|u1|ALT_INV_BCD~0_combout\ <= NOT \u2_controller|u1|BCD~0_combout\;
\u2_controller|u1|ALT_INV_reg_in\(12) <= NOT \u2_controller|u1|reg_in\(12);
\u2_controller|u1|ALT_INV_reg_in\(13) <= NOT \u2_controller|u1|reg_in\(13);
\u2_controller|u1|ALT_INV_reg_in\(11) <= NOT \u2_controller|u1|reg_in\(11);
\u2_controller|u1|ALT_INV_reg_in\(10) <= NOT \u2_controller|u1|reg_in\(10);
\u2_controller|u1|ALT_INV_reg_in\(9) <= NOT \u2_controller|u1|reg_in\(9);
\u2_controller|u1|ALT_INV_reg_in\(8) <= NOT \u2_controller|u1|reg_in\(8);
\u2_controller|u1|ALT_INV_reg_in\(7) <= NOT \u2_controller|u1|reg_in\(7);
\u2_controller|u1|ALT_INV_reg_in\(6) <= NOT \u2_controller|u1|reg_in\(6);
\u2_controller|u1|ALT_INV_reg_in\(5) <= NOT \u2_controller|u1|reg_in\(5);
\u2_controller|u1|ALT_INV_reg_in\(4) <= NOT \u2_controller|u1|reg_in\(4);
\u2_controller|u1|ALT_INV_reg_in\(3) <= NOT \u2_controller|u1|reg_in\(3);
\u2_controller|u1|ALT_INV_reg_in\(2) <= NOT \u2_controller|u1|reg_in\(2);
\u2_controller|u1|ALT_INV_reg_in\(1) <= NOT \u2_controller|u1|reg_in\(1);
\u3_mode_sync|ALT_INV_SIG_OUT~q\ <= NOT \u3_mode_sync|SIG_OUT~q\;
\u2_controller|ALT_INV_bin_in_char_cnt\(0) <= NOT \u2_controller|bin_in_char_cnt\(0);
\u2_controller|ALT_INV_current_state.st_idle~q\ <= NOT \u2_controller|current_state.st_idle~q\;
\u2_controller|ALT_INV_LessThan0~1_combout\ <= NOT \u2_controller|LessThan0~1_combout\;
\u2_controller|ALT_INV_LED~0_combout\ <= NOT \u2_controller|LED~0_combout\;
\u2_controller|ALT_INV_address_cnt\(12) <= NOT \u2_controller|address_cnt\(12);
\u2_controller|ALT_INV_address_cnt\(11) <= NOT \u2_controller|address_cnt\(11);
\u2_controller|ALT_INV_address_cnt\(10) <= NOT \u2_controller|address_cnt\(10);
\u2_controller|ALT_INV_address_cnt\(9) <= NOT \u2_controller|address_cnt\(9);
\u2_controller|ALT_INV_address_cnt\(8) <= NOT \u2_controller|address_cnt\(8);
\u2_controller|ALT_INV_address_cnt\(7) <= NOT \u2_controller|address_cnt\(7);
\u2_controller|ALT_INV_address_cnt\(6) <= NOT \u2_controller|address_cnt\(6);
\u2_controller|ALT_INV_address_cnt\(5) <= NOT \u2_controller|address_cnt\(5);
\u2_controller|ALT_INV_address_cnt\(4) <= NOT \u2_controller|address_cnt\(4);
\u2_controller|ALT_INV_address_cnt\(3) <= NOT \u2_controller|address_cnt\(3);
\u2_controller|ALT_INV_address_cnt\(2) <= NOT \u2_controller|address_cnt\(2);
\u2_controller|ALT_INV_address_cnt\(1) <= NOT \u2_controller|address_cnt\(1);
\u2_controller|ALT_INV_SRAM_ADDR~0_combout\ <= NOT \u2_controller|SRAM_ADDR~0_combout\;
\u2_controller|ALT_INV_LessThan3~1_combout\ <= NOT \u2_controller|LessThan3~1_combout\;
\u2_controller|ALT_INV_LessThan0~0_combout\ <= NOT \u2_controller|LessThan0~0_combout\;
\u1_uart|u2_rx|ALT_INV_RX_DATA_VAILD~q\ <= NOT \u1_uart|u2_rx|RX_DATA_VAILD~q\;
\u2_controller|ALT_INV_LessThan9~1_combout\ <= NOT \u2_controller|LessThan9~1_combout\;
\u2_controller|ALT_INV_LessThan3~0_combout\ <= NOT \u2_controller|LessThan3~0_combout\;
\u2_controller|ALT_INV_current_state.st_receive~q\ <= NOT \u2_controller|current_state.st_receive~q\;
\u2_controller|ALT_INV_LessThan1~2_combout\ <= NOT \u2_controller|LessThan1~2_combout\;
\u2_controller|ALT_INV_LessThan1~1_combout\ <= NOT \u2_controller|LessThan1~1_combout\;
\u2_controller|ALT_INV_chars_cnt\(1) <= NOT \u2_controller|chars_cnt\(1);
\u2_controller|ALT_INV_chars_cnt\(2) <= NOT \u2_controller|chars_cnt\(2);
\u2_controller|ALT_INV_chars_cnt\(0) <= NOT \u2_controller|chars_cnt\(0);
\u2_controller|ALT_INV_chars_cnt\(3) <= NOT \u2_controller|chars_cnt\(3);
\u2_controller|ALT_INV_LessThan1~0_combout\ <= NOT \u2_controller|LessThan1~0_combout\;
\u2_controller|ALT_INV_chars_cnt\(11) <= NOT \u2_controller|chars_cnt\(11);
\u2_controller|ALT_INV_chars_cnt\(12) <= NOT \u2_controller|chars_cnt\(12);
\u2_controller|ALT_INV_chars_cnt\(10) <= NOT \u2_controller|chars_cnt\(10);
\u2_controller|ALT_INV_chars_cnt\(13) <= NOT \u2_controller|chars_cnt\(13);
\u2_controller|ALT_INV_LessThan9~0_combout\ <= NOT \u2_controller|LessThan9~0_combout\;
\u2_controller|ALT_INV_chars_cnt\(8) <= NOT \u2_controller|chars_cnt\(8);
\u2_controller|ALT_INV_chars_cnt\(9) <= NOT \u2_controller|chars_cnt\(9);
\u2_controller|ALT_INV_chars_cnt\(4) <= NOT \u2_controller|chars_cnt\(4);
\u2_controller|ALT_INV_chars_cnt\(5) <= NOT \u2_controller|chars_cnt\(5);
\u2_controller|ALT_INV_chars_cnt\(6) <= NOT \u2_controller|chars_cnt\(6);
\u2_controller|ALT_INV_chars_cnt\(7) <= NOT \u2_controller|chars_cnt\(7);
\u2_controller|ALT_INV_address_cnt\(0) <= NOT \u2_controller|address_cnt\(0);
\u2_controller|ALT_INV_current_state.st_transmit~q\ <= NOT \u2_controller|current_state.st_transmit~q\;
\u2_controller|u1|ALT_INV_hundredths\(3) <= NOT \u2_controller|u1|hundredths\(3);
\u2_controller|u1|ALT_INV_hundredths\(2) <= NOT \u2_controller|u1|hundredths\(2);
\u2_controller|u1|ALT_INV_hundredths\(1) <= NOT \u2_controller|u1|hundredths\(1);
\u2_controller|u1|ALT_INV_hundredths\(0) <= NOT \u2_controller|u1|hundredths\(0);
\u2_controller|ALT_INV_DISPLAY_SHUTDOWNn\(2) <= NOT \u2_controller|DISPLAY_SHUTDOWNn\(2);
\u2_controller|u1|ALT_INV_tenths\(3) <= NOT \u2_controller|u1|tenths\(3);
\u2_controller|u1|ALT_INV_tenths\(2) <= NOT \u2_controller|u1|tenths\(2);
\u2_controller|u1|ALT_INV_tenths\(1) <= NOT \u2_controller|u1|tenths\(1);
\u2_controller|u1|ALT_INV_tenths\(0) <= NOT \u2_controller|u1|tenths\(0);
\u2_controller|ALT_INV_DISPLAY_SHUTDOWNn\(1) <= NOT \u2_controller|DISPLAY_SHUTDOWNn\(1);
\u5_ones|ALT_INV_Mux0~0_combout\ <= NOT \u5_ones|Mux0~0_combout\;
\u2_controller|u1|ALT_INV_ones\(3) <= NOT \u2_controller|u1|ones\(3);
\u2_controller|u1|ALT_INV_ones\(2) <= NOT \u2_controller|u1|ones\(2);
\u2_controller|u1|ALT_INV_ones\(1) <= NOT \u2_controller|u1|ones\(1);
\u2_controller|u1|ALT_INV_ones\(0) <= NOT \u2_controller|u1|ones\(0);
\u2_controller|ALT_INV_LED\(2) <= NOT \u2_controller|LED\(2);
\u2_controller|ALT_INV_SRAM_LB_N~q\ <= NOT \u2_controller|SRAM_LB_N~q\;
\u2_controller|ALT_INV_SRAM_UB_N~q\ <= NOT \u2_controller|SRAM_UB_N~q\;
\u2_controller|ALT_INV_SRAM_CE_N~q\ <= NOT \u2_controller|SRAM_CE_N~q\;
\u2_controller|ALT_INV_SRAM_OE_N~q\ <= NOT \u2_controller|SRAM_OE_N~q\;
\u2_controller|ALT_INV_SRAM_WE_N~q\ <= NOT \u2_controller|SRAM_WE_N~q\;
\u2_controller|ALT_INV_SRAM_ADDR\(12) <= NOT \u2_controller|SRAM_ADDR\(12);
\u2_controller|ALT_INV_SRAM_ADDR\(11) <= NOT \u2_controller|SRAM_ADDR\(11);
\u2_controller|ALT_INV_SRAM_ADDR\(10) <= NOT \u2_controller|SRAM_ADDR\(10);
\u2_controller|ALT_INV_SRAM_ADDR\(9) <= NOT \u2_controller|SRAM_ADDR\(9);
\u2_controller|ALT_INV_SRAM_ADDR\(8) <= NOT \u2_controller|SRAM_ADDR\(8);
\u2_controller|ALT_INV_SRAM_ADDR\(7) <= NOT \u2_controller|SRAM_ADDR\(7);
\u2_controller|ALT_INV_SRAM_ADDR\(6) <= NOT \u2_controller|SRAM_ADDR\(6);
\u2_controller|ALT_INV_SRAM_ADDR\(5) <= NOT \u2_controller|SRAM_ADDR\(5);
\u2_controller|ALT_INV_SRAM_ADDR\(4) <= NOT \u2_controller|SRAM_ADDR\(4);
\u2_controller|ALT_INV_SRAM_ADDR\(3) <= NOT \u2_controller|SRAM_ADDR\(3);
\u2_controller|ALT_INV_SRAM_ADDR\(2) <= NOT \u2_controller|SRAM_ADDR\(2);
\u2_controller|ALT_INV_SRAM_ADDR\(1) <= NOT \u2_controller|SRAM_ADDR\(1);
\u2_controller|ALT_INV_SRAM_ADDR\(0) <= NOT \u2_controller|SRAM_ADDR\(0);
\u1_uart|u1_tx|ALT_INV_SER_TX~q\ <= NOT \u1_uart|u1_tx|SER_TX~q\;
\u2_controller|ALT_INV_Add0~49_sumout\ <= NOT \u2_controller|Add0~49_sumout\;
\u2_controller|ALT_INV_Add2~49_sumout\ <= NOT \u2_controller|Add2~49_sumout\;
\u2_controller|ALT_INV_Add0~45_sumout\ <= NOT \u2_controller|Add0~45_sumout\;
\u2_controller|ALT_INV_Add2~45_sumout\ <= NOT \u2_controller|Add2~45_sumout\;
\u2_controller|ALT_INV_Add0~41_sumout\ <= NOT \u2_controller|Add0~41_sumout\;
\u2_controller|ALT_INV_Add2~41_sumout\ <= NOT \u2_controller|Add2~41_sumout\;
\u2_controller|ALT_INV_Add0~37_sumout\ <= NOT \u2_controller|Add0~37_sumout\;
\u2_controller|ALT_INV_Add2~37_sumout\ <= NOT \u2_controller|Add2~37_sumout\;
\u2_controller|ALT_INV_Add0~33_sumout\ <= NOT \u2_controller|Add0~33_sumout\;
\u2_controller|ALT_INV_Add2~33_sumout\ <= NOT \u2_controller|Add2~33_sumout\;
\u2_controller|ALT_INV_Add0~29_sumout\ <= NOT \u2_controller|Add0~29_sumout\;
\u2_controller|ALT_INV_Add2~29_sumout\ <= NOT \u2_controller|Add2~29_sumout\;
\u2_controller|ALT_INV_Add0~25_sumout\ <= NOT \u2_controller|Add0~25_sumout\;
\u2_controller|ALT_INV_Add2~25_sumout\ <= NOT \u2_controller|Add2~25_sumout\;
\u2_controller|ALT_INV_Add0~21_sumout\ <= NOT \u2_controller|Add0~21_sumout\;
\u2_controller|ALT_INV_Add2~21_sumout\ <= NOT \u2_controller|Add2~21_sumout\;
\u2_controller|ALT_INV_Add0~17_sumout\ <= NOT \u2_controller|Add0~17_sumout\;
\u2_controller|ALT_INV_Add2~17_sumout\ <= NOT \u2_controller|Add2~17_sumout\;
\u2_controller|ALT_INV_Add0~13_sumout\ <= NOT \u2_controller|Add0~13_sumout\;
\u2_controller|ALT_INV_Add2~13_sumout\ <= NOT \u2_controller|Add2~13_sumout\;
\u2_controller|ALT_INV_Add0~9_sumout\ <= NOT \u2_controller|Add0~9_sumout\;
\u2_controller|ALT_INV_Add2~9_sumout\ <= NOT \u2_controller|Add2~9_sumout\;
\u2_controller|ALT_INV_Add0~5_sumout\ <= NOT \u2_controller|Add0~5_sumout\;
\u2_controller|ALT_INV_Add2~5_sumout\ <= NOT \u2_controller|Add2~5_sumout\;
\u1_uart|u2_rx|ALT_INV_clk_cnt\(8) <= NOT \u1_uart|u2_rx|clk_cnt\(8);
\u1_uart|u2_rx|ALT_INV_clk_cnt\(7) <= NOT \u1_uart|u2_rx|clk_cnt\(7);
\u1_uart|u2_rx|ALT_INV_clk_cnt\(9) <= NOT \u1_uart|u2_rx|clk_cnt\(9);
\u1_uart|u2_rx|ALT_INV_clk_cnt\(1) <= NOT \u1_uart|u2_rx|clk_cnt\(1);
\u1_uart|u2_rx|ALT_INV_clk_cnt\(0) <= NOT \u1_uart|u2_rx|clk_cnt\(0);
\u1_uart|u2_rx|ALT_INV_clk_cnt\(2) <= NOT \u1_uart|u2_rx|clk_cnt\(2);
\u1_uart|u2_rx|ALT_INV_clk_cnt\(3) <= NOT \u1_uart|u2_rx|clk_cnt\(3);
\u1_uart|u2_rx|ALT_INV_clk_cnt\(4) <= NOT \u1_uart|u2_rx|clk_cnt\(4);
\u1_uart|u2_rx|ALT_INV_clk_cnt\(5) <= NOT \u1_uart|u2_rx|clk_cnt\(5);
\u1_uart|u2_rx|ALT_INV_clk_cnt\(6) <= NOT \u1_uart|u2_rx|clk_cnt\(6);
\u1_uart|u2_rx|ALT_INV_clk_cnt\(10) <= NOT \u1_uart|u2_rx|clk_cnt\(10);
\u1_uart|u2_rx|ALT_INV_clk_cnt\(11) <= NOT \u1_uart|u2_rx|clk_cnt\(11);
\u1_uart|u2_rx|ALT_INV_clk_cnt\(12) <= NOT \u1_uart|u2_rx|clk_cnt\(12);
\u2_controller|ALT_INV_Add1~53_sumout\ <= NOT \u2_controller|Add1~53_sumout\;
\u2_controller|ALT_INV_Add1~49_sumout\ <= NOT \u2_controller|Add1~49_sumout\;
\u2_controller|ALT_INV_Add1~45_sumout\ <= NOT \u2_controller|Add1~45_sumout\;
\u2_controller|ALT_INV_Add1~41_sumout\ <= NOT \u2_controller|Add1~41_sumout\;
\u2_controller|ALT_INV_Add1~37_sumout\ <= NOT \u2_controller|Add1~37_sumout\;
\u2_controller|ALT_INV_Add1~33_sumout\ <= NOT \u2_controller|Add1~33_sumout\;
\u2_controller|ALT_INV_Add1~29_sumout\ <= NOT \u2_controller|Add1~29_sumout\;
\u2_controller|ALT_INV_Add1~25_sumout\ <= NOT \u2_controller|Add1~25_sumout\;
\u2_controller|ALT_INV_Add1~21_sumout\ <= NOT \u2_controller|Add1~21_sumout\;
\u2_controller|ALT_INV_Add1~17_sumout\ <= NOT \u2_controller|Add1~17_sumout\;
\u2_controller|ALT_INV_Add1~13_sumout\ <= NOT \u2_controller|Add1~13_sumout\;
\u2_controller|ALT_INV_Add1~9_sumout\ <= NOT \u2_controller|Add1~9_sumout\;
\u2_controller|ALT_INV_Add1~5_sumout\ <= NOT \u2_controller|Add1~5_sumout\;
\u2_controller|ALT_INV_Add1~1_sumout\ <= NOT \u2_controller|Add1~1_sumout\;
\u2_controller|ALT_INV_Add0~1_sumout\ <= NOT \u2_controller|Add0~1_sumout\;
\u2_controller|ALT_INV_Add2~1_sumout\ <= NOT \u2_controller|Add2~1_sumout\;
\u1_uart|u1_tx|ALT_INV_clk_cnt\(7) <= NOT \u1_uart|u1_tx|clk_cnt\(7);
\u1_uart|u1_tx|ALT_INV_clk_cnt\(8) <= NOT \u1_uart|u1_tx|clk_cnt\(8);
\u1_uart|u1_tx|ALT_INV_clk_cnt\(9) <= NOT \u1_uart|u1_tx|clk_cnt\(9);
\u1_uart|u1_tx|ALT_INV_clk_cnt\(0) <= NOT \u1_uart|u1_tx|clk_cnt\(0);
\u1_uart|u1_tx|ALT_INV_clk_cnt\(1) <= NOT \u1_uart|u1_tx|clk_cnt\(1);
\u1_uart|u1_tx|ALT_INV_clk_cnt\(2) <= NOT \u1_uart|u1_tx|clk_cnt\(2);
\u1_uart|u1_tx|ALT_INV_clk_cnt\(3) <= NOT \u1_uart|u1_tx|clk_cnt\(3);
\u1_uart|u1_tx|ALT_INV_clk_cnt\(4) <= NOT \u1_uart|u1_tx|clk_cnt\(4);
\u1_uart|u1_tx|ALT_INV_clk_cnt\(5) <= NOT \u1_uart|u1_tx|clk_cnt\(5);
\u1_uart|u1_tx|ALT_INV_clk_cnt\(6) <= NOT \u1_uart|u1_tx|clk_cnt\(6);
\u1_uart|u1_tx|ALT_INV_clk_cnt\(10) <= NOT \u1_uart|u1_tx|clk_cnt\(10);
\u1_uart|u1_tx|ALT_INV_clk_cnt\(11) <= NOT \u1_uart|u1_tx|clk_cnt\(11);
\u1_uart|u1_tx|ALT_INV_clk_cnt\(12) <= NOT \u1_uart|u1_tx|clk_cnt\(12);
\u1_uart|u1_tx|ALT_INV_current_state.st_idle~q\ <= NOT \u1_uart|u1_tx|current_state.st_idle~q\;

-- Location: IOOBUF_X19_Y0_N19
\SER_TX~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1_uart|u1_tx|ALT_INV_SER_TX~q\,
	devoe => ww_devoe,
	o => ww_SER_TX);

-- Location: IOOBUF_X57_Y0_N36
\SRAM_ADDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_ADDR\(0),
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(0));

-- Location: IOOBUF_X6_Y0_N53
\SRAM_ADDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_ADDR\(1),
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(1));

-- Location: IOOBUF_X7_Y0_N36
\SRAM_ADDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_ADDR\(2),
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(2));

-- Location: IOOBUF_X4_Y0_N36
\SRAM_ADDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_ADDR\(3),
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(3));

-- Location: IOOBUF_X6_Y0_N36
\SRAM_ADDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_ADDR\(4),
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(4));

-- Location: IOOBUF_X6_Y0_N19
\SRAM_ADDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_ADDR\(5),
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(5));

-- Location: IOOBUF_X4_Y0_N2
\SRAM_ADDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_ADDR\(6),
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(6));

-- Location: IOOBUF_X7_Y0_N19
\SRAM_ADDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_ADDR\(7),
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(7));

-- Location: IOOBUF_X4_Y0_N53
\SRAM_ADDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_ADDR\(8),
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(8));

-- Location: IOOBUF_X7_Y0_N53
\SRAM_ADDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_ADDR\(9),
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(9));

-- Location: IOOBUF_X10_Y61_N42
\SRAM_ADDR[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_ADDR\(10),
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(10));

-- Location: IOOBUF_X2_Y0_N76
\SRAM_ADDR[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_ADDR\(11),
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(11));

-- Location: IOOBUF_X7_Y0_N2
\SRAM_ADDR[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_ADDR\(12),
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(12));

-- Location: IOOBUF_X53_Y61_N19
\SRAM_ADDR[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(13));

-- Location: IOOBUF_X68_Y49_N56
\SRAM_ADDR[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(14));

-- Location: IOOBUF_X64_Y61_N53
\SRAM_ADDR[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(15));

-- Location: IOOBUF_X10_Y61_N93
\SRAM_ADDR[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(16));

-- Location: IOOBUF_X48_Y61_N76
\SRAM_ADDR[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(17));

-- Location: IOOBUF_X42_Y0_N2
\SRAM_WE_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|ALT_INV_SRAM_WE_N~q\,
	devoe => ww_devoe,
	o => ww_SRAM_WE_N);

-- Location: IOOBUF_X17_Y0_N42
\SRAM_OE_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|ALT_INV_SRAM_OE_N~q\,
	devoe => ww_devoe,
	o => ww_SRAM_OE_N);

-- Location: IOOBUF_X17_Y61_N59
\SRAM_CE_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|ALT_INV_SRAM_CE_N~q\,
	devoe => ww_devoe,
	o => ww_SRAM_CE_N);

-- Location: IOOBUF_X55_Y0_N93
\SRAM_UB_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|ALT_INV_SRAM_UB_N~q\,
	devoe => ww_devoe,
	o => ww_SRAM_UB_N);

-- Location: IOOBUF_X12_Y0_N19
\SRAM_LB_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|ALT_INV_SRAM_LB_N~q\,
	devoe => ww_devoe,
	o => ww_SRAM_LB_N);

-- Location: IOOBUF_X34_Y61_N53
\LED[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LED(1));

-- Location: IOOBUF_X18_Y0_N53
\LED[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|ALT_INV_LED\(2),
	devoe => ww_devoe,
	o => ww_LED(2));

-- Location: IOOBUF_X10_Y0_N59
\LED[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|LED\(3),
	devoe => ww_devoe,
	o => ww_LED(3));

-- Location: IOOBUF_X17_Y0_N93
\LED[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|LED\(4),
	devoe => ww_devoe,
	o => ww_LED(4));

-- Location: IOOBUF_X6_Y0_N2
\LED[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|LED\(5),
	devoe => ww_devoe,
	o => ww_LED(5));

-- Location: IOOBUF_X34_Y0_N53
\LED[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|LED\(6),
	devoe => ww_devoe,
	o => ww_LED(6));

-- Location: IOOBUF_X34_Y0_N2
\NUM_ONES[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_ones|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_NUM_ONES(0));

-- Location: IOOBUF_X12_Y61_N53
\NUM_ONES[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_ones|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_NUM_ONES(1));

-- Location: IOOBUF_X15_Y61_N53
\NUM_ONES[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_ones|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_NUM_ONES(2));

-- Location: IOOBUF_X68_Y11_N22
\NUM_ONES[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_ones|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_NUM_ONES(3));

-- Location: IOOBUF_X15_Y61_N36
\NUM_ONES[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_ones|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_NUM_ONES(4));

-- Location: IOOBUF_X4_Y0_N19
\NUM_ONES[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_ones|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_NUM_ONES(5));

-- Location: IOOBUF_X32_Y0_N76
\NUM_ONES[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_ones|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_NUM_ONES(6));

-- Location: IOOBUF_X19_Y61_N36
\NUM_TENS[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u6_tens|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_NUM_TENS(0));

-- Location: IOOBUF_X38_Y0_N53
\NUM_TENS[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u6_tens|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_NUM_TENS(1));

-- Location: IOOBUF_X36_Y0_N19
\NUM_TENS[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u6_tens|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_NUM_TENS(2));

-- Location: IOOBUF_X19_Y0_N53
\NUM_TENS[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u6_tens|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_NUM_TENS(3));

-- Location: IOOBUF_X19_Y0_N36
\NUM_TENS[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u6_tens|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_NUM_TENS(4));

-- Location: IOOBUF_X21_Y61_N19
\NUM_TENS[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u6_tens|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_NUM_TENS(5));

-- Location: IOOBUF_X51_Y0_N36
\NUM_TENS[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u6_tens|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_NUM_TENS(6));

-- Location: IOOBUF_X21_Y0_N53
\NUM_HUNDS[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u7_hunds|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_NUM_HUNDS(0));

-- Location: IOOBUF_X32_Y0_N42
\NUM_HUNDS[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u7_hunds|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_NUM_HUNDS(1));

-- Location: IOOBUF_X21_Y0_N36
\NUM_HUNDS[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u7_hunds|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_NUM_HUNDS(2));

-- Location: IOOBUF_X32_Y0_N93
\NUM_HUNDS[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u7_hunds|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_NUM_HUNDS(3));

-- Location: IOOBUF_X18_Y0_N36
\NUM_HUNDS[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u7_hunds|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_NUM_HUNDS(4));

-- Location: IOOBUF_X21_Y0_N19
\NUM_HUNDS[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u7_hunds|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_NUM_HUNDS(5));

-- Location: IOOBUF_X32_Y0_N59
\NUM_HUNDS[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u7_hunds|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_NUM_HUNDS(6));

-- Location: IOOBUF_X68_Y37_N39
\NUM_THOUS[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_NUM_THOUS(0));

-- Location: IOOBUF_X48_Y61_N93
\NUM_THOUS[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_NUM_THOUS(1));

-- Location: IOOBUF_X62_Y61_N42
\NUM_THOUS[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_NUM_THOUS(2));

-- Location: IOOBUF_X48_Y0_N93
\NUM_THOUS[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_NUM_THOUS(3));

-- Location: IOOBUF_X68_Y52_N5
\NUM_THOUS[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_NUM_THOUS(4));

-- Location: IOOBUF_X53_Y61_N53
\NUM_THOUS[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_NUM_THOUS(5));

-- Location: IOOBUF_X57_Y61_N36
\NUM_THOUS[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_NUM_THOUS(6));

-- Location: IOOBUF_X14_Y0_N53
\SRAM_DQ[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_DQ[0]~reg0_q\,
	oe => \u2_controller|SRAM_DQ[0]~en_q\,
	devoe => ww_devoe,
	o => SRAM_DQ(0));

-- Location: IOOBUF_X18_Y0_N19
\SRAM_DQ[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_DQ[1]~reg0_q\,
	oe => \u2_controller|SRAM_DQ[1]~en_q\,
	devoe => ww_devoe,
	o => SRAM_DQ(1));

-- Location: IOOBUF_X15_Y0_N2
\SRAM_DQ[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_DQ[2]~reg0_q\,
	oe => \u2_controller|SRAM_DQ[2]~en_q\,
	devoe => ww_devoe,
	o => SRAM_DQ(2));

-- Location: IOOBUF_X15_Y0_N19
\SRAM_DQ[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_DQ[3]~reg0_q\,
	oe => \u2_controller|SRAM_DQ[3]~en_q\,
	devoe => ww_devoe,
	o => SRAM_DQ(3));

-- Location: IOOBUF_X15_Y0_N36
\SRAM_DQ[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_DQ[4]~reg0_q\,
	oe => \u2_controller|SRAM_DQ[4]~en_q\,
	devoe => ww_devoe,
	o => SRAM_DQ(4));

-- Location: IOOBUF_X15_Y0_N53
\SRAM_DQ[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_DQ[5]~reg0_q\,
	oe => \u2_controller|SRAM_DQ[5]~en_q\,
	devoe => ww_devoe,
	o => SRAM_DQ(5));

-- Location: IOOBUF_X14_Y0_N36
\SRAM_DQ[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_DQ[6]~reg0_q\,
	oe => \u2_controller|SRAM_DQ[6]~en_q\,
	devoe => ww_devoe,
	o => SRAM_DQ(6));

-- Location: IOOBUF_X14_Y0_N2
\SRAM_DQ[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_DQ[7]~reg0_q\,
	oe => \u2_controller|SRAM_DQ[7]~en_q\,
	devoe => ww_devoe,
	o => SRAM_DQ(7));

-- Location: IOOBUF_X14_Y0_N19
\SRAM_DQ[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_DQ[8]~reg0_q\,
	oe => \u2_controller|SRAM_DQ[8]~en_q\,
	devoe => ww_devoe,
	o => SRAM_DQ(8));

-- Location: IOOBUF_X17_Y0_N59
\SRAM_DQ[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_DQ[9]~reg0_q\,
	oe => \u2_controller|SRAM_DQ[9]~en_q\,
	devoe => ww_devoe,
	o => SRAM_DQ(9));

-- Location: IOOBUF_X18_Y0_N2
\SRAM_DQ[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_DQ[10]~reg0_q\,
	oe => \u2_controller|SRAM_DQ[10]~en_q\,
	devoe => ww_devoe,
	o => SRAM_DQ(10));

-- Location: IOOBUF_X10_Y0_N42
\SRAM_DQ[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_DQ[11]~reg0_q\,
	oe => \u2_controller|SRAM_DQ[11]~en_q\,
	devoe => ww_devoe,
	o => SRAM_DQ(11));

-- Location: IOOBUF_X17_Y0_N76
\SRAM_DQ[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_DQ[12]~reg0_q\,
	oe => \u2_controller|SRAM_DQ[12]~en_q\,
	devoe => ww_devoe,
	o => SRAM_DQ(12));

-- Location: IOOBUF_X12_Y0_N2
\SRAM_DQ[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_DQ[13]~reg0_q\,
	oe => \u2_controller|SRAM_DQ[13]~en_q\,
	devoe => ww_devoe,
	o => SRAM_DQ(13));

-- Location: IOOBUF_X12_Y0_N53
\SRAM_DQ[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_DQ[14]~reg0_q\,
	oe => \u2_controller|SRAM_DQ[14]~en_q\,
	devoe => ww_devoe,
	o => SRAM_DQ(14));

-- Location: IOOBUF_X12_Y0_N36
\SRAM_DQ[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2_controller|SRAM_DQ[15]~reg0_q\,
	oe => \u2_controller|SRAM_DQ[15]~en_q\,
	devoe => ww_devoe,
	o => SRAM_DQ(15));

-- Location: IOIBUF_X21_Y0_N1
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G6
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X10_Y0_N92
\RSTn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RSTn,
	o => \RSTn~input_o\);

-- Location: LABCELL_X10_Y4_N0
\u1_uart|u2_rx|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|Add0~33_sumout\ = SUM(( \u1_uart|u2_rx|clk_cnt\(0) ) + ( VCC ) + ( !VCC ))
-- \u1_uart|u2_rx|Add0~34\ = CARRY(( \u1_uart|u2_rx|clk_cnt\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1_uart|u2_rx|ALT_INV_clk_cnt\(0),
	cin => GND,
	sumout => \u1_uart|u2_rx|Add0~33_sumout\,
	cout => \u1_uart|u2_rx|Add0~34\);

-- Location: IOIBUF_X10_Y0_N75
\SER_RX~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SER_RX,
	o => \SER_RX~input_o\);

-- Location: LABCELL_X11_Y4_N6
\u1_uart|u3_rx_sync|sig_in_d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u3_rx_sync|sig_in_d~0_combout\ = ( !\SER_RX~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SER_RX~input_o\,
	combout => \u1_uart|u3_rx_sync|sig_in_d~0_combout\);

-- Location: FF_X11_Y4_N7
\u1_uart|u3_rx_sync|sig_in_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u3_rx_sync|sig_in_d~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u3_rx_sync|sig_in_d~q\);

-- Location: FF_X11_Y4_N41
\u1_uart|u3_rx_sync|SIG_OUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u1_uart|u3_rx_sync|sig_in_d~q\,
	clrn => \RSTn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u3_rx_sync|SIG_OUT~q\);

-- Location: LABCELL_X11_Y4_N15
\u1_uart|u2_rx|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|Selector19~0_combout\ = ( \u1_uart|u2_rx|bit_cnt[0]~DUPLICATE_q\ & ( (\u1_uart|u2_rx|current_state.st_data_bits~q\ & !\u1_uart|u2_rx|bit_cnt\(1)) ) ) # ( !\u1_uart|u2_rx|bit_cnt[0]~DUPLICATE_q\ & ( 
-- (\u1_uart|u2_rx|current_state.st_data_bits~q\ & \u1_uart|u2_rx|bit_cnt\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1_uart|u2_rx|ALT_INV_current_state.st_data_bits~q\,
	datad => \u1_uart|u2_rx|ALT_INV_bit_cnt\(1),
	dataf => \u1_uart|u2_rx|ALT_INV_bit_cnt[0]~DUPLICATE_q\,
	combout => \u1_uart|u2_rx|Selector19~0_combout\);

-- Location: FF_X11_Y4_N16
\u1_uart|u2_rx|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Selector19~0_combout\,
	clrn => \RSTn~input_o\,
	ena => \u1_uart|u2_rx|bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|bit_cnt\(1));

-- Location: MLABCELL_X14_Y4_N24
\u1_uart|u2_rx|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|Selector17~0_combout\ = ( \u1_uart|u2_rx|current_state.st_stop_bit~q\ & ( \u1_uart|u2_rx|current_state.st_data_bits~q\ & ( (!\u1_uart|u2_rx|LessThan2~2_combout\) # ((\u1_uart|u2_rx|bit_cnt[0]~DUPLICATE_q\ & 
-- (\u1_uart|u2_rx|bit_cnt[2]~DUPLICATE_q\ & \u1_uart|u2_rx|bit_cnt\(1)))) ) ) ) # ( !\u1_uart|u2_rx|current_state.st_stop_bit~q\ & ( \u1_uart|u2_rx|current_state.st_data_bits~q\ & ( (\u1_uart|u2_rx|bit_cnt[0]~DUPLICATE_q\ & 
-- (\u1_uart|u2_rx|bit_cnt[2]~DUPLICATE_q\ & (\u1_uart|u2_rx|LessThan2~2_combout\ & \u1_uart|u2_rx|bit_cnt\(1)))) ) ) ) # ( \u1_uart|u2_rx|current_state.st_stop_bit~q\ & ( !\u1_uart|u2_rx|current_state.st_data_bits~q\ & ( !\u1_uart|u2_rx|LessThan2~2_combout\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000011111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_rx|ALT_INV_bit_cnt[0]~DUPLICATE_q\,
	datab => \u1_uart|u2_rx|ALT_INV_bit_cnt[2]~DUPLICATE_q\,
	datac => \u1_uart|u2_rx|ALT_INV_LessThan2~2_combout\,
	datad => \u1_uart|u2_rx|ALT_INV_bit_cnt\(1),
	datae => \u1_uart|u2_rx|ALT_INV_current_state.st_stop_bit~q\,
	dataf => \u1_uart|u2_rx|ALT_INV_current_state.st_data_bits~q\,
	combout => \u1_uart|u2_rx|Selector17~0_combout\);

-- Location: FF_X14_Y4_N25
\u1_uart|u2_rx|current_state.st_stop_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Selector17~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|current_state.st_stop_bit~q\);

-- Location: FF_X11_Y4_N49
\u1_uart|u2_rx|current_state.st_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Selector14~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|current_state.st_idle~q\);

-- Location: LABCELL_X11_Y4_N48
\u1_uart|u2_rx|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|Selector14~0_combout\ = ( \u1_uart|u2_rx|current_state.st_idle~q\ & ( \u1_uart|u2_rx|LessThan2~2_combout\ & ( (!\u1_uart|u2_rx|current_state.st_stop_bit~q\ & (((!\u1_uart|u2_rx|current_state.st_start_bit~q\) # 
-- (\u1_uart|u3_rx_sync|SIG_OUT~q\)) # (\u1_uart|u2_rx|LessThan0~2_combout\))) ) ) ) # ( !\u1_uart|u2_rx|current_state.st_idle~q\ & ( \u1_uart|u2_rx|LessThan2~2_combout\ & ( (!\u1_uart|u2_rx|current_state.st_stop_bit~q\ & \u1_uart|u3_rx_sync|SIG_OUT~q\) ) ) 
-- ) # ( \u1_uart|u2_rx|current_state.st_idle~q\ & ( !\u1_uart|u2_rx|LessThan2~2_combout\ & ( ((!\u1_uart|u2_rx|current_state.st_start_bit~q\) # (\u1_uart|u3_rx_sync|SIG_OUT~q\)) # (\u1_uart|u2_rx|LessThan0~2_combout\) ) ) ) # ( 
-- !\u1_uart|u2_rx|current_state.st_idle~q\ & ( !\u1_uart|u2_rx|LessThan2~2_combout\ & ( \u1_uart|u3_rx_sync|SIG_OUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111100111111111100000000101010101010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_rx|ALT_INV_current_state.st_stop_bit~q\,
	datab => \u1_uart|u2_rx|ALT_INV_LessThan0~2_combout\,
	datac => \u1_uart|u2_rx|ALT_INV_current_state.st_start_bit~q\,
	datad => \u1_uart|u3_rx_sync|ALT_INV_SIG_OUT~q\,
	datae => \u1_uart|u2_rx|ALT_INV_current_state.st_idle~q\,
	dataf => \u1_uart|u2_rx|ALT_INV_LessThan2~2_combout\,
	combout => \u1_uart|u2_rx|Selector14~0_combout\);

-- Location: FF_X11_Y4_N50
\u1_uart|u2_rx|current_state.st_idle~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Selector14~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|current_state.st_idle~DUPLICATE_q\);

-- Location: LABCELL_X11_Y4_N57
\u1_uart|u2_rx|clk_cnt[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|clk_cnt[0]~1_combout\ = ( \u1_uart|u2_rx|current_state.st_idle~DUPLICATE_q\ ) # ( !\u1_uart|u2_rx|current_state.st_idle~DUPLICATE_q\ & ( \u1_uart|u3_rx_sync|SIG_OUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u3_rx_sync|ALT_INV_SIG_OUT~q\,
	dataf => \u1_uart|u2_rx|ALT_INV_current_state.st_idle~DUPLICATE_q\,
	combout => \u1_uart|u2_rx|clk_cnt[0]~1_combout\);

-- Location: FF_X10_Y4_N34
\u1_uart|u2_rx|clk_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Add0~5_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u2_rx|clk_cnt[0]~0_combout\,
	ena => \u1_uart|u2_rx|clk_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|clk_cnt\(11));

-- Location: FF_X10_Y4_N7
\u1_uart|u2_rx|clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Add0~29_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u2_rx|clk_cnt[0]~0_combout\,
	ena => \u1_uart|u2_rx|clk_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|clk_cnt\(2));

-- Location: LABCELL_X10_Y4_N48
\u1_uart|u2_rx|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|LessThan0~0_combout\ = ( \u1_uart|u2_rx|clk_cnt\(2) & ( \u1_uart|u2_rx|clk_cnt\(4) & ( \u1_uart|u2_rx|clk_cnt\(5) ) ) ) # ( !\u1_uart|u2_rx|clk_cnt\(2) & ( \u1_uart|u2_rx|clk_cnt\(4) & ( \u1_uart|u2_rx|clk_cnt\(5) ) ) ) # ( 
-- \u1_uart|u2_rx|clk_cnt\(2) & ( !\u1_uart|u2_rx|clk_cnt\(4) & ( (\u1_uart|u2_rx|clk_cnt\(3) & \u1_uart|u2_rx|clk_cnt\(5)) ) ) ) # ( !\u1_uart|u2_rx|clk_cnt\(2) & ( !\u1_uart|u2_rx|clk_cnt\(4) & ( (\u1_uart|u2_rx|clk_cnt\(1) & (\u1_uart|u2_rx|clk_cnt\(3) & 
-- (\u1_uart|u2_rx|clk_cnt\(0) & \u1_uart|u2_rx|clk_cnt\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_rx|ALT_INV_clk_cnt\(1),
	datab => \u1_uart|u2_rx|ALT_INV_clk_cnt\(3),
	datac => \u1_uart|u2_rx|ALT_INV_clk_cnt\(0),
	datad => \u1_uart|u2_rx|ALT_INV_clk_cnt\(5),
	datae => \u1_uart|u2_rx|ALT_INV_clk_cnt\(2),
	dataf => \u1_uart|u2_rx|ALT_INV_clk_cnt\(4),
	combout => \u1_uart|u2_rx|LessThan0~0_combout\);

-- Location: FF_X10_Y4_N25
\u1_uart|u2_rx|clk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Add0~49_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u2_rx|clk_cnt[0]~0_combout\,
	ena => \u1_uart|u2_rx|clk_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|clk_cnt\(8));

-- Location: FF_X10_Y4_N19
\u1_uart|u2_rx|clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Add0~13_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u2_rx|clk_cnt[0]~0_combout\,
	ena => \u1_uart|u2_rx|clk_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|clk_cnt\(6));

-- Location: LABCELL_X11_Y4_N9
\u1_uart|u2_rx|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|LessThan0~1_combout\ = ( !\u1_uart|u2_rx|clk_cnt\(6) & ( (!\u1_uart|u2_rx|clk_cnt\(8) & !\u1_uart|u2_rx|clk_cnt\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1_uart|u2_rx|ALT_INV_clk_cnt\(8),
	datad => \u1_uart|u2_rx|ALT_INV_clk_cnt\(7),
	dataf => \u1_uart|u2_rx|ALT_INV_clk_cnt\(6),
	combout => \u1_uart|u2_rx|LessThan0~1_combout\);

-- Location: LABCELL_X11_Y4_N36
\u1_uart|u2_rx|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|LessThan0~2_combout\ = ( \u1_uart|u2_rx|LessThan0~0_combout\ & ( \u1_uart|u2_rx|LessThan0~1_combout\ & ( (!\u1_uart|u2_rx|clk_cnt\(12) & ((!\u1_uart|u2_rx|clk_cnt\(11)) # ((!\u1_uart|u2_rx|clk_cnt\(10) & !\u1_uart|u2_rx|clk_cnt\(9))))) ) ) 
-- ) # ( !\u1_uart|u2_rx|LessThan0~0_combout\ & ( \u1_uart|u2_rx|LessThan0~1_combout\ & ( (!\u1_uart|u2_rx|clk_cnt\(12) & ((!\u1_uart|u2_rx|clk_cnt\(10)) # (!\u1_uart|u2_rx|clk_cnt\(11)))) ) ) ) # ( \u1_uart|u2_rx|LessThan0~0_combout\ & ( 
-- !\u1_uart|u2_rx|LessThan0~1_combout\ & ( (!\u1_uart|u2_rx|clk_cnt\(12) & ((!\u1_uart|u2_rx|clk_cnt\(11)) # ((!\u1_uart|u2_rx|clk_cnt\(10) & !\u1_uart|u2_rx|clk_cnt\(9))))) ) ) ) # ( !\u1_uart|u2_rx|LessThan0~0_combout\ & ( 
-- !\u1_uart|u2_rx|LessThan0~1_combout\ & ( (!\u1_uart|u2_rx|clk_cnt\(12) & ((!\u1_uart|u2_rx|clk_cnt\(11)) # ((!\u1_uart|u2_rx|clk_cnt\(10) & !\u1_uart|u2_rx|clk_cnt\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011000000111000001100000011100000111000001110000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_rx|ALT_INV_clk_cnt\(10),
	datab => \u1_uart|u2_rx|ALT_INV_clk_cnt\(11),
	datac => \u1_uart|u2_rx|ALT_INV_clk_cnt\(12),
	datad => \u1_uart|u2_rx|ALT_INV_clk_cnt\(9),
	datae => \u1_uart|u2_rx|ALT_INV_LessThan0~0_combout\,
	dataf => \u1_uart|u2_rx|ALT_INV_LessThan0~1_combout\,
	combout => \u1_uart|u2_rx|LessThan0~2_combout\);

-- Location: LABCELL_X13_Y4_N27
\u1_uart|u2_rx|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|Selector15~0_combout\ = ( \u1_uart|u2_rx|current_state.st_start_bit~q\ & ( \u1_uart|u2_rx|current_state.st_idle~q\ & ( \u1_uart|u2_rx|LessThan0~2_combout\ ) ) ) # ( \u1_uart|u2_rx|current_state.st_start_bit~q\ & ( 
-- !\u1_uart|u2_rx|current_state.st_idle~q\ & ( (\u1_uart|u2_rx|LessThan0~2_combout\) # (\u1_uart|u3_rx_sync|SIG_OUT~q\) ) ) ) # ( !\u1_uart|u2_rx|current_state.st_start_bit~q\ & ( !\u1_uart|u2_rx|current_state.st_idle~q\ & ( \u1_uart|u3_rx_sync|SIG_OUT~q\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010111110101111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u3_rx_sync|ALT_INV_SIG_OUT~q\,
	datac => \u1_uart|u2_rx|ALT_INV_LessThan0~2_combout\,
	datae => \u1_uart|u2_rx|ALT_INV_current_state.st_start_bit~q\,
	dataf => \u1_uart|u2_rx|ALT_INV_current_state.st_idle~q\,
	combout => \u1_uart|u2_rx|Selector15~0_combout\);

-- Location: FF_X13_Y4_N28
\u1_uart|u2_rx|current_state.st_start_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Selector15~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|current_state.st_start_bit~q\);

-- Location: LABCELL_X11_Y4_N33
\u1_uart|u2_rx|clk_cnt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|clk_cnt[0]~0_combout\ = ( \u1_uart|u2_rx|LessThan2~2_combout\ & ( (!\u1_uart|u2_rx|current_state.st_start_bit~q\) # ((!\u1_uart|u2_rx|current_state.st_idle~q\) # (!\u1_uart|u2_rx|LessThan0~2_combout\)) ) ) # ( 
-- !\u1_uart|u2_rx|LessThan2~2_combout\ & ( (!\u1_uart|u2_rx|current_state.st_idle~q\) # ((\u1_uart|u2_rx|current_state.st_start_bit~q\ & !\u1_uart|u2_rx|LessThan0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110000111101011111000011111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_rx|ALT_INV_current_state.st_start_bit~q\,
	datac => \u1_uart|u2_rx|ALT_INV_current_state.st_idle~q\,
	datad => \u1_uart|u2_rx|ALT_INV_LessThan0~2_combout\,
	dataf => \u1_uart|u2_rx|ALT_INV_LessThan2~2_combout\,
	combout => \u1_uart|u2_rx|clk_cnt[0]~0_combout\);

-- Location: FF_X10_Y4_N2
\u1_uart|u2_rx|clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Add0~33_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u2_rx|clk_cnt[0]~0_combout\,
	ena => \u1_uart|u2_rx|clk_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|clk_cnt\(0));

-- Location: LABCELL_X10_Y4_N3
\u1_uart|u2_rx|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|Add0~37_sumout\ = SUM(( \u1_uart|u2_rx|clk_cnt\(1) ) + ( GND ) + ( \u1_uart|u2_rx|Add0~34\ ))
-- \u1_uart|u2_rx|Add0~38\ = CARRY(( \u1_uart|u2_rx|clk_cnt\(1) ) + ( GND ) + ( \u1_uart|u2_rx|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1_uart|u2_rx|ALT_INV_clk_cnt\(1),
	cin => \u1_uart|u2_rx|Add0~34\,
	sumout => \u1_uart|u2_rx|Add0~37_sumout\,
	cout => \u1_uart|u2_rx|Add0~38\);

-- Location: FF_X10_Y4_N5
\u1_uart|u2_rx|clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Add0~37_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u2_rx|clk_cnt[0]~0_combout\,
	ena => \u1_uart|u2_rx|clk_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|clk_cnt\(1));

-- Location: LABCELL_X10_Y4_N6
\u1_uart|u2_rx|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|Add0~29_sumout\ = SUM(( \u1_uart|u2_rx|clk_cnt[2]~DUPLICATE_q\ ) + ( GND ) + ( \u1_uart|u2_rx|Add0~38\ ))
-- \u1_uart|u2_rx|Add0~30\ = CARRY(( \u1_uart|u2_rx|clk_cnt[2]~DUPLICATE_q\ ) + ( GND ) + ( \u1_uart|u2_rx|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u2_rx|ALT_INV_clk_cnt[2]~DUPLICATE_q\,
	cin => \u1_uart|u2_rx|Add0~38\,
	sumout => \u1_uart|u2_rx|Add0~29_sumout\,
	cout => \u1_uart|u2_rx|Add0~30\);

-- Location: FF_X10_Y4_N8
\u1_uart|u2_rx|clk_cnt[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Add0~29_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u2_rx|clk_cnt[0]~0_combout\,
	ena => \u1_uart|u2_rx|clk_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|clk_cnt[2]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y4_N9
\u1_uart|u2_rx|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|Add0~25_sumout\ = SUM(( \u1_uart|u2_rx|clk_cnt\(3) ) + ( GND ) + ( \u1_uart|u2_rx|Add0~30\ ))
-- \u1_uart|u2_rx|Add0~26\ = CARRY(( \u1_uart|u2_rx|clk_cnt\(3) ) + ( GND ) + ( \u1_uart|u2_rx|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1_uart|u2_rx|ALT_INV_clk_cnt\(3),
	cin => \u1_uart|u2_rx|Add0~30\,
	sumout => \u1_uart|u2_rx|Add0~25_sumout\,
	cout => \u1_uart|u2_rx|Add0~26\);

-- Location: FF_X10_Y4_N11
\u1_uart|u2_rx|clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Add0~25_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u2_rx|clk_cnt[0]~0_combout\,
	ena => \u1_uart|u2_rx|clk_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|clk_cnt\(3));

-- Location: LABCELL_X10_Y4_N12
\u1_uart|u2_rx|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|Add0~21_sumout\ = SUM(( \u1_uart|u2_rx|clk_cnt\(4) ) + ( GND ) + ( \u1_uart|u2_rx|Add0~26\ ))
-- \u1_uart|u2_rx|Add0~22\ = CARRY(( \u1_uart|u2_rx|clk_cnt\(4) ) + ( GND ) + ( \u1_uart|u2_rx|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u2_rx|ALT_INV_clk_cnt\(4),
	cin => \u1_uart|u2_rx|Add0~26\,
	sumout => \u1_uart|u2_rx|Add0~21_sumout\,
	cout => \u1_uart|u2_rx|Add0~22\);

-- Location: FF_X10_Y4_N14
\u1_uart|u2_rx|clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Add0~21_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u2_rx|clk_cnt[0]~0_combout\,
	ena => \u1_uart|u2_rx|clk_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|clk_cnt\(4));

-- Location: LABCELL_X10_Y4_N15
\u1_uart|u2_rx|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|Add0~17_sumout\ = SUM(( \u1_uart|u2_rx|clk_cnt\(5) ) + ( GND ) + ( \u1_uart|u2_rx|Add0~22\ ))
-- \u1_uart|u2_rx|Add0~18\ = CARRY(( \u1_uart|u2_rx|clk_cnt\(5) ) + ( GND ) + ( \u1_uart|u2_rx|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1_uart|u2_rx|ALT_INV_clk_cnt\(5),
	cin => \u1_uart|u2_rx|Add0~22\,
	sumout => \u1_uart|u2_rx|Add0~17_sumout\,
	cout => \u1_uart|u2_rx|Add0~18\);

-- Location: FF_X10_Y4_N17
\u1_uart|u2_rx|clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Add0~17_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u2_rx|clk_cnt[0]~0_combout\,
	ena => \u1_uart|u2_rx|clk_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|clk_cnt\(5));

-- Location: LABCELL_X10_Y4_N18
\u1_uart|u2_rx|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|Add0~13_sumout\ = SUM(( \u1_uart|u2_rx|clk_cnt[6]~DUPLICATE_q\ ) + ( GND ) + ( \u1_uart|u2_rx|Add0~18\ ))
-- \u1_uart|u2_rx|Add0~14\ = CARRY(( \u1_uart|u2_rx|clk_cnt[6]~DUPLICATE_q\ ) + ( GND ) + ( \u1_uart|u2_rx|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1_uart|u2_rx|ALT_INV_clk_cnt[6]~DUPLICATE_q\,
	cin => \u1_uart|u2_rx|Add0~18\,
	sumout => \u1_uart|u2_rx|Add0~13_sumout\,
	cout => \u1_uart|u2_rx|Add0~14\);

-- Location: FF_X10_Y4_N20
\u1_uart|u2_rx|clk_cnt[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Add0~13_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u2_rx|clk_cnt[0]~0_combout\,
	ena => \u1_uart|u2_rx|clk_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|clk_cnt[6]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y4_N21
\u1_uart|u2_rx|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|Add0~45_sumout\ = SUM(( \u1_uart|u2_rx|clk_cnt\(7) ) + ( GND ) + ( \u1_uart|u2_rx|Add0~14\ ))
-- \u1_uart|u2_rx|Add0~46\ = CARRY(( \u1_uart|u2_rx|clk_cnt\(7) ) + ( GND ) + ( \u1_uart|u2_rx|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1_uart|u2_rx|ALT_INV_clk_cnt\(7),
	cin => \u1_uart|u2_rx|Add0~14\,
	sumout => \u1_uart|u2_rx|Add0~45_sumout\,
	cout => \u1_uart|u2_rx|Add0~46\);

-- Location: FF_X10_Y4_N22
\u1_uart|u2_rx|clk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Add0~45_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u2_rx|clk_cnt[0]~0_combout\,
	ena => \u1_uart|u2_rx|clk_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|clk_cnt\(7));

-- Location: LABCELL_X10_Y4_N24
\u1_uart|u2_rx|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|Add0~49_sumout\ = SUM(( \u1_uart|u2_rx|clk_cnt[8]~DUPLICATE_q\ ) + ( GND ) + ( \u1_uart|u2_rx|Add0~46\ ))
-- \u1_uart|u2_rx|Add0~50\ = CARRY(( \u1_uart|u2_rx|clk_cnt[8]~DUPLICATE_q\ ) + ( GND ) + ( \u1_uart|u2_rx|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1_uart|u2_rx|ALT_INV_clk_cnt[8]~DUPLICATE_q\,
	cin => \u1_uart|u2_rx|Add0~46\,
	sumout => \u1_uart|u2_rx|Add0~49_sumout\,
	cout => \u1_uart|u2_rx|Add0~50\);

-- Location: FF_X10_Y4_N26
\u1_uart|u2_rx|clk_cnt[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Add0~49_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u2_rx|clk_cnt[0]~0_combout\,
	ena => \u1_uart|u2_rx|clk_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|clk_cnt[8]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y4_N27
\u1_uart|u2_rx|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|Add0~41_sumout\ = SUM(( \u1_uart|u2_rx|clk_cnt\(9) ) + ( GND ) + ( \u1_uart|u2_rx|Add0~50\ ))
-- \u1_uart|u2_rx|Add0~42\ = CARRY(( \u1_uart|u2_rx|clk_cnt\(9) ) + ( GND ) + ( \u1_uart|u2_rx|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1_uart|u2_rx|ALT_INV_clk_cnt\(9),
	cin => \u1_uart|u2_rx|Add0~50\,
	sumout => \u1_uart|u2_rx|Add0~41_sumout\,
	cout => \u1_uart|u2_rx|Add0~42\);

-- Location: FF_X10_Y4_N28
\u1_uart|u2_rx|clk_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Add0~41_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u2_rx|clk_cnt[0]~0_combout\,
	ena => \u1_uart|u2_rx|clk_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|clk_cnt\(9));

-- Location: LABCELL_X10_Y4_N30
\u1_uart|u2_rx|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|Add0~9_sumout\ = SUM(( \u1_uart|u2_rx|clk_cnt\(10) ) + ( GND ) + ( \u1_uart|u2_rx|Add0~42\ ))
-- \u1_uart|u2_rx|Add0~10\ = CARRY(( \u1_uart|u2_rx|clk_cnt\(10) ) + ( GND ) + ( \u1_uart|u2_rx|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1_uart|u2_rx|ALT_INV_clk_cnt\(10),
	cin => \u1_uart|u2_rx|Add0~42\,
	sumout => \u1_uart|u2_rx|Add0~9_sumout\,
	cout => \u1_uart|u2_rx|Add0~10\);

-- Location: FF_X10_Y4_N31
\u1_uart|u2_rx|clk_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Add0~9_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u2_rx|clk_cnt[0]~0_combout\,
	ena => \u1_uart|u2_rx|clk_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|clk_cnt\(10));

-- Location: LABCELL_X10_Y4_N33
\u1_uart|u2_rx|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|Add0~5_sumout\ = SUM(( \u1_uart|u2_rx|clk_cnt[11]~DUPLICATE_q\ ) + ( GND ) + ( \u1_uart|u2_rx|Add0~10\ ))
-- \u1_uart|u2_rx|Add0~6\ = CARRY(( \u1_uart|u2_rx|clk_cnt[11]~DUPLICATE_q\ ) + ( GND ) + ( \u1_uart|u2_rx|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_rx|ALT_INV_clk_cnt[11]~DUPLICATE_q\,
	cin => \u1_uart|u2_rx|Add0~10\,
	sumout => \u1_uart|u2_rx|Add0~5_sumout\,
	cout => \u1_uart|u2_rx|Add0~6\);

-- Location: FF_X10_Y4_N35
\u1_uart|u2_rx|clk_cnt[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Add0~5_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u2_rx|clk_cnt[0]~0_combout\,
	ena => \u1_uart|u2_rx|clk_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|clk_cnt[11]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y4_N36
\u1_uart|u2_rx|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|Add0~1_sumout\ = SUM(( \u1_uart|u2_rx|clk_cnt\(12) ) + ( GND ) + ( \u1_uart|u2_rx|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1_uart|u2_rx|ALT_INV_clk_cnt\(12),
	cin => \u1_uart|u2_rx|Add0~6\,
	sumout => \u1_uart|u2_rx|Add0~1_sumout\);

-- Location: FF_X10_Y4_N37
\u1_uart|u2_rx|clk_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Add0~1_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u2_rx|clk_cnt[0]~0_combout\,
	ena => \u1_uart|u2_rx|clk_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|clk_cnt\(12));

-- Location: LABCELL_X11_Y4_N21
\u1_uart|u2_rx|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|LessThan2~1_combout\ = ( !\u1_uart|u2_rx|clk_cnt\(7) & ( !\u1_uart|u2_rx|clk_cnt\(9) & ( !\u1_uart|u2_rx|clk_cnt\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1_uart|u2_rx|ALT_INV_clk_cnt\(8),
	datae => \u1_uart|u2_rx|ALT_INV_clk_cnt\(7),
	dataf => \u1_uart|u2_rx|ALT_INV_clk_cnt\(9),
	combout => \u1_uart|u2_rx|LessThan2~1_combout\);

-- Location: LABCELL_X10_Y4_N54
\u1_uart|u2_rx|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|LessThan2~0_combout\ = ( \u1_uart|u2_rx|clk_cnt\(2) & ( \u1_uart|u2_rx|clk_cnt\(4) & ( (!\u1_uart|u2_rx|clk_cnt\(3) & (!\u1_uart|u2_rx|clk_cnt\(5) & ((!\u1_uart|u2_rx|clk_cnt\(1)) # (!\u1_uart|u2_rx|clk_cnt\(0))))) ) ) ) # ( 
-- !\u1_uart|u2_rx|clk_cnt\(2) & ( \u1_uart|u2_rx|clk_cnt\(4) & ( (!\u1_uart|u2_rx|clk_cnt\(3) & !\u1_uart|u2_rx|clk_cnt\(5)) ) ) ) # ( \u1_uart|u2_rx|clk_cnt\(2) & ( !\u1_uart|u2_rx|clk_cnt\(4) & ( !\u1_uart|u2_rx|clk_cnt\(5) ) ) ) # ( 
-- !\u1_uart|u2_rx|clk_cnt\(2) & ( !\u1_uart|u2_rx|clk_cnt\(4) & ( !\u1_uart|u2_rx|clk_cnt\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011001100000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_rx|ALT_INV_clk_cnt\(1),
	datab => \u1_uart|u2_rx|ALT_INV_clk_cnt\(3),
	datac => \u1_uart|u2_rx|ALT_INV_clk_cnt\(0),
	datad => \u1_uart|u2_rx|ALT_INV_clk_cnt\(5),
	datae => \u1_uart|u2_rx|ALT_INV_clk_cnt\(2),
	dataf => \u1_uart|u2_rx|ALT_INV_clk_cnt\(4),
	combout => \u1_uart|u2_rx|LessThan2~0_combout\);

-- Location: LABCELL_X11_Y4_N24
\u1_uart|u2_rx|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|LessThan2~2_combout\ = ( \u1_uart|u2_rx|LessThan2~1_combout\ & ( \u1_uart|u2_rx|LessThan2~0_combout\ & ( (\u1_uart|u2_rx|clk_cnt\(12) & \u1_uart|u2_rx|clk_cnt\(11)) ) ) ) # ( !\u1_uart|u2_rx|LessThan2~1_combout\ & ( 
-- \u1_uart|u2_rx|LessThan2~0_combout\ & ( (\u1_uart|u2_rx|clk_cnt\(12) & ((\u1_uart|u2_rx|clk_cnt\(11)) # (\u1_uart|u2_rx|clk_cnt\(10)))) ) ) ) # ( \u1_uart|u2_rx|LessThan2~1_combout\ & ( !\u1_uart|u2_rx|LessThan2~0_combout\ & ( (\u1_uart|u2_rx|clk_cnt\(12) 
-- & (((\u1_uart|u2_rx|clk_cnt\(6) & \u1_uart|u2_rx|clk_cnt\(10))) # (\u1_uart|u2_rx|clk_cnt\(11)))) ) ) ) # ( !\u1_uart|u2_rx|LessThan2~1_combout\ & ( !\u1_uart|u2_rx|LessThan2~0_combout\ & ( (\u1_uart|u2_rx|clk_cnt\(12) & ((\u1_uart|u2_rx|clk_cnt\(11)) # 
-- (\u1_uart|u2_rx|clk_cnt\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000000010101010100000101010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_rx|ALT_INV_clk_cnt\(12),
	datab => \u1_uart|u2_rx|ALT_INV_clk_cnt\(6),
	datac => \u1_uart|u2_rx|ALT_INV_clk_cnt\(10),
	datad => \u1_uart|u2_rx|ALT_INV_clk_cnt\(11),
	datae => \u1_uart|u2_rx|ALT_INV_LessThan2~1_combout\,
	dataf => \u1_uart|u2_rx|ALT_INV_LessThan2~0_combout\,
	combout => \u1_uart|u2_rx|LessThan2~2_combout\);

-- Location: LABCELL_X11_Y4_N0
\u1_uart|u2_rx|bit_cnt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|bit_cnt[0]~0_combout\ = ( \u1_uart|u3_rx_sync|SIG_OUT~q\ & ( (!\u1_uart|u2_rx|LessThan2~2_combout\ & (((\u1_uart|u2_rx|current_state.st_start_bit~q\ & !\u1_uart|u2_rx|LessThan0~2_combout\)))) # (\u1_uart|u2_rx|LessThan2~2_combout\ & 
-- (((\u1_uart|u2_rx|current_state.st_start_bit~q\ & !\u1_uart|u2_rx|LessThan0~2_combout\)) # (\u1_uart|u2_rx|current_state.st_data_bits~q\))) ) ) # ( !\u1_uart|u3_rx_sync|SIG_OUT~q\ & ( (\u1_uart|u2_rx|LessThan2~2_combout\ & 
-- \u1_uart|u2_rx|current_state.st_data_bits~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100011111000100010001111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_rx|ALT_INV_LessThan2~2_combout\,
	datab => \u1_uart|u2_rx|ALT_INV_current_state.st_data_bits~q\,
	datac => \u1_uart|u2_rx|ALT_INV_current_state.st_start_bit~q\,
	datad => \u1_uart|u2_rx|ALT_INV_LessThan0~2_combout\,
	dataf => \u1_uart|u3_rx_sync|ALT_INV_SIG_OUT~q\,
	combout => \u1_uart|u2_rx|bit_cnt[0]~0_combout\);

-- Location: FF_X11_Y4_N32
\u1_uart|u2_rx|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Selector20~0_combout\,
	clrn => \RSTn~input_o\,
	ena => \u1_uart|u2_rx|bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|bit_cnt\(0));

-- Location: FF_X11_Y4_N14
\u1_uart|u2_rx|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Selector18~0_combout\,
	clrn => \RSTn~input_o\,
	ena => \u1_uart|u2_rx|bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|bit_cnt\(2));

-- Location: LABCELL_X11_Y4_N12
\u1_uart|u2_rx|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|Selector18~0_combout\ = ( \u1_uart|u2_rx|bit_cnt\(1) & ( (\u1_uart|u2_rx|current_state.st_data_bits~q\ & (!\u1_uart|u2_rx|bit_cnt\(0) $ (!\u1_uart|u2_rx|bit_cnt\(2)))) ) ) # ( !\u1_uart|u2_rx|bit_cnt\(1) & ( 
-- (\u1_uart|u2_rx|current_state.st_data_bits~q\ & \u1_uart|u2_rx|bit_cnt\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_rx|ALT_INV_current_state.st_data_bits~q\,
	datab => \u1_uart|u2_rx|ALT_INV_bit_cnt\(0),
	datad => \u1_uart|u2_rx|ALT_INV_bit_cnt\(2),
	dataf => \u1_uart|u2_rx|ALT_INV_bit_cnt\(1),
	combout => \u1_uart|u2_rx|Selector18~0_combout\);

-- Location: FF_X11_Y4_N13
\u1_uart|u2_rx|bit_cnt[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Selector18~0_combout\,
	clrn => \RSTn~input_o\,
	ena => \u1_uart|u2_rx|bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|bit_cnt[2]~DUPLICATE_q\);

-- Location: MLABCELL_X14_Y4_N33
\u1_uart|u2_rx|register_sig[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|register_sig[3]~0_combout\ = ( \u1_uart|u2_rx|bit_cnt[0]~DUPLICATE_q\ & ( \u1_uart|u2_rx|bit_cnt\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1_uart|u2_rx|ALT_INV_bit_cnt\(1),
	dataf => \u1_uart|u2_rx|ALT_INV_bit_cnt[0]~DUPLICATE_q\,
	combout => \u1_uart|u2_rx|register_sig[3]~0_combout\);

-- Location: LABCELL_X13_Y4_N48
\u1_uart|u2_rx|register_sig[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|register_sig[7]~1_combout\ = ( \u1_uart|u2_rx|bit_cnt[2]~DUPLICATE_q\ & ( \u1_uart|u2_rx|register_sig[3]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \u1_uart|u2_rx|ALT_INV_bit_cnt[2]~DUPLICATE_q\,
	dataf => \u1_uart|u2_rx|ALT_INV_register_sig[3]~0_combout\,
	combout => \u1_uart|u2_rx|register_sig[7]~1_combout\);

-- Location: LABCELL_X13_Y4_N30
\u1_uart|u2_rx|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|Selector16~0_combout\ = ( \u1_uart|u2_rx|current_state.st_data_bits~q\ & ( \u1_uart|u2_rx|current_state.st_start_bit~q\ & ( (!\u1_uart|u2_rx|register_sig[7]~1_combout\) # ((!\u1_uart|u2_rx|LessThan2~2_combout\) # 
-- ((\u1_uart|u3_rx_sync|SIG_OUT~q\ & !\u1_uart|u2_rx|LessThan0~2_combout\))) ) ) ) # ( !\u1_uart|u2_rx|current_state.st_data_bits~q\ & ( \u1_uart|u2_rx|current_state.st_start_bit~q\ & ( (\u1_uart|u3_rx_sync|SIG_OUT~q\ & !\u1_uart|u2_rx|LessThan0~2_combout\) 
-- ) ) ) # ( \u1_uart|u2_rx|current_state.st_data_bits~q\ & ( !\u1_uart|u2_rx|current_state.st_start_bit~q\ & ( (!\u1_uart|u2_rx|register_sig[7]~1_combout\) # (!\u1_uart|u2_rx|LessThan2~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000110011000000001111101111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_rx|ALT_INV_register_sig[7]~1_combout\,
	datab => \u1_uart|u3_rx_sync|ALT_INV_SIG_OUT~q\,
	datac => \u1_uart|u2_rx|ALT_INV_LessThan2~2_combout\,
	datad => \u1_uart|u2_rx|ALT_INV_LessThan0~2_combout\,
	datae => \u1_uart|u2_rx|ALT_INV_current_state.st_data_bits~q\,
	dataf => \u1_uart|u2_rx|ALT_INV_current_state.st_start_bit~q\,
	combout => \u1_uart|u2_rx|Selector16~0_combout\);

-- Location: FF_X13_Y4_N31
\u1_uart|u2_rx|current_state.st_data_bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Selector16~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|current_state.st_data_bits~q\);

-- Location: LABCELL_X11_Y4_N30
\u1_uart|u2_rx|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|Selector20~0_combout\ = (\u1_uart|u2_rx|current_state.st_data_bits~q\ & !\u1_uart|u2_rx|bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u2_rx|ALT_INV_current_state.st_data_bits~q\,
	datad => \u1_uart|u2_rx|ALT_INV_bit_cnt\(0),
	combout => \u1_uart|u2_rx|Selector20~0_combout\);

-- Location: FF_X11_Y4_N31
\u1_uart|u2_rx|bit_cnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Selector20~0_combout\,
	clrn => \RSTn~input_o\,
	ena => \u1_uart|u2_rx|bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|bit_cnt[0]~DUPLICATE_q\);

-- Location: MLABCELL_X14_Y4_N18
\u1_uart|u2_rx|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|Decoder0~0_combout\ = ( \u1_uart|u2_rx|current_state.st_data_bits~q\ & ( \u1_uart|u2_rx|LessThan2~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1_uart|u2_rx|ALT_INV_LessThan2~2_combout\,
	dataf => \u1_uart|u2_rx|ALT_INV_current_state.st_data_bits~q\,
	combout => \u1_uart|u2_rx|Decoder0~0_combout\);

-- Location: MLABCELL_X14_Y4_N57
\u1_uart|u2_rx|register_sig[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|register_sig[0]~2_combout\ = ( !\u1_uart|u2_rx|bit_cnt[2]~DUPLICATE_q\ & ( !\u1_uart|u2_rx|bit_cnt\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1_uart|u2_rx|ALT_INV_bit_cnt\(1),
	dataf => \u1_uart|u2_rx|ALT_INV_bit_cnt[2]~DUPLICATE_q\,
	combout => \u1_uart|u2_rx|register_sig[0]~2_combout\);

-- Location: MLABCELL_X14_Y4_N36
\u1_uart|u2_rx|register_sig[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|register_sig[0]~3_combout\ = ( \u1_uart|u2_rx|register_sig\(0) & ( \u1_uart|u2_rx|register_sig[0]~2_combout\ & ( ((!\u1_uart|u3_rx_sync|SIG_OUT~q\) # ((!\u1_uart|u2_rx|Decoder0~0_combout\) # (!\RSTn~input_o\))) # 
-- (\u1_uart|u2_rx|bit_cnt[0]~DUPLICATE_q\) ) ) ) # ( !\u1_uart|u2_rx|register_sig\(0) & ( \u1_uart|u2_rx|register_sig[0]~2_combout\ & ( (!\u1_uart|u2_rx|bit_cnt[0]~DUPLICATE_q\ & (!\u1_uart|u3_rx_sync|SIG_OUT~q\ & (\u1_uart|u2_rx|Decoder0~0_combout\ & 
-- \RSTn~input_o\))) ) ) ) # ( \u1_uart|u2_rx|register_sig\(0) & ( !\u1_uart|u2_rx|register_sig[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000010001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_rx|ALT_INV_bit_cnt[0]~DUPLICATE_q\,
	datab => \u1_uart|u3_rx_sync|ALT_INV_SIG_OUT~q\,
	datac => \u1_uart|u2_rx|ALT_INV_Decoder0~0_combout\,
	datad => \ALT_INV_RSTn~input_o\,
	datae => \u1_uart|u2_rx|ALT_INV_register_sig\(0),
	dataf => \u1_uart|u2_rx|ALT_INV_register_sig[0]~2_combout\,
	combout => \u1_uart|u2_rx|register_sig[0]~3_combout\);

-- Location: FF_X14_Y4_N38
\u1_uart|u2_rx|register_sig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|register_sig[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|register_sig\(0));

-- Location: LABCELL_X11_Y4_N54
\u1_uart|u2_rx|RX_DATA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|RX_DATA[0]~0_combout\ = ( \u1_uart|u2_rx|LessThan2~2_combout\ & ( (!\u1_uart|u3_rx_sync|SIG_OUT~q\ & \u1_uart|u2_rx|current_state.st_stop_bit~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u3_rx_sync|ALT_INV_SIG_OUT~q\,
	datac => \u1_uart|u2_rx|ALT_INV_current_state.st_stop_bit~q\,
	dataf => \u1_uart|u2_rx|ALT_INV_LessThan2~2_combout\,
	combout => \u1_uart|u2_rx|RX_DATA[0]~0_combout\);

-- Location: FF_X14_Y4_N50
\u1_uart|u2_rx|RX_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u1_uart|u2_rx|register_sig\(0),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u1_uart|u2_rx|RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|RX_DATA\(0));

-- Location: MLABCELL_X14_Y4_N0
\u1_uart|u2_rx|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|Selector0~0_combout\ = ( \u1_uart|u2_rx|RX_DATA_VAILD~q\ & ( \u1_uart|u2_rx|current_state.st_stop_bit~q\ & ( (((!\u1_uart|u2_rx|LessThan2~2_combout\) # (!\u1_uart|u3_rx_sync|SIG_OUT~q\)) # (\u1_uart|u2_rx|current_state.st_start_bit~q\)) # 
-- (\u1_uart|u2_rx|current_state.st_data_bits~q\) ) ) ) # ( !\u1_uart|u2_rx|RX_DATA_VAILD~q\ & ( \u1_uart|u2_rx|current_state.st_stop_bit~q\ & ( (\u1_uart|u2_rx|LessThan2~2_combout\ & !\u1_uart|u3_rx_sync|SIG_OUT~q\) ) ) ) # ( \u1_uart|u2_rx|RX_DATA_VAILD~q\ 
-- & ( !\u1_uart|u2_rx|current_state.st_stop_bit~q\ & ( (\u1_uart|u2_rx|current_state.st_start_bit~q\) # (\u1_uart|u2_rx|current_state.st_data_bits~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111011100001111000000001111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_rx|ALT_INV_current_state.st_data_bits~q\,
	datab => \u1_uart|u2_rx|ALT_INV_current_state.st_start_bit~q\,
	datac => \u1_uart|u2_rx|ALT_INV_LessThan2~2_combout\,
	datad => \u1_uart|u3_rx_sync|ALT_INV_SIG_OUT~q\,
	datae => \u1_uart|u2_rx|ALT_INV_RX_DATA_VAILD~q\,
	dataf => \u1_uart|u2_rx|ALT_INV_current_state.st_stop_bit~q\,
	combout => \u1_uart|u2_rx|Selector0~0_combout\);

-- Location: FF_X14_Y4_N2
\u1_uart|u2_rx|RX_DATA_VAILD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Selector0~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|RX_DATA_VAILD~q\);

-- Location: FF_X18_Y5_N17
\u2_controller|chars_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~7_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt\(10));

-- Location: FF_X18_Y5_N8
\u2_controller|chars_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~4_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt\(9));

-- Location: FF_X18_Y5_N13
\u2_controller|chars_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~5_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt\(8));

-- Location: FF_X17_Y5_N10
\u2_controller|chars_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt\(7));

-- Location: FF_X17_Y5_N37
\u2_controller|chars_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~1_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt\(6));

-- Location: FF_X17_Y5_N56
\u2_controller|chars_cnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~11_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt[0]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y6_N0
\u2_controller|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add1~45_sumout\ = SUM(( \u2_controller|chars_cnt[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \u2_controller|Add1~46\ = CARRY(( \u2_controller|chars_cnt[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_chars_cnt[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \u2_controller|Add1~45_sumout\,
	cout => \u2_controller|Add1~46\);

-- Location: LABCELL_X17_Y6_N3
\u2_controller|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add1~53_sumout\ = SUM(( \u2_controller|chars_cnt\(1) ) + ( GND ) + ( \u2_controller|Add1~46\ ))
-- \u2_controller|Add1~54\ = CARRY(( \u2_controller|chars_cnt\(1) ) + ( GND ) + ( \u2_controller|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_chars_cnt\(1),
	cin => \u2_controller|Add1~46\,
	sumout => \u2_controller|Add1~53_sumout\,
	cout => \u2_controller|Add1~54\);

-- Location: LABCELL_X17_Y5_N57
\u2_controller|chars_cnt~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|chars_cnt~13_combout\ = ( \u2_controller|chars_cnt\(1) & ( \u2_controller|Add1~53_sumout\ & ( ((\u2_controller|current_state.st_receive~q\) # (\u2_controller|LessThan3~2_combout\)) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( 
-- !\u2_controller|chars_cnt\(1) & ( \u2_controller|Add1~53_sumout\ & ( ((\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|current_state.st_receive~q\)) # (\u2_controller|LessThan3~2_combout\) ) ) ) # ( \u2_controller|chars_cnt\(1) & ( 
-- !\u2_controller|Add1~53_sumout\ & ( (((!\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|current_state.st_receive~q\)) # (\u2_controller|LessThan3~2_combout\)) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( !\u2_controller|chars_cnt\(1) & ( 
-- !\u2_controller|Add1~53_sumout\ & ( \u2_controller|LessThan3~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001111111011111100001111010111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datab => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datac => \u2_controller|ALT_INV_LessThan3~2_combout\,
	datad => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datae => \u2_controller|ALT_INV_chars_cnt\(1),
	dataf => \u2_controller|ALT_INV_Add1~53_sumout\,
	combout => \u2_controller|chars_cnt~13_combout\);

-- Location: FF_X17_Y5_N59
\u2_controller|chars_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~13_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt\(1));

-- Location: LABCELL_X17_Y6_N6
\u2_controller|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add1~49_sumout\ = SUM(( \u2_controller|chars_cnt\(2) ) + ( GND ) + ( \u2_controller|Add1~54\ ))
-- \u2_controller|Add1~50\ = CARRY(( \u2_controller|chars_cnt\(2) ) + ( GND ) + ( \u2_controller|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_chars_cnt\(2),
	cin => \u2_controller|Add1~54\,
	sumout => \u2_controller|Add1~49_sumout\,
	cout => \u2_controller|Add1~50\);

-- Location: LABCELL_X17_Y5_N0
\u2_controller|chars_cnt~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|chars_cnt~12_combout\ = ( \u2_controller|chars_cnt\(2) & ( \u2_controller|Add1~49_sumout\ & ( ((\u2_controller|LessThan3~2_combout\) # (\u2_controller|current_state.st_transmit~q\)) # (\u2_controller|current_state.st_receive~q\) ) ) ) # ( 
-- !\u2_controller|chars_cnt\(2) & ( \u2_controller|Add1~49_sumout\ & ( ((\u2_controller|current_state.st_receive~q\ & \u2_controller|SRAM_ADDR~0_combout\)) # (\u2_controller|LessThan3~2_combout\) ) ) ) # ( \u2_controller|chars_cnt\(2) & ( 
-- !\u2_controller|Add1~49_sumout\ & ( (((\u2_controller|current_state.st_receive~q\ & !\u2_controller|SRAM_ADDR~0_combout\)) # (\u2_controller|LessThan3~2_combout\)) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( !\u2_controller|chars_cnt\(2) & ( 
-- !\u2_controller|Add1~49_sumout\ & ( \u2_controller|LessThan3~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111011100111111111100000101111111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datab => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datac => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datad => \u2_controller|ALT_INV_LessThan3~2_combout\,
	datae => \u2_controller|ALT_INV_chars_cnt\(2),
	dataf => \u2_controller|ALT_INV_Add1~49_sumout\,
	combout => \u2_controller|chars_cnt~12_combout\);

-- Location: FF_X17_Y5_N2
\u2_controller|chars_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~12_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt\(2));

-- Location: LABCELL_X17_Y6_N9
\u2_controller|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add1~41_sumout\ = SUM(( \u2_controller|chars_cnt\(3) ) + ( GND ) + ( \u2_controller|Add1~50\ ))
-- \u2_controller|Add1~42\ = CARRY(( \u2_controller|chars_cnt\(3) ) + ( GND ) + ( \u2_controller|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2_controller|ALT_INV_chars_cnt\(3),
	cin => \u2_controller|Add1~50\,
	sumout => \u2_controller|Add1~41_sumout\,
	cout => \u2_controller|Add1~42\);

-- Location: LABCELL_X17_Y5_N3
\u2_controller|chars_cnt~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|chars_cnt~10_combout\ = ( \u2_controller|chars_cnt\(3) & ( \u2_controller|Add1~41_sumout\ & ( ((\u2_controller|LessThan3~2_combout\) # (\u2_controller|current_state.st_transmit~q\)) # (\u2_controller|current_state.st_receive~q\) ) ) ) # ( 
-- !\u2_controller|chars_cnt\(3) & ( \u2_controller|Add1~41_sumout\ & ( ((\u2_controller|current_state.st_receive~q\ & \u2_controller|SRAM_ADDR~0_combout\)) # (\u2_controller|LessThan3~2_combout\) ) ) ) # ( \u2_controller|chars_cnt\(3) & ( 
-- !\u2_controller|Add1~41_sumout\ & ( (((\u2_controller|current_state.st_receive~q\ & !\u2_controller|SRAM_ADDR~0_combout\)) # (\u2_controller|LessThan3~2_combout\)) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( !\u2_controller|chars_cnt\(3) & ( 
-- !\u2_controller|Add1~41_sumout\ & ( \u2_controller|LessThan3~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111011111110011111100001111010111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datab => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datac => \u2_controller|ALT_INV_LessThan3~2_combout\,
	datad => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datae => \u2_controller|ALT_INV_chars_cnt\(3),
	dataf => \u2_controller|ALT_INV_Add1~41_sumout\,
	combout => \u2_controller|chars_cnt~10_combout\);

-- Location: FF_X17_Y5_N4
\u2_controller|chars_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~10_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt\(3));

-- Location: LABCELL_X17_Y6_N12
\u2_controller|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add1~13_sumout\ = SUM(( \u2_controller|chars_cnt\(4) ) + ( GND ) + ( \u2_controller|Add1~42\ ))
-- \u2_controller|Add1~14\ = CARRY(( \u2_controller|chars_cnt\(4) ) + ( GND ) + ( \u2_controller|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2_controller|ALT_INV_chars_cnt\(4),
	cin => \u2_controller|Add1~42\,
	sumout => \u2_controller|Add1~13_sumout\,
	cout => \u2_controller|Add1~14\);

-- Location: LABCELL_X17_Y5_N39
\u2_controller|chars_cnt~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|chars_cnt~3_combout\ = ( \u2_controller|chars_cnt\(4) & ( \u2_controller|Add1~13_sumout\ & ( (!\u2_controller|LessThan3~2_combout\ & ((\u2_controller|current_state.st_receive~q\) # (\u2_controller|current_state.st_transmit~q\))) ) ) ) # ( 
-- !\u2_controller|chars_cnt\(4) & ( \u2_controller|Add1~13_sumout\ & ( (\u2_controller|SRAM_ADDR~0_combout\ & (!\u2_controller|LessThan3~2_combout\ & \u2_controller|current_state.st_receive~q\)) ) ) ) # ( \u2_controller|chars_cnt\(4) & ( 
-- !\u2_controller|Add1~13_sumout\ & ( (!\u2_controller|LessThan3~2_combout\ & (((!\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|current_state.st_receive~q\)) # (\u2_controller|current_state.st_transmit~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100001011000000000000010100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datab => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datac => \u2_controller|ALT_INV_LessThan3~2_combout\,
	datad => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datae => \u2_controller|ALT_INV_chars_cnt\(4),
	dataf => \u2_controller|ALT_INV_Add1~13_sumout\,
	combout => \u2_controller|chars_cnt~3_combout\);

-- Location: FF_X17_Y5_N40
\u2_controller|chars_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~3_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt\(4));

-- Location: LABCELL_X17_Y6_N15
\u2_controller|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add1~9_sumout\ = SUM(( \u2_controller|chars_cnt[5]~DUPLICATE_q\ ) + ( GND ) + ( \u2_controller|Add1~14\ ))
-- \u2_controller|Add1~10\ = CARRY(( \u2_controller|chars_cnt[5]~DUPLICATE_q\ ) + ( GND ) + ( \u2_controller|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_chars_cnt[5]~DUPLICATE_q\,
	cin => \u2_controller|Add1~14\,
	sumout => \u2_controller|Add1~9_sumout\,
	cout => \u2_controller|Add1~10\);

-- Location: LABCELL_X17_Y6_N18
\u2_controller|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add1~5_sumout\ = SUM(( \u2_controller|chars_cnt[6]~DUPLICATE_q\ ) + ( GND ) + ( \u2_controller|Add1~10\ ))
-- \u2_controller|Add1~6\ = CARRY(( \u2_controller|chars_cnt[6]~DUPLICATE_q\ ) + ( GND ) + ( \u2_controller|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2_controller|ALT_INV_chars_cnt[6]~DUPLICATE_q\,
	cin => \u2_controller|Add1~10\,
	sumout => \u2_controller|Add1~5_sumout\,
	cout => \u2_controller|Add1~6\);

-- Location: LABCELL_X17_Y5_N36
\u2_controller|chars_cnt~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|chars_cnt~1_combout\ = ( \u2_controller|chars_cnt\(6) & ( \u2_controller|Add1~5_sumout\ & ( (!\u2_controller|LessThan3~2_combout\ & ((\u2_controller|current_state.st_receive~q\) # (\u2_controller|current_state.st_transmit~q\))) ) ) ) # ( 
-- !\u2_controller|chars_cnt\(6) & ( \u2_controller|Add1~5_sumout\ & ( (\u2_controller|SRAM_ADDR~0_combout\ & (\u2_controller|current_state.st_receive~q\ & !\u2_controller|LessThan3~2_combout\)) ) ) ) # ( \u2_controller|chars_cnt\(6) & ( 
-- !\u2_controller|Add1~5_sumout\ & ( (!\u2_controller|LessThan3~2_combout\ & (((!\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|current_state.st_receive~q\)) # (\u2_controller|current_state.st_transmit~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001110110000000000000101000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datab => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datac => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datad => \u2_controller|ALT_INV_LessThan3~2_combout\,
	datae => \u2_controller|ALT_INV_chars_cnt\(6),
	dataf => \u2_controller|ALT_INV_Add1~5_sumout\,
	combout => \u2_controller|chars_cnt~1_combout\);

-- Location: FF_X17_Y5_N38
\u2_controller|chars_cnt[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~1_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt[6]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y6_N21
\u2_controller|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add1~1_sumout\ = SUM(( \u2_controller|chars_cnt[7]~DUPLICATE_q\ ) + ( GND ) + ( \u2_controller|Add1~6\ ))
-- \u2_controller|Add1~2\ = CARRY(( \u2_controller|chars_cnt[7]~DUPLICATE_q\ ) + ( GND ) + ( \u2_controller|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2_controller|ALT_INV_chars_cnt[7]~DUPLICATE_q\,
	cin => \u2_controller|Add1~6\,
	sumout => \u2_controller|Add1~1_sumout\,
	cout => \u2_controller|Add1~2\);

-- Location: LABCELL_X17_Y5_N9
\u2_controller|chars_cnt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|chars_cnt~0_combout\ = ( \u2_controller|chars_cnt\(7) & ( \u2_controller|Add1~1_sumout\ & ( (!\u2_controller|LessThan3~2_combout\ & ((\u2_controller|current_state.st_receive~q\) # (\u2_controller|current_state.st_transmit~q\))) ) ) ) # ( 
-- !\u2_controller|chars_cnt\(7) & ( \u2_controller|Add1~1_sumout\ & ( (\u2_controller|SRAM_ADDR~0_combout\ & (!\u2_controller|LessThan3~2_combout\ & \u2_controller|current_state.st_receive~q\)) ) ) ) # ( \u2_controller|chars_cnt\(7) & ( 
-- !\u2_controller|Add1~1_sumout\ & ( (!\u2_controller|LessThan3~2_combout\ & (((!\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|current_state.st_receive~q\)) # (\u2_controller|current_state.st_transmit~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100001011000000000000010100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datab => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datac => \u2_controller|ALT_INV_LessThan3~2_combout\,
	datad => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datae => \u2_controller|ALT_INV_chars_cnt\(7),
	dataf => \u2_controller|ALT_INV_Add1~1_sumout\,
	combout => \u2_controller|chars_cnt~0_combout\);

-- Location: FF_X17_Y5_N11
\u2_controller|chars_cnt[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt[7]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y6_N24
\u2_controller|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add1~21_sumout\ = SUM(( \u2_controller|chars_cnt[8]~DUPLICATE_q\ ) + ( GND ) + ( \u2_controller|Add1~2\ ))
-- \u2_controller|Add1~22\ = CARRY(( \u2_controller|chars_cnt[8]~DUPLICATE_q\ ) + ( GND ) + ( \u2_controller|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_chars_cnt[8]~DUPLICATE_q\,
	cin => \u2_controller|Add1~2\,
	sumout => \u2_controller|Add1~21_sumout\,
	cout => \u2_controller|Add1~22\);

-- Location: LABCELL_X18_Y5_N12
\u2_controller|chars_cnt~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|chars_cnt~5_combout\ = ( \u2_controller|chars_cnt\(8) & ( \u2_controller|Add1~21_sumout\ & ( ((\u2_controller|LessThan3~2_combout\) # (\u2_controller|current_state.st_receive~q\)) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( 
-- !\u2_controller|chars_cnt\(8) & ( \u2_controller|Add1~21_sumout\ & ( ((\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|current_state.st_receive~q\)) # (\u2_controller|LessThan3~2_combout\) ) ) ) # ( \u2_controller|chars_cnt\(8) & ( 
-- !\u2_controller|Add1~21_sumout\ & ( (((!\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|current_state.st_receive~q\)) # (\u2_controller|LessThan3~2_combout\)) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( !\u2_controller|chars_cnt\(8) & ( 
-- !\u2_controller|Add1~21_sumout\ & ( \u2_controller|LessThan3~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001110111111111100000101111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datab => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datac => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datad => \u2_controller|ALT_INV_LessThan3~2_combout\,
	datae => \u2_controller|ALT_INV_chars_cnt\(8),
	dataf => \u2_controller|ALT_INV_Add1~21_sumout\,
	combout => \u2_controller|chars_cnt~5_combout\);

-- Location: FF_X18_Y5_N14
\u2_controller|chars_cnt[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~5_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt[8]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y6_N27
\u2_controller|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add1~17_sumout\ = SUM(( \u2_controller|chars_cnt[9]~DUPLICATE_q\ ) + ( GND ) + ( \u2_controller|Add1~22\ ))
-- \u2_controller|Add1~18\ = CARRY(( \u2_controller|chars_cnt[9]~DUPLICATE_q\ ) + ( GND ) + ( \u2_controller|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_chars_cnt[9]~DUPLICATE_q\,
	cin => \u2_controller|Add1~22\,
	sumout => \u2_controller|Add1~17_sumout\,
	cout => \u2_controller|Add1~18\);

-- Location: LABCELL_X18_Y5_N6
\u2_controller|chars_cnt~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|chars_cnt~4_combout\ = ( \u2_controller|chars_cnt\(9) & ( \u2_controller|Add1~17_sumout\ & ( ((\u2_controller|LessThan3~2_combout\) # (\u2_controller|current_state.st_receive~q\)) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( 
-- !\u2_controller|chars_cnt\(9) & ( \u2_controller|Add1~17_sumout\ & ( ((\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|current_state.st_receive~q\)) # (\u2_controller|LessThan3~2_combout\) ) ) ) # ( \u2_controller|chars_cnt\(9) & ( 
-- !\u2_controller|Add1~17_sumout\ & ( (((!\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|current_state.st_receive~q\)) # (\u2_controller|LessThan3~2_combout\)) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( !\u2_controller|chars_cnt\(9) & ( 
-- !\u2_controller|Add1~17_sumout\ & ( \u2_controller|LessThan3~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001110111111111100000101111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datab => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datac => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datad => \u2_controller|ALT_INV_LessThan3~2_combout\,
	datae => \u2_controller|ALT_INV_chars_cnt\(9),
	dataf => \u2_controller|ALT_INV_Add1~17_sumout\,
	combout => \u2_controller|chars_cnt~4_combout\);

-- Location: FF_X18_Y5_N7
\u2_controller|chars_cnt[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~4_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt[9]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y6_N30
\u2_controller|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add1~29_sumout\ = SUM(( \u2_controller|chars_cnt[10]~DUPLICATE_q\ ) + ( GND ) + ( \u2_controller|Add1~18\ ))
-- \u2_controller|Add1~30\ = CARRY(( \u2_controller|chars_cnt[10]~DUPLICATE_q\ ) + ( GND ) + ( \u2_controller|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2_controller|ALT_INV_chars_cnt[10]~DUPLICATE_q\,
	cin => \u2_controller|Add1~18\,
	sumout => \u2_controller|Add1~29_sumout\,
	cout => \u2_controller|Add1~30\);

-- Location: LABCELL_X18_Y5_N15
\u2_controller|chars_cnt~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|chars_cnt~7_combout\ = ( \u2_controller|chars_cnt\(10) & ( \u2_controller|Add1~29_sumout\ & ( ((\u2_controller|current_state.st_receive~q\) # (\u2_controller|LessThan3~2_combout\)) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( 
-- !\u2_controller|chars_cnt\(10) & ( \u2_controller|Add1~29_sumout\ & ( ((\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|current_state.st_receive~q\)) # (\u2_controller|LessThan3~2_combout\) ) ) ) # ( \u2_controller|chars_cnt\(10) & ( 
-- !\u2_controller|Add1~29_sumout\ & ( (((!\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|current_state.st_receive~q\)) # (\u2_controller|LessThan3~2_combout\)) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( !\u2_controller|chars_cnt\(10) & 
-- ( !\u2_controller|Add1~29_sumout\ & ( \u2_controller|LessThan3~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001111111011111100001111010111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datab => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datac => \u2_controller|ALT_INV_LessThan3~2_combout\,
	datad => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datae => \u2_controller|ALT_INV_chars_cnt\(10),
	dataf => \u2_controller|ALT_INV_Add1~29_sumout\,
	combout => \u2_controller|chars_cnt~7_combout\);

-- Location: FF_X18_Y5_N16
\u2_controller|chars_cnt[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~7_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt[10]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y6_N33
\u2_controller|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add1~37_sumout\ = SUM(( \u2_controller|chars_cnt\(11) ) + ( GND ) + ( \u2_controller|Add1~30\ ))
-- \u2_controller|Add1~38\ = CARRY(( \u2_controller|chars_cnt\(11) ) + ( GND ) + ( \u2_controller|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_chars_cnt\(11),
	cin => \u2_controller|Add1~30\,
	sumout => \u2_controller|Add1~37_sumout\,
	cout => \u2_controller|Add1~38\);

-- Location: LABCELL_X18_Y5_N48
\u2_controller|chars_cnt~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|chars_cnt~9_combout\ = ( \u2_controller|chars_cnt\(11) & ( \u2_controller|Add1~37_sumout\ & ( (!\u2_controller|LessThan3~2_combout\ & ((\u2_controller|current_state.st_receive~q\) # (\u2_controller|current_state.st_transmit~q\))) ) ) ) # ( 
-- !\u2_controller|chars_cnt\(11) & ( \u2_controller|Add1~37_sumout\ & ( (\u2_controller|SRAM_ADDR~0_combout\ & (\u2_controller|current_state.st_receive~q\ & !\u2_controller|LessThan3~2_combout\)) ) ) ) # ( \u2_controller|chars_cnt\(11) & ( 
-- !\u2_controller|Add1~37_sumout\ & ( (!\u2_controller|LessThan3~2_combout\ & (((!\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|current_state.st_receive~q\)) # (\u2_controller|current_state.st_transmit~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001110110000000000000101000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datab => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datac => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datad => \u2_controller|ALT_INV_LessThan3~2_combout\,
	datae => \u2_controller|ALT_INV_chars_cnt\(11),
	dataf => \u2_controller|ALT_INV_Add1~37_sumout\,
	combout => \u2_controller|chars_cnt~9_combout\);

-- Location: FF_X18_Y5_N50
\u2_controller|chars_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~9_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt\(11));

-- Location: FF_X18_Y5_N52
\u2_controller|chars_cnt[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~8_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt[12]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y6_N36
\u2_controller|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add1~33_sumout\ = SUM(( \u2_controller|chars_cnt[12]~DUPLICATE_q\ ) + ( GND ) + ( \u2_controller|Add1~38\ ))
-- \u2_controller|Add1~34\ = CARRY(( \u2_controller|chars_cnt[12]~DUPLICATE_q\ ) + ( GND ) + ( \u2_controller|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2_controller|ALT_INV_chars_cnt[12]~DUPLICATE_q\,
	cin => \u2_controller|Add1~38\,
	sumout => \u2_controller|Add1~33_sumout\,
	cout => \u2_controller|Add1~34\);

-- Location: LABCELL_X18_Y5_N51
\u2_controller|chars_cnt~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|chars_cnt~8_combout\ = ( \u2_controller|chars_cnt\(12) & ( \u2_controller|Add1~33_sumout\ & ( (!\u2_controller|LessThan3~2_combout\ & ((\u2_controller|current_state.st_receive~q\) # (\u2_controller|current_state.st_transmit~q\))) ) ) ) # ( 
-- !\u2_controller|chars_cnt\(12) & ( \u2_controller|Add1~33_sumout\ & ( (\u2_controller|SRAM_ADDR~0_combout\ & (!\u2_controller|LessThan3~2_combout\ & \u2_controller|current_state.st_receive~q\)) ) ) ) # ( \u2_controller|chars_cnt\(12) & ( 
-- !\u2_controller|Add1~33_sumout\ & ( (!\u2_controller|LessThan3~2_combout\ & (((!\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|current_state.st_receive~q\)) # (\u2_controller|current_state.st_transmit~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100001011000000000000010100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datab => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datac => \u2_controller|ALT_INV_LessThan3~2_combout\,
	datad => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datae => \u2_controller|ALT_INV_chars_cnt\(12),
	dataf => \u2_controller|ALT_INV_Add1~33_sumout\,
	combout => \u2_controller|chars_cnt~8_combout\);

-- Location: FF_X18_Y5_N53
\u2_controller|chars_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~8_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt\(12));

-- Location: LABCELL_X18_Y5_N36
\u2_controller|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|LessThan3~0_combout\ = ( !\u2_controller|chars_cnt\(12) & ( !\u2_controller|chars_cnt\(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2_controller|ALT_INV_chars_cnt\(11),
	dataf => \u2_controller|ALT_INV_chars_cnt\(12),
	combout => \u2_controller|LessThan3~0_combout\);

-- Location: LABCELL_X18_Y5_N33
\u2_controller|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|LessThan3~1_combout\ = ( \u2_controller|chars_cnt\(10) & ( (\u2_controller|chars_cnt[8]~DUPLICATE_q\ & \u2_controller|chars_cnt\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2_controller|ALT_INV_chars_cnt[8]~DUPLICATE_q\,
	datac => \u2_controller|ALT_INV_chars_cnt\(9),
	dataf => \u2_controller|ALT_INV_chars_cnt\(10),
	combout => \u2_controller|LessThan3~1_combout\);

-- Location: FF_X17_Y5_N8
\u2_controller|chars_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~2_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt\(5));

-- Location: LABCELL_X17_Y5_N24
\u2_controller|LessThan9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|LessThan9~1_combout\ = ( !\u2_controller|chars_cnt[7]~DUPLICATE_q\ & ( (!\u2_controller|chars_cnt\(5) & (!\u2_controller|chars_cnt[6]~DUPLICATE_q\ & !\u2_controller|chars_cnt\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2_controller|ALT_INV_chars_cnt\(5),
	datac => \u2_controller|ALT_INV_chars_cnt[6]~DUPLICATE_q\,
	datad => \u2_controller|ALT_INV_chars_cnt\(4),
	dataf => \u2_controller|ALT_INV_chars_cnt[7]~DUPLICATE_q\,
	combout => \u2_controller|LessThan9~1_combout\);

-- Location: LABCELL_X17_Y5_N42
\u2_controller|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|LessThan3~2_combout\ = ( \u2_controller|LessThan9~1_combout\ & ( (!\u2_controller|LessThan3~0_combout\ & \u2_controller|chars_cnt[13]~DUPLICATE_q\) ) ) # ( !\u2_controller|LessThan9~1_combout\ & ( (\u2_controller|chars_cnt[13]~DUPLICATE_q\ 
-- & ((!\u2_controller|LessThan3~0_combout\) # (\u2_controller|LessThan3~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001111000000001100111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2_controller|ALT_INV_LessThan3~0_combout\,
	datac => \u2_controller|ALT_INV_LessThan3~1_combout\,
	datad => \u2_controller|ALT_INV_chars_cnt[13]~DUPLICATE_q\,
	dataf => \u2_controller|ALT_INV_LessThan9~1_combout\,
	combout => \u2_controller|LessThan3~2_combout\);

-- Location: LABCELL_X17_Y5_N6
\u2_controller|chars_cnt~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|chars_cnt~2_combout\ = ( \u2_controller|chars_cnt\(5) & ( \u2_controller|Add1~9_sumout\ & ( (!\u2_controller|LessThan3~2_combout\ & ((\u2_controller|current_state.st_receive~q\) # (\u2_controller|current_state.st_transmit~q\))) ) ) ) # ( 
-- !\u2_controller|chars_cnt\(5) & ( \u2_controller|Add1~9_sumout\ & ( (\u2_controller|SRAM_ADDR~0_combout\ & (\u2_controller|current_state.st_receive~q\ & !\u2_controller|LessThan3~2_combout\)) ) ) ) # ( \u2_controller|chars_cnt\(5) & ( 
-- !\u2_controller|Add1~9_sumout\ & ( (!\u2_controller|LessThan3~2_combout\ & (((!\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|current_state.st_receive~q\)) # (\u2_controller|current_state.st_transmit~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001110110000000000000101000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datab => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datac => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datad => \u2_controller|ALT_INV_LessThan3~2_combout\,
	datae => \u2_controller|ALT_INV_chars_cnt\(5),
	dataf => \u2_controller|ALT_INV_Add1~9_sumout\,
	combout => \u2_controller|chars_cnt~2_combout\);

-- Location: FF_X17_Y5_N7
\u2_controller|chars_cnt[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~2_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt[5]~DUPLICATE_q\);

-- Location: LABCELL_X18_Y5_N54
\u2_controller|LessThan9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|LessThan9~0_combout\ = ( !\u2_controller|chars_cnt\(4) & ( !\u2_controller|chars_cnt\(7) & ( (!\u2_controller|chars_cnt[5]~DUPLICATE_q\ & (!\u2_controller|chars_cnt\(9) & (!\u2_controller|chars_cnt\(6) & 
-- !\u2_controller|chars_cnt[8]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_chars_cnt[5]~DUPLICATE_q\,
	datab => \u2_controller|ALT_INV_chars_cnt\(9),
	datac => \u2_controller|ALT_INV_chars_cnt\(6),
	datad => \u2_controller|ALT_INV_chars_cnt[8]~DUPLICATE_q\,
	datae => \u2_controller|ALT_INV_chars_cnt\(4),
	dataf => \u2_controller|ALT_INV_chars_cnt\(7),
	combout => \u2_controller|LessThan9~0_combout\);

-- Location: LABCELL_X18_Y5_N45
\u2_controller|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|LessThan1~0_combout\ = ( !\u2_controller|chars_cnt\(11) & ( (!\u2_controller|chars_cnt\(12) & (!\u2_controller|chars_cnt\(10) & !\u2_controller|chars_cnt[13]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_chars_cnt\(12),
	datac => \u2_controller|ALT_INV_chars_cnt\(10),
	datad => \u2_controller|ALT_INV_chars_cnt[13]~DUPLICATE_q\,
	dataf => \u2_controller|ALT_INV_chars_cnt\(11),
	combout => \u2_controller|LessThan1~0_combout\);

-- Location: FF_X17_Y5_N5
\u2_controller|chars_cnt[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~10_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt[3]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y5_N18
\u2_controller|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|LessThan1~1_combout\ = ( !\u2_controller|chars_cnt[0]~DUPLICATE_q\ & ( (!\u2_controller|chars_cnt\(2) & (!\u2_controller|chars_cnt\(1) & !\u2_controller|chars_cnt[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_chars_cnt\(2),
	datab => \u2_controller|ALT_INV_chars_cnt\(1),
	datac => \u2_controller|ALT_INV_chars_cnt[3]~DUPLICATE_q\,
	datae => \u2_controller|ALT_INV_chars_cnt[0]~DUPLICATE_q\,
	combout => \u2_controller|LessThan1~1_combout\);

-- Location: LABCELL_X18_Y5_N0
\u2_controller|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|LessThan1~2_combout\ = ( \u2_controller|LessThan1~1_combout\ & ( (\u2_controller|LessThan9~0_combout\ & \u2_controller|LessThan1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2_controller|ALT_INV_LessThan9~0_combout\,
	datad => \u2_controller|ALT_INV_LessThan1~0_combout\,
	dataf => \u2_controller|ALT_INV_LessThan1~1_combout\,
	combout => \u2_controller|LessThan1~2_combout\);

-- Location: IOIBUF_X19_Y0_N1
\MODE~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MODE,
	o => \MODE~input_o\);

-- Location: LABCELL_X17_Y5_N30
\u3_mode_sync|sig_in_d[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3_mode_sync|sig_in_d[1]~0_combout\ = !\MODE~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MODE~input_o\,
	combout => \u3_mode_sync|sig_in_d[1]~0_combout\);

-- Location: FF_X17_Y5_N31
\u3_mode_sync|sig_in_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3_mode_sync|sig_in_d[1]~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3_mode_sync|sig_in_d\(1));

-- Location: FF_X18_Y5_N26
\u3_mode_sync|sig_in_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u3_mode_sync|sig_in_d\(1),
	clrn => \RSTn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3_mode_sync|sig_in_d\(2));

-- Location: FF_X17_Y5_N14
\u3_mode_sync|sig_in_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u3_mode_sync|sig_in_d\(2),
	clrn => \RSTn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3_mode_sync|sig_in_d\(3));

-- Location: LABCELL_X17_Y5_N15
\u3_mode_sync|SIG_OUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3_mode_sync|SIG_OUT~0_combout\ = ( \u3_mode_sync|sig_in_d\(2) ) # ( !\u3_mode_sync|sig_in_d\(2) & ( !\u3_mode_sync|sig_in_d\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3_mode_sync|ALT_INV_sig_in_d\(3),
	dataf => \u3_mode_sync|ALT_INV_sig_in_d\(2),
	combout => \u3_mode_sync|SIG_OUT~0_combout\);

-- Location: FF_X17_Y5_N17
\u3_mode_sync|SIG_OUT~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3_mode_sync|SIG_OUT~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3_mode_sync|SIG_OUT~DUPLICATE_q\);

-- Location: LABCELL_X18_Y5_N42
\u2_controller|current_state.st_idle~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|current_state.st_idle~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \u2_controller|current_state.st_idle~feeder_combout\);

-- Location: FF_X17_Y5_N16
\u3_mode_sync|SIG_OUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3_mode_sync|SIG_OUT~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3_mode_sync|SIG_OUT~q\);

-- Location: LABCELL_X18_Y5_N3
\u2_controller|Selector52~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Selector52~1_combout\ = ( \u2_controller|current_state.st_receive~q\ & ( (!\u2_controller|LessThan1~2_combout\ & (((!\u3_mode_sync|SIG_OUT~q\)))) # (\u2_controller|LessThan1~2_combout\ & (((!\u3_mode_sync|SIG_OUT~q\ & 
-- !\u2_controller|current_state.st_idle~DUPLICATE_q\)) # (\u2_controller|current_state.st_transmit~q\))) ) ) # ( !\u2_controller|current_state.st_receive~q\ & ( (!\u2_controller|current_state.st_transmit~q\ & (!\u3_mode_sync|SIG_OUT~q\ & 
-- (!\u2_controller|current_state.st_idle~DUPLICATE_q\))) # (\u2_controller|current_state.st_transmit~q\ & (((!\u3_mode_sync|SIG_OUT~q\ & !\u2_controller|current_state.st_idle~DUPLICATE_q\)) # (\u2_controller|LessThan1~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011010101110000001101010111001100110101011100110011010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datab => \u3_mode_sync|ALT_INV_SIG_OUT~q\,
	datac => \u2_controller|ALT_INV_current_state.st_idle~DUPLICATE_q\,
	datad => \u2_controller|ALT_INV_LessThan1~2_combout\,
	dataf => \u2_controller|ALT_INV_current_state.st_receive~q\,
	combout => \u2_controller|Selector52~1_combout\);

-- Location: FF_X18_Y5_N44
\u2_controller|current_state.st_idle~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|current_state.st_idle~feeder_combout\,
	clrn => \RSTn~input_o\,
	ena => \u2_controller|Selector52~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|current_state.st_idle~DUPLICATE_q\);

-- Location: LABCELL_X11_Y5_N12
\u2_controller|Selector51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Selector51~0_combout\ = ( \u2_controller|current_state.st_transmit~q\ & ( ((!\u3_mode_sync|SIG_OUT~DUPLICATE_q\ & (!\u2_controller|current_state.st_idle~DUPLICATE_q\ & !\u2_controller|current_state.st_receive~q\)) # 
-- (\u3_mode_sync|SIG_OUT~DUPLICATE_q\ & ((\u2_controller|current_state.st_receive~q\)))) # (\u2_controller|LessThan1~2_combout\) ) ) # ( !\u2_controller|current_state.st_transmit~q\ & ( (!\u3_mode_sync|SIG_OUT~DUPLICATE_q\ & 
-- ((!\u2_controller|current_state.st_receive~q\ & ((!\u2_controller|current_state.st_idle~DUPLICATE_q\))) # (\u2_controller|current_state.st_receive~q\ & (\u2_controller|LessThan1~2_combout\)))) # (\u3_mode_sync|SIG_OUT~DUPLICATE_q\ & 
-- (((\u2_controller|current_state.st_receive~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000001110111110000000111011111010101011101111101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_LessThan1~2_combout\,
	datab => \u3_mode_sync|ALT_INV_SIG_OUT~DUPLICATE_q\,
	datac => \u2_controller|ALT_INV_current_state.st_idle~DUPLICATE_q\,
	datad => \u2_controller|ALT_INV_current_state.st_receive~q\,
	dataf => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	combout => \u2_controller|Selector51~0_combout\);

-- Location: FF_X11_Y5_N14
\u2_controller|current_state.st_receive\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|Selector51~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|current_state.st_receive~q\);

-- Location: LABCELL_X18_Y5_N39
\u2_controller|Selector52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Selector52~0_combout\ = ( \u2_controller|LessThan1~1_combout\ & ( (\u2_controller|current_state.st_receive~q\ & (!\u3_mode_sync|SIG_OUT~q\ & ((!\u2_controller|LessThan1~0_combout\) # (!\u2_controller|LessThan9~0_combout\)))) ) ) # ( 
-- !\u2_controller|LessThan1~1_combout\ & ( (\u2_controller|current_state.st_receive~q\ & !\u3_mode_sync|SIG_OUT~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010000000100010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datab => \u3_mode_sync|ALT_INV_SIG_OUT~q\,
	datac => \u2_controller|ALT_INV_LessThan1~0_combout\,
	datad => \u2_controller|ALT_INV_LessThan9~0_combout\,
	dataf => \u2_controller|ALT_INV_LessThan1~1_combout\,
	combout => \u2_controller|Selector52~0_combout\);

-- Location: FF_X18_Y5_N40
\u2_controller|current_state.st_transmit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|Selector52~0_combout\,
	clrn => \RSTn~input_o\,
	ena => \u2_controller|Selector52~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|current_state.st_transmit~q\);

-- Location: FF_X18_Y5_N11
\u2_controller|chars_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~6_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt\(13));

-- Location: LABCELL_X17_Y6_N39
\u2_controller|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add1~25_sumout\ = SUM(( \u2_controller|chars_cnt[13]~DUPLICATE_q\ ) + ( GND ) + ( \u2_controller|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2_controller|ALT_INV_chars_cnt[13]~DUPLICATE_q\,
	cin => \u2_controller|Add1~34\,
	sumout => \u2_controller|Add1~25_sumout\);

-- Location: LABCELL_X18_Y5_N9
\u2_controller|chars_cnt~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|chars_cnt~6_combout\ = ( \u2_controller|chars_cnt\(13) & ( \u2_controller|Add1~25_sumout\ & ( ((\u2_controller|current_state.st_receive~q\) # (\u2_controller|LessThan3~2_combout\)) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( 
-- !\u2_controller|chars_cnt\(13) & ( \u2_controller|Add1~25_sumout\ & ( ((\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|current_state.st_receive~q\)) # (\u2_controller|LessThan3~2_combout\) ) ) ) # ( \u2_controller|chars_cnt\(13) & ( 
-- !\u2_controller|Add1~25_sumout\ & ( (((!\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|current_state.st_receive~q\)) # (\u2_controller|LessThan3~2_combout\)) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( !\u2_controller|chars_cnt\(13) & 
-- ( !\u2_controller|Add1~25_sumout\ & ( \u2_controller|LessThan3~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001111111011111100001111010111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datab => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datac => \u2_controller|ALT_INV_LessThan3~2_combout\,
	datad => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datae => \u2_controller|ALT_INV_chars_cnt\(13),
	dataf => \u2_controller|ALT_INV_Add1~25_sumout\,
	combout => \u2_controller|chars_cnt~6_combout\);

-- Location: FF_X18_Y5_N10
\u2_controller|chars_cnt[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~6_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt[13]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y5_N45
\u2_controller|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|LessThan0~0_combout\ = ( \u2_controller|chars_cnt[0]~DUPLICATE_q\ & ( (\u2_controller|chars_cnt[3]~DUPLICATE_q\ & (\u2_controller|chars_cnt\(1) & \u2_controller|chars_cnt\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_chars_cnt[3]~DUPLICATE_q\,
	datac => \u2_controller|ALT_INV_chars_cnt\(1),
	datad => \u2_controller|ALT_INV_chars_cnt\(2),
	dataf => \u2_controller|ALT_INV_chars_cnt[0]~DUPLICATE_q\,
	combout => \u2_controller|LessThan0~0_combout\);

-- Location: LABCELL_X15_Y5_N6
\u2_controller|SRAM_ADDR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_ADDR~0_combout\ = ( \u2_controller|LessThan9~1_combout\ & ( \u2_controller|LessThan3~0_combout\ & ( (\u1_uart|u2_rx|RX_DATA_VAILD~q\ & ((!\u2_controller|chars_cnt[13]~DUPLICATE_q\) # ((!\u2_controller|LessThan3~1_combout\) # 
-- (!\u2_controller|LessThan0~0_combout\)))) ) ) ) # ( !\u2_controller|LessThan9~1_combout\ & ( \u2_controller|LessThan3~0_combout\ & ( (\u1_uart|u2_rx|RX_DATA_VAILD~q\ & ((!\u2_controller|chars_cnt[13]~DUPLICATE_q\) # 
-- (!\u2_controller|LessThan3~1_combout\))) ) ) ) # ( \u2_controller|LessThan9~1_combout\ & ( !\u2_controller|LessThan3~0_combout\ & ( (\u1_uart|u2_rx|RX_DATA_VAILD~q\ & !\u2_controller|chars_cnt[13]~DUPLICATE_q\) ) ) ) # ( 
-- !\u2_controller|LessThan9~1_combout\ & ( !\u2_controller|LessThan3~0_combout\ & ( (\u1_uart|u2_rx|RX_DATA_VAILD~q\ & !\u2_controller|chars_cnt[13]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001010100010101000101010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_rx|ALT_INV_RX_DATA_VAILD~q\,
	datab => \u2_controller|ALT_INV_chars_cnt[13]~DUPLICATE_q\,
	datac => \u2_controller|ALT_INV_LessThan3~1_combout\,
	datad => \u2_controller|ALT_INV_LessThan0~0_combout\,
	datae => \u2_controller|ALT_INV_LessThan9~1_combout\,
	dataf => \u2_controller|ALT_INV_LessThan3~0_combout\,
	combout => \u2_controller|SRAM_ADDR~0_combout\);

-- Location: LABCELL_X17_Y5_N54
\u2_controller|chars_cnt~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|chars_cnt~11_combout\ = ( \u2_controller|chars_cnt\(0) & ( \u2_controller|Add1~45_sumout\ & ( ((\u2_controller|LessThan3~2_combout\) # (\u2_controller|current_state.st_receive~q\)) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( 
-- !\u2_controller|chars_cnt\(0) & ( \u2_controller|Add1~45_sumout\ & ( ((\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|current_state.st_receive~q\)) # (\u2_controller|LessThan3~2_combout\) ) ) ) # ( \u2_controller|chars_cnt\(0) & ( 
-- !\u2_controller|Add1~45_sumout\ & ( (((!\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|current_state.st_receive~q\)) # (\u2_controller|LessThan3~2_combout\)) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( !\u2_controller|chars_cnt\(0) & ( 
-- !\u2_controller|Add1~45_sumout\ & ( \u2_controller|LessThan3~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001110111111111100000101111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datab => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datac => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datad => \u2_controller|ALT_INV_LessThan3~2_combout\,
	datae => \u2_controller|ALT_INV_chars_cnt\(0),
	dataf => \u2_controller|ALT_INV_Add1~45_sumout\,
	combout => \u2_controller|chars_cnt~11_combout\);

-- Location: FF_X17_Y5_N55
\u2_controller|chars_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|chars_cnt~11_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|chars_cnt\(0));

-- Location: LABCELL_X18_Y5_N30
\u2_controller|bin_in_char_cnt[13]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|bin_in_char_cnt[13]~0_combout\ = ( \u2_controller|current_state.st_idle~DUPLICATE_q\ & ( \RSTn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_RSTn~input_o\,
	dataf => \u2_controller|ALT_INV_current_state.st_idle~DUPLICATE_q\,
	combout => \u2_controller|bin_in_char_cnt[13]~0_combout\);

-- Location: FF_X14_Y5_N2
\u2_controller|bin_in_char_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|chars_cnt\(0),
	sload => VCC,
	ena => \u2_controller|bin_in_char_cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|bin_in_char_cnt\(0));

-- Location: LABCELL_X15_Y5_N3
\u2_controller|SRAM_DQ[7]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[7]~16_combout\ = ( \u2_controller|SRAM_ADDR~0_combout\ & ( (!\u2_controller|bin_in_char_cnt\(0)) # (!\u2_controller|current_state.st_receive~q\) ) ) # ( !\u2_controller|SRAM_ADDR~0_combout\ & ( 
-- !\u2_controller|current_state.st_receive~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2_controller|ALT_INV_bin_in_char_cnt\(0),
	datad => \u2_controller|ALT_INV_current_state.st_receive~q\,
	dataf => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	combout => \u2_controller|SRAM_DQ[7]~16_combout\);

-- Location: FF_X15_Y4_N50
\u2_controller|SRAM_DQ[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u1_uart|u2_rx|RX_DATA\(0),
	sload => VCC,
	ena => \u2_controller|SRAM_DQ[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[0]~reg0_q\);

-- Location: LABCELL_X15_Y3_N24
\u2_controller|SRAM_DQ[0]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[0]~enfeeder_combout\ = ( \u2_controller|current_state.st_receive~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u2_controller|ALT_INV_current_state.st_receive~q\,
	combout => \u2_controller|SRAM_DQ[0]~enfeeder_combout\);

-- Location: FF_X15_Y3_N26
\u2_controller|SRAM_DQ[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[0]~enfeeder_combout\,
	clrn => \RSTn~input_o\,
	ena => \u2_controller|SRAM_DQ[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[0]~en_q\);

-- Location: MLABCELL_X14_Y4_N51
\u1_uart|u2_rx|register_sig[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|register_sig[1]~4_combout\ = ( \u1_uart|u2_rx|bit_cnt[0]~DUPLICATE_q\ & ( !\u1_uart|u2_rx|bit_cnt\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u2_rx|ALT_INV_bit_cnt\(1),
	dataf => \u1_uart|u2_rx|ALT_INV_bit_cnt[0]~DUPLICATE_q\,
	combout => \u1_uart|u2_rx|register_sig[1]~4_combout\);

-- Location: MLABCELL_X14_Y4_N42
\u1_uart|u2_rx|register_sig[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|register_sig[1]~5_combout\ = ( \u1_uart|u2_rx|register_sig\(1) & ( \u1_uart|u2_rx|register_sig[1]~4_combout\ & ( (!\u1_uart|u2_rx|Decoder0~0_combout\) # ((!\RSTn~input_o\) # ((!\u1_uart|u3_rx_sync|SIG_OUT~q\) # 
-- (\u1_uart|u2_rx|bit_cnt[2]~DUPLICATE_q\))) ) ) ) # ( !\u1_uart|u2_rx|register_sig\(1) & ( \u1_uart|u2_rx|register_sig[1]~4_combout\ & ( (\u1_uart|u2_rx|Decoder0~0_combout\ & (\RSTn~input_o\ & (!\u1_uart|u3_rx_sync|SIG_OUT~q\ & 
-- !\u1_uart|u2_rx|bit_cnt[2]~DUPLICATE_q\))) ) ) ) # ( \u1_uart|u2_rx|register_sig\(1) & ( !\u1_uart|u2_rx|register_sig[1]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100010000000000001111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_rx|ALT_INV_Decoder0~0_combout\,
	datab => \ALT_INV_RSTn~input_o\,
	datac => \u1_uart|u3_rx_sync|ALT_INV_SIG_OUT~q\,
	datad => \u1_uart|u2_rx|ALT_INV_bit_cnt[2]~DUPLICATE_q\,
	datae => \u1_uart|u2_rx|ALT_INV_register_sig\(1),
	dataf => \u1_uart|u2_rx|ALT_INV_register_sig[1]~4_combout\,
	combout => \u1_uart|u2_rx|register_sig[1]~5_combout\);

-- Location: FF_X14_Y4_N43
\u1_uart|u2_rx|register_sig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|register_sig[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|register_sig\(1));

-- Location: FF_X14_Y4_N53
\u1_uart|u2_rx|RX_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u1_uart|u2_rx|register_sig\(1),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u1_uart|u2_rx|RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|RX_DATA\(1));

-- Location: LABCELL_X15_Y4_N48
\u2_controller|SRAM_DQ[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[1]~reg0feeder_combout\ = ( \u1_uart|u2_rx|RX_DATA\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1_uart|u2_rx|ALT_INV_RX_DATA\(1),
	combout => \u2_controller|SRAM_DQ[1]~reg0feeder_combout\);

-- Location: FF_X15_Y4_N49
\u2_controller|SRAM_DQ[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[1]~reg0feeder_combout\,
	ena => \u2_controller|SRAM_DQ[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[1]~reg0_q\);

-- Location: LABCELL_X15_Y3_N45
\u2_controller|SRAM_DQ[1]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[1]~enfeeder_combout\ = ( \u2_controller|current_state.st_receive~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u2_controller|ALT_INV_current_state.st_receive~q\,
	combout => \u2_controller|SRAM_DQ[1]~enfeeder_combout\);

-- Location: FF_X15_Y3_N46
\u2_controller|SRAM_DQ[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[1]~enfeeder_combout\,
	clrn => \RSTn~input_o\,
	ena => \u2_controller|SRAM_DQ[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[1]~en_q\);

-- Location: MLABCELL_X14_Y4_N21
\u1_uart|u2_rx|register_sig[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|register_sig[2]~6_combout\ = (!\u1_uart|u2_rx|bit_cnt[2]~DUPLICATE_q\ & \u1_uart|u2_rx|bit_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u2_rx|ALT_INV_bit_cnt[2]~DUPLICATE_q\,
	datac => \u1_uart|u2_rx|ALT_INV_bit_cnt\(1),
	combout => \u1_uart|u2_rx|register_sig[2]~6_combout\);

-- Location: MLABCELL_X14_Y4_N39
\u1_uart|u2_rx|register_sig[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|register_sig[2]~7_combout\ = ( \u1_uart|u2_rx|register_sig\(2) & ( \u1_uart|u2_rx|register_sig[2]~6_combout\ & ( ((!\u1_uart|u3_rx_sync|SIG_OUT~q\) # ((!\RSTn~input_o\) # (!\u1_uart|u2_rx|Decoder0~0_combout\))) # 
-- (\u1_uart|u2_rx|bit_cnt[0]~DUPLICATE_q\) ) ) ) # ( !\u1_uart|u2_rx|register_sig\(2) & ( \u1_uart|u2_rx|register_sig[2]~6_combout\ & ( (!\u1_uart|u2_rx|bit_cnt[0]~DUPLICATE_q\ & (!\u1_uart|u3_rx_sync|SIG_OUT~q\ & (\RSTn~input_o\ & 
-- \u1_uart|u2_rx|Decoder0~0_combout\))) ) ) ) # ( \u1_uart|u2_rx|register_sig\(2) & ( !\u1_uart|u2_rx|register_sig[2]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000010001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_rx|ALT_INV_bit_cnt[0]~DUPLICATE_q\,
	datab => \u1_uart|u3_rx_sync|ALT_INV_SIG_OUT~q\,
	datac => \ALT_INV_RSTn~input_o\,
	datad => \u1_uart|u2_rx|ALT_INV_Decoder0~0_combout\,
	datae => \u1_uart|u2_rx|ALT_INV_register_sig\(2),
	dataf => \u1_uart|u2_rx|ALT_INV_register_sig[2]~6_combout\,
	combout => \u1_uart|u2_rx|register_sig[2]~7_combout\);

-- Location: FF_X14_Y4_N40
\u1_uart|u2_rx|register_sig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|register_sig[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|register_sig\(2));

-- Location: FF_X14_Y4_N58
\u1_uart|u2_rx|RX_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u1_uart|u2_rx|register_sig\(2),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u1_uart|u2_rx|RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|RX_DATA\(2));

-- Location: FF_X15_Y3_N38
\u2_controller|SRAM_DQ[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u1_uart|u2_rx|RX_DATA\(2),
	sload => VCC,
	ena => \u2_controller|SRAM_DQ[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[2]~reg0_q\);

-- Location: LABCELL_X15_Y3_N6
\u2_controller|SRAM_DQ[2]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[2]~enfeeder_combout\ = ( \u2_controller|current_state.st_receive~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u2_controller|ALT_INV_current_state.st_receive~q\,
	combout => \u2_controller|SRAM_DQ[2]~enfeeder_combout\);

-- Location: FF_X15_Y3_N7
\u2_controller|SRAM_DQ[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[2]~enfeeder_combout\,
	clrn => \RSTn~input_o\,
	ena => \u2_controller|SRAM_DQ[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[2]~en_q\);

-- Location: MLABCELL_X14_Y4_N45
\u1_uart|u2_rx|register_sig[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|register_sig[3]~8_combout\ = ( \u1_uart|u2_rx|register_sig\(3) & ( \u1_uart|u2_rx|register_sig[3]~0_combout\ & ( (!\u1_uart|u2_rx|Decoder0~0_combout\) # ((!\RSTn~input_o\) # ((!\u1_uart|u3_rx_sync|SIG_OUT~q\) # 
-- (\u1_uart|u2_rx|bit_cnt[2]~DUPLICATE_q\))) ) ) ) # ( !\u1_uart|u2_rx|register_sig\(3) & ( \u1_uart|u2_rx|register_sig[3]~0_combout\ & ( (\u1_uart|u2_rx|Decoder0~0_combout\ & (\RSTn~input_o\ & (!\u1_uart|u2_rx|bit_cnt[2]~DUPLICATE_q\ & 
-- !\u1_uart|u3_rx_sync|SIG_OUT~q\))) ) ) ) # ( \u1_uart|u2_rx|register_sig\(3) & ( !\u1_uart|u2_rx|register_sig[3]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100010000000000001111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_rx|ALT_INV_Decoder0~0_combout\,
	datab => \ALT_INV_RSTn~input_o\,
	datac => \u1_uart|u2_rx|ALT_INV_bit_cnt[2]~DUPLICATE_q\,
	datad => \u1_uart|u3_rx_sync|ALT_INV_SIG_OUT~q\,
	datae => \u1_uart|u2_rx|ALT_INV_register_sig\(3),
	dataf => \u1_uart|u2_rx|ALT_INV_register_sig[3]~0_combout\,
	combout => \u1_uart|u2_rx|register_sig[3]~8_combout\);

-- Location: FF_X14_Y4_N47
\u1_uart|u2_rx|register_sig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|register_sig[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|register_sig\(3));

-- Location: FF_X14_Y4_N31
\u1_uart|u2_rx|RX_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u1_uart|u2_rx|register_sig\(3),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u1_uart|u2_rx|RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|RX_DATA\(3));

-- Location: LABCELL_X15_Y4_N51
\u2_controller|SRAM_DQ[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[3]~reg0feeder_combout\ = \u1_uart|u2_rx|RX_DATA\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_rx|ALT_INV_RX_DATA\(3),
	combout => \u2_controller|SRAM_DQ[3]~reg0feeder_combout\);

-- Location: FF_X15_Y4_N52
\u2_controller|SRAM_DQ[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[3]~reg0feeder_combout\,
	ena => \u2_controller|SRAM_DQ[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[3]~reg0_q\);

-- Location: LABCELL_X15_Y3_N51
\u2_controller|SRAM_DQ[3]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[3]~enfeeder_combout\ = ( \u2_controller|current_state.st_receive~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u2_controller|ALT_INV_current_state.st_receive~q\,
	combout => \u2_controller|SRAM_DQ[3]~enfeeder_combout\);

-- Location: FF_X15_Y3_N52
\u2_controller|SRAM_DQ[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[3]~enfeeder_combout\,
	clrn => \RSTn~input_o\,
	ena => \u2_controller|SRAM_DQ[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[3]~en_q\);

-- Location: LABCELL_X13_Y4_N45
\u1_uart|u2_rx|register_sig[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|register_sig[4]~9_combout\ = ( !\u1_uart|u2_rx|bit_cnt\(1) & ( \u1_uart|u2_rx|bit_cnt[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_rx|ALT_INV_bit_cnt[2]~DUPLICATE_q\,
	datae => \u1_uart|u2_rx|ALT_INV_bit_cnt\(1),
	combout => \u1_uart|u2_rx|register_sig[4]~9_combout\);

-- Location: MLABCELL_X14_Y4_N12
\u1_uart|u2_rx|register_sig[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|register_sig[4]~10_combout\ = ( \u1_uart|u2_rx|register_sig\(4) & ( \u1_uart|u2_rx|register_sig[4]~9_combout\ & ( ((!\u1_uart|u3_rx_sync|SIG_OUT~q\) # ((!\u1_uart|u2_rx|Decoder0~0_combout\) # (!\RSTn~input_o\))) # 
-- (\u1_uart|u2_rx|bit_cnt[0]~DUPLICATE_q\) ) ) ) # ( !\u1_uart|u2_rx|register_sig\(4) & ( \u1_uart|u2_rx|register_sig[4]~9_combout\ & ( (!\u1_uart|u2_rx|bit_cnt[0]~DUPLICATE_q\ & (!\u1_uart|u3_rx_sync|SIG_OUT~q\ & (\u1_uart|u2_rx|Decoder0~0_combout\ & 
-- \RSTn~input_o\))) ) ) ) # ( \u1_uart|u2_rx|register_sig\(4) & ( !\u1_uart|u2_rx|register_sig[4]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000010001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_rx|ALT_INV_bit_cnt[0]~DUPLICATE_q\,
	datab => \u1_uart|u3_rx_sync|ALT_INV_SIG_OUT~q\,
	datac => \u1_uart|u2_rx|ALT_INV_Decoder0~0_combout\,
	datad => \ALT_INV_RSTn~input_o\,
	datae => \u1_uart|u2_rx|ALT_INV_register_sig\(4),
	dataf => \u1_uart|u2_rx|ALT_INV_register_sig[4]~9_combout\,
	combout => \u1_uart|u2_rx|register_sig[4]~10_combout\);

-- Location: FF_X14_Y4_N14
\u1_uart|u2_rx|register_sig[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|register_sig[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|register_sig\(4));

-- Location: FF_X14_Y4_N20
\u1_uart|u2_rx|RX_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u1_uart|u2_rx|register_sig\(4),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u1_uart|u2_rx|RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|RX_DATA\(4));

-- Location: LABCELL_X15_Y3_N39
\u2_controller|SRAM_DQ[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[4]~reg0feeder_combout\ = ( \u1_uart|u2_rx|RX_DATA\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1_uart|u2_rx|ALT_INV_RX_DATA\(4),
	combout => \u2_controller|SRAM_DQ[4]~reg0feeder_combout\);

-- Location: FF_X15_Y3_N40
\u2_controller|SRAM_DQ[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[4]~reg0feeder_combout\,
	ena => \u2_controller|SRAM_DQ[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[4]~reg0_q\);

-- Location: FF_X15_Y3_N55
\u2_controller|SRAM_DQ[4]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|current_state.st_receive~q\,
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u2_controller|SRAM_DQ[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[4]~en_q\);

-- Location: LABCELL_X11_Y4_N3
\u1_uart|u2_rx|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|Decoder0~1_combout\ = ( \u1_uart|u2_rx|LessThan2~2_combout\ & ( (\u1_uart|u2_rx|current_state.st_data_bits~q\ & \RSTn~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u2_rx|ALT_INV_current_state.st_data_bits~q\,
	datac => \ALT_INV_RSTn~input_o\,
	dataf => \u1_uart|u2_rx|ALT_INV_LessThan2~2_combout\,
	combout => \u1_uart|u2_rx|Decoder0~1_combout\);

-- Location: LABCELL_X11_Y4_N45
\u1_uart|u2_rx|register_sig[5]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|register_sig[5]~11_combout\ = ( \u1_uart|u2_rx|register_sig\(5) & ( \u1_uart|u2_rx|bit_cnt\(1) ) ) # ( \u1_uart|u2_rx|register_sig\(5) & ( !\u1_uart|u2_rx|bit_cnt\(1) & ( (!\u1_uart|u2_rx|Decoder0~1_combout\) # 
-- ((!\u1_uart|u3_rx_sync|SIG_OUT~q\) # ((!\u1_uart|u2_rx|bit_cnt\(2)) # (!\u1_uart|u2_rx|bit_cnt[0]~DUPLICATE_q\))) ) ) ) # ( !\u1_uart|u2_rx|register_sig\(5) & ( !\u1_uart|u2_rx|bit_cnt\(1) & ( (\u1_uart|u2_rx|Decoder0~1_combout\ & 
-- (!\u1_uart|u3_rx_sync|SIG_OUT~q\ & (\u1_uart|u2_rx|bit_cnt\(2) & \u1_uart|u2_rx|bit_cnt[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111111111111111000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_rx|ALT_INV_Decoder0~1_combout\,
	datab => \u1_uart|u3_rx_sync|ALT_INV_SIG_OUT~q\,
	datac => \u1_uart|u2_rx|ALT_INV_bit_cnt\(2),
	datad => \u1_uart|u2_rx|ALT_INV_bit_cnt[0]~DUPLICATE_q\,
	datae => \u1_uart|u2_rx|ALT_INV_register_sig\(5),
	dataf => \u1_uart|u2_rx|ALT_INV_bit_cnt\(1),
	combout => \u1_uart|u2_rx|register_sig[5]~11_combout\);

-- Location: FF_X11_Y4_N47
\u1_uart|u2_rx|register_sig[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|register_sig[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|register_sig\(5));

-- Location: FF_X11_Y4_N56
\u1_uart|u2_rx|RX_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u1_uart|u2_rx|register_sig\(5),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u1_uart|u2_rx|RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|RX_DATA\(5));

-- Location: LABCELL_X15_Y3_N0
\u2_controller|SRAM_DQ[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[5]~reg0feeder_combout\ = ( \u1_uart|u2_rx|RX_DATA\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1_uart|u2_rx|ALT_INV_RX_DATA\(5),
	combout => \u2_controller|SRAM_DQ[5]~reg0feeder_combout\);

-- Location: FF_X15_Y3_N1
\u2_controller|SRAM_DQ[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[5]~reg0feeder_combout\,
	ena => \u2_controller|SRAM_DQ[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[5]~reg0_q\);

-- Location: LABCELL_X15_Y3_N18
\u2_controller|SRAM_DQ[5]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[5]~enfeeder_combout\ = ( \u2_controller|current_state.st_receive~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u2_controller|ALT_INV_current_state.st_receive~q\,
	combout => \u2_controller|SRAM_DQ[5]~enfeeder_combout\);

-- Location: FF_X15_Y3_N19
\u2_controller|SRAM_DQ[5]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[5]~enfeeder_combout\,
	clrn => \RSTn~input_o\,
	ena => \u2_controller|SRAM_DQ[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[5]~en_q\);

-- Location: MLABCELL_X14_Y4_N48
\u1_uart|u2_rx|register_sig[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|register_sig[6]~12_combout\ = ( \u1_uart|u2_rx|bit_cnt[2]~DUPLICATE_q\ & ( \u1_uart|u2_rx|bit_cnt\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u2_rx|ALT_INV_bit_cnt\(1),
	dataf => \u1_uart|u2_rx|ALT_INV_bit_cnt[2]~DUPLICATE_q\,
	combout => \u1_uart|u2_rx|register_sig[6]~12_combout\);

-- Location: MLABCELL_X14_Y4_N15
\u1_uart|u2_rx|register_sig[6]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|register_sig[6]~13_combout\ = ( \u1_uart|u2_rx|register_sig\(6) & ( \u1_uart|u2_rx|register_sig[6]~12_combout\ & ( ((!\u1_uart|u3_rx_sync|SIG_OUT~q\) # ((!\RSTn~input_o\) # (!\u1_uart|u2_rx|Decoder0~0_combout\))) # 
-- (\u1_uart|u2_rx|bit_cnt[0]~DUPLICATE_q\) ) ) ) # ( !\u1_uart|u2_rx|register_sig\(6) & ( \u1_uart|u2_rx|register_sig[6]~12_combout\ & ( (!\u1_uart|u2_rx|bit_cnt[0]~DUPLICATE_q\ & (!\u1_uart|u3_rx_sync|SIG_OUT~q\ & (\RSTn~input_o\ & 
-- \u1_uart|u2_rx|Decoder0~0_combout\))) ) ) ) # ( \u1_uart|u2_rx|register_sig\(6) & ( !\u1_uart|u2_rx|register_sig[6]~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000010001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_rx|ALT_INV_bit_cnt[0]~DUPLICATE_q\,
	datab => \u1_uart|u3_rx_sync|ALT_INV_SIG_OUT~q\,
	datac => \ALT_INV_RSTn~input_o\,
	datad => \u1_uart|u2_rx|ALT_INV_Decoder0~0_combout\,
	datae => \u1_uart|u2_rx|ALT_INV_register_sig\(6),
	dataf => \u1_uart|u2_rx|ALT_INV_register_sig[6]~12_combout\,
	combout => \u1_uart|u2_rx|register_sig[6]~13_combout\);

-- Location: FF_X14_Y4_N16
\u1_uart|u2_rx|register_sig[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|register_sig[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|register_sig\(6));

-- Location: FF_X11_Y4_N23
\u1_uart|u2_rx|RX_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u1_uart|u2_rx|register_sig\(6),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u1_uart|u2_rx|RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|RX_DATA\(6));

-- Location: LABCELL_X15_Y3_N15
\u2_controller|SRAM_DQ[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[6]~reg0feeder_combout\ = ( \u1_uart|u2_rx|RX_DATA\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1_uart|u2_rx|ALT_INV_RX_DATA\(6),
	combout => \u2_controller|SRAM_DQ[6]~reg0feeder_combout\);

-- Location: FF_X15_Y3_N17
\u2_controller|SRAM_DQ[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[6]~reg0feeder_combout\,
	ena => \u2_controller|SRAM_DQ[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[6]~reg0_q\);

-- Location: LABCELL_X15_Y3_N33
\u2_controller|SRAM_DQ[6]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[6]~enfeeder_combout\ = ( \u2_controller|current_state.st_receive~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u2_controller|ALT_INV_current_state.st_receive~q\,
	combout => \u2_controller|SRAM_DQ[6]~enfeeder_combout\);

-- Location: FF_X15_Y3_N34
\u2_controller|SRAM_DQ[6]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[6]~enfeeder_combout\,
	clrn => \RSTn~input_o\,
	ena => \u2_controller|SRAM_DQ[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[6]~en_q\);

-- Location: MLABCELL_X14_Y4_N6
\u1_uart|u2_rx|register_sig[7]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u2_rx|register_sig[7]~14_combout\ = ( \u1_uart|u2_rx|register_sig\(7) & ( \u1_uart|u2_rx|Decoder0~0_combout\ & ( (!\u1_uart|u3_rx_sync|SIG_OUT~q\) # ((!\u1_uart|u2_rx|bit_cnt[2]~DUPLICATE_q\) # ((!\u1_uart|u2_rx|register_sig[3]~0_combout\) # 
-- (!\RSTn~input_o\))) ) ) ) # ( !\u1_uart|u2_rx|register_sig\(7) & ( \u1_uart|u2_rx|Decoder0~0_combout\ & ( (!\u1_uart|u3_rx_sync|SIG_OUT~q\ & (\u1_uart|u2_rx|bit_cnt[2]~DUPLICATE_q\ & (\u1_uart|u2_rx|register_sig[3]~0_combout\ & \RSTn~input_o\))) ) ) ) # ( 
-- \u1_uart|u2_rx|register_sig\(7) & ( !\u1_uart|u2_rx|Decoder0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u3_rx_sync|ALT_INV_SIG_OUT~q\,
	datab => \u1_uart|u2_rx|ALT_INV_bit_cnt[2]~DUPLICATE_q\,
	datac => \u1_uart|u2_rx|ALT_INV_register_sig[3]~0_combout\,
	datad => \ALT_INV_RSTn~input_o\,
	datae => \u1_uart|u2_rx|ALT_INV_register_sig\(7),
	dataf => \u1_uart|u2_rx|ALT_INV_Decoder0~0_combout\,
	combout => \u1_uart|u2_rx|register_sig[7]~14_combout\);

-- Location: FF_X14_Y4_N7
\u1_uart|u2_rx|register_sig[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|register_sig[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|register_sig\(7));

-- Location: FF_X14_Y4_N23
\u1_uart|u2_rx|RX_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u1_uart|u2_rx|register_sig\(7),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u1_uart|u2_rx|RX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|RX_DATA\(7));

-- Location: FF_X15_Y4_N53
\u2_controller|SRAM_DQ[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u1_uart|u2_rx|RX_DATA\(7),
	sload => VCC,
	ena => \u2_controller|SRAM_DQ[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[7]~reg0_q\);

-- Location: LABCELL_X15_Y3_N57
\u2_controller|SRAM_DQ[7]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[7]~enfeeder_combout\ = ( \u2_controller|current_state.st_receive~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u2_controller|ALT_INV_current_state.st_receive~q\,
	combout => \u2_controller|SRAM_DQ[7]~enfeeder_combout\);

-- Location: FF_X15_Y3_N59
\u2_controller|SRAM_DQ[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[7]~enfeeder_combout\,
	clrn => \RSTn~input_o\,
	ena => \u2_controller|SRAM_DQ[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[7]~en_q\);

-- Location: LABCELL_X15_Y4_N57
\u2_controller|SRAM_DQ[8]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[8]~reg0feeder_combout\ = ( \u1_uart|u2_rx|RX_DATA\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1_uart|u2_rx|ALT_INV_RX_DATA\(0),
	combout => \u2_controller|SRAM_DQ[8]~reg0feeder_combout\);

-- Location: LABCELL_X15_Y4_N27
\u2_controller|SRAM_DQ[15]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[15]~17_combout\ = ( \u2_controller|bin_in_char_cnt\(0) & ( \u2_controller|SRAM_ADDR~0_combout\ ) ) # ( !\u2_controller|bin_in_char_cnt\(0) & ( \u2_controller|SRAM_ADDR~0_combout\ & ( !\u2_controller|current_state.st_receive~q\ ) ) ) 
-- # ( \u2_controller|bin_in_char_cnt\(0) & ( !\u2_controller|SRAM_ADDR~0_combout\ & ( !\u2_controller|current_state.st_receive~q\ ) ) ) # ( !\u2_controller|bin_in_char_cnt\(0) & ( !\u2_controller|SRAM_ADDR~0_combout\ & ( 
-- !\u2_controller|current_state.st_receive~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datae => \u2_controller|ALT_INV_bin_in_char_cnt\(0),
	dataf => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	combout => \u2_controller|SRAM_DQ[15]~17_combout\);

-- Location: FF_X15_Y4_N58
\u2_controller|SRAM_DQ[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[8]~reg0feeder_combout\,
	ena => \u2_controller|SRAM_DQ[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[8]~reg0_q\);

-- Location: LABCELL_X15_Y4_N12
\u2_controller|SRAM_DQ[8]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[8]~enfeeder_combout\ = \u2_controller|current_state.st_receive~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_receive~q\,
	combout => \u2_controller|SRAM_DQ[8]~enfeeder_combout\);

-- Location: FF_X15_Y4_N14
\u2_controller|SRAM_DQ[8]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[8]~enfeeder_combout\,
	clrn => \RSTn~input_o\,
	ena => \u2_controller|SRAM_DQ[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[8]~en_q\);

-- Location: LABCELL_X15_Y4_N6
\u2_controller|SRAM_DQ[9]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[9]~reg0feeder_combout\ = ( \u1_uart|u2_rx|RX_DATA\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1_uart|u2_rx|ALT_INV_RX_DATA\(1),
	combout => \u2_controller|SRAM_DQ[9]~reg0feeder_combout\);

-- Location: FF_X15_Y4_N7
\u2_controller|SRAM_DQ[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[9]~reg0feeder_combout\,
	ena => \u2_controller|SRAM_DQ[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[9]~reg0_q\);

-- Location: LABCELL_X15_Y4_N15
\u2_controller|SRAM_DQ[9]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[9]~enfeeder_combout\ = \u2_controller|current_state.st_receive~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_receive~q\,
	combout => \u2_controller|SRAM_DQ[9]~enfeeder_combout\);

-- Location: FF_X15_Y4_N16
\u2_controller|SRAM_DQ[9]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[9]~enfeeder_combout\,
	clrn => \RSTn~input_o\,
	ena => \u2_controller|SRAM_DQ[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[9]~en_q\);

-- Location: FF_X15_Y4_N4
\u2_controller|SRAM_DQ[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u1_uart|u2_rx|RX_DATA\(2),
	sload => VCC,
	ena => \u2_controller|SRAM_DQ[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[10]~reg0_q\);

-- Location: LABCELL_X15_Y4_N42
\u2_controller|SRAM_DQ[10]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[10]~enfeeder_combout\ = \u2_controller|current_state.st_receive~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_receive~q\,
	combout => \u2_controller|SRAM_DQ[10]~enfeeder_combout\);

-- Location: FF_X15_Y4_N43
\u2_controller|SRAM_DQ[10]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[10]~enfeeder_combout\,
	clrn => \RSTn~input_o\,
	ena => \u2_controller|SRAM_DQ[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[10]~en_q\);

-- Location: LABCELL_X15_Y4_N9
\u2_controller|SRAM_DQ[11]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[11]~reg0feeder_combout\ = ( \u1_uart|u2_rx|RX_DATA\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1_uart|u2_rx|ALT_INV_RX_DATA\(3),
	combout => \u2_controller|SRAM_DQ[11]~reg0feeder_combout\);

-- Location: FF_X15_Y4_N10
\u2_controller|SRAM_DQ[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[11]~reg0feeder_combout\,
	ena => \u2_controller|SRAM_DQ[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[11]~reg0_q\);

-- Location: LABCELL_X15_Y4_N36
\u2_controller|SRAM_DQ[11]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[11]~enfeeder_combout\ = \u2_controller|current_state.st_receive~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_receive~q\,
	combout => \u2_controller|SRAM_DQ[11]~enfeeder_combout\);

-- Location: FF_X15_Y4_N38
\u2_controller|SRAM_DQ[11]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[11]~enfeeder_combout\,
	clrn => \RSTn~input_o\,
	ena => \u2_controller|SRAM_DQ[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[11]~en_q\);

-- Location: LABCELL_X15_Y4_N30
\u2_controller|SRAM_DQ[12]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[12]~reg0feeder_combout\ = ( \u1_uart|u2_rx|RX_DATA\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1_uart|u2_rx|ALT_INV_RX_DATA\(4),
	combout => \u2_controller|SRAM_DQ[12]~reg0feeder_combout\);

-- Location: FF_X15_Y4_N31
\u2_controller|SRAM_DQ[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[12]~reg0feeder_combout\,
	ena => \u2_controller|SRAM_DQ[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[12]~reg0_q\);

-- Location: LABCELL_X15_Y4_N45
\u2_controller|SRAM_DQ[12]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[12]~enfeeder_combout\ = \u2_controller|current_state.st_receive~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_receive~q\,
	combout => \u2_controller|SRAM_DQ[12]~enfeeder_combout\);

-- Location: FF_X15_Y4_N46
\u2_controller|SRAM_DQ[12]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[12]~enfeeder_combout\,
	clrn => \RSTn~input_o\,
	ena => \u2_controller|SRAM_DQ[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[12]~en_q\);

-- Location: FF_X15_Y4_N25
\u2_controller|SRAM_DQ[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u1_uart|u2_rx|RX_DATA\(5),
	sload => VCC,
	ena => \u2_controller|SRAM_DQ[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[13]~reg0_q\);

-- Location: LABCELL_X15_Y4_N18
\u2_controller|SRAM_DQ[13]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[13]~enfeeder_combout\ = \u2_controller|current_state.st_receive~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_receive~q\,
	combout => \u2_controller|SRAM_DQ[13]~enfeeder_combout\);

-- Location: FF_X15_Y4_N19
\u2_controller|SRAM_DQ[13]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[13]~enfeeder_combout\,
	clrn => \RSTn~input_o\,
	ena => \u2_controller|SRAM_DQ[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[13]~en_q\);

-- Location: FF_X15_Y4_N28
\u2_controller|SRAM_DQ[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u1_uart|u2_rx|RX_DATA\(6),
	sload => VCC,
	ena => \u2_controller|SRAM_DQ[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[14]~reg0_q\);

-- Location: LABCELL_X15_Y4_N21
\u2_controller|SRAM_DQ[14]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[14]~enfeeder_combout\ = \u2_controller|current_state.st_receive~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_receive~q\,
	combout => \u2_controller|SRAM_DQ[14]~enfeeder_combout\);

-- Location: FF_X15_Y4_N22
\u2_controller|SRAM_DQ[14]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[14]~enfeeder_combout\,
	clrn => \RSTn~input_o\,
	ena => \u2_controller|SRAM_DQ[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[14]~en_q\);

-- Location: FF_X15_Y4_N1
\u2_controller|SRAM_DQ[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u1_uart|u2_rx|RX_DATA\(7),
	sload => VCC,
	ena => \u2_controller|SRAM_DQ[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[15]~reg0_q\);

-- Location: LABCELL_X15_Y4_N39
\u2_controller|SRAM_DQ[15]~enfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ[15]~enfeeder_combout\ = \u2_controller|current_state.st_receive~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_receive~q\,
	combout => \u2_controller|SRAM_DQ[15]~enfeeder_combout\);

-- Location: FF_X15_Y4_N40
\u2_controller|SRAM_DQ[15]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_DQ[15]~enfeeder_combout\,
	clrn => \RSTn~input_o\,
	ena => \u2_controller|SRAM_DQ[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_DQ[15]~en_q\);

-- Location: MLABCELL_X19_Y2_N57
\u1_uart|u1_tx|current_state.st_idle~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u1_tx|current_state.st_idle~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \u1_uart|u1_tx|current_state.st_idle~feeder_combout\);

-- Location: MLABCELL_X19_Y2_N0
\u1_uart|u1_tx|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u1_tx|Add0~37_sumout\ = SUM(( \u1_uart|u1_tx|clk_cnt\(0) ) + ( VCC ) + ( !VCC ))
-- \u1_uart|u1_tx|Add0~38\ = CARRY(( \u1_uart|u1_tx|clk_cnt\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1_uart|u1_tx|ALT_INV_clk_cnt\(0),
	cin => GND,
	sumout => \u1_uart|u1_tx|Add0~37_sumout\,
	cout => \u1_uart|u1_tx|Add0~38\);

-- Location: MLABCELL_X19_Y3_N3
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X19_Y2_N2
\u1_uart|u1_tx|clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u1_tx|Add0~37_sumout\,
	asdata => \~GND~combout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u1_tx|ALT_INV_current_state.st_idle~q\,
	sload => \u1_uart|u1_tx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u1_tx|clk_cnt\(0));

-- Location: MLABCELL_X19_Y2_N3
\u1_uart|u1_tx|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u1_tx|Add0~33_sumout\ = SUM(( \u1_uart|u1_tx|clk_cnt\(1) ) + ( GND ) + ( \u1_uart|u1_tx|Add0~38\ ))
-- \u1_uart|u1_tx|Add0~34\ = CARRY(( \u1_uart|u1_tx|clk_cnt\(1) ) + ( GND ) + ( \u1_uart|u1_tx|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1_uart|u1_tx|ALT_INV_clk_cnt\(1),
	cin => \u1_uart|u1_tx|Add0~38\,
	sumout => \u1_uart|u1_tx|Add0~33_sumout\,
	cout => \u1_uart|u1_tx|Add0~34\);

-- Location: FF_X19_Y2_N5
\u1_uart|u1_tx|clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u1_tx|Add0~33_sumout\,
	asdata => \~GND~combout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u1_tx|ALT_INV_current_state.st_idle~q\,
	sload => \u1_uart|u1_tx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u1_tx|clk_cnt\(1));

-- Location: MLABCELL_X19_Y2_N6
\u1_uart|u1_tx|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u1_tx|Add0~29_sumout\ = SUM(( \u1_uart|u1_tx|clk_cnt\(2) ) + ( GND ) + ( \u1_uart|u1_tx|Add0~34\ ))
-- \u1_uart|u1_tx|Add0~30\ = CARRY(( \u1_uart|u1_tx|clk_cnt\(2) ) + ( GND ) + ( \u1_uart|u1_tx|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1_uart|u1_tx|ALT_INV_clk_cnt\(2),
	cin => \u1_uart|u1_tx|Add0~34\,
	sumout => \u1_uart|u1_tx|Add0~29_sumout\,
	cout => \u1_uart|u1_tx|Add0~30\);

-- Location: FF_X19_Y2_N7
\u1_uart|u1_tx|clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u1_tx|Add0~29_sumout\,
	asdata => \~GND~combout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u1_tx|ALT_INV_current_state.st_idle~q\,
	sload => \u1_uart|u1_tx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u1_tx|clk_cnt\(2));

-- Location: MLABCELL_X19_Y2_N9
\u1_uart|u1_tx|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u1_tx|Add0~25_sumout\ = SUM(( \u1_uart|u1_tx|clk_cnt\(3) ) + ( GND ) + ( \u1_uart|u1_tx|Add0~30\ ))
-- \u1_uart|u1_tx|Add0~26\ = CARRY(( \u1_uart|u1_tx|clk_cnt\(3) ) + ( GND ) + ( \u1_uart|u1_tx|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1_uart|u1_tx|ALT_INV_clk_cnt\(3),
	cin => \u1_uart|u1_tx|Add0~30\,
	sumout => \u1_uart|u1_tx|Add0~25_sumout\,
	cout => \u1_uart|u1_tx|Add0~26\);

-- Location: FF_X19_Y2_N11
\u1_uart|u1_tx|clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u1_tx|Add0~25_sumout\,
	asdata => \~GND~combout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u1_tx|ALT_INV_current_state.st_idle~q\,
	sload => \u1_uart|u1_tx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u1_tx|clk_cnt\(3));

-- Location: MLABCELL_X19_Y2_N12
\u1_uart|u1_tx|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u1_tx|Add0~21_sumout\ = SUM(( \u1_uart|u1_tx|clk_cnt[4]~DUPLICATE_q\ ) + ( GND ) + ( \u1_uart|u1_tx|Add0~26\ ))
-- \u1_uart|u1_tx|Add0~22\ = CARRY(( \u1_uart|u1_tx|clk_cnt[4]~DUPLICATE_q\ ) + ( GND ) + ( \u1_uart|u1_tx|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u1_tx|ALT_INV_clk_cnt[4]~DUPLICATE_q\,
	cin => \u1_uart|u1_tx|Add0~26\,
	sumout => \u1_uart|u1_tx|Add0~21_sumout\,
	cout => \u1_uart|u1_tx|Add0~22\);

-- Location: FF_X19_Y2_N14
\u1_uart|u1_tx|clk_cnt[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u1_tx|Add0~21_sumout\,
	asdata => \~GND~combout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u1_tx|ALT_INV_current_state.st_idle~q\,
	sload => \u1_uart|u1_tx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u1_tx|clk_cnt[4]~DUPLICATE_q\);

-- Location: MLABCELL_X19_Y2_N15
\u1_uart|u1_tx|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u1_tx|Add0~17_sumout\ = SUM(( \u1_uart|u1_tx|clk_cnt\(5) ) + ( GND ) + ( \u1_uart|u1_tx|Add0~22\ ))
-- \u1_uart|u1_tx|Add0~18\ = CARRY(( \u1_uart|u1_tx|clk_cnt\(5) ) + ( GND ) + ( \u1_uart|u1_tx|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1_uart|u1_tx|ALT_INV_clk_cnt\(5),
	cin => \u1_uart|u1_tx|Add0~22\,
	sumout => \u1_uart|u1_tx|Add0~17_sumout\,
	cout => \u1_uart|u1_tx|Add0~18\);

-- Location: FF_X19_Y2_N17
\u1_uart|u1_tx|clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u1_tx|Add0~17_sumout\,
	asdata => \~GND~combout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u1_tx|ALT_INV_current_state.st_idle~q\,
	sload => \u1_uart|u1_tx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u1_tx|clk_cnt\(5));

-- Location: MLABCELL_X19_Y2_N18
\u1_uart|u1_tx|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u1_tx|Add0~13_sumout\ = SUM(( \u1_uart|u1_tx|clk_cnt[6]~DUPLICATE_q\ ) + ( GND ) + ( \u1_uart|u1_tx|Add0~18\ ))
-- \u1_uart|u1_tx|Add0~14\ = CARRY(( \u1_uart|u1_tx|clk_cnt[6]~DUPLICATE_q\ ) + ( GND ) + ( \u1_uart|u1_tx|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1_uart|u1_tx|ALT_INV_clk_cnt[6]~DUPLICATE_q\,
	cin => \u1_uart|u1_tx|Add0~18\,
	sumout => \u1_uart|u1_tx|Add0~13_sumout\,
	cout => \u1_uart|u1_tx|Add0~14\);

-- Location: FF_X19_Y2_N20
\u1_uart|u1_tx|clk_cnt[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u1_tx|Add0~13_sumout\,
	asdata => \~GND~combout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u1_tx|ALT_INV_current_state.st_idle~q\,
	sload => \u1_uart|u1_tx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u1_tx|clk_cnt[6]~DUPLICATE_q\);

-- Location: MLABCELL_X19_Y2_N21
\u1_uart|u1_tx|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u1_tx|Add0~49_sumout\ = SUM(( \u1_uart|u1_tx|clk_cnt\(7) ) + ( GND ) + ( \u1_uart|u1_tx|Add0~14\ ))
-- \u1_uart|u1_tx|Add0~50\ = CARRY(( \u1_uart|u1_tx|clk_cnt\(7) ) + ( GND ) + ( \u1_uart|u1_tx|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1_uart|u1_tx|ALT_INV_clk_cnt\(7),
	cin => \u1_uart|u1_tx|Add0~14\,
	sumout => \u1_uart|u1_tx|Add0~49_sumout\,
	cout => \u1_uart|u1_tx|Add0~50\);

-- Location: FF_X19_Y2_N23
\u1_uart|u1_tx|clk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u1_tx|Add0~49_sumout\,
	asdata => \~GND~combout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u1_tx|ALT_INV_current_state.st_idle~q\,
	sload => \u1_uart|u1_tx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u1_tx|clk_cnt\(7));

-- Location: MLABCELL_X19_Y2_N24
\u1_uart|u1_tx|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u1_tx|Add0~45_sumout\ = SUM(( \u1_uart|u1_tx|clk_cnt\(8) ) + ( GND ) + ( \u1_uart|u1_tx|Add0~50\ ))
-- \u1_uart|u1_tx|Add0~46\ = CARRY(( \u1_uart|u1_tx|clk_cnt\(8) ) + ( GND ) + ( \u1_uart|u1_tx|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1_uart|u1_tx|ALT_INV_clk_cnt\(8),
	cin => \u1_uart|u1_tx|Add0~50\,
	sumout => \u1_uart|u1_tx|Add0~45_sumout\,
	cout => \u1_uart|u1_tx|Add0~46\);

-- Location: FF_X19_Y2_N26
\u1_uart|u1_tx|clk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u1_tx|Add0~45_sumout\,
	asdata => \~GND~combout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u1_tx|ALT_INV_current_state.st_idle~q\,
	sload => \u1_uart|u1_tx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u1_tx|clk_cnt\(8));

-- Location: MLABCELL_X19_Y2_N27
\u1_uart|u1_tx|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u1_tx|Add0~41_sumout\ = SUM(( \u1_uart|u1_tx|clk_cnt\(9) ) + ( GND ) + ( \u1_uart|u1_tx|Add0~46\ ))
-- \u1_uart|u1_tx|Add0~42\ = CARRY(( \u1_uart|u1_tx|clk_cnt\(9) ) + ( GND ) + ( \u1_uart|u1_tx|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1_uart|u1_tx|ALT_INV_clk_cnt\(9),
	cin => \u1_uart|u1_tx|Add0~46\,
	sumout => \u1_uart|u1_tx|Add0~41_sumout\,
	cout => \u1_uart|u1_tx|Add0~42\);

-- Location: FF_X19_Y2_N28
\u1_uart|u1_tx|clk_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u1_tx|Add0~41_sumout\,
	asdata => \~GND~combout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u1_tx|ALT_INV_current_state.st_idle~q\,
	sload => \u1_uart|u1_tx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u1_tx|clk_cnt\(9));

-- Location: MLABCELL_X19_Y2_N30
\u1_uart|u1_tx|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u1_tx|Add0~9_sumout\ = SUM(( \u1_uart|u1_tx|clk_cnt[10]~DUPLICATE_q\ ) + ( GND ) + ( \u1_uart|u1_tx|Add0~42\ ))
-- \u1_uart|u1_tx|Add0~10\ = CARRY(( \u1_uart|u1_tx|clk_cnt[10]~DUPLICATE_q\ ) + ( GND ) + ( \u1_uart|u1_tx|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1_uart|u1_tx|ALT_INV_clk_cnt[10]~DUPLICATE_q\,
	cin => \u1_uart|u1_tx|Add0~42\,
	sumout => \u1_uart|u1_tx|Add0~9_sumout\,
	cout => \u1_uart|u1_tx|Add0~10\);

-- Location: FF_X19_Y2_N31
\u1_uart|u1_tx|clk_cnt[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u1_tx|Add0~9_sumout\,
	asdata => \~GND~combout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u1_tx|ALT_INV_current_state.st_idle~q\,
	sload => \u1_uart|u1_tx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u1_tx|clk_cnt[10]~DUPLICATE_q\);

-- Location: MLABCELL_X19_Y2_N33
\u1_uart|u1_tx|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u1_tx|Add0~5_sumout\ = SUM(( \u1_uart|u1_tx|clk_cnt\(11) ) + ( GND ) + ( \u1_uart|u1_tx|Add0~10\ ))
-- \u1_uart|u1_tx|Add0~6\ = CARRY(( \u1_uart|u1_tx|clk_cnt\(11) ) + ( GND ) + ( \u1_uart|u1_tx|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_tx|ALT_INV_clk_cnt\(11),
	cin => \u1_uart|u1_tx|Add0~10\,
	sumout => \u1_uart|u1_tx|Add0~5_sumout\,
	cout => \u1_uart|u1_tx|Add0~6\);

-- Location: FF_X19_Y2_N35
\u1_uart|u1_tx|clk_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u1_tx|Add0~5_sumout\,
	asdata => \~GND~combout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u1_tx|ALT_INV_current_state.st_idle~q\,
	sload => \u1_uart|u1_tx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u1_tx|clk_cnt\(11));

-- Location: FF_X19_Y2_N32
\u1_uart|u1_tx|clk_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u1_tx|Add0~9_sumout\,
	asdata => \~GND~combout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u1_tx|ALT_INV_current_state.st_idle~q\,
	sload => \u1_uart|u1_tx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u1_tx|clk_cnt\(10));

-- Location: MLABCELL_X19_Y2_N36
\u1_uart|u1_tx|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u1_tx|Add0~1_sumout\ = SUM(( \u1_uart|u1_tx|clk_cnt\(12) ) + ( GND ) + ( \u1_uart|u1_tx|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1_uart|u1_tx|ALT_INV_clk_cnt\(12),
	cin => \u1_uart|u1_tx|Add0~6\,
	sumout => \u1_uart|u1_tx|Add0~1_sumout\);

-- Location: FF_X19_Y2_N38
\u1_uart|u1_tx|clk_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u1_tx|Add0~1_sumout\,
	asdata => \~GND~combout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u1_tx|ALT_INV_current_state.st_idle~q\,
	sload => \u1_uart|u1_tx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u1_tx|clk_cnt\(12));

-- Location: FF_X19_Y2_N19
\u1_uart|u1_tx|clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u1_tx|Add0~13_sumout\,
	asdata => \~GND~combout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u1_tx|ALT_INV_current_state.st_idle~q\,
	sload => \u1_uart|u1_tx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u1_tx|clk_cnt\(6));

-- Location: MLABCELL_X19_Y2_N54
\u1_uart|u1_tx|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u1_tx|LessThan1~1_combout\ = ( !\u1_uart|u1_tx|clk_cnt\(9) & ( (!\u1_uart|u1_tx|clk_cnt\(8) & !\u1_uart|u1_tx|clk_cnt\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1_uart|u1_tx|ALT_INV_clk_cnt\(8),
	datad => \u1_uart|u1_tx|ALT_INV_clk_cnt\(7),
	dataf => \u1_uart|u1_tx|ALT_INV_clk_cnt\(9),
	combout => \u1_uart|u1_tx|LessThan1~1_combout\);

-- Location: FF_X19_Y2_N13
\u1_uart|u1_tx|clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u1_tx|Add0~21_sumout\,
	asdata => \~GND~combout\,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u1_tx|ALT_INV_current_state.st_idle~q\,
	sload => \u1_uart|u1_tx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u1_tx|clk_cnt\(4));

-- Location: MLABCELL_X19_Y2_N48
\u1_uart|u1_tx|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u1_tx|LessThan1~0_combout\ = ( \u1_uart|u1_tx|clk_cnt\(0) & ( \u1_uart|u1_tx|clk_cnt\(4) & ( (!\u1_uart|u1_tx|clk_cnt\(5) & (!\u1_uart|u1_tx|clk_cnt\(3) & ((!\u1_uart|u1_tx|clk_cnt\(2)) # (!\u1_uart|u1_tx|clk_cnt\(1))))) ) ) ) # ( 
-- !\u1_uart|u1_tx|clk_cnt\(0) & ( \u1_uart|u1_tx|clk_cnt\(4) & ( (!\u1_uart|u1_tx|clk_cnt\(5) & !\u1_uart|u1_tx|clk_cnt\(3)) ) ) ) # ( \u1_uart|u1_tx|clk_cnt\(0) & ( !\u1_uart|u1_tx|clk_cnt\(4) & ( !\u1_uart|u1_tx|clk_cnt\(5) ) ) ) # ( 
-- !\u1_uart|u1_tx|clk_cnt\(0) & ( !\u1_uart|u1_tx|clk_cnt\(4) & ( !\u1_uart|u1_tx|clk_cnt\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_tx|ALT_INV_clk_cnt\(2),
	datab => \u1_uart|u1_tx|ALT_INV_clk_cnt\(5),
	datac => \u1_uart|u1_tx|ALT_INV_clk_cnt\(1),
	datad => \u1_uart|u1_tx|ALT_INV_clk_cnt\(3),
	datae => \u1_uart|u1_tx|ALT_INV_clk_cnt\(0),
	dataf => \u1_uart|u1_tx|ALT_INV_clk_cnt\(4),
	combout => \u1_uart|u1_tx|LessThan1~0_combout\);

-- Location: MLABCELL_X19_Y2_N42
\u1_uart|u1_tx|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_uart|u1_tx|LessThan1~2_combout\ = ( \u1_uart|u1_tx|LessThan1~1_combout\ & ( \u1_uart|u1_tx|LessThan1~0_combout\ & ( (\u1_uart|u1_tx|clk_cnt\(11) & \u1_uart|u1_tx|clk_cnt\(12)) ) ) ) # ( !\u1_uart|u1_tx|LessThan1~1_combout\ & ( 
-- \u1_uart|u1_tx|LessThan1~0_combout\ & ( (\u1_uart|u1_tx|clk_cnt\(12) & ((\u1_uart|u1_tx|clk_cnt\(10)) # (\u1_uart|u1_tx|clk_cnt\(11)))) ) ) ) # ( \u1_uart|u1_tx|LessThan1~1_combout\ & ( !\u1_uart|u1_tx|LessThan1~0_combout\ & ( (\u1_uart|u1_tx|clk_cnt\(12) 
-- & (((\u1_uart|u1_tx|clk_cnt\(10) & \u1_uart|u1_tx|clk_cnt\(6))) # (\u1_uart|u1_tx|clk_cnt\(11)))) ) ) ) # ( !\u1_uart|u1_tx|LessThan1~1_combout\ & ( !\u1_uart|u1_tx|LessThan1~0_combout\ & ( (\u1_uart|u1_tx|clk_cnt\(12) & ((\u1_uart|u1_tx|clk_cnt\(10)) # 
-- (\u1_uart|u1_tx|clk_cnt\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001010000011100000111000001110000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_tx|ALT_INV_clk_cnt\(11),
	datab => \u1_uart|u1_tx|ALT_INV_clk_cnt\(10),
	datac => \u1_uart|u1_tx|ALT_INV_clk_cnt\(12),
	datad => \u1_uart|u1_tx|ALT_INV_clk_cnt\(6),
	datae => \u1_uart|u1_tx|ALT_INV_LessThan1~1_combout\,
	dataf => \u1_uart|u1_tx|ALT_INV_LessThan1~0_combout\,
	combout => \u1_uart|u1_tx|LessThan1~2_combout\);

-- Location: FF_X19_Y2_N59
\u1_uart|u1_tx|current_state.st_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u1_tx|current_state.st_idle~feeder_combout\,
	asdata => VCC,
	clrn => \RSTn~input_o\,
	sclr => \u1_uart|u1_tx|ALT_INV_current_state.st_idle~q\,
	sload => \u1_uart|u1_tx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u1_tx|current_state.st_idle~q\);

-- Location: FF_X19_Y2_N40
\u1_uart|u1_tx|SER_TX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u1_uart|u1_tx|current_state.st_idle~q\,
	clrn => \RSTn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u1_tx|SER_TX~q\);

-- Location: LABCELL_X15_Y5_N54
\u2_controller|Selector36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Selector36~0_combout\ = ( \u2_controller|LessThan9~0_combout\ & ( (\u2_controller|current_state.st_transmit~q\ & ((!\u2_controller|LessThan1~1_combout\) # (!\u2_controller|LessThan1~0_combout\))) ) ) # ( !\u2_controller|LessThan9~0_combout\ 
-- & ( \u2_controller|current_state.st_transmit~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110010001100100011001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_LessThan1~1_combout\,
	datab => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datac => \u2_controller|ALT_INV_LessThan1~0_combout\,
	dataf => \u2_controller|ALT_INV_LessThan9~0_combout\,
	combout => \u2_controller|Selector36~0_combout\);

-- Location: LABCELL_X17_Y5_N12
\u2_controller|address_cnt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~0_combout\ = ( \u2_controller|LessThan9~0_combout\ & ( (!\u3_mode_sync|SIG_OUT~DUPLICATE_q\ & (!\u2_controller|bin_in_char_cnt\(0) & ((!\u2_controller|LessThan1~1_combout\) # (!\u2_controller|LessThan1~0_combout\)))) ) ) # ( 
-- !\u2_controller|LessThan9~0_combout\ & ( (!\u3_mode_sync|SIG_OUT~DUPLICATE_q\ & !\u2_controller|bin_in_char_cnt\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001000000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_LessThan1~1_combout\,
	datab => \u3_mode_sync|ALT_INV_SIG_OUT~DUPLICATE_q\,
	datac => \u2_controller|ALT_INV_LessThan1~0_combout\,
	datad => \u2_controller|ALT_INV_bin_in_char_cnt\(0),
	dataf => \u2_controller|ALT_INV_LessThan9~0_combout\,
	combout => \u2_controller|address_cnt~0_combout\);

-- Location: FF_X15_Y5_N31
\u2_controller|address_cnt[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|address_cnt~20_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|address_cnt[9]~DUPLICATE_q\);

-- Location: FF_X13_Y5_N50
\u2_controller|address_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|address_cnt~18_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|address_cnt\(8));

-- Location: FF_X13_Y5_N53
\u2_controller|address_cnt[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|address_cnt~8_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|address_cnt[3]~DUPLICATE_q\);

-- Location: FF_X15_Y5_N50
\u2_controller|address_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|address_cnt~6_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|address_cnt\(2));

-- Location: FF_X15_Y5_N2
\u2_controller|address_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|address_cnt~4_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|address_cnt\(1));

-- Location: FF_X14_Y5_N50
\u2_controller|address_cnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|address_cnt~2_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|address_cnt[0]~DUPLICATE_q\);

-- Location: MLABCELL_X14_Y5_N0
\u2_controller|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add0~1_sumout\ = SUM(( \u2_controller|bin_in_char_cnt\(0) ) + ( \u2_controller|address_cnt[0]~DUPLICATE_q\ ) + ( !VCC ))
-- \u2_controller|Add0~2\ = CARRY(( \u2_controller|bin_in_char_cnt\(0) ) + ( \u2_controller|address_cnt[0]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2_controller|ALT_INV_address_cnt[0]~DUPLICATE_q\,
	datad => \u2_controller|ALT_INV_bin_in_char_cnt\(0),
	cin => GND,
	sumout => \u2_controller|Add0~1_sumout\,
	cout => \u2_controller|Add0~2\);

-- Location: MLABCELL_X14_Y5_N3
\u2_controller|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add0~5_sumout\ = SUM(( \u2_controller|address_cnt\(1) ) + ( GND ) + ( \u2_controller|Add0~2\ ))
-- \u2_controller|Add0~6\ = CARRY(( \u2_controller|address_cnt\(1) ) + ( GND ) + ( \u2_controller|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_address_cnt\(1),
	cin => \u2_controller|Add0~2\,
	sumout => \u2_controller|Add0~5_sumout\,
	cout => \u2_controller|Add0~6\);

-- Location: LABCELL_X13_Y5_N0
\u2_controller|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add2~1_sumout\ = SUM(( \u2_controller|address_cnt[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \u2_controller|Add2~2\ = CARRY(( \u2_controller|address_cnt[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_address_cnt[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \u2_controller|Add2~1_sumout\,
	cout => \u2_controller|Add2~2\);

-- Location: LABCELL_X13_Y5_N3
\u2_controller|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add2~5_sumout\ = SUM(( \u2_controller|address_cnt[1]~DUPLICATE_q\ ) + ( VCC ) + ( \u2_controller|Add2~2\ ))
-- \u2_controller|Add2~6\ = CARRY(( \u2_controller|address_cnt[1]~DUPLICATE_q\ ) + ( VCC ) + ( \u2_controller|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_address_cnt[1]~DUPLICATE_q\,
	cin => \u2_controller|Add2~2\,
	sumout => \u2_controller|Add2~5_sumout\,
	cout => \u2_controller|Add2~6\);

-- Location: LABCELL_X15_Y5_N18
\u2_controller|address_cnt~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~3_combout\ = ( \u2_controller|Add2~5_sumout\ & ( ((!\u2_controller|SRAM_ADDR~0_combout\ & ((\u2_controller|address_cnt\(1)))) # (\u2_controller|SRAM_ADDR~0_combout\ & (\u2_controller|Add0~5_sumout\))) # 
-- (\u2_controller|address_cnt~0_combout\) ) ) # ( !\u2_controller|Add2~5_sumout\ & ( (!\u2_controller|address_cnt~0_combout\ & ((!\u2_controller|SRAM_ADDR~0_combout\ & ((\u2_controller|address_cnt\(1)))) # (\u2_controller|SRAM_ADDR~0_combout\ & 
-- (\u2_controller|Add0~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_address_cnt~0_combout\,
	datab => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datac => \u2_controller|ALT_INV_Add0~5_sumout\,
	datad => \u2_controller|ALT_INV_address_cnt\(1),
	dataf => \u2_controller|ALT_INV_Add2~5_sumout\,
	combout => \u2_controller|address_cnt~3_combout\);

-- Location: LABCELL_X15_Y5_N0
\u2_controller|address_cnt~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~4_combout\ = ( \u2_controller|address_cnt~3_combout\ & ( (((\u2_controller|Selector36~0_combout\ & \u2_controller|address_cnt\(1))) # (\u2_controller|LessThan5~2_combout\)) # (\u2_controller|current_state.st_receive~q\) ) ) # ( 
-- !\u2_controller|address_cnt~3_combout\ & ( ((\u2_controller|Selector36~0_combout\ & \u2_controller|address_cnt\(1))) # (\u2_controller|LessThan5~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datab => \u2_controller|ALT_INV_Selector36~0_combout\,
	datac => \u2_controller|ALT_INV_LessThan5~2_combout\,
	datad => \u2_controller|ALT_INV_address_cnt\(1),
	dataf => \u2_controller|ALT_INV_address_cnt~3_combout\,
	combout => \u2_controller|address_cnt~4_combout\);

-- Location: FF_X15_Y5_N1
\u2_controller|address_cnt[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|address_cnt~4_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|address_cnt[1]~DUPLICATE_q\);

-- Location: LABCELL_X13_Y5_N6
\u2_controller|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add2~9_sumout\ = SUM(( \u2_controller|address_cnt[2]~DUPLICATE_q\ ) + ( VCC ) + ( \u2_controller|Add2~6\ ))
-- \u2_controller|Add2~10\ = CARRY(( \u2_controller|address_cnt[2]~DUPLICATE_q\ ) + ( VCC ) + ( \u2_controller|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_address_cnt[2]~DUPLICATE_q\,
	cin => \u2_controller|Add2~6\,
	sumout => \u2_controller|Add2~9_sumout\,
	cout => \u2_controller|Add2~10\);

-- Location: MLABCELL_X14_Y5_N6
\u2_controller|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add0~9_sumout\ = SUM(( \u2_controller|address_cnt\(2) ) + ( GND ) + ( \u2_controller|Add0~6\ ))
-- \u2_controller|Add0~10\ = CARRY(( \u2_controller|address_cnt\(2) ) + ( GND ) + ( \u2_controller|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_address_cnt\(2),
	cin => \u2_controller|Add0~6\,
	sumout => \u2_controller|Add0~9_sumout\,
	cout => \u2_controller|Add0~10\);

-- Location: LABCELL_X15_Y5_N15
\u2_controller|address_cnt~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~5_combout\ = ( \u2_controller|address_cnt\(2) & ( (!\u2_controller|address_cnt~0_combout\ & ((!\u2_controller|SRAM_ADDR~0_combout\) # ((\u2_controller|Add0~9_sumout\)))) # (\u2_controller|address_cnt~0_combout\ & 
-- (((\u2_controller|Add2~9_sumout\)))) ) ) # ( !\u2_controller|address_cnt\(2) & ( (!\u2_controller|address_cnt~0_combout\ & (\u2_controller|SRAM_ADDR~0_combout\ & ((\u2_controller|Add0~9_sumout\)))) # (\u2_controller|address_cnt~0_combout\ & 
-- (((\u2_controller|Add2~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_address_cnt~0_combout\,
	datab => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datac => \u2_controller|ALT_INV_Add2~9_sumout\,
	datad => \u2_controller|ALT_INV_Add0~9_sumout\,
	dataf => \u2_controller|ALT_INV_address_cnt\(2),
	combout => \u2_controller|address_cnt~5_combout\);

-- Location: LABCELL_X15_Y5_N48
\u2_controller|address_cnt~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~6_combout\ = ( \u2_controller|address_cnt~5_combout\ & ( (((\u2_controller|Selector36~0_combout\ & \u2_controller|address_cnt\(2))) # (\u2_controller|LessThan5~2_combout\)) # (\u2_controller|current_state.st_receive~q\) ) ) # ( 
-- !\u2_controller|address_cnt~5_combout\ & ( ((\u2_controller|Selector36~0_combout\ & \u2_controller|address_cnt\(2))) # (\u2_controller|LessThan5~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datab => \u2_controller|ALT_INV_Selector36~0_combout\,
	datac => \u2_controller|ALT_INV_LessThan5~2_combout\,
	datad => \u2_controller|ALT_INV_address_cnt\(2),
	dataf => \u2_controller|ALT_INV_address_cnt~5_combout\,
	combout => \u2_controller|address_cnt~6_combout\);

-- Location: FF_X15_Y5_N49
\u2_controller|address_cnt[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|address_cnt~6_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|address_cnt[2]~DUPLICATE_q\);

-- Location: LABCELL_X13_Y5_N9
\u2_controller|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add2~13_sumout\ = SUM(( \u2_controller|address_cnt[3]~DUPLICATE_q\ ) + ( VCC ) + ( \u2_controller|Add2~10\ ))
-- \u2_controller|Add2~14\ = CARRY(( \u2_controller|address_cnt[3]~DUPLICATE_q\ ) + ( VCC ) + ( \u2_controller|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_address_cnt[3]~DUPLICATE_q\,
	cin => \u2_controller|Add2~10\,
	sumout => \u2_controller|Add2~13_sumout\,
	cout => \u2_controller|Add2~14\);

-- Location: MLABCELL_X14_Y5_N9
\u2_controller|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add0~13_sumout\ = SUM(( \u2_controller|address_cnt\(3) ) + ( GND ) + ( \u2_controller|Add0~10\ ))
-- \u2_controller|Add0~14\ = CARRY(( \u2_controller|address_cnt\(3) ) + ( GND ) + ( \u2_controller|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_address_cnt\(3),
	cin => \u2_controller|Add0~10\,
	sumout => \u2_controller|Add0~13_sumout\,
	cout => \u2_controller|Add0~14\);

-- Location: LABCELL_X13_Y5_N45
\u2_controller|address_cnt~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~7_combout\ = ( \u2_controller|address_cnt[3]~DUPLICATE_q\ & ( (!\u2_controller|address_cnt~0_combout\ & ((!\u2_controller|SRAM_ADDR~0_combout\) # ((\u2_controller|Add0~13_sumout\)))) # (\u2_controller|address_cnt~0_combout\ & 
-- (((\u2_controller|Add2~13_sumout\)))) ) ) # ( !\u2_controller|address_cnt[3]~DUPLICATE_q\ & ( (!\u2_controller|address_cnt~0_combout\ & (\u2_controller|SRAM_ADDR~0_combout\ & ((\u2_controller|Add0~13_sumout\)))) # (\u2_controller|address_cnt~0_combout\ & 
-- (((\u2_controller|Add2~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_address_cnt~0_combout\,
	datab => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datac => \u2_controller|ALT_INV_Add2~13_sumout\,
	datad => \u2_controller|ALT_INV_Add0~13_sumout\,
	dataf => \u2_controller|ALT_INV_address_cnt[3]~DUPLICATE_q\,
	combout => \u2_controller|address_cnt~7_combout\);

-- Location: LABCELL_X13_Y5_N51
\u2_controller|address_cnt~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~8_combout\ = ( !\u2_controller|LessThan5~2_combout\ & ( (!\u2_controller|current_state.st_receive~q\ & (\u2_controller|Selector36~0_combout\ & ((\u2_controller|address_cnt\(3))))) # (\u2_controller|current_state.st_receive~q\ & 
-- (((\u2_controller|Selector36~0_combout\ & \u2_controller|address_cnt\(3))) # (\u2_controller|address_cnt~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datab => \u2_controller|ALT_INV_Selector36~0_combout\,
	datac => \u2_controller|ALT_INV_address_cnt~7_combout\,
	datad => \u2_controller|ALT_INV_address_cnt\(3),
	dataf => \u2_controller|ALT_INV_LessThan5~2_combout\,
	combout => \u2_controller|address_cnt~8_combout\);

-- Location: FF_X13_Y5_N52
\u2_controller|address_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|address_cnt~8_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|address_cnt\(3));

-- Location: MLABCELL_X14_Y5_N12
\u2_controller|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add0~17_sumout\ = SUM(( \u2_controller|address_cnt\(4) ) + ( GND ) + ( \u2_controller|Add0~14\ ))
-- \u2_controller|Add0~18\ = CARRY(( \u2_controller|address_cnt\(4) ) + ( GND ) + ( \u2_controller|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2_controller|ALT_INV_address_cnt\(4),
	cin => \u2_controller|Add0~14\,
	sumout => \u2_controller|Add0~17_sumout\,
	cout => \u2_controller|Add0~18\);

-- Location: FF_X11_Y5_N56
\u2_controller|address_cnt[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|address_cnt~10_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|address_cnt[4]~DUPLICATE_q\);

-- Location: LABCELL_X13_Y5_N12
\u2_controller|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add2~17_sumout\ = SUM(( \u2_controller|address_cnt\(4) ) + ( VCC ) + ( \u2_controller|Add2~14\ ))
-- \u2_controller|Add2~18\ = CARRY(( \u2_controller|address_cnt\(4) ) + ( VCC ) + ( \u2_controller|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2_controller|ALT_INV_address_cnt\(4),
	cin => \u2_controller|Add2~14\,
	sumout => \u2_controller|Add2~17_sumout\,
	cout => \u2_controller|Add2~18\);

-- Location: LABCELL_X11_Y5_N9
\u2_controller|address_cnt~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~9_combout\ = ( \u2_controller|Add2~17_sumout\ & ( ((!\u2_controller|SRAM_ADDR~0_combout\ & ((\u2_controller|address_cnt[4]~DUPLICATE_q\))) # (\u2_controller|SRAM_ADDR~0_combout\ & (\u2_controller|Add0~17_sumout\))) # 
-- (\u2_controller|address_cnt~0_combout\) ) ) # ( !\u2_controller|Add2~17_sumout\ & ( (!\u2_controller|address_cnt~0_combout\ & ((!\u2_controller|SRAM_ADDR~0_combout\ & ((\u2_controller|address_cnt[4]~DUPLICATE_q\))) # (\u2_controller|SRAM_ADDR~0_combout\ & 
-- (\u2_controller|Add0~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_address_cnt~0_combout\,
	datab => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datac => \u2_controller|ALT_INV_Add0~17_sumout\,
	datad => \u2_controller|ALT_INV_address_cnt[4]~DUPLICATE_q\,
	dataf => \u2_controller|ALT_INV_Add2~17_sumout\,
	combout => \u2_controller|address_cnt~9_combout\);

-- Location: LABCELL_X11_Y5_N54
\u2_controller|address_cnt~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~10_combout\ = ( \u2_controller|address_cnt~9_combout\ & ( (!\u2_controller|LessThan5~2_combout\ & (((\u2_controller|Selector36~0_combout\ & \u2_controller|address_cnt\(4))) # (\u2_controller|current_state.st_receive~q\))) ) ) # 
-- ( !\u2_controller|address_cnt~9_combout\ & ( (\u2_controller|Selector36~0_combout\ & (!\u2_controller|LessThan5~2_combout\ & \u2_controller|address_cnt\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000110000011100000011000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_Selector36~0_combout\,
	datab => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datac => \u2_controller|ALT_INV_LessThan5~2_combout\,
	datad => \u2_controller|ALT_INV_address_cnt\(4),
	dataf => \u2_controller|ALT_INV_address_cnt~9_combout\,
	combout => \u2_controller|address_cnt~10_combout\);

-- Location: FF_X11_Y5_N55
\u2_controller|address_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|address_cnt~10_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|address_cnt\(4));

-- Location: MLABCELL_X14_Y5_N15
\u2_controller|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add0~21_sumout\ = SUM(( \u2_controller|address_cnt\(5) ) + ( GND ) + ( \u2_controller|Add0~18\ ))
-- \u2_controller|Add0~22\ = CARRY(( \u2_controller|address_cnt\(5) ) + ( GND ) + ( \u2_controller|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_address_cnt\(5),
	cin => \u2_controller|Add0~18\,
	sumout => \u2_controller|Add0~21_sumout\,
	cout => \u2_controller|Add0~22\);

-- Location: FF_X11_Y5_N59
\u2_controller|address_cnt[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|address_cnt~12_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|address_cnt[5]~DUPLICATE_q\);

-- Location: LABCELL_X13_Y5_N15
\u2_controller|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add2~21_sumout\ = SUM(( \u2_controller|address_cnt[5]~DUPLICATE_q\ ) + ( VCC ) + ( \u2_controller|Add2~18\ ))
-- \u2_controller|Add2~22\ = CARRY(( \u2_controller|address_cnt[5]~DUPLICATE_q\ ) + ( VCC ) + ( \u2_controller|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_address_cnt[5]~DUPLICATE_q\,
	cin => \u2_controller|Add2~18\,
	sumout => \u2_controller|Add2~21_sumout\,
	cout => \u2_controller|Add2~22\);

-- Location: LABCELL_X11_Y5_N6
\u2_controller|address_cnt~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~11_combout\ = ( \u2_controller|address_cnt\(5) & ( (!\u2_controller|address_cnt~0_combout\ & ((!\u2_controller|SRAM_ADDR~0_combout\) # ((\u2_controller|Add0~21_sumout\)))) # (\u2_controller|address_cnt~0_combout\ & 
-- (((\u2_controller|Add2~21_sumout\)))) ) ) # ( !\u2_controller|address_cnt\(5) & ( (!\u2_controller|address_cnt~0_combout\ & (\u2_controller|SRAM_ADDR~0_combout\ & (\u2_controller|Add0~21_sumout\))) # (\u2_controller|address_cnt~0_combout\ & 
-- (((\u2_controller|Add2~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_address_cnt~0_combout\,
	datab => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datac => \u2_controller|ALT_INV_Add0~21_sumout\,
	datad => \u2_controller|ALT_INV_Add2~21_sumout\,
	dataf => \u2_controller|ALT_INV_address_cnt\(5),
	combout => \u2_controller|address_cnt~11_combout\);

-- Location: LABCELL_X11_Y5_N57
\u2_controller|address_cnt~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~12_combout\ = ( \u2_controller|address_cnt~11_combout\ & ( (!\u2_controller|LessThan5~2_combout\ & (((\u2_controller|Selector36~0_combout\ & \u2_controller|address_cnt\(5))) # (\u2_controller|current_state.st_receive~q\))) ) ) # 
-- ( !\u2_controller|address_cnt~11_combout\ & ( (\u2_controller|Selector36~0_combout\ & (!\u2_controller|LessThan5~2_combout\ & \u2_controller|address_cnt\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000110000011100000011000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_Selector36~0_combout\,
	datab => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datac => \u2_controller|ALT_INV_LessThan5~2_combout\,
	datad => \u2_controller|ALT_INV_address_cnt\(5),
	dataf => \u2_controller|ALT_INV_address_cnt~11_combout\,
	combout => \u2_controller|address_cnt~12_combout\);

-- Location: FF_X11_Y5_N58
\u2_controller|address_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|address_cnt~12_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|address_cnt\(5));

-- Location: MLABCELL_X14_Y5_N18
\u2_controller|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add0~25_sumout\ = SUM(( \u2_controller|address_cnt\(6) ) + ( GND ) + ( \u2_controller|Add0~22\ ))
-- \u2_controller|Add0~26\ = CARRY(( \u2_controller|address_cnt\(6) ) + ( GND ) + ( \u2_controller|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_address_cnt\(6),
	cin => \u2_controller|Add0~22\,
	sumout => \u2_controller|Add0~25_sumout\,
	cout => \u2_controller|Add0~26\);

-- Location: LABCELL_X13_Y5_N18
\u2_controller|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add2~25_sumout\ = SUM(( \u2_controller|address_cnt\(6) ) + ( VCC ) + ( \u2_controller|Add2~22\ ))
-- \u2_controller|Add2~26\ = CARRY(( \u2_controller|address_cnt\(6) ) + ( VCC ) + ( \u2_controller|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_address_cnt\(6),
	cin => \u2_controller|Add2~22\,
	sumout => \u2_controller|Add2~25_sumout\,
	cout => \u2_controller|Add2~26\);

-- Location: LABCELL_X11_Y5_N3
\u2_controller|address_cnt~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~13_combout\ = ( \u2_controller|Add2~25_sumout\ & ( \u2_controller|address_cnt\(6) & ( ((!\u2_controller|SRAM_ADDR~0_combout\) # (\u2_controller|Add0~25_sumout\)) # (\u2_controller|address_cnt~0_combout\) ) ) ) # ( 
-- !\u2_controller|Add2~25_sumout\ & ( \u2_controller|address_cnt\(6) & ( (!\u2_controller|address_cnt~0_combout\ & ((!\u2_controller|SRAM_ADDR~0_combout\) # (\u2_controller|Add0~25_sumout\))) ) ) ) # ( \u2_controller|Add2~25_sumout\ & ( 
-- !\u2_controller|address_cnt\(6) & ( ((\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|Add0~25_sumout\)) # (\u2_controller|address_cnt~0_combout\) ) ) ) # ( !\u2_controller|Add2~25_sumout\ & ( !\u2_controller|address_cnt\(6) & ( 
-- (!\u2_controller|address_cnt~0_combout\ & (\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|Add0~25_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010010101010101111110100000101010101111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_address_cnt~0_combout\,
	datac => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datad => \u2_controller|ALT_INV_Add0~25_sumout\,
	datae => \u2_controller|ALT_INV_Add2~25_sumout\,
	dataf => \u2_controller|ALT_INV_address_cnt\(6),
	combout => \u2_controller|address_cnt~13_combout\);

-- Location: LABCELL_X11_Y5_N18
\u2_controller|address_cnt~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~14_combout\ = ( \u2_controller|current_state.st_receive~q\ & ( (!\u2_controller|LessThan5~2_combout\ & (((\u2_controller|address_cnt\(6) & \u2_controller|Selector36~0_combout\)) # (\u2_controller|address_cnt~13_combout\))) ) ) # 
-- ( !\u2_controller|current_state.st_receive~q\ & ( (\u2_controller|address_cnt\(6) & (!\u2_controller|LessThan5~2_combout\ & \u2_controller|Selector36~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100110011000000010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_address_cnt\(6),
	datab => \u2_controller|ALT_INV_LessThan5~2_combout\,
	datac => \u2_controller|ALT_INV_Selector36~0_combout\,
	datad => \u2_controller|ALT_INV_address_cnt~13_combout\,
	dataf => \u2_controller|ALT_INV_current_state.st_receive~q\,
	combout => \u2_controller|address_cnt~14_combout\);

-- Location: FF_X11_Y5_N20
\u2_controller|address_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|address_cnt~14_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|address_cnt\(6));

-- Location: MLABCELL_X14_Y5_N21
\u2_controller|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add0~29_sumout\ = SUM(( \u2_controller|address_cnt\(7) ) + ( GND ) + ( \u2_controller|Add0~26\ ))
-- \u2_controller|Add0~30\ = CARRY(( \u2_controller|address_cnt\(7) ) + ( GND ) + ( \u2_controller|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_address_cnt\(7),
	cin => \u2_controller|Add0~26\,
	sumout => \u2_controller|Add0~29_sumout\,
	cout => \u2_controller|Add0~30\);

-- Location: LABCELL_X13_Y5_N21
\u2_controller|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add2~29_sumout\ = SUM(( \u2_controller|address_cnt\(7) ) + ( VCC ) + ( \u2_controller|Add2~26\ ))
-- \u2_controller|Add2~30\ = CARRY(( \u2_controller|address_cnt\(7) ) + ( VCC ) + ( \u2_controller|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_address_cnt\(7),
	cin => \u2_controller|Add2~26\,
	sumout => \u2_controller|Add2~29_sumout\,
	cout => \u2_controller|Add2~30\);

-- Location: MLABCELL_X14_Y5_N54
\u2_controller|address_cnt~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~15_combout\ = ( \u2_controller|Add2~29_sumout\ & ( ((!\u2_controller|SRAM_ADDR~0_combout\ & ((\u2_controller|address_cnt\(7)))) # (\u2_controller|SRAM_ADDR~0_combout\ & (\u2_controller|Add0~29_sumout\))) # 
-- (\u2_controller|address_cnt~0_combout\) ) ) # ( !\u2_controller|Add2~29_sumout\ & ( (!\u2_controller|address_cnt~0_combout\ & ((!\u2_controller|SRAM_ADDR~0_combout\ & ((\u2_controller|address_cnt\(7)))) # (\u2_controller|SRAM_ADDR~0_combout\ & 
-- (\u2_controller|Add0~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datab => \u2_controller|ALT_INV_address_cnt~0_combout\,
	datac => \u2_controller|ALT_INV_Add0~29_sumout\,
	datad => \u2_controller|ALT_INV_address_cnt\(7),
	dataf => \u2_controller|ALT_INV_Add2~29_sumout\,
	combout => \u2_controller|address_cnt~15_combout\);

-- Location: LABCELL_X15_Y5_N45
\u2_controller|address_cnt~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~16_combout\ = ( \u2_controller|address_cnt~15_combout\ & ( (((\u2_controller|Selector36~0_combout\ & \u2_controller|address_cnt\(7))) # (\u2_controller|current_state.st_receive~q\)) # (\u2_controller|LessThan5~2_combout\) ) ) # 
-- ( !\u2_controller|address_cnt~15_combout\ & ( ((\u2_controller|Selector36~0_combout\ & \u2_controller|address_cnt\(7))) # (\u2_controller|LessThan5~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111101110111011111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_LessThan5~2_combout\,
	datab => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datac => \u2_controller|ALT_INV_Selector36~0_combout\,
	datad => \u2_controller|ALT_INV_address_cnt\(7),
	dataf => \u2_controller|ALT_INV_address_cnt~15_combout\,
	combout => \u2_controller|address_cnt~16_combout\);

-- Location: FF_X15_Y5_N46
\u2_controller|address_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|address_cnt~16_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|address_cnt\(7));

-- Location: LABCELL_X13_Y5_N24
\u2_controller|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add2~33_sumout\ = SUM(( \u2_controller|address_cnt\(8) ) + ( VCC ) + ( \u2_controller|Add2~30\ ))
-- \u2_controller|Add2~34\ = CARRY(( \u2_controller|address_cnt\(8) ) + ( VCC ) + ( \u2_controller|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2_controller|ALT_INV_address_cnt\(8),
	cin => \u2_controller|Add2~30\,
	sumout => \u2_controller|Add2~33_sumout\,
	cout => \u2_controller|Add2~34\);

-- Location: MLABCELL_X14_Y5_N24
\u2_controller|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add0~33_sumout\ = SUM(( \u2_controller|address_cnt[8]~DUPLICATE_q\ ) + ( GND ) + ( \u2_controller|Add0~30\ ))
-- \u2_controller|Add0~34\ = CARRY(( \u2_controller|address_cnt[8]~DUPLICATE_q\ ) + ( GND ) + ( \u2_controller|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_address_cnt[8]~DUPLICATE_q\,
	cin => \u2_controller|Add0~30\,
	sumout => \u2_controller|Add0~33_sumout\,
	cout => \u2_controller|Add0~34\);

-- Location: LABCELL_X13_Y5_N42
\u2_controller|address_cnt~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~17_combout\ = ( \u2_controller|Add0~33_sumout\ & ( (!\u2_controller|address_cnt~0_combout\ & (((\u2_controller|address_cnt\(8))) # (\u2_controller|SRAM_ADDR~0_combout\))) # (\u2_controller|address_cnt~0_combout\ & 
-- (((\u2_controller|Add2~33_sumout\)))) ) ) # ( !\u2_controller|Add0~33_sumout\ & ( (!\u2_controller|address_cnt~0_combout\ & (!\u2_controller|SRAM_ADDR~0_combout\ & (\u2_controller|address_cnt\(8)))) # (\u2_controller|address_cnt~0_combout\ & 
-- (((\u2_controller|Add2~33_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_address_cnt~0_combout\,
	datab => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datac => \u2_controller|ALT_INV_address_cnt\(8),
	datad => \u2_controller|ALT_INV_Add2~33_sumout\,
	dataf => \u2_controller|ALT_INV_Add0~33_sumout\,
	combout => \u2_controller|address_cnt~17_combout\);

-- Location: LABCELL_X13_Y5_N48
\u2_controller|address_cnt~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~18_combout\ = ( \u2_controller|address_cnt~17_combout\ & ( (((\u2_controller|Selector36~0_combout\ & \u2_controller|address_cnt\(8))) # (\u2_controller|LessThan5~2_combout\)) # (\u2_controller|current_state.st_receive~q\) ) ) # 
-- ( !\u2_controller|address_cnt~17_combout\ & ( ((\u2_controller|Selector36~0_combout\ & \u2_controller|address_cnt\(8))) # (\u2_controller|LessThan5~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datab => \u2_controller|ALT_INV_Selector36~0_combout\,
	datac => \u2_controller|ALT_INV_LessThan5~2_combout\,
	datad => \u2_controller|ALT_INV_address_cnt\(8),
	dataf => \u2_controller|ALT_INV_address_cnt~17_combout\,
	combout => \u2_controller|address_cnt~18_combout\);

-- Location: FF_X13_Y5_N49
\u2_controller|address_cnt[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|address_cnt~18_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|address_cnt[8]~DUPLICATE_q\);

-- Location: MLABCELL_X14_Y5_N27
\u2_controller|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add0~37_sumout\ = SUM(( \u2_controller|address_cnt\(9) ) + ( GND ) + ( \u2_controller|Add0~34\ ))
-- \u2_controller|Add0~38\ = CARRY(( \u2_controller|address_cnt\(9) ) + ( GND ) + ( \u2_controller|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_address_cnt\(9),
	cin => \u2_controller|Add0~34\,
	sumout => \u2_controller|Add0~37_sumout\,
	cout => \u2_controller|Add0~38\);

-- Location: LABCELL_X13_Y5_N27
\u2_controller|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add2~37_sumout\ = SUM(( \u2_controller|address_cnt[9]~DUPLICATE_q\ ) + ( VCC ) + ( \u2_controller|Add2~34\ ))
-- \u2_controller|Add2~38\ = CARRY(( \u2_controller|address_cnt[9]~DUPLICATE_q\ ) + ( VCC ) + ( \u2_controller|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_address_cnt[9]~DUPLICATE_q\,
	cin => \u2_controller|Add2~34\,
	sumout => \u2_controller|Add2~37_sumout\,
	cout => \u2_controller|Add2~38\);

-- Location: LABCELL_X15_Y5_N12
\u2_controller|address_cnt~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~19_combout\ = ( \u2_controller|Add2~37_sumout\ & ( ((!\u2_controller|SRAM_ADDR~0_combout\ & (\u2_controller|address_cnt[9]~DUPLICATE_q\)) # (\u2_controller|SRAM_ADDR~0_combout\ & ((\u2_controller|Add0~37_sumout\)))) # 
-- (\u2_controller|address_cnt~0_combout\) ) ) # ( !\u2_controller|Add2~37_sumout\ & ( (!\u2_controller|address_cnt~0_combout\ & ((!\u2_controller|SRAM_ADDR~0_combout\ & (\u2_controller|address_cnt[9]~DUPLICATE_q\)) # (\u2_controller|SRAM_ADDR~0_combout\ & 
-- ((\u2_controller|Add0~37_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_address_cnt~0_combout\,
	datab => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datac => \u2_controller|ALT_INV_address_cnt[9]~DUPLICATE_q\,
	datad => \u2_controller|ALT_INV_Add0~37_sumout\,
	dataf => \u2_controller|ALT_INV_Add2~37_sumout\,
	combout => \u2_controller|address_cnt~19_combout\);

-- Location: LABCELL_X15_Y5_N30
\u2_controller|address_cnt~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~20_combout\ = ( \u2_controller|address_cnt~19_combout\ & ( (((\u2_controller|Selector36~0_combout\ & \u2_controller|address_cnt\(9))) # (\u2_controller|current_state.st_receive~q\)) # (\u2_controller|LessThan5~2_combout\) ) ) # 
-- ( !\u2_controller|address_cnt~19_combout\ & ( ((\u2_controller|Selector36~0_combout\ & \u2_controller|address_cnt\(9))) # (\u2_controller|LessThan5~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111101110111011111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_LessThan5~2_combout\,
	datab => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datac => \u2_controller|ALT_INV_Selector36~0_combout\,
	datad => \u2_controller|ALT_INV_address_cnt\(9),
	dataf => \u2_controller|ALT_INV_address_cnt~19_combout\,
	combout => \u2_controller|address_cnt~20_combout\);

-- Location: FF_X15_Y5_N32
\u2_controller|address_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|address_cnt~20_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|address_cnt\(9));

-- Location: MLABCELL_X14_Y5_N30
\u2_controller|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add0~41_sumout\ = SUM(( \u2_controller|address_cnt\(10) ) + ( GND ) + ( \u2_controller|Add0~38\ ))
-- \u2_controller|Add0~42\ = CARRY(( \u2_controller|address_cnt\(10) ) + ( GND ) + ( \u2_controller|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2_controller|ALT_INV_address_cnt\(10),
	cin => \u2_controller|Add0~38\,
	sumout => \u2_controller|Add0~41_sumout\,
	cout => \u2_controller|Add0~42\);

-- Location: LABCELL_X13_Y5_N30
\u2_controller|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add2~41_sumout\ = SUM(( \u2_controller|address_cnt\(10) ) + ( VCC ) + ( \u2_controller|Add2~38\ ))
-- \u2_controller|Add2~42\ = CARRY(( \u2_controller|address_cnt\(10) ) + ( VCC ) + ( \u2_controller|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_address_cnt\(10),
	cin => \u2_controller|Add2~38\,
	sumout => \u2_controller|Add2~41_sumout\,
	cout => \u2_controller|Add2~42\);

-- Location: LABCELL_X15_Y5_N24
\u2_controller|address_cnt~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~21_combout\ = ( \u2_controller|Add2~41_sumout\ & ( ((!\u2_controller|SRAM_ADDR~0_combout\ & ((\u2_controller|address_cnt\(10)))) # (\u2_controller|SRAM_ADDR~0_combout\ & (\u2_controller|Add0~41_sumout\))) # 
-- (\u2_controller|address_cnt~0_combout\) ) ) # ( !\u2_controller|Add2~41_sumout\ & ( (!\u2_controller|address_cnt~0_combout\ & ((!\u2_controller|SRAM_ADDR~0_combout\ & ((\u2_controller|address_cnt\(10)))) # (\u2_controller|SRAM_ADDR~0_combout\ & 
-- (\u2_controller|Add0~41_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010000000000011101111111110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_Add0~41_sumout\,
	datab => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datac => \u2_controller|ALT_INV_address_cnt\(10),
	datad => \u2_controller|ALT_INV_address_cnt~0_combout\,
	dataf => \u2_controller|ALT_INV_Add2~41_sumout\,
	combout => \u2_controller|address_cnt~21_combout\);

-- Location: LABCELL_X15_Y5_N33
\u2_controller|address_cnt~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~22_combout\ = ( \u2_controller|address_cnt~21_combout\ & ( (!\u2_controller|LessThan5~2_combout\ & (((\u2_controller|Selector36~0_combout\ & \u2_controller|address_cnt\(10))) # (\u2_controller|current_state.st_receive~q\))) ) ) 
-- # ( !\u2_controller|address_cnt~21_combout\ & ( (!\u2_controller|LessThan5~2_combout\ & (\u2_controller|Selector36~0_combout\ & \u2_controller|address_cnt\(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000100010001010100010001000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_LessThan5~2_combout\,
	datab => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datac => \u2_controller|ALT_INV_Selector36~0_combout\,
	datad => \u2_controller|ALT_INV_address_cnt\(10),
	dataf => \u2_controller|ALT_INV_address_cnt~21_combout\,
	combout => \u2_controller|address_cnt~22_combout\);

-- Location: FF_X15_Y5_N35
\u2_controller|address_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|address_cnt~22_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|address_cnt\(10));

-- Location: MLABCELL_X14_Y5_N33
\u2_controller|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add0~45_sumout\ = SUM(( \u2_controller|address_cnt\(11) ) + ( GND ) + ( \u2_controller|Add0~42\ ))
-- \u2_controller|Add0~46\ = CARRY(( \u2_controller|address_cnt\(11) ) + ( GND ) + ( \u2_controller|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_address_cnt\(11),
	cin => \u2_controller|Add0~42\,
	sumout => \u2_controller|Add0~45_sumout\,
	cout => \u2_controller|Add0~46\);

-- Location: FF_X15_Y5_N43
\u2_controller|address_cnt[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|address_cnt~24_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|address_cnt[11]~DUPLICATE_q\);

-- Location: LABCELL_X13_Y5_N33
\u2_controller|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add2~45_sumout\ = SUM(( \u2_controller|address_cnt[11]~DUPLICATE_q\ ) + ( VCC ) + ( \u2_controller|Add2~42\ ))
-- \u2_controller|Add2~46\ = CARRY(( \u2_controller|address_cnt[11]~DUPLICATE_q\ ) + ( VCC ) + ( \u2_controller|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|ALT_INV_address_cnt[11]~DUPLICATE_q\,
	cin => \u2_controller|Add2~42\,
	sumout => \u2_controller|Add2~45_sumout\,
	cout => \u2_controller|Add2~46\);

-- Location: LABCELL_X15_Y5_N21
\u2_controller|address_cnt~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~23_combout\ = ( \u2_controller|Add2~45_sumout\ & ( ((!\u2_controller|SRAM_ADDR~0_combout\ & ((\u2_controller|address_cnt[11]~DUPLICATE_q\))) # (\u2_controller|SRAM_ADDR~0_combout\ & (\u2_controller|Add0~45_sumout\))) # 
-- (\u2_controller|address_cnt~0_combout\) ) ) # ( !\u2_controller|Add2~45_sumout\ & ( (!\u2_controller|address_cnt~0_combout\ & ((!\u2_controller|SRAM_ADDR~0_combout\ & ((\u2_controller|address_cnt[11]~DUPLICATE_q\))) # (\u2_controller|SRAM_ADDR~0_combout\ 
-- & (\u2_controller|Add0~45_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_address_cnt~0_combout\,
	datab => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datac => \u2_controller|ALT_INV_Add0~45_sumout\,
	datad => \u2_controller|ALT_INV_address_cnt[11]~DUPLICATE_q\,
	dataf => \u2_controller|ALT_INV_Add2~45_sumout\,
	combout => \u2_controller|address_cnt~23_combout\);

-- Location: LABCELL_X15_Y5_N42
\u2_controller|address_cnt~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~24_combout\ = ( \u2_controller|address_cnt~23_combout\ & ( (!\u2_controller|LessThan5~2_combout\ & (((\u2_controller|Selector36~0_combout\ & \u2_controller|address_cnt\(11))) # (\u2_controller|current_state.st_receive~q\))) ) ) 
-- # ( !\u2_controller|address_cnt~23_combout\ & ( (!\u2_controller|LessThan5~2_combout\ & (\u2_controller|Selector36~0_combout\ & \u2_controller|address_cnt\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000100010001010100010001000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_LessThan5~2_combout\,
	datab => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datac => \u2_controller|ALT_INV_Selector36~0_combout\,
	datad => \u2_controller|ALT_INV_address_cnt\(11),
	dataf => \u2_controller|ALT_INV_address_cnt~23_combout\,
	combout => \u2_controller|address_cnt~24_combout\);

-- Location: FF_X15_Y5_N44
\u2_controller|address_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|address_cnt~24_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|address_cnt\(11));

-- Location: MLABCELL_X14_Y5_N36
\u2_controller|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add0~49_sumout\ = SUM(( \u2_controller|address_cnt\(12) ) + ( GND ) + ( \u2_controller|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2_controller|ALT_INV_address_cnt\(12),
	cin => \u2_controller|Add0~46\,
	sumout => \u2_controller|Add0~49_sumout\);

-- Location: LABCELL_X13_Y5_N36
\u2_controller|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Add2~49_sumout\ = SUM(( \u2_controller|address_cnt\(12) ) + ( VCC ) + ( \u2_controller|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2_controller|ALT_INV_address_cnt\(12),
	cin => \u2_controller|Add2~46\,
	sumout => \u2_controller|Add2~49_sumout\);

-- Location: MLABCELL_X14_Y5_N42
\u2_controller|address_cnt~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~25_combout\ = ( \u2_controller|Add2~49_sumout\ & ( ((!\u2_controller|SRAM_ADDR~0_combout\ & (\u2_controller|address_cnt\(12))) # (\u2_controller|SRAM_ADDR~0_combout\ & ((\u2_controller|Add0~49_sumout\)))) # 
-- (\u2_controller|address_cnt~0_combout\) ) ) # ( !\u2_controller|Add2~49_sumout\ & ( (!\u2_controller|address_cnt~0_combout\ & ((!\u2_controller|SRAM_ADDR~0_combout\ & (\u2_controller|address_cnt\(12))) # (\u2_controller|SRAM_ADDR~0_combout\ & 
-- ((\u2_controller|Add0~49_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datab => \u2_controller|ALT_INV_address_cnt~0_combout\,
	datac => \u2_controller|ALT_INV_address_cnt\(12),
	datad => \u2_controller|ALT_INV_Add0~49_sumout\,
	dataf => \u2_controller|ALT_INV_Add2~49_sumout\,
	combout => \u2_controller|address_cnt~25_combout\);

-- Location: MLABCELL_X14_Y5_N51
\u2_controller|address_cnt~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~26_combout\ = ( \u2_controller|address_cnt~25_combout\ & ( (((\u2_controller|Selector36~0_combout\ & \u2_controller|address_cnt\(12))) # (\u2_controller|current_state.st_receive~q\)) # (\u2_controller|LessThan5~2_combout\) ) ) # 
-- ( !\u2_controller|address_cnt~25_combout\ & ( ((\u2_controller|Selector36~0_combout\ & \u2_controller|address_cnt\(12))) # (\u2_controller|LessThan5~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010101010111011101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_LessThan5~2_combout\,
	datab => \u2_controller|ALT_INV_Selector36~0_combout\,
	datac => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datad => \u2_controller|ALT_INV_address_cnt\(12),
	dataf => \u2_controller|ALT_INV_address_cnt~25_combout\,
	combout => \u2_controller|address_cnt~26_combout\);

-- Location: FF_X14_Y5_N53
\u2_controller|address_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|address_cnt~26_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|address_cnt\(12));

-- Location: LABCELL_X11_Y5_N21
\u2_controller|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|LessThan5~0_combout\ = ( !\u2_controller|address_cnt[3]~DUPLICATE_q\ & ( (!\u2_controller|address_cnt\(6) & (!\u2_controller|address_cnt[5]~DUPLICATE_q\ & !\u2_controller|address_cnt[4]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_address_cnt\(6),
	datac => \u2_controller|ALT_INV_address_cnt[5]~DUPLICATE_q\,
	datad => \u2_controller|ALT_INV_address_cnt[4]~DUPLICATE_q\,
	dataf => \u2_controller|ALT_INV_address_cnt[3]~DUPLICATE_q\,
	combout => \u2_controller|LessThan5~0_combout\);

-- Location: MLABCELL_X14_Y5_N45
\u2_controller|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|LessThan5~1_combout\ = ( \u2_controller|address_cnt\(9) & ( (\u2_controller|address_cnt[8]~DUPLICATE_q\ & \u2_controller|address_cnt\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2_controller|ALT_INV_address_cnt[8]~DUPLICATE_q\,
	datad => \u2_controller|ALT_INV_address_cnt\(7),
	dataf => \u2_controller|ALT_INV_address_cnt\(9),
	combout => \u2_controller|LessThan5~1_combout\);

-- Location: MLABCELL_X14_Y4_N54
\u2_controller|LessThan5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|LessThan5~2_combout\ = ( \u2_controller|LessThan5~1_combout\ & ( (\u2_controller|address_cnt\(12) & (((!\u2_controller|LessThan5~0_combout\) # (\u2_controller|address_cnt\(10))) # (\u2_controller|address_cnt[11]~DUPLICATE_q\))) ) ) # ( 
-- !\u2_controller|LessThan5~1_combout\ & ( (\u2_controller|address_cnt\(12) & ((\u2_controller|address_cnt\(10)) # (\u2_controller|address_cnt[11]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010101010101000101010101010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_address_cnt\(12),
	datab => \u2_controller|ALT_INV_address_cnt[11]~DUPLICATE_q\,
	datac => \u2_controller|ALT_INV_address_cnt\(10),
	datad => \u2_controller|ALT_INV_LessThan5~0_combout\,
	dataf => \u2_controller|ALT_INV_LessThan5~1_combout\,
	combout => \u2_controller|LessThan5~2_combout\);

-- Location: MLABCELL_X14_Y5_N57
\u2_controller|address_cnt~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~1_combout\ = ( \u2_controller|address_cnt[0]~DUPLICATE_q\ & ( (!\u2_controller|address_cnt~0_combout\ & ((!\u2_controller|SRAM_ADDR~0_combout\) # ((\u2_controller|Add0~1_sumout\)))) # (\u2_controller|address_cnt~0_combout\ & 
-- (((\u2_controller|Add2~1_sumout\)))) ) ) # ( !\u2_controller|address_cnt[0]~DUPLICATE_q\ & ( (!\u2_controller|address_cnt~0_combout\ & (\u2_controller|SRAM_ADDR~0_combout\ & ((\u2_controller|Add0~1_sumout\)))) # (\u2_controller|address_cnt~0_combout\ & 
-- (((\u2_controller|Add2~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datab => \u2_controller|ALT_INV_address_cnt~0_combout\,
	datac => \u2_controller|ALT_INV_Add2~1_sumout\,
	datad => \u2_controller|ALT_INV_Add0~1_sumout\,
	dataf => \u2_controller|ALT_INV_address_cnt[0]~DUPLICATE_q\,
	combout => \u2_controller|address_cnt~1_combout\);

-- Location: MLABCELL_X14_Y5_N48
\u2_controller|address_cnt~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|address_cnt~2_combout\ = ( \u2_controller|address_cnt~1_combout\ & ( (((\u2_controller|Selector36~0_combout\ & \u2_controller|address_cnt\(0))) # (\u2_controller|current_state.st_receive~q\)) # (\u2_controller|LessThan5~2_combout\) ) ) # ( 
-- !\u2_controller|address_cnt~1_combout\ & ( ((\u2_controller|Selector36~0_combout\ & \u2_controller|address_cnt\(0))) # (\u2_controller|LessThan5~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010101010111011101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_LessThan5~2_combout\,
	datab => \u2_controller|ALT_INV_Selector36~0_combout\,
	datac => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datad => \u2_controller|ALT_INV_address_cnt\(0),
	dataf => \u2_controller|ALT_INV_address_cnt~1_combout\,
	combout => \u2_controller|address_cnt~2_combout\);

-- Location: FF_X14_Y5_N49
\u2_controller|address_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|address_cnt~2_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|address_cnt\(0));

-- Location: LABCELL_X15_Y5_N36
\u2_controller|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Selector17~0_combout\ = ( \u2_controller|SRAM_ADDR\(0) & ( \u2_controller|address_cnt\(0) & ( (\u2_controller|current_state.st_transmit~q\) # (\u2_controller|current_state.st_receive~q\) ) ) ) # ( !\u2_controller|SRAM_ADDR\(0) & ( 
-- \u2_controller|address_cnt\(0) & ( (!\u2_controller|current_state.st_receive~q\ & (\u2_controller|current_state.st_transmit~q\ & ((!\u2_controller|LessThan1~2_combout\)))) # (\u2_controller|current_state.st_receive~q\ & 
-- (((\u2_controller|current_state.st_transmit~q\ & !\u2_controller|LessThan1~2_combout\)) # (\u2_controller|SRAM_ADDR~0_combout\))) ) ) ) # ( \u2_controller|SRAM_ADDR\(0) & ( !\u2_controller|address_cnt\(0) & ( (!\u2_controller|current_state.st_receive~q\ & 
-- (\u2_controller|current_state.st_transmit~q\ & ((\u2_controller|LessThan1~2_combout\)))) # (\u2_controller|current_state.st_receive~q\ & ((!\u2_controller|SRAM_ADDR~0_combout\) # ((\u2_controller|current_state.st_transmit~q\ & 
-- \u2_controller|LessThan1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000111001100110111000001010111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datab => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datac => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datad => \u2_controller|ALT_INV_LessThan1~2_combout\,
	datae => \u2_controller|ALT_INV_SRAM_ADDR\(0),
	dataf => \u2_controller|ALT_INV_address_cnt\(0),
	combout => \u2_controller|Selector17~0_combout\);

-- Location: FF_X15_Y5_N37
\u2_controller|SRAM_ADDR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|Selector17~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_ADDR\(0));

-- Location: LABCELL_X11_Y5_N42
\u2_controller|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Selector16~0_combout\ = ( \u2_controller|SRAM_ADDR\(1) & ( \u2_controller|address_cnt\(1) & ( (\u2_controller|current_state.st_receive~q\) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( !\u2_controller|SRAM_ADDR\(1) & ( 
-- \u2_controller|address_cnt\(1) & ( (!\u2_controller|current_state.st_transmit~q\ & (\u2_controller|SRAM_ADDR~0_combout\ & ((\u2_controller|current_state.st_receive~q\)))) # (\u2_controller|current_state.st_transmit~q\ & 
-- ((!\u2_controller|LessThan1~2_combout\) # ((\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|current_state.st_receive~q\)))) ) ) ) # ( \u2_controller|SRAM_ADDR\(1) & ( !\u2_controller|address_cnt\(1) & ( (!\u2_controller|current_state.st_transmit~q\ & 
-- (!\u2_controller|SRAM_ADDR~0_combout\ & ((\u2_controller|current_state.st_receive~q\)))) # (\u2_controller|current_state.st_transmit~q\ & (((!\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|current_state.st_receive~q\)) # 
-- (\u2_controller|LessThan1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011100110101010000011100110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datab => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datac => \u2_controller|ALT_INV_LessThan1~2_combout\,
	datad => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datae => \u2_controller|ALT_INV_SRAM_ADDR\(1),
	dataf => \u2_controller|ALT_INV_address_cnt\(1),
	combout => \u2_controller|Selector16~0_combout\);

-- Location: FF_X11_Y5_N43
\u2_controller|SRAM_ADDR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|Selector16~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_ADDR\(1));

-- Location: LABCELL_X11_Y5_N45
\u2_controller|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Selector15~0_combout\ = ( \u2_controller|SRAM_ADDR\(2) & ( \u2_controller|address_cnt\(2) & ( (\u2_controller|current_state.st_receive~q\) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( !\u2_controller|SRAM_ADDR\(2) & ( 
-- \u2_controller|address_cnt\(2) & ( (!\u2_controller|current_state.st_transmit~q\ & (\u2_controller|SRAM_ADDR~0_combout\ & (\u2_controller|current_state.st_receive~q\))) # (\u2_controller|current_state.st_transmit~q\ & 
-- ((!\u2_controller|LessThan1~2_combout\) # ((\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|current_state.st_receive~q\)))) ) ) ) # ( \u2_controller|SRAM_ADDR\(2) & ( !\u2_controller|address_cnt\(2) & ( (!\u2_controller|current_state.st_transmit~q\ & 
-- (!\u2_controller|SRAM_ADDR~0_combout\ & (\u2_controller|current_state.st_receive~q\))) # (\u2_controller|current_state.st_transmit~q\ & (((!\u2_controller|SRAM_ADDR~0_combout\ & \u2_controller|current_state.st_receive~q\)) # 
-- (\u2_controller|LessThan1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000101110101010111000000110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datab => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datac => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datad => \u2_controller|ALT_INV_LessThan1~2_combout\,
	datae => \u2_controller|ALT_INV_SRAM_ADDR\(2),
	dataf => \u2_controller|ALT_INV_address_cnt\(2),
	combout => \u2_controller|Selector15~0_combout\);

-- Location: FF_X11_Y5_N46
\u2_controller|SRAM_ADDR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|Selector15~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_ADDR\(2));

-- Location: LABCELL_X11_Y5_N51
\u2_controller|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Selector14~0_combout\ = ( \u2_controller|SRAM_ADDR\(3) & ( \u2_controller|address_cnt[3]~DUPLICATE_q\ & ( (\u2_controller|current_state.st_receive~q\) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( !\u2_controller|SRAM_ADDR\(3) & 
-- ( \u2_controller|address_cnt[3]~DUPLICATE_q\ & ( (!\u2_controller|current_state.st_transmit~q\ & (\u2_controller|current_state.st_receive~q\ & (\u2_controller|SRAM_ADDR~0_combout\))) # (\u2_controller|current_state.st_transmit~q\ & 
-- ((!\u2_controller|LessThan1~2_combout\) # ((\u2_controller|current_state.st_receive~q\ & \u2_controller|SRAM_ADDR~0_combout\)))) ) ) ) # ( \u2_controller|SRAM_ADDR\(3) & ( !\u2_controller|address_cnt[3]~DUPLICATE_q\ & ( 
-- (!\u2_controller|current_state.st_transmit~q\ & (\u2_controller|current_state.st_receive~q\ & (!\u2_controller|SRAM_ADDR~0_combout\))) # (\u2_controller|current_state.st_transmit~q\ & (((\u2_controller|current_state.st_receive~q\ & 
-- !\u2_controller|SRAM_ADDR~0_combout\)) # (\u2_controller|LessThan1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000111010101010111000000110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datab => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datac => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datad => \u2_controller|ALT_INV_LessThan1~2_combout\,
	datae => \u2_controller|ALT_INV_SRAM_ADDR\(3),
	dataf => \u2_controller|ALT_INV_address_cnt[3]~DUPLICATE_q\,
	combout => \u2_controller|Selector14~0_combout\);

-- Location: FF_X11_Y5_N52
\u2_controller|SRAM_ADDR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|Selector14~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_ADDR\(3));

-- Location: LABCELL_X11_Y5_N24
\u2_controller|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Selector13~0_combout\ = ( \u2_controller|SRAM_ADDR\(4) & ( \u2_controller|address_cnt[4]~DUPLICATE_q\ & ( (\u2_controller|current_state.st_receive~q\) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( !\u2_controller|SRAM_ADDR\(4) & 
-- ( \u2_controller|address_cnt[4]~DUPLICATE_q\ & ( (!\u2_controller|current_state.st_transmit~q\ & (\u2_controller|current_state.st_receive~q\ & ((\u2_controller|SRAM_ADDR~0_combout\)))) # (\u2_controller|current_state.st_transmit~q\ & 
-- ((!\u2_controller|LessThan1~2_combout\) # ((\u2_controller|current_state.st_receive~q\ & \u2_controller|SRAM_ADDR~0_combout\)))) ) ) ) # ( \u2_controller|SRAM_ADDR\(4) & ( !\u2_controller|address_cnt[4]~DUPLICATE_q\ & ( 
-- (!\u2_controller|current_state.st_transmit~q\ & (\u2_controller|current_state.st_receive~q\ & ((!\u2_controller|SRAM_ADDR~0_combout\)))) # (\u2_controller|current_state.st_transmit~q\ & (((\u2_controller|current_state.st_receive~q\ & 
-- !\u2_controller|SRAM_ADDR~0_combout\)) # (\u2_controller|LessThan1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101110000010101010000011100110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datab => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datac => \u2_controller|ALT_INV_LessThan1~2_combout\,
	datad => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datae => \u2_controller|ALT_INV_SRAM_ADDR\(4),
	dataf => \u2_controller|ALT_INV_address_cnt[4]~DUPLICATE_q\,
	combout => \u2_controller|Selector13~0_combout\);

-- Location: FF_X11_Y5_N25
\u2_controller|SRAM_ADDR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|Selector13~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_ADDR\(4));

-- Location: LABCELL_X11_Y5_N27
\u2_controller|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Selector12~0_combout\ = ( \u2_controller|SRAM_ADDR\(5) & ( \u2_controller|address_cnt\(5) & ( (\u2_controller|current_state.st_receive~q\) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( !\u2_controller|SRAM_ADDR\(5) & ( 
-- \u2_controller|address_cnt\(5) & ( (!\u2_controller|current_state.st_transmit~q\ & (\u2_controller|current_state.st_receive~q\ & (\u2_controller|SRAM_ADDR~0_combout\))) # (\u2_controller|current_state.st_transmit~q\ & 
-- ((!\u2_controller|LessThan1~2_combout\) # ((\u2_controller|current_state.st_receive~q\ & \u2_controller|SRAM_ADDR~0_combout\)))) ) ) ) # ( \u2_controller|SRAM_ADDR\(5) & ( !\u2_controller|address_cnt\(5) & ( (!\u2_controller|current_state.st_transmit~q\ & 
-- (\u2_controller|current_state.st_receive~q\ & (!\u2_controller|SRAM_ADDR~0_combout\))) # (\u2_controller|current_state.st_transmit~q\ & (((\u2_controller|current_state.st_receive~q\ & !\u2_controller|SRAM_ADDR~0_combout\)) # 
-- (\u2_controller|LessThan1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000111010101010111000000110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datab => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datac => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datad => \u2_controller|ALT_INV_LessThan1~2_combout\,
	datae => \u2_controller|ALT_INV_SRAM_ADDR\(5),
	dataf => \u2_controller|ALT_INV_address_cnt\(5),
	combout => \u2_controller|Selector12~0_combout\);

-- Location: FF_X11_Y5_N29
\u2_controller|SRAM_ADDR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|Selector12~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_ADDR\(5));

-- Location: LABCELL_X11_Y5_N36
\u2_controller|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Selector11~0_combout\ = ( \u2_controller|SRAM_ADDR\(6) & ( \u2_controller|address_cnt\(6) & ( (\u2_controller|current_state.st_receive~q\) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( !\u2_controller|SRAM_ADDR\(6) & ( 
-- \u2_controller|address_cnt\(6) & ( (!\u2_controller|current_state.st_transmit~q\ & (\u2_controller|current_state.st_receive~q\ & ((\u2_controller|SRAM_ADDR~0_combout\)))) # (\u2_controller|current_state.st_transmit~q\ & 
-- ((!\u2_controller|LessThan1~2_combout\) # ((\u2_controller|current_state.st_receive~q\ & \u2_controller|SRAM_ADDR~0_combout\)))) ) ) ) # ( \u2_controller|SRAM_ADDR\(6) & ( !\u2_controller|address_cnt\(6) & ( (!\u2_controller|current_state.st_transmit~q\ & 
-- (\u2_controller|current_state.st_receive~q\ & ((!\u2_controller|SRAM_ADDR~0_combout\)))) # (\u2_controller|current_state.st_transmit~q\ & (((\u2_controller|current_state.st_receive~q\ & !\u2_controller|SRAM_ADDR~0_combout\)) # 
-- (\u2_controller|LessThan1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101110000010101010000011100110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datab => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datac => \u2_controller|ALT_INV_LessThan1~2_combout\,
	datad => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datae => \u2_controller|ALT_INV_SRAM_ADDR\(6),
	dataf => \u2_controller|ALT_INV_address_cnt\(6),
	combout => \u2_controller|Selector11~0_combout\);

-- Location: FF_X11_Y5_N37
\u2_controller|SRAM_ADDR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|Selector11~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_ADDR\(6));

-- Location: LABCELL_X11_Y5_N39
\u2_controller|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Selector10~0_combout\ = ( \u2_controller|SRAM_ADDR\(7) & ( \u2_controller|address_cnt\(7) & ( (\u2_controller|current_state.st_receive~q\) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( !\u2_controller|SRAM_ADDR\(7) & ( 
-- \u2_controller|address_cnt\(7) & ( (!\u2_controller|current_state.st_transmit~q\ & (\u2_controller|current_state.st_receive~q\ & (\u2_controller|SRAM_ADDR~0_combout\))) # (\u2_controller|current_state.st_transmit~q\ & 
-- ((!\u2_controller|LessThan1~2_combout\) # ((\u2_controller|current_state.st_receive~q\ & \u2_controller|SRAM_ADDR~0_combout\)))) ) ) ) # ( \u2_controller|SRAM_ADDR\(7) & ( !\u2_controller|address_cnt\(7) & ( (!\u2_controller|current_state.st_transmit~q\ & 
-- (\u2_controller|current_state.st_receive~q\ & (!\u2_controller|SRAM_ADDR~0_combout\))) # (\u2_controller|current_state.st_transmit~q\ & (((\u2_controller|current_state.st_receive~q\ & !\u2_controller|SRAM_ADDR~0_combout\)) # 
-- (\u2_controller|LessThan1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000111010101010111000000110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datab => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datac => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datad => \u2_controller|ALT_INV_LessThan1~2_combout\,
	datae => \u2_controller|ALT_INV_SRAM_ADDR\(7),
	dataf => \u2_controller|ALT_INV_address_cnt\(7),
	combout => \u2_controller|Selector10~0_combout\);

-- Location: FF_X11_Y5_N40
\u2_controller|SRAM_ADDR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|Selector10~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_ADDR\(7));

-- Location: LABCELL_X11_Y5_N48
\u2_controller|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Selector9~0_combout\ = ( \u2_controller|SRAM_ADDR\(8) & ( \u2_controller|address_cnt[8]~DUPLICATE_q\ & ( (\u2_controller|current_state.st_receive~q\) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( !\u2_controller|SRAM_ADDR\(8) & 
-- ( \u2_controller|address_cnt[8]~DUPLICATE_q\ & ( (!\u2_controller|current_state.st_transmit~q\ & (\u2_controller|current_state.st_receive~q\ & ((\u2_controller|SRAM_ADDR~0_combout\)))) # (\u2_controller|current_state.st_transmit~q\ & 
-- ((!\u2_controller|LessThan1~2_combout\) # ((\u2_controller|current_state.st_receive~q\ & \u2_controller|SRAM_ADDR~0_combout\)))) ) ) ) # ( \u2_controller|SRAM_ADDR\(8) & ( !\u2_controller|address_cnt[8]~DUPLICATE_q\ & ( 
-- (!\u2_controller|current_state.st_transmit~q\ & (\u2_controller|current_state.st_receive~q\ & ((!\u2_controller|SRAM_ADDR~0_combout\)))) # (\u2_controller|current_state.st_transmit~q\ & (((\u2_controller|current_state.st_receive~q\ & 
-- !\u2_controller|SRAM_ADDR~0_combout\)) # (\u2_controller|LessThan1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101110000010101010000011100110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datab => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datac => \u2_controller|ALT_INV_LessThan1~2_combout\,
	datad => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datae => \u2_controller|ALT_INV_SRAM_ADDR\(8),
	dataf => \u2_controller|ALT_INV_address_cnt[8]~DUPLICATE_q\,
	combout => \u2_controller|Selector9~0_combout\);

-- Location: FF_X11_Y5_N49
\u2_controller|SRAM_ADDR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|Selector9~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_ADDR\(8));

-- Location: LABCELL_X13_Y5_N57
\u2_controller|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Selector8~0_combout\ = ( \u2_controller|SRAM_ADDR\(9) & ( \u2_controller|address_cnt[9]~DUPLICATE_q\ & ( (\u2_controller|current_state.st_transmit~q\) # (\u2_controller|current_state.st_receive~q\) ) ) ) # ( !\u2_controller|SRAM_ADDR\(9) & 
-- ( \u2_controller|address_cnt[9]~DUPLICATE_q\ & ( (!\u2_controller|current_state.st_receive~q\ & (!\u2_controller|LessThan1~2_combout\ & ((\u2_controller|current_state.st_transmit~q\)))) # (\u2_controller|current_state.st_receive~q\ & 
-- (((!\u2_controller|LessThan1~2_combout\ & \u2_controller|current_state.st_transmit~q\)) # (\u2_controller|SRAM_ADDR~0_combout\))) ) ) ) # ( \u2_controller|SRAM_ADDR\(9) & ( !\u2_controller|address_cnt[9]~DUPLICATE_q\ & ( 
-- (!\u2_controller|current_state.st_receive~q\ & (\u2_controller|LessThan1~2_combout\ & ((\u2_controller|current_state.st_transmit~q\)))) # (\u2_controller|current_state.st_receive~q\ & ((!\u2_controller|SRAM_ADDR~0_combout\) # 
-- ((\u2_controller|LessThan1~2_combout\ & \u2_controller|current_state.st_transmit~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000111001100000101110011010101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datab => \u2_controller|ALT_INV_LessThan1~2_combout\,
	datac => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datad => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datae => \u2_controller|ALT_INV_SRAM_ADDR\(9),
	dataf => \u2_controller|ALT_INV_address_cnt[9]~DUPLICATE_q\,
	combout => \u2_controller|Selector8~0_combout\);

-- Location: FF_X13_Y5_N59
\u2_controller|SRAM_ADDR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|Selector8~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_ADDR\(9));

-- Location: LABCELL_X11_Y5_N30
\u2_controller|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Selector7~0_combout\ = ( \u2_controller|SRAM_ADDR\(10) & ( \u2_controller|address_cnt\(10) & ( (\u2_controller|current_state.st_receive~q\) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( !\u2_controller|SRAM_ADDR\(10) & ( 
-- \u2_controller|address_cnt\(10) & ( (!\u2_controller|current_state.st_transmit~q\ & (\u2_controller|current_state.st_receive~q\ & ((\u2_controller|SRAM_ADDR~0_combout\)))) # (\u2_controller|current_state.st_transmit~q\ & 
-- ((!\u2_controller|LessThan1~2_combout\) # ((\u2_controller|current_state.st_receive~q\ & \u2_controller|SRAM_ADDR~0_combout\)))) ) ) ) # ( \u2_controller|SRAM_ADDR\(10) & ( !\u2_controller|address_cnt\(10) & ( (!\u2_controller|current_state.st_transmit~q\ 
-- & (\u2_controller|current_state.st_receive~q\ & ((!\u2_controller|SRAM_ADDR~0_combout\)))) # (\u2_controller|current_state.st_transmit~q\ & (((\u2_controller|current_state.st_receive~q\ & !\u2_controller|SRAM_ADDR~0_combout\)) # 
-- (\u2_controller|LessThan1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101110000010101010000011100110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datab => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datac => \u2_controller|ALT_INV_LessThan1~2_combout\,
	datad => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datae => \u2_controller|ALT_INV_SRAM_ADDR\(10),
	dataf => \u2_controller|ALT_INV_address_cnt\(10),
	combout => \u2_controller|Selector7~0_combout\);

-- Location: FF_X11_Y5_N32
\u2_controller|SRAM_ADDR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|Selector7~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_ADDR\(10));

-- Location: LABCELL_X11_Y5_N33
\u2_controller|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Selector6~0_combout\ = ( \u2_controller|SRAM_ADDR\(11) & ( \u2_controller|address_cnt[11]~DUPLICATE_q\ & ( (\u2_controller|current_state.st_receive~q\) # (\u2_controller|current_state.st_transmit~q\) ) ) ) # ( !\u2_controller|SRAM_ADDR\(11) 
-- & ( \u2_controller|address_cnt[11]~DUPLICATE_q\ & ( (!\u2_controller|current_state.st_transmit~q\ & (\u2_controller|current_state.st_receive~q\ & (\u2_controller|SRAM_ADDR~0_combout\))) # (\u2_controller|current_state.st_transmit~q\ & 
-- ((!\u2_controller|LessThan1~2_combout\) # ((\u2_controller|current_state.st_receive~q\ & \u2_controller|SRAM_ADDR~0_combout\)))) ) ) ) # ( \u2_controller|SRAM_ADDR\(11) & ( !\u2_controller|address_cnt[11]~DUPLICATE_q\ & ( 
-- (!\u2_controller|current_state.st_transmit~q\ & (\u2_controller|current_state.st_receive~q\ & (!\u2_controller|SRAM_ADDR~0_combout\))) # (\u2_controller|current_state.st_transmit~q\ & (((\u2_controller|current_state.st_receive~q\ & 
-- !\u2_controller|SRAM_ADDR~0_combout\)) # (\u2_controller|LessThan1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000111010101010111000000110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datab => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datac => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datad => \u2_controller|ALT_INV_LessThan1~2_combout\,
	datae => \u2_controller|ALT_INV_SRAM_ADDR\(11),
	dataf => \u2_controller|ALT_INV_address_cnt[11]~DUPLICATE_q\,
	combout => \u2_controller|Selector6~0_combout\);

-- Location: FF_X11_Y5_N34
\u2_controller|SRAM_ADDR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|Selector6~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_ADDR\(11));

-- Location: LABCELL_X13_Y5_N54
\u2_controller|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Selector5~0_combout\ = ( \u2_controller|SRAM_ADDR\(12) & ( \u2_controller|address_cnt\(12) & ( (\u2_controller|current_state.st_transmit~q\) # (\u2_controller|current_state.st_receive~q\) ) ) ) # ( !\u2_controller|SRAM_ADDR\(12) & ( 
-- \u2_controller|address_cnt\(12) & ( (!\u2_controller|current_state.st_receive~q\ & (!\u2_controller|LessThan1~2_combout\ & (\u2_controller|current_state.st_transmit~q\))) # (\u2_controller|current_state.st_receive~q\ & 
-- (((!\u2_controller|LessThan1~2_combout\ & \u2_controller|current_state.st_transmit~q\)) # (\u2_controller|SRAM_ADDR~0_combout\))) ) ) ) # ( \u2_controller|SRAM_ADDR\(12) & ( !\u2_controller|address_cnt\(12) & ( (!\u2_controller|current_state.st_receive~q\ 
-- & (\u2_controller|LessThan1~2_combout\ & (\u2_controller|current_state.st_transmit~q\))) # (\u2_controller|current_state.st_receive~q\ & ((!\u2_controller|SRAM_ADDR~0_combout\) # ((\u2_controller|LessThan1~2_combout\ & 
-- \u2_controller|current_state.st_transmit~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101110000001100001100010111010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datab => \u2_controller|ALT_INV_LessThan1~2_combout\,
	datac => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datad => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datae => \u2_controller|ALT_INV_SRAM_ADDR\(12),
	dataf => \u2_controller|ALT_INV_address_cnt\(12),
	combout => \u2_controller|Selector5~0_combout\);

-- Location: FF_X13_Y5_N55
\u2_controller|SRAM_ADDR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|Selector5~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_ADDR\(12));

-- Location: FF_X14_Y4_N1
\u1_uart|u2_rx|RX_DATA_VAILD~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_uart|u2_rx|Selector0~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_uart|u2_rx|RX_DATA_VAILD~DUPLICATE_q\);

-- Location: LABCELL_X18_Y5_N27
\u2_controller|LED~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|LED~0_combout\ = ( \u2_controller|LessThan3~0_combout\ & ( \u2_controller|LessThan9~1_combout\ & ( (\u2_controller|LessThan0~0_combout\ & (\u1_uart|u2_rx|RX_DATA_VAILD~DUPLICATE_q\ & (\u2_controller|chars_cnt\(13) & 
-- \u2_controller|LessThan3~1_combout\))) ) ) ) # ( !\u2_controller|LessThan3~0_combout\ & ( \u2_controller|LessThan9~1_combout\ & ( (\u1_uart|u2_rx|RX_DATA_VAILD~DUPLICATE_q\ & \u2_controller|chars_cnt\(13)) ) ) ) # ( \u2_controller|LessThan3~0_combout\ & ( 
-- !\u2_controller|LessThan9~1_combout\ & ( (\u1_uart|u2_rx|RX_DATA_VAILD~DUPLICATE_q\ & (\u2_controller|chars_cnt\(13) & \u2_controller|LessThan3~1_combout\)) ) ) ) # ( !\u2_controller|LessThan3~0_combout\ & ( !\u2_controller|LessThan9~1_combout\ & ( 
-- (\u1_uart|u2_rx|RX_DATA_VAILD~DUPLICATE_q\ & \u2_controller|chars_cnt\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000001100000011000000110000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_LessThan0~0_combout\,
	datab => \u1_uart|u2_rx|ALT_INV_RX_DATA_VAILD~DUPLICATE_q\,
	datac => \u2_controller|ALT_INV_chars_cnt\(13),
	datad => \u2_controller|ALT_INV_LessThan3~1_combout\,
	datae => \u2_controller|ALT_INV_LessThan3~0_combout\,
	dataf => \u2_controller|ALT_INV_LessThan9~1_combout\,
	combout => \u2_controller|LED~0_combout\);

-- Location: LABCELL_X17_Y4_N3
\u2_controller|SRAM_WE_N~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_WE_N~0_combout\ = ( \u2_controller|SRAM_WE_N~q\ & ( !\u2_controller|LED~0_combout\ & ( \u2_controller|current_state.st_receive~q\ ) ) ) # ( !\u2_controller|SRAM_WE_N~q\ & ( !\u2_controller|LED~0_combout\ & ( 
-- (\u2_controller|current_state.st_receive~q\ & \u1_uart|u2_rx|RX_DATA_VAILD~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datac => \u1_uart|u2_rx|ALT_INV_RX_DATA_VAILD~DUPLICATE_q\,
	datae => \u2_controller|ALT_INV_SRAM_WE_N~q\,
	dataf => \u2_controller|ALT_INV_LED~0_combout\,
	combout => \u2_controller|SRAM_WE_N~0_combout\);

-- Location: FF_X17_Y4_N4
\u2_controller|SRAM_WE_N\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|SRAM_WE_N~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_WE_N~q\);

-- Location: LABCELL_X17_Y5_N27
\u2_controller|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Selector18~0_combout\ = ( \u1_uart|u2_rx|RX_DATA_VAILD~DUPLICATE_q\ ) # ( !\u1_uart|u2_rx|RX_DATA_VAILD~DUPLICATE_q\ & ( !\u2_controller|current_state.st_receive~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2_controller|ALT_INV_current_state.st_receive~q\,
	dataf => \u1_uart|u2_rx|ALT_INV_RX_DATA_VAILD~DUPLICATE_q\,
	combout => \u2_controller|Selector18~0_combout\);

-- Location: FF_X17_Y5_N29
\u2_controller|SRAM_OE_N\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|current_state.st_transmit~q\,
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u2_controller|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_OE_N~q\);

-- Location: LABCELL_X18_Y5_N21
\u2_controller|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|LessThan0~1_combout\ = ( \u2_controller|LessThan9~1_combout\ & ( (\u2_controller|LessThan3~0_combout\ & ((!\u2_controller|LessThan3~1_combout\) # (!\u2_controller|LessThan0~0_combout\))) ) ) # ( !\u2_controller|LessThan9~1_combout\ & ( 
-- (!\u2_controller|LessThan3~1_combout\ & \u2_controller|LessThan3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000111110100000000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_LessThan3~1_combout\,
	datac => \u2_controller|ALT_INV_LessThan0~0_combout\,
	datad => \u2_controller|ALT_INV_LessThan3~0_combout\,
	dataf => \u2_controller|ALT_INV_LessThan9~1_combout\,
	combout => \u2_controller|LessThan0~1_combout\);

-- Location: LABCELL_X18_Y5_N18
\u2_controller|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Selector19~0_combout\ = ( \u2_controller|LessThan0~1_combout\ & ( \u2_controller|current_state.st_idle~DUPLICATE_q\ ) ) # ( !\u2_controller|LessThan0~1_combout\ & ( (\u2_controller|current_state.st_idle~DUPLICATE_q\ & 
-- ((!\u2_controller|current_state.st_receive~q\) # (!\u2_controller|chars_cnt[13]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100110011000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2_controller|ALT_INV_current_state.st_idle~DUPLICATE_q\,
	datac => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datad => \u2_controller|ALT_INV_chars_cnt[13]~DUPLICATE_q\,
	dataf => \u2_controller|ALT_INV_LessThan0~1_combout\,
	combout => \u2_controller|Selector19~0_combout\);

-- Location: FF_X18_Y5_N20
\u2_controller|SRAM_CE_N\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|Selector19~0_combout\,
	clrn => \RSTn~input_o\,
	ena => \u2_controller|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_CE_N~q\);

-- Location: LABCELL_X15_Y5_N57
\u2_controller|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Selector20~0_combout\ = ( \u2_controller|bin_in_char_cnt\(0) & ( (!\u2_controller|current_state.st_transmit~q\ & \u2_controller|current_state.st_idle~DUPLICATE_q\) ) ) # ( !\u2_controller|bin_in_char_cnt\(0) & ( 
-- (\u2_controller|current_state.st_transmit~q\ & \u2_controller|current_state.st_idle~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	datac => \u2_controller|ALT_INV_current_state.st_idle~DUPLICATE_q\,
	dataf => \u2_controller|ALT_INV_bin_in_char_cnt\(0),
	combout => \u2_controller|Selector20~0_combout\);

-- Location: LABCELL_X15_Y5_N51
\u2_controller|SRAM_UB_N~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_UB_N~0_combout\ = ( \u2_controller|LessThan1~2_combout\ & ( (!\u2_controller|current_state.st_transmit~q\ & ((!\u2_controller|current_state.st_receive~q\) # (\u2_controller|SRAM_ADDR~0_combout\))) ) ) # ( 
-- !\u2_controller|LessThan1~2_combout\ & ( (!\u2_controller|current_state.st_receive~q\) # (\u2_controller|SRAM_ADDR~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111110101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datac => \u2_controller|ALT_INV_SRAM_ADDR~0_combout\,
	datad => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	dataf => \u2_controller|ALT_INV_LessThan1~2_combout\,
	combout => \u2_controller|SRAM_UB_N~0_combout\);

-- Location: FF_X15_Y5_N58
\u2_controller|SRAM_UB_N\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|Selector20~0_combout\,
	clrn => \RSTn~input_o\,
	ena => \u2_controller|SRAM_UB_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_UB_N~q\);

-- Location: LABCELL_X15_Y5_N27
\u2_controller|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|Selector21~0_combout\ = ( \u2_controller|bin_in_char_cnt\(0) & ( (\u2_controller|current_state.st_idle~DUPLICATE_q\ & \u2_controller|current_state.st_transmit~q\) ) ) # ( !\u2_controller|bin_in_char_cnt\(0) & ( 
-- (\u2_controller|current_state.st_idle~DUPLICATE_q\ & !\u2_controller|current_state.st_transmit~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2_controller|ALT_INV_current_state.st_idle~DUPLICATE_q\,
	datad => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	dataf => \u2_controller|ALT_INV_bin_in_char_cnt\(0),
	combout => \u2_controller|Selector21~0_combout\);

-- Location: FF_X15_Y5_N55
\u2_controller|SRAM_LB_N\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|Selector21~0_combout\,
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u2_controller|SRAM_UB_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|SRAM_LB_N~q\);

-- Location: FF_X18_Y5_N43
\u2_controller|current_state.st_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|current_state.st_idle~feeder_combout\,
	clrn => \RSTn~input_o\,
	ena => \u2_controller|Selector52~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|current_state.st_idle~q\);

-- Location: FF_X19_Y5_N28
\u2_controller|LED[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|current_state.st_idle~q\,
	clrn => \RSTn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|LED\(2));

-- Location: LABCELL_X17_Y4_N54
\u2_controller|LED[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|LED[3]~feeder_combout\ = ( \u2_controller|current_state.st_receive~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u2_controller|ALT_INV_current_state.st_receive~q\,
	combout => \u2_controller|LED[3]~feeder_combout\);

-- Location: FF_X17_Y4_N55
\u2_controller|LED[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|LED[3]~feeder_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|LED\(3));

-- Location: LABCELL_X17_Y4_N27
\u2_controller|LED[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|LED[4]~feeder_combout\ = ( \u2_controller|current_state.st_transmit~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u2_controller|ALT_INV_current_state.st_transmit~q\,
	combout => \u2_controller|LED[4]~feeder_combout\);

-- Location: FF_X17_Y4_N28
\u2_controller|LED[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|LED[4]~feeder_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|LED\(4));

-- Location: LABCELL_X11_Y5_N15
\u2_controller|LED~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|LED~1_combout\ = (!\u3_mode_sync|SIG_OUT~DUPLICATE_q\ & ((!\u2_controller|current_state.st_receive~q\) # (!\u2_controller|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011001100000011001100110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3_mode_sync|ALT_INV_SIG_OUT~DUPLICATE_q\,
	datac => \u2_controller|ALT_INV_current_state.st_receive~q\,
	datad => \u2_controller|ALT_INV_LessThan1~2_combout\,
	combout => \u2_controller|LED~1_combout\);

-- Location: FF_X11_Y5_N16
\u2_controller|LED[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|LED~1_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|LED\(5));

-- Location: FF_X18_Y5_N29
\u2_controller|LED[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|LED~0_combout\,
	clrn => \RSTn~input_o\,
	sclr => \u2_controller|ALT_INV_current_state.st_receive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|LED\(6));

-- Location: FF_X17_Y6_N56
\u2_controller|bin_in_char_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|chars_cnt\(1),
	sload => VCC,
	ena => \u2_controller|bin_in_char_cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|bin_in_char_cnt\(1));

-- Location: FF_X15_Y6_N41
\u2_controller|u1|reg_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|bin_in_char_cnt\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|reg_in\(1));

-- Location: FF_X17_Y6_N58
\u2_controller|bin_in_char_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|chars_cnt\(2),
	sload => VCC,
	ena => \u2_controller|bin_in_char_cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|bin_in_char_cnt\(2));

-- Location: LABCELL_X17_Y6_N51
\u2_controller|u1|reg_in[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|reg_in[2]~feeder_combout\ = ( \u2_controller|bin_in_char_cnt\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u2_controller|ALT_INV_bin_in_char_cnt\(2),
	combout => \u2_controller|u1|reg_in[2]~feeder_combout\);

-- Location: FF_X17_Y6_N53
\u2_controller|u1|reg_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|u1|reg_in[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|reg_in\(2));

-- Location: FF_X17_Y6_N37
\u2_controller|bin_in_char_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|chars_cnt\(3),
	sload => VCC,
	ena => \u2_controller|bin_in_char_cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|bin_in_char_cnt\(3));

-- Location: FF_X15_Y6_N47
\u2_controller|u1|reg_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|bin_in_char_cnt\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|reg_in\(3));

-- Location: LABCELL_X18_Y6_N9
\u2_controller|bin_in_char_cnt[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|bin_in_char_cnt[6]~feeder_combout\ = ( \u2_controller|chars_cnt[6]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u2_controller|ALT_INV_chars_cnt[6]~DUPLICATE_q\,
	combout => \u2_controller|bin_in_char_cnt[6]~feeder_combout\);

-- Location: FF_X18_Y6_N10
\u2_controller|bin_in_char_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|bin_in_char_cnt[6]~feeder_combout\,
	ena => \u2_controller|bin_in_char_cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|bin_in_char_cnt\(6));

-- Location: FF_X13_Y6_N44
\u2_controller|u1|reg_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|bin_in_char_cnt\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|reg_in\(6));

-- Location: LABCELL_X18_Y6_N24
\u2_controller|bin_in_char_cnt[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|bin_in_char_cnt[5]~feeder_combout\ = ( \u2_controller|chars_cnt[5]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u2_controller|ALT_INV_chars_cnt[5]~DUPLICATE_q\,
	combout => \u2_controller|bin_in_char_cnt[5]~feeder_combout\);

-- Location: FF_X18_Y6_N25
\u2_controller|bin_in_char_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|bin_in_char_cnt[5]~feeder_combout\,
	ena => \u2_controller|bin_in_char_cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|bin_in_char_cnt\(5));

-- Location: FF_X13_Y6_N50
\u2_controller|u1|reg_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|bin_in_char_cnt\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|reg_in\(5));

-- Location: LABCELL_X18_Y6_N30
\u2_controller|bin_in_char_cnt[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|bin_in_char_cnt[8]~feeder_combout\ = ( \u2_controller|chars_cnt[8]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u2_controller|ALT_INV_chars_cnt[8]~DUPLICATE_q\,
	combout => \u2_controller|bin_in_char_cnt[8]~feeder_combout\);

-- Location: FF_X18_Y6_N31
\u2_controller|bin_in_char_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|bin_in_char_cnt[8]~feeder_combout\,
	ena => \u2_controller|bin_in_char_cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|bin_in_char_cnt\(8));

-- Location: FF_X13_Y6_N20
\u2_controller|u1|reg_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|bin_in_char_cnt\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|reg_in\(8));

-- Location: FF_X17_Y6_N34
\u2_controller|bin_in_char_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|chars_cnt\(11),
	sload => VCC,
	ena => \u2_controller|bin_in_char_cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|bin_in_char_cnt\(11));

-- Location: FF_X13_Y6_N17
\u2_controller|u1|reg_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|bin_in_char_cnt\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|reg_in\(11));

-- Location: FF_X15_Y6_N34
\u2_controller|bin_in_char_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|chars_cnt[13]~DUPLICATE_q\,
	sload => VCC,
	ena => \u2_controller|bin_in_char_cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|bin_in_char_cnt\(13));

-- Location: FF_X13_Y6_N32
\u2_controller|u1|reg_in[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|bin_in_char_cnt\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|reg_in\(13));

-- Location: FF_X17_Y6_N10
\u2_controller|bin_in_char_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|chars_cnt[10]~DUPLICATE_q\,
	sload => VCC,
	ena => \u2_controller|bin_in_char_cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|bin_in_char_cnt\(10));

-- Location: FF_X13_Y6_N56
\u2_controller|u1|reg_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|bin_in_char_cnt\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|reg_in\(10));

-- Location: FF_X18_Y6_N16
\u2_controller|bin_in_char_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|chars_cnt[9]~DUPLICATE_q\,
	sload => VCC,
	ena => \u2_controller|bin_in_char_cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|bin_in_char_cnt\(9));

-- Location: FF_X13_Y6_N38
\u2_controller|u1|reg_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|bin_in_char_cnt\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|reg_in\(9));

-- Location: FF_X17_Y6_N40
\u2_controller|bin_in_char_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|chars_cnt[12]~DUPLICATE_q\,
	sload => VCC,
	ena => \u2_controller|bin_in_char_cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|bin_in_char_cnt\(12));

-- Location: FF_X13_Y6_N5
\u2_controller|u1|reg_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|bin_in_char_cnt\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|reg_in\(12));

-- Location: LABCELL_X13_Y6_N27
\u2_controller|u1|BCD~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~1_combout\ = ( \u2_controller|u1|reg_in\(9) & ( \u2_controller|u1|reg_in\(12) & ( (!\u2_controller|u1|reg_in\(11) & (!\u2_controller|u1|reg_in\(13) & ((!\u2_controller|u1|reg_in\(8)) # (\u2_controller|u1|reg_in\(10))))) # 
-- (\u2_controller|u1|reg_in\(11) & (!\u2_controller|u1|reg_in\(13) $ (((!\u2_controller|u1|reg_in\(8)) # (\u2_controller|u1|reg_in\(10)))))) ) ) ) # ( !\u2_controller|u1|reg_in\(9) & ( \u2_controller|u1|reg_in\(12) & ( (!\u2_controller|u1|reg_in\(11) & 
-- (!\u2_controller|u1|reg_in\(13) $ (((!\u2_controller|u1|reg_in\(8)) # (\u2_controller|u1|reg_in\(10)))))) # (\u2_controller|u1|reg_in\(11) & ((!\u2_controller|u1|reg_in\(8) & (!\u2_controller|u1|reg_in\(13) & \u2_controller|u1|reg_in\(10))) # 
-- (\u2_controller|u1|reg_in\(8) & (\u2_controller|u1|reg_in\(13) & !\u2_controller|u1|reg_in\(10))))) ) ) ) # ( \u2_controller|u1|reg_in\(9) & ( !\u2_controller|u1|reg_in\(12) & ( (!\u2_controller|u1|reg_in\(11) & (!\u2_controller|u1|reg_in\(13) $ 
-- (((!\u2_controller|u1|reg_in\(8) & \u2_controller|u1|reg_in\(10)))))) # (\u2_controller|u1|reg_in\(11) & (\u2_controller|u1|reg_in\(13) & ((!\u2_controller|u1|reg_in\(10)) # (\u2_controller|u1|reg_in\(8))))) ) ) ) # ( !\u2_controller|u1|reg_in\(9) & ( 
-- !\u2_controller|u1|reg_in\(12) & ( (!\u2_controller|u1|reg_in\(11) & (\u2_controller|u1|reg_in\(13) & ((!\u2_controller|u1|reg_in\(10)) # (\u2_controller|u1|reg_in\(8))))) # (\u2_controller|u1|reg_in\(11) & (!\u2_controller|u1|reg_in\(13) & 
-- ((!\u2_controller|u1|reg_in\(8)) # (\u2_controller|u1|reg_in\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110000110100110000110100100101001001001011001001001011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_reg_in\(8),
	datab => \u2_controller|u1|ALT_INV_reg_in\(11),
	datac => \u2_controller|u1|ALT_INV_reg_in\(13),
	datad => \u2_controller|u1|ALT_INV_reg_in\(10),
	datae => \u2_controller|u1|ALT_INV_reg_in\(9),
	dataf => \u2_controller|u1|ALT_INV_reg_in\(12),
	combout => \u2_controller|u1|BCD~1_combout\);

-- Location: LABCELL_X18_Y6_N3
\u2_controller|bin_in_char_cnt[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|bin_in_char_cnt[7]~feeder_combout\ = ( \u2_controller|chars_cnt[7]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u2_controller|ALT_INV_chars_cnt[7]~DUPLICATE_q\,
	combout => \u2_controller|bin_in_char_cnt[7]~feeder_combout\);

-- Location: FF_X18_Y6_N4
\u2_controller|bin_in_char_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|bin_in_char_cnt[7]~feeder_combout\,
	ena => \u2_controller|bin_in_char_cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|bin_in_char_cnt\(7));

-- Location: FF_X13_Y6_N26
\u2_controller|u1|reg_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|bin_in_char_cnt\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|reg_in\(7));

-- Location: LABCELL_X13_Y6_N57
\u2_controller|u1|BCD~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~0_combout\ = ( \u2_controller|u1|reg_in\(12) & ( \u2_controller|u1|reg_in\(13) & ( (!\u2_controller|u1|reg_in\(8) & (!\u2_controller|u1|reg_in\(10) & ((!\u2_controller|u1|reg_in\(9)) # (\u2_controller|u1|reg_in\(11))))) # 
-- (\u2_controller|u1|reg_in\(8) & (!\u2_controller|u1|reg_in\(10) $ (((!\u2_controller|u1|reg_in\(9)) # (\u2_controller|u1|reg_in\(11)))))) ) ) ) # ( !\u2_controller|u1|reg_in\(12) & ( \u2_controller|u1|reg_in\(13) & ( (!\u2_controller|u1|reg_in\(8) & 
-- (\u2_controller|u1|reg_in\(10) & ((!\u2_controller|u1|reg_in\(11)) # (\u2_controller|u1|reg_in\(9))))) # (\u2_controller|u1|reg_in\(8) & (!\u2_controller|u1|reg_in\(10) & ((!\u2_controller|u1|reg_in\(9)) # (\u2_controller|u1|reg_in\(11))))) ) ) ) # ( 
-- \u2_controller|u1|reg_in\(12) & ( !\u2_controller|u1|reg_in\(13) & ( (!\u2_controller|u1|reg_in\(8) & (!\u2_controller|u1|reg_in\(10) $ (((!\u2_controller|u1|reg_in\(9) & \u2_controller|u1|reg_in\(11)))))) # (\u2_controller|u1|reg_in\(8) & 
-- (\u2_controller|u1|reg_in\(10) & ((!\u2_controller|u1|reg_in\(11)) # (\u2_controller|u1|reg_in\(9))))) ) ) ) # ( !\u2_controller|u1|reg_in\(12) & ( !\u2_controller|u1|reg_in\(13) & ( (!\u2_controller|u1|reg_in\(8) & ((!\u2_controller|u1|reg_in\(9) & 
-- (\u2_controller|u1|reg_in\(11) & !\u2_controller|u1|reg_in\(10))) # (\u2_controller|u1|reg_in\(9) & (!\u2_controller|u1|reg_in\(11) & \u2_controller|u1|reg_in\(10))))) # (\u2_controller|u1|reg_in\(8) & (!\u2_controller|u1|reg_in\(10) $ 
-- (((!\u2_controller|u1|reg_in\(9) & \u2_controller|u1|reg_in\(11)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110101000010110100000010110100001011110100001011010000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_reg_in\(9),
	datab => \u2_controller|u1|ALT_INV_reg_in\(11),
	datac => \u2_controller|u1|ALT_INV_reg_in\(8),
	datad => \u2_controller|u1|ALT_INV_reg_in\(10),
	datae => \u2_controller|u1|ALT_INV_reg_in\(12),
	dataf => \u2_controller|u1|ALT_INV_reg_in\(13),
	combout => \u2_controller|u1|BCD~0_combout\);

-- Location: LABCELL_X13_Y6_N51
\u2_controller|u1|BCD~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~2_combout\ = ( \u2_controller|u1|reg_in\(10) & ( \u2_controller|u1|reg_in\(9) & ( (!\u2_controller|u1|reg_in\(11) & (\u2_controller|u1|reg_in\(13) & (!\u2_controller|u1|reg_in\(12) $ (!\u2_controller|u1|reg_in\(8))))) # 
-- (\u2_controller|u1|reg_in\(11) & (!\u2_controller|u1|reg_in\(12) & (!\u2_controller|u1|reg_in\(13) & !\u2_controller|u1|reg_in\(8)))) ) ) ) # ( !\u2_controller|u1|reg_in\(10) & ( \u2_controller|u1|reg_in\(9) & ( (!\u2_controller|u1|reg_in\(12) & 
-- (!\u2_controller|u1|reg_in\(11) & (\u2_controller|u1|reg_in\(13) & !\u2_controller|u1|reg_in\(8)))) # (\u2_controller|u1|reg_in\(12) & (\u2_controller|u1|reg_in\(8) & (!\u2_controller|u1|reg_in\(11) $ (\u2_controller|u1|reg_in\(13))))) ) ) ) # ( 
-- \u2_controller|u1|reg_in\(10) & ( !\u2_controller|u1|reg_in\(9) & ( (!\u2_controller|u1|reg_in\(12) & (!\u2_controller|u1|reg_in\(8) & (!\u2_controller|u1|reg_in\(11) $ (\u2_controller|u1|reg_in\(13))))) # (\u2_controller|u1|reg_in\(12) & 
-- (\u2_controller|u1|reg_in\(11) & (!\u2_controller|u1|reg_in\(13) & \u2_controller|u1|reg_in\(8)))) ) ) ) # ( !\u2_controller|u1|reg_in\(10) & ( !\u2_controller|u1|reg_in\(9) & ( (!\u2_controller|u1|reg_in\(11) & (\u2_controller|u1|reg_in\(12) & 
-- (\u2_controller|u1|reg_in\(13) & \u2_controller|u1|reg_in\(8)))) # (\u2_controller|u1|reg_in\(11) & (!\u2_controller|u1|reg_in\(13) & (!\u2_controller|u1|reg_in\(12) $ (!\u2_controller|u1|reg_in\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000100100100000100001000000001000010000010010010000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_reg_in\(12),
	datab => \u2_controller|u1|ALT_INV_reg_in\(11),
	datac => \u2_controller|u1|ALT_INV_reg_in\(13),
	datad => \u2_controller|u1|ALT_INV_reg_in\(8),
	datae => \u2_controller|u1|ALT_INV_reg_in\(10),
	dataf => \u2_controller|u1|ALT_INV_reg_in\(9),
	combout => \u2_controller|u1|BCD~2_combout\);

-- Location: MLABCELL_X14_Y6_N30
\u2_controller|u1|BCD~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~5_combout\ = ( \u2_controller|u1|BCD~0_combout\ & ( \u2_controller|u1|BCD~2_combout\ & ( (!\u2_controller|u1|reg_in\(6) & (!\u2_controller|u1|reg_in\(7) $ (((\u2_controller|u1|reg_in\(5) & \u2_controller|u1|BCD~1_combout\))))) # 
-- (\u2_controller|u1|reg_in\(6) & (!\u2_controller|u1|reg_in\(5) & (!\u2_controller|u1|BCD~1_combout\ & !\u2_controller|u1|reg_in\(7)))) ) ) ) # ( !\u2_controller|u1|BCD~0_combout\ & ( \u2_controller|u1|BCD~2_combout\ & ( (\u2_controller|u1|reg_in\(6) & 
-- ((!\u2_controller|u1|reg_in\(5) & ((!\u2_controller|u1|reg_in\(7)))) # (\u2_controller|u1|reg_in\(5) & (!\u2_controller|u1|BCD~1_combout\ & \u2_controller|u1|reg_in\(7))))) ) ) ) # ( \u2_controller|u1|BCD~0_combout\ & ( !\u2_controller|u1|BCD~2_combout\ & 
-- ( (!\u2_controller|u1|reg_in\(6) & ((!\u2_controller|u1|reg_in\(5) & (\u2_controller|u1|BCD~1_combout\ & !\u2_controller|u1|reg_in\(7))) # (\u2_controller|u1|reg_in\(5) & (!\u2_controller|u1|BCD~1_combout\ $ (\u2_controller|u1|reg_in\(7)))))) # 
-- (\u2_controller|u1|reg_in\(6) & (!\u2_controller|u1|reg_in\(5) & (!\u2_controller|u1|BCD~1_combout\ & \u2_controller|u1|reg_in\(7)))) ) ) ) # ( !\u2_controller|u1|BCD~0_combout\ & ( !\u2_controller|u1|BCD~2_combout\ & ( (!\u2_controller|u1|reg_in\(6) & 
-- (!\u2_controller|u1|reg_in\(5) & (!\u2_controller|u1|BCD~1_combout\ & \u2_controller|u1|reg_in\(7)))) # (\u2_controller|u1|reg_in\(6) & (\u2_controller|u1|reg_in\(5) & (\u2_controller|u1|BCD~1_combout\ & !\u2_controller|u1|reg_in\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110000000001010000100001001000100000100001110100000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_reg_in\(6),
	datab => \u2_controller|u1|ALT_INV_reg_in\(5),
	datac => \u2_controller|u1|ALT_INV_BCD~1_combout\,
	datad => \u2_controller|u1|ALT_INV_reg_in\(7),
	datae => \u2_controller|u1|ALT_INV_BCD~0_combout\,
	dataf => \u2_controller|u1|ALT_INV_BCD~2_combout\,
	combout => \u2_controller|u1|BCD~5_combout\);

-- Location: LABCELL_X13_Y6_N0
\u2_controller|u1|BCD~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~4_combout\ = ( \u2_controller|u1|BCD~1_combout\ & ( \u2_controller|u1|reg_in\(5) & ( (!\u2_controller|u1|reg_in\(7) & (!\u2_controller|u1|reg_in\(6) $ (\u2_controller|u1|BCD~0_combout\))) # (\u2_controller|u1|reg_in\(7) & 
-- (\u2_controller|u1|reg_in\(6) & !\u2_controller|u1|BCD~0_combout\)) ) ) ) # ( !\u2_controller|u1|BCD~1_combout\ & ( \u2_controller|u1|reg_in\(5) & ( (!\u2_controller|u1|reg_in\(6) & (((\u2_controller|u1|reg_in\(7) & \u2_controller|u1|BCD~0_combout\)) # 
-- (\u2_controller|u1|BCD~2_combout\))) # (\u2_controller|u1|reg_in\(6) & (((!\u2_controller|u1|BCD~2_combout\ & !\u2_controller|u1|BCD~0_combout\)))) ) ) ) # ( \u2_controller|u1|BCD~1_combout\ & ( !\u2_controller|u1|reg_in\(5) & ( 
-- (!\u2_controller|u1|reg_in\(7) & (!\u2_controller|u1|BCD~0_combout\ & (!\u2_controller|u1|reg_in\(6) $ (!\u2_controller|u1|BCD~2_combout\)))) # (\u2_controller|u1|reg_in\(7) & (!\u2_controller|u1|reg_in\(6) $ (((!\u2_controller|u1|BCD~0_combout\))))) ) ) 
-- ) # ( !\u2_controller|u1|BCD~1_combout\ & ( !\u2_controller|u1|reg_in\(5) & ( (!\u2_controller|u1|reg_in\(7) & (!\u2_controller|u1|reg_in\(6) $ (!\u2_controller|u1|BCD~2_combout\ $ (\u2_controller|u1|BCD~0_combout\)))) # (\u2_controller|u1|reg_in\(7) & 
-- ((!\u2_controller|u1|reg_in\(6) & (!\u2_controller|u1|BCD~2_combout\ & \u2_controller|u1|BCD~0_combout\)) # (\u2_controller|u1|reg_in\(6) & (\u2_controller|u1|BCD~2_combout\ & !\u2_controller|u1|BCD~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100111000010001110010100010000111100010011001001100100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_reg_in\(7),
	datab => \u2_controller|u1|ALT_INV_reg_in\(6),
	datac => \u2_controller|u1|ALT_INV_BCD~2_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~0_combout\,
	datae => \u2_controller|u1|ALT_INV_BCD~1_combout\,
	dataf => \u2_controller|u1|ALT_INV_reg_in\(5),
	combout => \u2_controller|u1|BCD~4_combout\);

-- Location: FF_X17_Y6_N19
\u2_controller|bin_in_char_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|chars_cnt\(4),
	sload => VCC,
	ena => \u2_controller|bin_in_char_cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|bin_in_char_cnt\(4));

-- Location: FF_X15_Y6_N53
\u2_controller|u1|reg_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|bin_in_char_cnt\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|reg_in\(4));

-- Location: LABCELL_X13_Y6_N12
\u2_controller|u1|BCD~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~3_combout\ = ( \u2_controller|u1|BCD~1_combout\ & ( \u2_controller|u1|reg_in\(5) & ( (!\u2_controller|u1|reg_in\(6) & (!\u2_controller|u1|BCD~0_combout\ & ((\u2_controller|u1|BCD~2_combout\) # (\u2_controller|u1|reg_in\(7))))) # 
-- (\u2_controller|u1|reg_in\(6) & (\u2_controller|u1|reg_in\(7))) ) ) ) # ( !\u2_controller|u1|BCD~1_combout\ & ( \u2_controller|u1|reg_in\(5) & ( (!\u2_controller|u1|reg_in\(7) & ((!\u2_controller|u1|reg_in\(6) & ((!\u2_controller|u1|BCD~0_combout\))) # 
-- (\u2_controller|u1|reg_in\(6) & (!\u2_controller|u1|BCD~2_combout\)))) # (\u2_controller|u1|reg_in\(7) & (\u2_controller|u1|BCD~0_combout\ & (!\u2_controller|u1|reg_in\(6) $ (\u2_controller|u1|BCD~2_combout\)))) ) ) ) # ( \u2_controller|u1|BCD~1_combout\ 
-- & ( !\u2_controller|u1|reg_in\(5) & ( (!\u2_controller|u1|BCD~0_combout\ & (!\u2_controller|u1|reg_in\(7) & ((!\u2_controller|u1|BCD~2_combout\)))) # (\u2_controller|u1|BCD~0_combout\ & (!\u2_controller|u1|reg_in\(7) $ ((!\u2_controller|u1|reg_in\(6))))) 
-- ) ) ) # ( !\u2_controller|u1|BCD~1_combout\ & ( !\u2_controller|u1|reg_in\(5) & ( (!\u2_controller|u1|reg_in\(7) & (\u2_controller|u1|BCD~0_combout\ & ((!\u2_controller|u1|reg_in\(6)) # (\u2_controller|u1|BCD~2_combout\)))) # (\u2_controller|u1|reg_in\(7) 
-- & ((!\u2_controller|u1|reg_in\(6) & (\u2_controller|u1|BCD~2_combout\)) # (\u2_controller|u1|reg_in\(6) & ((!\u2_controller|u1|BCD~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010110001110101000000110011010101000011000010101110100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_reg_in\(7),
	datab => \u2_controller|u1|ALT_INV_reg_in\(6),
	datac => \u2_controller|u1|ALT_INV_BCD~2_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~0_combout\,
	datae => \u2_controller|u1|ALT_INV_BCD~1_combout\,
	dataf => \u2_controller|u1|ALT_INV_reg_in\(5),
	combout => \u2_controller|u1|BCD~3_combout\);

-- Location: MLABCELL_X14_Y6_N39
\u2_controller|u1|BCD~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~7_combout\ = ( \u2_controller|u1|BCD~3_combout\ & ( (!\u2_controller|u1|BCD~4_combout\ & ((!\u2_controller|u1|reg_in\(3) & (\u2_controller|u1|BCD~5_combout\ & \u2_controller|u1|reg_in\(4))) # (\u2_controller|u1|reg_in\(3) & 
-- (!\u2_controller|u1|BCD~5_combout\ $ (!\u2_controller|u1|reg_in\(4)))))) # (\u2_controller|u1|BCD~4_combout\ & (((!\u2_controller|u1|reg_in\(4))))) ) ) # ( !\u2_controller|u1|BCD~3_combout\ & ( (!\u2_controller|u1|BCD~4_combout\ & 
-- (!\u2_controller|u1|reg_in\(4) $ (((!\u2_controller|u1|reg_in\(3)) # (!\u2_controller|u1|BCD~5_combout\))))) # (\u2_controller|u1|BCD~4_combout\ & (!\u2_controller|u1|reg_in\(4) & (!\u2_controller|u1|reg_in\(3) $ (\u2_controller|u1|BCD~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100111100000000110011110000000011111011000000001111101100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_reg_in\(3),
	datab => \u2_controller|u1|ALT_INV_BCD~5_combout\,
	datac => \u2_controller|u1|ALT_INV_BCD~4_combout\,
	datad => \u2_controller|u1|ALT_INV_reg_in\(4),
	dataf => \u2_controller|u1|ALT_INV_BCD~3_combout\,
	combout => \u2_controller|u1|BCD~7_combout\);

-- Location: MLABCELL_X14_Y6_N36
\u2_controller|u1|BCD~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~6_combout\ = ( \u2_controller|u1|BCD~4_combout\ & ( (!\u2_controller|u1|reg_in\(3) & (!\u2_controller|u1|reg_in\(4) & !\u2_controller|u1|BCD~3_combout\)) # (\u2_controller|u1|reg_in\(3) & (!\u2_controller|u1|reg_in\(4) $ 
-- (!\u2_controller|u1|BCD~3_combout\))) ) ) # ( !\u2_controller|u1|BCD~4_combout\ & ( (!\u2_controller|u1|reg_in\(3) & (((\u2_controller|u1|reg_in\(4) & \u2_controller|u1|BCD~3_combout\)) # (\u2_controller|u1|BCD~5_combout\))) # 
-- (\u2_controller|u1|reg_in\(3) & (!\u2_controller|u1|BCD~5_combout\ & ((!\u2_controller|u1|BCD~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000101010011001100010101010100101010100001010010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_reg_in\(3),
	datab => \u2_controller|u1|ALT_INV_BCD~5_combout\,
	datac => \u2_controller|u1|ALT_INV_reg_in\(4),
	datad => \u2_controller|u1|ALT_INV_BCD~3_combout\,
	dataf => \u2_controller|u1|ALT_INV_BCD~4_combout\,
	combout => \u2_controller|u1|BCD~6_combout\);

-- Location: MLABCELL_X14_Y7_N48
\u2_controller|u1|LessThan26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|LessThan26~0_combout\ = ( \u2_controller|u1|BCD~3_combout\ & ( \u2_controller|u1|BCD~5_combout\ & ( (!\u2_controller|u1|reg_in\(4) & (((!\u2_controller|u1|BCD~4_combout\) # (\u2_controller|u1|reg_in\(3))) # 
-- (\u2_controller|u1|reg_in\(2)))) # (\u2_controller|u1|reg_in\(4) & (((!\u2_controller|u1|reg_in\(3))))) ) ) ) # ( !\u2_controller|u1|BCD~3_combout\ & ( \u2_controller|u1|BCD~5_combout\ & ( (!\u2_controller|u1|reg_in\(4) & (\u2_controller|u1|reg_in\(2) & 
-- (\u2_controller|u1|reg_in\(3)))) # (\u2_controller|u1|reg_in\(4) & (((!\u2_controller|u1|BCD~4_combout\)))) ) ) ) # ( \u2_controller|u1|BCD~3_combout\ & ( !\u2_controller|u1|BCD~5_combout\ & ( (!\u2_controller|u1|reg_in\(4) & 
-- ((!\u2_controller|u1|reg_in\(3) & ((!\u2_controller|u1|BCD~4_combout\) # (\u2_controller|u1|reg_in\(2)))) # (\u2_controller|u1|reg_in\(3) & ((\u2_controller|u1|BCD~4_combout\))))) # (\u2_controller|u1|reg_in\(4) & ((!\u2_controller|u1|reg_in\(3) & 
-- ((\u2_controller|u1|BCD~4_combout\))) # (\u2_controller|u1|reg_in\(3) & (\u2_controller|u1|reg_in\(2) & !\u2_controller|u1|BCD~4_combout\)))) ) ) ) # ( !\u2_controller|u1|BCD~3_combout\ & ( !\u2_controller|u1|BCD~5_combout\ & ( 
-- (!\u2_controller|u1|reg_in\(4) & (((\u2_controller|u1|BCD~4_combout\)))) # (\u2_controller|u1|reg_in\(4) & (!\u2_controller|u1|BCD~4_combout\ & ((\u2_controller|u1|reg_in\(3)) # (\u2_controller|u1|reg_in\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001111001100110000010111110000110111000001001111110001111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_reg_in\(2),
	datab => \u2_controller|u1|ALT_INV_reg_in\(4),
	datac => \u2_controller|u1|ALT_INV_reg_in\(3),
	datad => \u2_controller|u1|ALT_INV_BCD~4_combout\,
	datae => \u2_controller|u1|ALT_INV_BCD~3_combout\,
	dataf => \u2_controller|u1|ALT_INV_BCD~5_combout\,
	combout => \u2_controller|u1|LessThan26~0_combout\);

-- Location: MLABCELL_X14_Y7_N12
\u2_controller|u1|bcd1:BCD[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|bcd1:BCD[1]~0_combout\ = ( \u2_controller|u1|BCD~6_combout\ & ( \u2_controller|u1|LessThan26~0_combout\ & ( (!\u2_controller|u1|reg_in\(1) & ((!\u2_controller|u1|BCD~7_combout\))) # (\u2_controller|u1|reg_in\(1) & 
-- (!\u2_controller|u1|reg_in\(2) & \u2_controller|u1|BCD~7_combout\)) ) ) ) # ( !\u2_controller|u1|BCD~6_combout\ & ( \u2_controller|u1|LessThan26~0_combout\ & ( !\u2_controller|u1|reg_in\(1) $ (((\u2_controller|u1|reg_in\(2) & 
-- \u2_controller|u1|BCD~7_combout\))) ) ) ) # ( \u2_controller|u1|BCD~6_combout\ & ( !\u2_controller|u1|LessThan26~0_combout\ & ( (!\u2_controller|u1|reg_in\(1) & ((\u2_controller|u1|BCD~7_combout\) # (\u2_controller|u1|reg_in\(2)))) ) ) ) # ( 
-- !\u2_controller|u1|BCD~6_combout\ & ( !\u2_controller|u1|LessThan26~0_combout\ & ( !\u2_controller|u1|reg_in\(1) $ (!\u2_controller|u1|BCD~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010000010101010101010101010101001011010101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_reg_in\(1),
	datac => \u2_controller|u1|ALT_INV_reg_in\(2),
	datad => \u2_controller|u1|ALT_INV_BCD~7_combout\,
	datae => \u2_controller|u1|ALT_INV_BCD~6_combout\,
	dataf => \u2_controller|u1|ALT_INV_LessThan26~0_combout\,
	combout => \u2_controller|u1|bcd1:BCD[1]~0_combout\);

-- Location: FF_X14_Y7_N13
\u2_controller|u1|ones[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|u1|bcd1:BCD[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|ones\(1));

-- Location: LABCELL_X17_Y6_N45
\u2_controller|u1|reg_in[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|reg_in[0]~feeder_combout\ = ( \u2_controller|bin_in_char_cnt\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u2_controller|ALT_INV_bin_in_char_cnt\(0),
	combout => \u2_controller|u1|reg_in[0]~feeder_combout\);

-- Location: FF_X17_Y6_N47
\u2_controller|u1|reg_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|u1|reg_in[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|reg_in\(0));

-- Location: FF_X17_Y6_N43
\u2_controller|u1|ones[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u2_controller|u1|reg_in\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|ones\(0));

-- Location: MLABCELL_X14_Y7_N30
\u2_controller|u1|bcd1:BCD[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|bcd1:BCD[2]~0_combout\ = ( \u2_controller|u1|BCD~6_combout\ & ( \u2_controller|u1|LessThan26~0_combout\ & ( !\u2_controller|u1|reg_in\(2) $ (((!\u2_controller|u1|reg_in\(1) & !\u2_controller|u1|BCD~7_combout\))) ) ) ) # ( 
-- !\u2_controller|u1|BCD~6_combout\ & ( \u2_controller|u1|LessThan26~0_combout\ & ( (!\u2_controller|u1|reg_in\(1) & (\u2_controller|u1|reg_in\(2) & !\u2_controller|u1|BCD~7_combout\)) # (\u2_controller|u1|reg_in\(1) & (!\u2_controller|u1|reg_in\(2))) ) ) ) 
-- # ( \u2_controller|u1|BCD~6_combout\ & ( !\u2_controller|u1|LessThan26~0_combout\ & ( (!\u2_controller|u1|reg_in\(1) & (!\u2_controller|u1|reg_in\(2) & \u2_controller|u1|BCD~7_combout\)) # (\u2_controller|u1|reg_in\(1) & (\u2_controller|u1|reg_in\(2))) ) 
-- ) ) # ( !\u2_controller|u1|BCD~6_combout\ & ( !\u2_controller|u1|LessThan26~0_combout\ & ( !\u2_controller|u1|reg_in\(2) $ (((!\u2_controller|u1|BCD~7_combout\) # (\u2_controller|u1|reg_in\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110100101000001011010010101011010010100000101101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_reg_in\(1),
	datac => \u2_controller|u1|ALT_INV_reg_in\(2),
	datad => \u2_controller|u1|ALT_INV_BCD~7_combout\,
	datae => \u2_controller|u1|ALT_INV_BCD~6_combout\,
	dataf => \u2_controller|u1|ALT_INV_LessThan26~0_combout\,
	combout => \u2_controller|u1|bcd1:BCD[2]~0_combout\);

-- Location: FF_X14_Y7_N31
\u2_controller|u1|ones[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|u1|bcd1:BCD[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|ones\(2));

-- Location: LABCELL_X15_Y6_N12
\u2_controller|u1|bcd1:BCD[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|bcd1:BCD[3]~0_combout\ = ( \u2_controller|u1|LessThan26~0_combout\ & ( (!\u2_controller|u1|BCD~6_combout\ & (\u2_controller|u1|reg_in\(1) & (\u2_controller|u1|reg_in\(2) & !\u2_controller|u1|BCD~7_combout\))) # 
-- (\u2_controller|u1|BCD~6_combout\ & ((!\u2_controller|u1|reg_in\(2) & ((!\u2_controller|u1|BCD~7_combout\))) # (\u2_controller|u1|reg_in\(2) & (!\u2_controller|u1|reg_in\(1))))) ) ) # ( !\u2_controller|u1|LessThan26~0_combout\ & ( 
-- (!\u2_controller|u1|BCD~6_combout\ & (\u2_controller|u1|BCD~7_combout\ & ((\u2_controller|u1|reg_in\(2)) # (\u2_controller|u1|reg_in\(1))))) # (\u2_controller|u1|BCD~6_combout\ & (!\u2_controller|u1|reg_in\(1) & (!\u2_controller|u1|reg_in\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001101010010000000110101001010110000001000101011000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_BCD~6_combout\,
	datab => \u2_controller|u1|ALT_INV_reg_in\(1),
	datac => \u2_controller|u1|ALT_INV_reg_in\(2),
	datad => \u2_controller|u1|ALT_INV_BCD~7_combout\,
	dataf => \u2_controller|u1|ALT_INV_LessThan26~0_combout\,
	combout => \u2_controller|u1|bcd1:BCD[3]~0_combout\);

-- Location: FF_X15_Y6_N13
\u2_controller|u1|ones[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|u1|bcd1:BCD[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|ones\(3));

-- Location: LABCELL_X15_Y7_N24
\u5_ones|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_ones|Mux6~0_combout\ = ( \u2_controller|u1|ones\(3) & ( (\u2_controller|u1|ones\(2)) # (\u2_controller|u1|ones\(1)) ) ) # ( !\u2_controller|u1|ones\(3) & ( (!\u2_controller|u1|ones\(1) & (!\u2_controller|u1|ones\(0) $ (!\u2_controller|u1|ones\(2)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_ones\(1),
	datab => \u2_controller|u1|ALT_INV_ones\(0),
	datac => \u2_controller|u1|ALT_INV_ones\(2),
	dataf => \u2_controller|u1|ALT_INV_ones\(3),
	combout => \u5_ones|Mux6~0_combout\);

-- Location: LABCELL_X15_Y7_N9
\u5_ones|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_ones|Mux5~0_combout\ = ( \u2_controller|u1|ones\(1) & ( \u2_controller|u1|ones\(3) ) ) # ( !\u2_controller|u1|ones\(1) & ( \u2_controller|u1|ones\(3) & ( \u2_controller|u1|ones\(2) ) ) ) # ( \u2_controller|u1|ones\(1) & ( !\u2_controller|u1|ones\(3) & 
-- ( (\u2_controller|u1|ones\(2) & !\u2_controller|u1|ones\(0)) ) ) ) # ( !\u2_controller|u1|ones\(1) & ( !\u2_controller|u1|ones\(3) & ( (\u2_controller|u1|ones\(2) & \u2_controller|u1|ones\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010100000101000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_ones\(2),
	datac => \u2_controller|u1|ALT_INV_ones\(0),
	datae => \u2_controller|u1|ALT_INV_ones\(1),
	dataf => \u2_controller|u1|ALT_INV_ones\(3),
	combout => \u5_ones|Mux5~0_combout\);

-- Location: LABCELL_X15_Y7_N15
\u5_ones|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_ones|Mux4~0_combout\ = ( \u2_controller|u1|ones\(1) & ( \u2_controller|u1|ones\(3) ) ) # ( !\u2_controller|u1|ones\(1) & ( \u2_controller|u1|ones\(3) & ( \u2_controller|u1|ones\(2) ) ) ) # ( \u2_controller|u1|ones\(1) & ( !\u2_controller|u1|ones\(3) & 
-- ( (!\u2_controller|u1|ones\(2) & !\u2_controller|u1|ones\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_ones\(2),
	datac => \u2_controller|u1|ALT_INV_ones\(0),
	datae => \u2_controller|u1|ALT_INV_ones\(1),
	dataf => \u2_controller|u1|ALT_INV_ones\(3),
	combout => \u5_ones|Mux4~0_combout\);

-- Location: LABCELL_X15_Y7_N33
\u5_ones|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_ones|Mux3~0_combout\ = ( \u2_controller|u1|ones\(1) & ( \u2_controller|u1|ones\(3) ) ) # ( !\u2_controller|u1|ones\(1) & ( \u2_controller|u1|ones\(3) & ( \u2_controller|u1|ones\(2) ) ) ) # ( \u2_controller|u1|ones\(1) & ( !\u2_controller|u1|ones\(3) & 
-- ( (\u2_controller|u1|ones\(2) & \u2_controller|u1|ones\(0)) ) ) ) # ( !\u2_controller|u1|ones\(1) & ( !\u2_controller|u1|ones\(3) & ( !\u2_controller|u1|ones\(2) $ (!\u2_controller|u1|ones\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000001010000010101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_ones\(2),
	datac => \u2_controller|u1|ALT_INV_ones\(0),
	datae => \u2_controller|u1|ALT_INV_ones\(1),
	dataf => \u2_controller|u1|ALT_INV_ones\(3),
	combout => \u5_ones|Mux3~0_combout\);

-- Location: LABCELL_X15_Y7_N36
\u5_ones|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_ones|Mux2~0_combout\ = ( \u2_controller|u1|ones\(3) & ( ((\u2_controller|u1|ones\(2)) # (\u2_controller|u1|ones\(0))) # (\u2_controller|u1|ones\(1)) ) ) # ( !\u2_controller|u1|ones\(3) & ( ((!\u2_controller|u1|ones\(1) & \u2_controller|u1|ones\(2))) # 
-- (\u2_controller|u1|ones\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_ones\(1),
	datab => \u2_controller|u1|ALT_INV_ones\(0),
	datac => \u2_controller|u1|ALT_INV_ones\(2),
	dataf => \u2_controller|u1|ALT_INV_ones\(3),
	combout => \u5_ones|Mux2~0_combout\);

-- Location: LABCELL_X15_Y7_N54
\u5_ones|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_ones|Mux1~0_combout\ = ( \u2_controller|u1|ones\(3) & ( (\u2_controller|u1|ones\(2)) # (\u2_controller|u1|ones\(1)) ) ) # ( !\u2_controller|u1|ones\(3) & ( (!\u2_controller|u1|ones\(1) & (\u2_controller|u1|ones\(0) & !\u2_controller|u1|ones\(2))) # 
-- (\u2_controller|u1|ones\(1) & ((!\u2_controller|u1|ones\(2)) # (\u2_controller|u1|ones\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_ones\(1),
	datab => \u2_controller|u1|ALT_INV_ones\(0),
	datac => \u2_controller|u1|ALT_INV_ones\(2),
	dataf => \u2_controller|u1|ALT_INV_ones\(3),
	combout => \u5_ones|Mux1~0_combout\);

-- Location: LABCELL_X15_Y7_N51
\u5_ones|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_ones|Mux0~0_combout\ = ( !\u2_controller|u1|ones\(1) & ( \u2_controller|u1|ones\(3) & ( !\u2_controller|u1|ones\(2) ) ) ) # ( \u2_controller|u1|ones\(1) & ( !\u2_controller|u1|ones\(3) & ( (!\u2_controller|u1|ones\(2)) # (!\u2_controller|u1|ones\(0)) 
-- ) ) ) # ( !\u2_controller|u1|ones\(1) & ( !\u2_controller|u1|ones\(3) & ( \u2_controller|u1|ones\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111110101111101010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_ones\(2),
	datac => \u2_controller|u1|ALT_INV_ones\(0),
	datae => \u2_controller|u1|ALT_INV_ones\(1),
	dataf => \u2_controller|u1|ALT_INV_ones\(3),
	combout => \u5_ones|Mux0~0_combout\);

-- Location: LABCELL_X15_Y6_N15
\u2_controller|u1|bcd1:BCD[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|bcd1:BCD[4]~0_combout\ = ( \u2_controller|u1|LessThan26~0_combout\ & ( !\u2_controller|u1|BCD~7_combout\ $ (((\u2_controller|u1|BCD~6_combout\ & (\u2_controller|u1|reg_in\(1) & \u2_controller|u1|reg_in\(2))))) ) ) # ( 
-- !\u2_controller|u1|LessThan26~0_combout\ & ( !\u2_controller|u1|BCD~7_combout\ $ (((!\u2_controller|u1|BCD~6_combout\) # ((!\u2_controller|u1|reg_in\(1) & !\u2_controller|u1|reg_in\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001011010000111100101101011110000111000011111000011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_BCD~6_combout\,
	datab => \u2_controller|u1|ALT_INV_reg_in\(1),
	datac => \u2_controller|u1|ALT_INV_BCD~7_combout\,
	datad => \u2_controller|u1|ALT_INV_reg_in\(2),
	dataf => \u2_controller|u1|ALT_INV_LessThan26~0_combout\,
	combout => \u2_controller|u1|bcd1:BCD[4]~0_combout\);

-- Location: FF_X15_Y6_N16
\u2_controller|u1|tenths[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|u1|bcd1:BCD[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|tenths\(0));

-- Location: LABCELL_X13_Y6_N39
\u2_controller|u1|BCD~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~14_combout\ = ( \u2_controller|u1|reg_in\(9) & ( \u2_controller|u1|reg_in\(8) & ( (!\u2_controller|u1|reg_in\(10) & ((!\u2_controller|u1|reg_in\(11) & (!\u2_controller|u1|reg_in\(13) & \u2_controller|u1|reg_in\(12))) # 
-- (\u2_controller|u1|reg_in\(11) & (\u2_controller|u1|reg_in\(13))))) # (\u2_controller|u1|reg_in\(10) & (!\u2_controller|u1|reg_in\(13) $ (((!\u2_controller|u1|reg_in\(11) & \u2_controller|u1|reg_in\(12)))))) ) ) ) # ( !\u2_controller|u1|reg_in\(9) & ( 
-- \u2_controller|u1|reg_in\(8) & ( (!\u2_controller|u1|reg_in\(12) & (!\u2_controller|u1|reg_in\(10) $ (((!\u2_controller|u1|reg_in\(11) & !\u2_controller|u1|reg_in\(13)))))) # (\u2_controller|u1|reg_in\(12) & (!\u2_controller|u1|reg_in\(10) & 
-- (!\u2_controller|u1|reg_in\(11) $ (\u2_controller|u1|reg_in\(13))))) ) ) ) # ( \u2_controller|u1|reg_in\(9) & ( !\u2_controller|u1|reg_in\(8) & ( (!\u2_controller|u1|reg_in\(10) & (!\u2_controller|u1|reg_in\(13) $ (((!\u2_controller|u1|reg_in\(12)) # 
-- (\u2_controller|u1|reg_in\(11)))))) # (\u2_controller|u1|reg_in\(10) & (!\u2_controller|u1|reg_in\(13) & (!\u2_controller|u1|reg_in\(11) $ (\u2_controller|u1|reg_in\(12))))) ) ) ) # ( !\u2_controller|u1|reg_in\(9) & ( !\u2_controller|u1|reg_in\(8) & ( 
-- (!\u2_controller|u1|reg_in\(10) & ((!\u2_controller|u1|reg_in\(11) & (!\u2_controller|u1|reg_in\(13) $ (!\u2_controller|u1|reg_in\(12)))) # (\u2_controller|u1|reg_in\(11) & ((!\u2_controller|u1|reg_in\(12)) # (\u2_controller|u1|reg_in\(13)))))) # 
-- (\u2_controller|u1|reg_in\(10) & (\u2_controller|u1|reg_in\(11) & (\u2_controller|u1|reg_in\(13) & !\u2_controller|u1|reg_in\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101110000010010010101001001001101010100000100101001010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_reg_in\(10),
	datab => \u2_controller|u1|ALT_INV_reg_in\(11),
	datac => \u2_controller|u1|ALT_INV_reg_in\(13),
	datad => \u2_controller|u1|ALT_INV_reg_in\(12),
	datae => \u2_controller|u1|ALT_INV_reg_in\(9),
	dataf => \u2_controller|u1|ALT_INV_reg_in\(8),
	combout => \u2_controller|u1|BCD~14_combout\);

-- Location: LABCELL_X13_Y6_N21
\u2_controller|u1|BCD~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~15_combout\ = ( \u2_controller|u1|reg_in\(10) & ( \u2_controller|u1|reg_in\(8) & ( (!\u2_controller|u1|reg_in\(13) & (\u2_controller|u1|reg_in\(11) & !\u2_controller|u1|reg_in\(12))) # (\u2_controller|u1|reg_in\(13) & 
-- (!\u2_controller|u1|reg_in\(11) $ (\u2_controller|u1|reg_in\(12)))) ) ) ) # ( !\u2_controller|u1|reg_in\(10) & ( \u2_controller|u1|reg_in\(8) & ( (!\u2_controller|u1|reg_in\(13) & ((!\u2_controller|u1|reg_in\(11) & ((\u2_controller|u1|reg_in\(12)))) # 
-- (\u2_controller|u1|reg_in\(11) & (\u2_controller|u1|reg_in\(9) & !\u2_controller|u1|reg_in\(12))))) # (\u2_controller|u1|reg_in\(13) & (!\u2_controller|u1|reg_in\(12) & ((\u2_controller|u1|reg_in\(11)) # (\u2_controller|u1|reg_in\(9))))) ) ) ) # ( 
-- \u2_controller|u1|reg_in\(10) & ( !\u2_controller|u1|reg_in\(8) & ( (!\u2_controller|u1|reg_in\(13) & (((\u2_controller|u1|reg_in\(11) & !\u2_controller|u1|reg_in\(12))))) # (\u2_controller|u1|reg_in\(13) & ((!\u2_controller|u1|reg_in\(11) & 
-- ((!\u2_controller|u1|reg_in\(12)))) # (\u2_controller|u1|reg_in\(11) & ((!\u2_controller|u1|reg_in\(9)) # (\u2_controller|u1|reg_in\(12)))))) ) ) ) # ( !\u2_controller|u1|reg_in\(10) & ( !\u2_controller|u1|reg_in\(8) & ( (!\u2_controller|u1|reg_in\(11) & 
-- (((!\u2_controller|u1|reg_in\(13) & \u2_controller|u1|reg_in\(12))))) # (\u2_controller|u1|reg_in\(11) & (!\u2_controller|u1|reg_in\(12) & ((\u2_controller|u1|reg_in\(13)) # (\u2_controller|u1|reg_in\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111000000001111100000001100010111110000000011110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_reg_in\(9),
	datab => \u2_controller|u1|ALT_INV_reg_in\(13),
	datac => \u2_controller|u1|ALT_INV_reg_in\(11),
	datad => \u2_controller|u1|ALT_INV_reg_in\(12),
	datae => \u2_controller|u1|ALT_INV_reg_in\(10),
	dataf => \u2_controller|u1|ALT_INV_reg_in\(8),
	combout => \u2_controller|u1|BCD~15_combout\);

-- Location: LABCELL_X13_Y6_N6
\u2_controller|u1|BCD~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~12_combout\ = ( \u2_controller|u1|reg_in\(6) & ( (!\u2_controller|u1|BCD~2_combout\ & (!\u2_controller|u1|BCD~0_combout\ $ (((!\u2_controller|u1|BCD~1_combout\) # (\u2_controller|u1|reg_in\(7)))))) # (\u2_controller|u1|BCD~2_combout\ 
-- & (!\u2_controller|u1|BCD~1_combout\ $ (((\u2_controller|u1|reg_in\(7) & \u2_controller|u1|BCD~0_combout\))))) ) ) # ( !\u2_controller|u1|reg_in\(6) & ( (!\u2_controller|u1|BCD~2_combout\ & ((!\u2_controller|u1|BCD~1_combout\ & 
-- (\u2_controller|u1|reg_in\(7) & \u2_controller|u1|BCD~0_combout\)) # (\u2_controller|u1|BCD~1_combout\ & (!\u2_controller|u1|reg_in\(7) & !\u2_controller|u1|BCD~0_combout\)))) # (\u2_controller|u1|BCD~2_combout\ & (!\u2_controller|u1|BCD~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010001001100011001000100110001100100110010110110010011001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_BCD~2_combout\,
	datab => \u2_controller|u1|ALT_INV_BCD~1_combout\,
	datac => \u2_controller|u1|ALT_INV_reg_in\(7),
	datad => \u2_controller|u1|ALT_INV_BCD~0_combout\,
	dataf => \u2_controller|u1|ALT_INV_reg_in\(6),
	combout => \u2_controller|u1|BCD~12_combout\);

-- Location: LABCELL_X13_Y6_N9
\u2_controller|u1|BCD~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~13_combout\ = ( \u2_controller|u1|reg_in\(7) & ( !\u2_controller|u1|BCD~2_combout\ $ (\u2_controller|u1|BCD~1_combout\) ) ) # ( !\u2_controller|u1|reg_in\(7) & ( !\u2_controller|u1|BCD~2_combout\ $ (((\u2_controller|u1|BCD~1_combout\ 
-- & \u2_controller|u1|BCD~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100110101001101010011010100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_BCD~2_combout\,
	datab => \u2_controller|u1|ALT_INV_BCD~1_combout\,
	datac => \u2_controller|u1|ALT_INV_BCD~0_combout\,
	dataf => \u2_controller|u1|ALT_INV_reg_in\(7),
	combout => \u2_controller|u1|BCD~13_combout\);

-- Location: LABCELL_X13_Y6_N33
\u2_controller|u1|BCD~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~16_combout\ = ( \u2_controller|u1|reg_in\(10) & ( \u2_controller|u1|reg_in\(8) & ( (!\u2_controller|u1|reg_in\(12) & (\u2_controller|u1|reg_in\(11) & \u2_controller|u1|reg_in\(13))) # (\u2_controller|u1|reg_in\(12) & 
-- (!\u2_controller|u1|reg_in\(11) & !\u2_controller|u1|reg_in\(13))) ) ) ) # ( !\u2_controller|u1|reg_in\(10) & ( \u2_controller|u1|reg_in\(8) & ( (\u2_controller|u1|reg_in\(12) & (!\u2_controller|u1|reg_in\(11) & (\u2_controller|u1|reg_in\(13) & 
-- !\u2_controller|u1|reg_in\(9)))) ) ) ) # ( \u2_controller|u1|reg_in\(10) & ( !\u2_controller|u1|reg_in\(8) & ( (!\u2_controller|u1|reg_in\(12) & (\u2_controller|u1|reg_in\(11) & (\u2_controller|u1|reg_in\(13) & \u2_controller|u1|reg_in\(9)))) # 
-- (\u2_controller|u1|reg_in\(12) & (!\u2_controller|u1|reg_in\(11) & (!\u2_controller|u1|reg_in\(13)))) ) ) ) # ( !\u2_controller|u1|reg_in\(10) & ( !\u2_controller|u1|reg_in\(8) & ( (\u2_controller|u1|reg_in\(12) & (!\u2_controller|u1|reg_in\(9) & 
-- (!\u2_controller|u1|reg_in\(11) $ (!\u2_controller|u1|reg_in\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000000000010000000100001000000100000000000100001001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_reg_in\(12),
	datab => \u2_controller|u1|ALT_INV_reg_in\(11),
	datac => \u2_controller|u1|ALT_INV_reg_in\(13),
	datad => \u2_controller|u1|ALT_INV_reg_in\(9),
	datae => \u2_controller|u1|ALT_INV_reg_in\(10),
	dataf => \u2_controller|u1|ALT_INV_reg_in\(8),
	combout => \u2_controller|u1|BCD~16_combout\);

-- Location: LABCELL_X13_Y6_N45
\u2_controller|u1|BCD~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~11_combout\ = ( \u2_controller|u1|BCD~1_combout\ & ( \u2_controller|u1|reg_in\(5) & ( (!\u2_controller|u1|reg_in\(6) & (((!\u2_controller|u1|reg_in\(7) & !\u2_controller|u1|BCD~2_combout\)) # (\u2_controller|u1|BCD~0_combout\))) # 
-- (\u2_controller|u1|reg_in\(6) & (!\u2_controller|u1|reg_in\(7))) ) ) ) # ( !\u2_controller|u1|BCD~1_combout\ & ( \u2_controller|u1|reg_in\(5) & ( (!\u2_controller|u1|reg_in\(6) & (!\u2_controller|u1|reg_in\(7) $ ((!\u2_controller|u1|BCD~0_combout\)))) # 
-- (\u2_controller|u1|reg_in\(6) & ((!\u2_controller|u1|BCD~2_combout\ & (\u2_controller|u1|reg_in\(7))) # (\u2_controller|u1|BCD~2_combout\ & ((!\u2_controller|u1|BCD~0_combout\))))) ) ) ) # ( \u2_controller|u1|BCD~1_combout\ & ( 
-- !\u2_controller|u1|reg_in\(5) & ( (!\u2_controller|u1|BCD~0_combout\ & (!\u2_controller|u1|reg_in\(7) & ((!\u2_controller|u1|BCD~2_combout\)))) # (\u2_controller|u1|BCD~0_combout\ & (!\u2_controller|u1|reg_in\(7) $ ((!\u2_controller|u1|reg_in\(6))))) ) ) 
-- ) # ( !\u2_controller|u1|BCD~1_combout\ & ( !\u2_controller|u1|reg_in\(5) & ( (!\u2_controller|u1|reg_in\(7) & (\u2_controller|u1|BCD~0_combout\ & ((!\u2_controller|u1|reg_in\(6)) # (\u2_controller|u1|BCD~2_combout\)))) # (\u2_controller|u1|reg_in\(7) & 
-- (!\u2_controller|u1|BCD~0_combout\ & ((\u2_controller|u1|BCD~2_combout\) # (\u2_controller|u1|reg_in\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100001011010101001100000011001011001011110001010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_reg_in\(7),
	datab => \u2_controller|u1|ALT_INV_reg_in\(6),
	datac => \u2_controller|u1|ALT_INV_BCD~0_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~2_combout\,
	datae => \u2_controller|u1|ALT_INV_BCD~1_combout\,
	dataf => \u2_controller|u1|ALT_INV_reg_in\(5),
	combout => \u2_controller|u1|BCD~11_combout\);

-- Location: MLABCELL_X14_Y6_N6
\u2_controller|u1|BCD~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~19_combout\ = ( \u2_controller|u1|BCD~16_combout\ & ( \u2_controller|u1|BCD~11_combout\ & ( (!\u2_controller|u1|BCD~14_combout\ & (!\u2_controller|u1|BCD~15_combout\ & (\u2_controller|u1|BCD~12_combout\ & 
-- !\u2_controller|u1|BCD~13_combout\))) # (\u2_controller|u1|BCD~14_combout\ & (!\u2_controller|u1|BCD~12_combout\ & (!\u2_controller|u1|BCD~15_combout\ $ (!\u2_controller|u1|BCD~13_combout\)))) ) ) ) # ( !\u2_controller|u1|BCD~16_combout\ & ( 
-- \u2_controller|u1|BCD~11_combout\ & ( (!\u2_controller|u1|BCD~14_combout\ & (\u2_controller|u1|BCD~15_combout\ & (\u2_controller|u1|BCD~12_combout\ & \u2_controller|u1|BCD~13_combout\))) # (\u2_controller|u1|BCD~14_combout\ & 
-- (!\u2_controller|u1|BCD~12_combout\ & (!\u2_controller|u1|BCD~15_combout\ $ (!\u2_controller|u1|BCD~13_combout\)))) ) ) ) # ( \u2_controller|u1|BCD~16_combout\ & ( !\u2_controller|u1|BCD~11_combout\ & ( (\u2_controller|u1|BCD~13_combout\ & 
-- ((!\u2_controller|u1|BCD~14_combout\ & ((\u2_controller|u1|BCD~12_combout\))) # (\u2_controller|u1|BCD~14_combout\ & ((!\u2_controller|u1|BCD~15_combout\) # (!\u2_controller|u1|BCD~12_combout\))))) ) ) ) # ( !\u2_controller|u1|BCD~16_combout\ & ( 
-- !\u2_controller|u1|BCD~11_combout\ & ( (!\u2_controller|u1|BCD~15_combout\ & (!\u2_controller|u1|BCD~13_combout\ & (!\u2_controller|u1|BCD~14_combout\ $ (\u2_controller|u1|BCD~12_combout\)))) # (\u2_controller|u1|BCD~15_combout\ & 
-- (\u2_controller|u1|BCD~14_combout\ & (!\u2_controller|u1|BCD~12_combout\ & \u2_controller|u1|BCD~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000010000000000000101111000010000010000100001100001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_BCD~14_combout\,
	datab => \u2_controller|u1|ALT_INV_BCD~15_combout\,
	datac => \u2_controller|u1|ALT_INV_BCD~12_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~13_combout\,
	datae => \u2_controller|u1|ALT_INV_BCD~16_combout\,
	dataf => \u2_controller|u1|ALT_INV_BCD~11_combout\,
	combout => \u2_controller|u1|BCD~19_combout\);

-- Location: MLABCELL_X14_Y6_N18
\u2_controller|u1|BCD~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~17_combout\ = ( \u2_controller|u1|BCD~12_combout\ & ( \u2_controller|u1|BCD~11_combout\ & ( (!\u2_controller|u1|BCD~15_combout\ & ((!\u2_controller|u1|BCD~16_combout\ & ((\u2_controller|u1|BCD~13_combout\))) # 
-- (\u2_controller|u1|BCD~16_combout\ & (\u2_controller|u1|BCD~14_combout\ & !\u2_controller|u1|BCD~13_combout\)))) # (\u2_controller|u1|BCD~15_combout\ & (((!\u2_controller|u1|BCD~13_combout\)))) ) ) ) # ( !\u2_controller|u1|BCD~12_combout\ & ( 
-- \u2_controller|u1|BCD~11_combout\ & ( (!\u2_controller|u1|BCD~15_combout\ & ((!\u2_controller|u1|BCD~14_combout\ & ((\u2_controller|u1|BCD~13_combout\))) # (\u2_controller|u1|BCD~14_combout\ & (!\u2_controller|u1|BCD~16_combout\ & 
-- !\u2_controller|u1|BCD~13_combout\)))) # (\u2_controller|u1|BCD~15_combout\ & (!\u2_controller|u1|BCD~14_combout\ & ((!\u2_controller|u1|BCD~13_combout\) # (\u2_controller|u1|BCD~16_combout\)))) ) ) ) # ( \u2_controller|u1|BCD~12_combout\ & ( 
-- !\u2_controller|u1|BCD~11_combout\ & ( (!\u2_controller|u1|BCD~13_combout\ & (!\u2_controller|u1|BCD~15_combout\ & ((!\u2_controller|u1|BCD~14_combout\)))) # (\u2_controller|u1|BCD~13_combout\ & ((!\u2_controller|u1|BCD~16_combout\ & 
-- (\u2_controller|u1|BCD~15_combout\)) # (\u2_controller|u1|BCD~16_combout\ & ((\u2_controller|u1|BCD~14_combout\))))) ) ) ) # ( !\u2_controller|u1|BCD~12_combout\ & ( !\u2_controller|u1|BCD~11_combout\ & ( (!\u2_controller|u1|BCD~15_combout\ & 
-- ((!\u2_controller|u1|BCD~13_combout\ & (\u2_controller|u1|BCD~16_combout\)) # (\u2_controller|u1|BCD~13_combout\ & ((\u2_controller|u1|BCD~14_combout\))))) # (\u2_controller|u1|BCD~15_combout\ & ((!\u2_controller|u1|BCD~14_combout\ & 
-- (!\u2_controller|u1|BCD~16_combout\ & \u2_controller|u1|BCD~13_combout\)) # (\u2_controller|u1|BCD~14_combout\ & ((!\u2_controller|u1|BCD~13_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011101001010101000000100011101011000101100000101011110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_BCD~15_combout\,
	datab => \u2_controller|u1|ALT_INV_BCD~16_combout\,
	datac => \u2_controller|u1|ALT_INV_BCD~14_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~13_combout\,
	datae => \u2_controller|u1|ALT_INV_BCD~12_combout\,
	dataf => \u2_controller|u1|ALT_INV_BCD~11_combout\,
	combout => \u2_controller|u1|BCD~17_combout\);

-- Location: MLABCELL_X14_Y6_N12
\u2_controller|u1|BCD~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~10_combout\ = ( \u2_controller|u1|BCD~4_combout\ & ( !\u2_controller|u1|BCD~5_combout\ $ (((\u2_controller|u1|BCD~3_combout\) # (\u2_controller|u1|reg_in\(4)))) ) ) # ( !\u2_controller|u1|BCD~4_combout\ & ( 
-- !\u2_controller|u1|BCD~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110010011001001100111001100100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_reg_in\(4),
	datab => \u2_controller|u1|ALT_INV_BCD~5_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~3_combout\,
	dataf => \u2_controller|u1|ALT_INV_BCD~4_combout\,
	combout => \u2_controller|u1|BCD~10_combout\);

-- Location: MLABCELL_X14_Y6_N15
\u2_controller|u1|BCD~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~9_combout\ = ( \u2_controller|u1|reg_in\(3) & ( (!\u2_controller|u1|reg_in\(4) & (!\u2_controller|u1|BCD~4_combout\ $ (((!\u2_controller|u1|BCD~5_combout\ & !\u2_controller|u1|BCD~3_combout\))))) # (\u2_controller|u1|reg_in\(4) & 
-- (!\u2_controller|u1|BCD~3_combout\ $ (((!\u2_controller|u1|BCD~5_combout\) # (\u2_controller|u1|BCD~4_combout\))))) ) ) # ( !\u2_controller|u1|reg_in\(3) & ( (!\u2_controller|u1|BCD~5_combout\ & ((!\u2_controller|u1|reg_in\(4) & 
-- (\u2_controller|u1|BCD~4_combout\ & !\u2_controller|u1|BCD~3_combout\)) # (\u2_controller|u1|reg_in\(4) & (!\u2_controller|u1|BCD~4_combout\ & \u2_controller|u1|BCD~3_combout\)))) # (\u2_controller|u1|BCD~5_combout\ & 
-- (((!\u2_controller|u1|BCD~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100001110000001110000111000000111000111001010011100011100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_reg_in\(4),
	datab => \u2_controller|u1|ALT_INV_BCD~5_combout\,
	datac => \u2_controller|u1|ALT_INV_BCD~4_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~3_combout\,
	dataf => \u2_controller|u1|ALT_INV_reg_in\(3),
	combout => \u2_controller|u1|BCD~9_combout\);

-- Location: MLABCELL_X14_Y6_N48
\u2_controller|u1|BCD~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~18_combout\ = ( \u2_controller|u1|BCD~16_combout\ & ( \u2_controller|u1|BCD~11_combout\ & ( (!\u2_controller|u1|BCD~15_combout\ & (((!\u2_controller|u1|BCD~12_combout\)))) # (\u2_controller|u1|BCD~15_combout\ & 
-- ((!\u2_controller|u1|BCD~14_combout\ & (!\u2_controller|u1|BCD~12_combout\ $ (!\u2_controller|u1|BCD~13_combout\))) # (\u2_controller|u1|BCD~14_combout\ & (\u2_controller|u1|BCD~12_combout\ & \u2_controller|u1|BCD~13_combout\)))) ) ) ) # ( 
-- !\u2_controller|u1|BCD~16_combout\ & ( \u2_controller|u1|BCD~11_combout\ & ( (!\u2_controller|u1|BCD~14_combout\ & (!\u2_controller|u1|BCD~12_combout\ $ (((!\u2_controller|u1|BCD~15_combout\) # (!\u2_controller|u1|BCD~13_combout\))))) # 
-- (\u2_controller|u1|BCD~14_combout\ & ((!\u2_controller|u1|BCD~15_combout\ & (!\u2_controller|u1|BCD~12_combout\ & !\u2_controller|u1|BCD~13_combout\)) # (\u2_controller|u1|BCD~15_combout\ & (\u2_controller|u1|BCD~12_combout\ & 
-- \u2_controller|u1|BCD~13_combout\)))) ) ) ) # ( \u2_controller|u1|BCD~16_combout\ & ( !\u2_controller|u1|BCD~11_combout\ & ( (!\u2_controller|u1|BCD~14_combout\ & ((!\u2_controller|u1|BCD~12_combout\ $ (!\u2_controller|u1|BCD~13_combout\)))) # 
-- (\u2_controller|u1|BCD~14_combout\ & ((!\u2_controller|u1|BCD~15_combout\ & (\u2_controller|u1|BCD~12_combout\ & \u2_controller|u1|BCD~13_combout\)) # (\u2_controller|u1|BCD~15_combout\ & (!\u2_controller|u1|BCD~12_combout\ & 
-- !\u2_controller|u1|BCD~13_combout\)))) ) ) ) # ( !\u2_controller|u1|BCD~16_combout\ & ( !\u2_controller|u1|BCD~11_combout\ & ( (!\u2_controller|u1|BCD~14_combout\ & (\u2_controller|u1|BCD~12_combout\ & ((\u2_controller|u1|BCD~13_combout\) # 
-- (\u2_controller|u1|BCD~15_combout\)))) # (\u2_controller|u1|BCD~14_combout\ & (!\u2_controller|u1|BCD~12_combout\ & ((!\u2_controller|u1|BCD~15_combout\) # (!\u2_controller|u1|BCD~13_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001001001010000110101010010001001010001010011100001011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_BCD~14_combout\,
	datab => \u2_controller|u1|ALT_INV_BCD~15_combout\,
	datac => \u2_controller|u1|ALT_INV_BCD~12_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~13_combout\,
	datae => \u2_controller|u1|ALT_INV_BCD~16_combout\,
	dataf => \u2_controller|u1|ALT_INV_BCD~11_combout\,
	combout => \u2_controller|u1|BCD~18_combout\);

-- Location: MLABCELL_X14_Y6_N54
\u2_controller|u1|BCD~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~8_combout\ = ( \u2_controller|u1|reg_in\(2) & ( \u2_controller|u1|BCD~5_combout\ & ( (!\u2_controller|u1|reg_in\(3) & (!\u2_controller|u1|BCD~3_combout\ $ (((!\u2_controller|u1|reg_in\(4)) # (\u2_controller|u1|BCD~4_combout\))))) # 
-- (\u2_controller|u1|reg_in\(3) & ((!\u2_controller|u1|BCD~4_combout\ & ((!\u2_controller|u1|BCD~3_combout\))) # (\u2_controller|u1|BCD~4_combout\ & (!\u2_controller|u1|reg_in\(4))))) ) ) ) # ( !\u2_controller|u1|reg_in\(2) & ( 
-- \u2_controller|u1|BCD~5_combout\ & ( (!\u2_controller|u1|BCD~3_combout\ & (((\u2_controller|u1|reg_in\(4) & !\u2_controller|u1|BCD~4_combout\)))) # (\u2_controller|u1|BCD~3_combout\ & (!\u2_controller|u1|reg_in\(4) $ (((!\u2_controller|u1|reg_in\(3) & 
-- \u2_controller|u1|BCD~4_combout\))))) ) ) ) # ( \u2_controller|u1|reg_in\(2) & ( !\u2_controller|u1|BCD~5_combout\ & ( (!\u2_controller|u1|reg_in\(4) & (((!\u2_controller|u1|reg_in\(3) & \u2_controller|u1|BCD~3_combout\)) # 
-- (\u2_controller|u1|BCD~4_combout\))) # (\u2_controller|u1|reg_in\(4) & (!\u2_controller|u1|BCD~4_combout\ $ (((!\u2_controller|u1|reg_in\(3) & \u2_controller|u1|BCD~3_combout\))))) ) ) ) # ( !\u2_controller|u1|reg_in\(2) & ( 
-- !\u2_controller|u1|BCD~5_combout\ & ( (!\u2_controller|u1|reg_in\(4) & (!\u2_controller|u1|BCD~4_combout\ $ (((!\u2_controller|u1|BCD~3_combout\) # (\u2_controller|u1|reg_in\(3)))))) # (\u2_controller|u1|reg_in\(4) & ((!\u2_controller|u1|reg_in\(3) & 
-- (\u2_controller|u1|BCD~3_combout\ & \u2_controller|u1|BCD~4_combout\)) # (\u2_controller|u1|reg_in\(3) & (!\u2_controller|u1|BCD~3_combout\ & !\u2_controller|u1|BCD~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100011000110001110011100111000111100000001100111100001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_reg_in\(3),
	datab => \u2_controller|u1|ALT_INV_reg_in\(4),
	datac => \u2_controller|u1|ALT_INV_BCD~3_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~4_combout\,
	datae => \u2_controller|u1|ALT_INV_reg_in\(2),
	dataf => \u2_controller|u1|ALT_INV_BCD~5_combout\,
	combout => \u2_controller|u1|BCD~8_combout\);

-- Location: LABCELL_X15_Y6_N48
\u2_controller|u1|bcd1:BCD[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|bcd1:BCD[7]~0_combout\ = ( \u2_controller|u1|BCD~18_combout\ & ( \u2_controller|u1|BCD~8_combout\ & ( (!\u2_controller|u1|BCD~17_combout\ & (!\u2_controller|u1|BCD~19_combout\ & (\u2_controller|u1|BCD~10_combout\ & 
-- \u2_controller|u1|BCD~9_combout\))) # (\u2_controller|u1|BCD~17_combout\ & (((!\u2_controller|u1|BCD~10_combout\ & !\u2_controller|u1|BCD~9_combout\)))) ) ) ) # ( !\u2_controller|u1|BCD~18_combout\ & ( \u2_controller|u1|BCD~8_combout\ & ( 
-- (!\u2_controller|u1|BCD~17_combout\ & (\u2_controller|u1|BCD~19_combout\ & (!\u2_controller|u1|BCD~10_combout\ & \u2_controller|u1|BCD~9_combout\))) # (\u2_controller|u1|BCD~17_combout\ & (((\u2_controller|u1|BCD~10_combout\ & 
-- !\u2_controller|u1|BCD~9_combout\)))) ) ) ) # ( \u2_controller|u1|BCD~18_combout\ & ( !\u2_controller|u1|BCD~8_combout\ & ( (\u2_controller|u1|BCD~10_combout\ & ((!\u2_controller|u1|BCD~17_combout\ & (\u2_controller|u1|BCD~19_combout\ & 
-- \u2_controller|u1|BCD~9_combout\)) # (\u2_controller|u1|BCD~17_combout\ & ((!\u2_controller|u1|BCD~9_combout\))))) ) ) ) # ( !\u2_controller|u1|BCD~18_combout\ & ( !\u2_controller|u1|BCD~8_combout\ & ( (!\u2_controller|u1|BCD~19_combout\ & 
-- (!\u2_controller|u1|BCD~10_combout\ & (!\u2_controller|u1|BCD~17_combout\ $ (\u2_controller|u1|BCD~9_combout\)))) # (\u2_controller|u1|BCD~19_combout\ & (\u2_controller|u1|BCD~10_combout\ & ((\u2_controller|u1|BCD~9_combout\) # 
-- (\u2_controller|u1|BCD~17_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100100101000000110000010000000011010000000011000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_BCD~19_combout\,
	datab => \u2_controller|u1|ALT_INV_BCD~17_combout\,
	datac => \u2_controller|u1|ALT_INV_BCD~10_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~9_combout\,
	datae => \u2_controller|u1|ALT_INV_BCD~18_combout\,
	dataf => \u2_controller|u1|ALT_INV_BCD~8_combout\,
	combout => \u2_controller|u1|bcd1:BCD[7]~0_combout\);

-- Location: FF_X15_Y6_N49
\u2_controller|u1|tenths[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|u1|bcd1:BCD[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|tenths\(3));

-- Location: MLABCELL_X14_Y6_N24
\u2_controller|u1|bcd1:BCD[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|bcd1:BCD[5]~0_combout\ = ( \u2_controller|u1|BCD~8_combout\ & ( \u2_controller|u1|BCD~17_combout\ & ( (!\u2_controller|u1|BCD~10_combout\ & (!\u2_controller|u1|BCD~9_combout\ $ (((\u2_controller|u1|BCD~18_combout\) # 
-- (\u2_controller|u1|BCD~19_combout\))))) # (\u2_controller|u1|BCD~10_combout\ & (!\u2_controller|u1|BCD~19_combout\ & (!\u2_controller|u1|BCD~18_combout\ & \u2_controller|u1|BCD~9_combout\))) ) ) ) # ( !\u2_controller|u1|BCD~8_combout\ & ( 
-- \u2_controller|u1|BCD~17_combout\ & ( (!\u2_controller|u1|BCD~10_combout\ & (!\u2_controller|u1|BCD~9_combout\ & ((\u2_controller|u1|BCD~18_combout\) # (\u2_controller|u1|BCD~19_combout\)))) # (\u2_controller|u1|BCD~10_combout\ & 
-- ((!\u2_controller|u1|BCD~18_combout\ & ((!\u2_controller|u1|BCD~9_combout\) # (\u2_controller|u1|BCD~19_combout\))) # (\u2_controller|u1|BCD~18_combout\ & ((\u2_controller|u1|BCD~9_combout\))))) ) ) ) # ( \u2_controller|u1|BCD~8_combout\ & ( 
-- !\u2_controller|u1|BCD~17_combout\ & ( (!\u2_controller|u1|BCD~10_combout\ & (((\u2_controller|u1|BCD~18_combout\)))) # (\u2_controller|u1|BCD~10_combout\ & ((!\u2_controller|u1|BCD~19_combout\ & (!\u2_controller|u1|BCD~18_combout\)) # 
-- (\u2_controller|u1|BCD~19_combout\ & ((!\u2_controller|u1|BCD~9_combout\))))) ) ) ) # ( !\u2_controller|u1|BCD~8_combout\ & ( !\u2_controller|u1|BCD~17_combout\ & ( (!\u2_controller|u1|BCD~10_combout\ & (!\u2_controller|u1|BCD~18_combout\ & 
-- ((\u2_controller|u1|BCD~9_combout\) # (\u2_controller|u1|BCD~19_combout\)))) # (\u2_controller|u1|BCD~10_combout\ & (!\u2_controller|u1|BCD~19_combout\ & (\u2_controller|u1|BCD~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001011000010001111010010110001111100000100111000000001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_BCD~19_combout\,
	datab => \u2_controller|u1|ALT_INV_BCD~10_combout\,
	datac => \u2_controller|u1|ALT_INV_BCD~18_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~9_combout\,
	datae => \u2_controller|u1|ALT_INV_BCD~8_combout\,
	dataf => \u2_controller|u1|ALT_INV_BCD~17_combout\,
	combout => \u2_controller|u1|bcd1:BCD[5]~0_combout\);

-- Location: FF_X14_Y6_N25
\u2_controller|u1|tenths[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|u1|bcd1:BCD[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|tenths\(1));

-- Location: LABCELL_X17_Y5_N51
\u2_controller|LessThan9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|LessThan9~2_combout\ = (\u2_controller|chars_cnt[3]~DUPLICATE_q\ & ((\u2_controller|chars_cnt\(2)) # (\u2_controller|chars_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010100000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_chars_cnt[3]~DUPLICATE_q\,
	datac => \u2_controller|ALT_INV_chars_cnt\(1),
	datad => \u2_controller|ALT_INV_chars_cnt\(2),
	combout => \u2_controller|LessThan9~2_combout\);

-- Location: LABCELL_X17_Y5_N48
\u2_controller|DISPLAY_SHUTDOWNn~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|DISPLAY_SHUTDOWNn~0_combout\ = ( \u2_controller|chars_cnt[7]~DUPLICATE_q\ & ( (\u2_controller|chars_cnt[8]~DUPLICATE_q\ & (\u2_controller|chars_cnt\(9) & ((\u2_controller|chars_cnt\(4)) # (\u2_controller|chars_cnt[3]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000110000000100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_chars_cnt[3]~DUPLICATE_q\,
	datab => \u2_controller|ALT_INV_chars_cnt[8]~DUPLICATE_q\,
	datac => \u2_controller|ALT_INV_chars_cnt\(9),
	datad => \u2_controller|ALT_INV_chars_cnt\(4),
	dataf => \u2_controller|ALT_INV_chars_cnt[7]~DUPLICATE_q\,
	combout => \u2_controller|DISPLAY_SHUTDOWNn~0_combout\);

-- Location: MLABCELL_X19_Y5_N45
\u2_controller|DISPLAY_SHUTDOWNn~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|DISPLAY_SHUTDOWNn~1_combout\ = ( \u2_controller|chars_cnt[5]~DUPLICATE_q\ & ( \u2_controller|LessThan1~0_combout\ & ( (!\u2_controller|chars_cnt[6]~DUPLICATE_q\ & ((!\u2_controller|LessThan9~0_combout\) # 
-- ((\u2_controller|LessThan9~2_combout\)))) # (\u2_controller|chars_cnt[6]~DUPLICATE_q\ & (!\u2_controller|DISPLAY_SHUTDOWNn~0_combout\ & ((!\u2_controller|LessThan9~0_combout\) # (\u2_controller|LessThan9~2_combout\)))) ) ) ) # ( 
-- !\u2_controller|chars_cnt[5]~DUPLICATE_q\ & ( \u2_controller|LessThan1~0_combout\ & ( (!\u2_controller|LessThan9~0_combout\) # (\u2_controller|LessThan9~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001111110011111100111110001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_chars_cnt[6]~DUPLICATE_q\,
	datab => \u2_controller|ALT_INV_LessThan9~0_combout\,
	datac => \u2_controller|ALT_INV_LessThan9~2_combout\,
	datad => \u2_controller|ALT_INV_DISPLAY_SHUTDOWNn~0_combout\,
	datae => \u2_controller|ALT_INV_chars_cnt[5]~DUPLICATE_q\,
	dataf => \u2_controller|ALT_INV_LessThan1~0_combout\,
	combout => \u2_controller|DISPLAY_SHUTDOWNn~1_combout\);

-- Location: MLABCELL_X19_Y5_N57
\u2_controller|DISPLAY_SHUTDOWNn[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|DISPLAY_SHUTDOWNn[1]~2_combout\ = ( \u2_controller|chars_cnt[6]~DUPLICATE_q\ & ( \u2_controller|DISPLAY_SHUTDOWNn~0_combout\ & ( (!\u2_controller|current_state.st_idle~q\) # ((\u2_controller|LessThan1~0_combout\ & 
-- !\u2_controller|chars_cnt[5]~DUPLICATE_q\)) ) ) ) # ( !\u2_controller|chars_cnt[6]~DUPLICATE_q\ & ( \u2_controller|DISPLAY_SHUTDOWNn~0_combout\ & ( (!\u2_controller|current_state.st_idle~q\) # (\u2_controller|LessThan1~0_combout\) ) ) ) # ( 
-- \u2_controller|chars_cnt[6]~DUPLICATE_q\ & ( !\u2_controller|DISPLAY_SHUTDOWNn~0_combout\ & ( (!\u2_controller|current_state.st_idle~q\) # (\u2_controller|LessThan1~0_combout\) ) ) ) # ( !\u2_controller|chars_cnt[6]~DUPLICATE_q\ & ( 
-- !\u2_controller|DISPLAY_SHUTDOWNn~0_combout\ & ( (!\u2_controller|current_state.st_idle~q\) # (\u2_controller|LessThan1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010111110101111101011111010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_LessThan1~0_combout\,
	datac => \u2_controller|ALT_INV_current_state.st_idle~q\,
	datad => \u2_controller|ALT_INV_chars_cnt[5]~DUPLICATE_q\,
	datae => \u2_controller|ALT_INV_chars_cnt[6]~DUPLICATE_q\,
	dataf => \u2_controller|ALT_INV_DISPLAY_SHUTDOWNn~0_combout\,
	combout => \u2_controller|DISPLAY_SHUTDOWNn[1]~2_combout\);

-- Location: FF_X19_Y5_N47
\u2_controller|DISPLAY_SHUTDOWNn[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|DISPLAY_SHUTDOWNn~1_combout\,
	clrn => \RSTn~input_o\,
	ena => \u2_controller|DISPLAY_SHUTDOWNn[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|DISPLAY_SHUTDOWNn\(1));

-- Location: LABCELL_X15_Y6_N6
\u2_controller|u1|bcd1:BCD[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|bcd1:BCD[6]~0_combout\ = ( \u2_controller|u1|BCD~18_combout\ & ( \u2_controller|u1|BCD~8_combout\ & ( (!\u2_controller|u1|BCD~9_combout\ & (\u2_controller|u1|BCD~10_combout\ & !\u2_controller|u1|BCD~17_combout\)) # 
-- (\u2_controller|u1|BCD~9_combout\ & (!\u2_controller|u1|BCD~10_combout\ $ (\u2_controller|u1|BCD~17_combout\))) ) ) ) # ( !\u2_controller|u1|BCD~18_combout\ & ( \u2_controller|u1|BCD~8_combout\ & ( (!\u2_controller|u1|BCD~19_combout\ & 
-- ((!\u2_controller|u1|BCD~9_combout\ & (!\u2_controller|u1|BCD~10_combout\ & \u2_controller|u1|BCD~17_combout\)) # (\u2_controller|u1|BCD~9_combout\ & ((!\u2_controller|u1|BCD~17_combout\))))) # (\u2_controller|u1|BCD~19_combout\ & 
-- (!\u2_controller|u1|BCD~9_combout\)) ) ) ) # ( \u2_controller|u1|BCD~18_combout\ & ( !\u2_controller|u1|BCD~8_combout\ & ( (!\u2_controller|u1|BCD~10_combout\ & ((!\u2_controller|u1|BCD~9_combout\ $ (!\u2_controller|u1|BCD~17_combout\)))) # 
-- (\u2_controller|u1|BCD~10_combout\ & (!\u2_controller|u1|BCD~17_combout\ & (!\u2_controller|u1|BCD~19_combout\ $ (!\u2_controller|u1|BCD~9_combout\)))) ) ) ) # ( !\u2_controller|u1|BCD~18_combout\ & ( !\u2_controller|u1|BCD~8_combout\ & ( 
-- (!\u2_controller|u1|BCD~10_combout\ & ((!\u2_controller|u1|BCD~19_combout\ & (!\u2_controller|u1|BCD~9_combout\ & \u2_controller|u1|BCD~17_combout\)) # (\u2_controller|u1|BCD~19_combout\ & (\u2_controller|u1|BCD~9_combout\ & 
-- !\u2_controller|u1|BCD~17_combout\)))) # (\u2_controller|u1|BCD~10_combout\ & (!\u2_controller|u1|BCD~19_combout\ $ (!\u2_controller|u1|BCD~9_combout\ $ (\u2_controller|u1|BCD~17_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011010001001001101101100000001100110110001000011110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_BCD~19_combout\,
	datab => \u2_controller|u1|ALT_INV_BCD~9_combout\,
	datac => \u2_controller|u1|ALT_INV_BCD~10_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~17_combout\,
	datae => \u2_controller|u1|ALT_INV_BCD~18_combout\,
	dataf => \u2_controller|u1|ALT_INV_BCD~8_combout\,
	combout => \u2_controller|u1|bcd1:BCD[6]~0_combout\);

-- Location: FF_X15_Y6_N7
\u2_controller|u1|tenths[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|u1|bcd1:BCD[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|tenths\(2));

-- Location: MLABCELL_X19_Y5_N30
\u6_tens|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6_tens|Mux6~0_combout\ = ( \u2_controller|DISPLAY_SHUTDOWNn\(1) & ( \u2_controller|u1|tenths\(2) & ( ((!\u2_controller|u1|tenths\(0) & !\u2_controller|u1|tenths\(1))) # (\u2_controller|u1|tenths\(3)) ) ) ) # ( !\u2_controller|DISPLAY_SHUTDOWNn\(1) & ( 
-- \u2_controller|u1|tenths\(2) ) ) # ( \u2_controller|DISPLAY_SHUTDOWNn\(1) & ( !\u2_controller|u1|tenths\(2) & ( (!\u2_controller|u1|tenths\(3) & (\u2_controller|u1|tenths\(0) & !\u2_controller|u1|tenths\(1))) # (\u2_controller|u1|tenths\(3) & 
-- ((\u2_controller|u1|tenths\(1)))) ) ) ) # ( !\u2_controller|DISPLAY_SHUTDOWNn\(1) & ( !\u2_controller|u1|tenths\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010000110100001111111111111111111011001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_tenths\(0),
	datab => \u2_controller|u1|ALT_INV_tenths\(3),
	datac => \u2_controller|u1|ALT_INV_tenths\(1),
	datae => \u2_controller|ALT_INV_DISPLAY_SHUTDOWNn\(1),
	dataf => \u2_controller|u1|ALT_INV_tenths\(2),
	combout => \u6_tens|Mux6~0_combout\);

-- Location: MLABCELL_X19_Y5_N36
\u6_tens|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6_tens|Mux5~0_combout\ = ( \u2_controller|DISPLAY_SHUTDOWNn\(1) & ( \u2_controller|u1|tenths\(2) & ( (!\u2_controller|u1|tenths\(0) $ (!\u2_controller|u1|tenths\(1))) # (\u2_controller|u1|tenths\(3)) ) ) ) # ( !\u2_controller|DISPLAY_SHUTDOWNn\(1) & ( 
-- \u2_controller|u1|tenths\(2) ) ) # ( \u2_controller|DISPLAY_SHUTDOWNn\(1) & ( !\u2_controller|u1|tenths\(2) & ( (\u2_controller|u1|tenths\(3) & \u2_controller|u1|tenths\(1)) ) ) ) # ( !\u2_controller|DISPLAY_SHUTDOWNn\(1) & ( !\u2_controller|u1|tenths\(2) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000110000001111111111111111110111101101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_tenths\(0),
	datab => \u2_controller|u1|ALT_INV_tenths\(3),
	datac => \u2_controller|u1|ALT_INV_tenths\(1),
	datae => \u2_controller|ALT_INV_DISPLAY_SHUTDOWNn\(1),
	dataf => \u2_controller|u1|ALT_INV_tenths\(2),
	combout => \u6_tens|Mux5~0_combout\);

-- Location: MLABCELL_X19_Y5_N9
\u6_tens|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6_tens|Mux4~0_combout\ = ( \u2_controller|u1|tenths\(2) & ( (!\u2_controller|DISPLAY_SHUTDOWNn\(1)) # (\u2_controller|u1|tenths\(3)) ) ) # ( !\u2_controller|u1|tenths\(2) & ( (!\u2_controller|DISPLAY_SHUTDOWNn\(1)) # ((\u2_controller|u1|tenths\(1) & 
-- ((!\u2_controller|u1|tenths\(0)) # (\u2_controller|u1|tenths\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011101111110011001110111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_tenths\(0),
	datab => \u2_controller|ALT_INV_DISPLAY_SHUTDOWNn\(1),
	datac => \u2_controller|u1|ALT_INV_tenths\(3),
	datad => \u2_controller|u1|ALT_INV_tenths\(1),
	dataf => \u2_controller|u1|ALT_INV_tenths\(2),
	combout => \u6_tens|Mux4~0_combout\);

-- Location: MLABCELL_X19_Y5_N6
\u6_tens|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6_tens|Mux3~0_combout\ = ( \u2_controller|u1|tenths\(3) & ( (!\u2_controller|DISPLAY_SHUTDOWNn\(1)) # ((\u2_controller|u1|tenths\(1)) # (\u2_controller|u1|tenths\(2))) ) ) # ( !\u2_controller|u1|tenths\(3) & ( (!\u2_controller|DISPLAY_SHUTDOWNn\(1)) # 
-- ((!\u2_controller|u1|tenths\(0) & (\u2_controller|u1|tenths\(2) & !\u2_controller|u1|tenths\(1))) # (\u2_controller|u1|tenths\(0) & (!\u2_controller|u1|tenths\(2) $ (\u2_controller|u1|tenths\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111011001101110111101100110111001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_tenths\(0),
	datab => \u2_controller|ALT_INV_DISPLAY_SHUTDOWNn\(1),
	datac => \u2_controller|u1|ALT_INV_tenths\(2),
	datad => \u2_controller|u1|ALT_INV_tenths\(1),
	dataf => \u2_controller|u1|ALT_INV_tenths\(3),
	combout => \u6_tens|Mux3~0_combout\);

-- Location: MLABCELL_X19_Y5_N15
\u6_tens|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6_tens|Mux2~0_combout\ = ( \u2_controller|DISPLAY_SHUTDOWNn\(1) & ( \u2_controller|u1|tenths\(2) & ( (!\u2_controller|u1|tenths\(1)) # ((\u2_controller|u1|tenths\(0)) # (\u2_controller|u1|tenths\(3))) ) ) ) # ( !\u2_controller|DISPLAY_SHUTDOWNn\(1) & ( 
-- \u2_controller|u1|tenths\(2) ) ) # ( \u2_controller|DISPLAY_SHUTDOWNn\(1) & ( !\u2_controller|u1|tenths\(2) & ( ((\u2_controller|u1|tenths\(1) & \u2_controller|u1|tenths\(3))) # (\u2_controller|u1|tenths\(0)) ) ) ) # ( 
-- !\u2_controller|DISPLAY_SHUTDOWNn\(1) & ( !\u2_controller|u1|tenths\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000100011111111111111111111111111011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_tenths\(1),
	datab => \u2_controller|u1|ALT_INV_tenths\(3),
	datad => \u2_controller|u1|ALT_INV_tenths\(0),
	datae => \u2_controller|ALT_INV_DISPLAY_SHUTDOWNn\(1),
	dataf => \u2_controller|u1|ALT_INV_tenths\(2),
	combout => \u6_tens|Mux2~0_combout\);

-- Location: MLABCELL_X19_Y5_N21
\u6_tens|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6_tens|Mux1~0_combout\ = ( \u2_controller|DISPLAY_SHUTDOWNn\(1) & ( \u2_controller|u1|tenths\(2) & ( ((\u2_controller|u1|tenths\(1) & \u2_controller|u1|tenths\(0))) # (\u2_controller|u1|tenths\(3)) ) ) ) # ( !\u2_controller|DISPLAY_SHUTDOWNn\(1) & ( 
-- \u2_controller|u1|tenths\(2) ) ) # ( \u2_controller|DISPLAY_SHUTDOWNn\(1) & ( !\u2_controller|u1|tenths\(2) & ( ((!\u2_controller|u1|tenths\(3) & \u2_controller|u1|tenths\(0))) # (\u2_controller|u1|tenths\(1)) ) ) ) # ( 
-- !\u2_controller|DISPLAY_SHUTDOWNn\(1) & ( !\u2_controller|u1|tenths\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101011101110111111111111111110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_tenths\(1),
	datab => \u2_controller|u1|ALT_INV_tenths\(3),
	datad => \u2_controller|u1|ALT_INV_tenths\(0),
	datae => \u2_controller|ALT_INV_DISPLAY_SHUTDOWNn\(1),
	dataf => \u2_controller|u1|ALT_INV_tenths\(2),
	combout => \u6_tens|Mux1~0_combout\);

-- Location: MLABCELL_X19_Y5_N48
\u6_tens|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6_tens|Mux0~0_combout\ = ( \u2_controller|DISPLAY_SHUTDOWNn\(1) & ( \u2_controller|u1|tenths\(2) & ( ((\u2_controller|u1|tenths\(0) & \u2_controller|u1|tenths\(1))) # (\u2_controller|u1|tenths\(3)) ) ) ) # ( !\u2_controller|DISPLAY_SHUTDOWNn\(1) & ( 
-- \u2_controller|u1|tenths\(2) ) ) # ( \u2_controller|DISPLAY_SHUTDOWNn\(1) & ( !\u2_controller|u1|tenths\(2) & ( !\u2_controller|u1|tenths\(3) $ (\u2_controller|u1|tenths\(1)) ) ) ) # ( !\u2_controller|DISPLAY_SHUTDOWNn\(1) & ( 
-- !\u2_controller|u1|tenths\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110000111100001111111111111111110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_tenths\(0),
	datab => \u2_controller|u1|ALT_INV_tenths\(3),
	datac => \u2_controller|u1|ALT_INV_tenths\(1),
	datae => \u2_controller|ALT_INV_DISPLAY_SHUTDOWNn\(1),
	dataf => \u2_controller|u1|ALT_INV_tenths\(2),
	combout => \u6_tens|Mux0~0_combout\);

-- Location: LABCELL_X15_Y6_N57
\u2_controller|u1|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|LessThan2~0_combout\ = ( \u2_controller|u1|reg_in\(13) & ( (\u2_controller|u1|reg_in\(11)) # (\u2_controller|u1|reg_in\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2_controller|u1|ALT_INV_reg_in\(12),
	datad => \u2_controller|u1|ALT_INV_reg_in\(11),
	dataf => \u2_controller|u1|ALT_INV_reg_in\(13),
	combout => \u2_controller|u1|LessThan2~0_combout\);

-- Location: LABCELL_X11_Y6_N39
\u2_controller|u1|LessThan8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|LessThan8~0_combout\ = ( \u2_controller|u1|reg_in\(10) & ( \u2_controller|u1|reg_in\(11) & ( (!\u2_controller|u1|reg_in\(12) & \u2_controller|u1|reg_in\(13)) ) ) ) # ( !\u2_controller|u1|reg_in\(10) & ( \u2_controller|u1|reg_in\(11) & ( 
-- (!\u2_controller|u1|reg_in\(12) & ((!\u2_controller|u1|reg_in\(9)) # (\u2_controller|u1|reg_in\(13)))) ) ) ) # ( \u2_controller|u1|reg_in\(10) & ( !\u2_controller|u1|reg_in\(11) & ( (!\u2_controller|u1|reg_in\(12) & !\u2_controller|u1|reg_in\(13)) ) ) ) # 
-- ( !\u2_controller|u1|reg_in\(10) & ( !\u2_controller|u1|reg_in\(11) & ( (!\u2_controller|u1|reg_in\(12) & (!\u2_controller|u1|reg_in\(13))) # (\u2_controller|u1|reg_in\(12) & (\u2_controller|u1|reg_in\(13) & !\u2_controller|u1|reg_in\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100010011000100010001000100010100010101000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_reg_in\(12),
	datab => \u2_controller|u1|ALT_INV_reg_in\(13),
	datac => \u2_controller|u1|ALT_INV_reg_in\(9),
	datae => \u2_controller|u1|ALT_INV_reg_in\(10),
	dataf => \u2_controller|u1|ALT_INV_reg_in\(11),
	combout => \u2_controller|u1|LessThan8~0_combout\);

-- Location: LABCELL_X11_Y6_N30
\u2_controller|u1|BCD~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~23_combout\ = ( \u2_controller|u1|reg_in\(13) & ( \u2_controller|u1|reg_in\(11) & ( !\u2_controller|u1|reg_in\(12) ) ) ) # ( !\u2_controller|u1|reg_in\(13) & ( \u2_controller|u1|reg_in\(11) & ( (\u2_controller|u1|reg_in\(12) & 
-- (((\u2_controller|u1|reg_in\(10)) # (\u2_controller|u1|reg_in\(9))) # (\u2_controller|u1|reg_in\(8)))) ) ) ) # ( \u2_controller|u1|reg_in\(13) & ( !\u2_controller|u1|reg_in\(11) & ( (!\u2_controller|u1|reg_in\(12)) # ((!\u2_controller|u1|reg_in\(9) & 
-- !\u2_controller|u1|reg_in\(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111000000000111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_reg_in\(8),
	datab => \u2_controller|u1|ALT_INV_reg_in\(9),
	datac => \u2_controller|u1|ALT_INV_reg_in\(12),
	datad => \u2_controller|u1|ALT_INV_reg_in\(10),
	datae => \u2_controller|u1|ALT_INV_reg_in\(13),
	dataf => \u2_controller|u1|ALT_INV_reg_in\(11),
	combout => \u2_controller|u1|BCD~23_combout\);

-- Location: MLABCELL_X14_Y6_N0
\u2_controller|u1|BCD~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~21_combout\ = ( \u2_controller|u1|BCD~12_combout\ & ( \u2_controller|u1|BCD~13_combout\ & ( (!\u2_controller|u1|BCD~16_combout\ & (((\u2_controller|u1|BCD~15_combout\)))) # (\u2_controller|u1|BCD~16_combout\ & 
-- ((!\u2_controller|u1|BCD~14_combout\ & (\u2_controller|u1|BCD~11_combout\)) # (\u2_controller|u1|BCD~14_combout\ & ((!\u2_controller|u1|BCD~11_combout\) # (\u2_controller|u1|BCD~15_combout\))))) ) ) ) # ( !\u2_controller|u1|BCD~12_combout\ & ( 
-- \u2_controller|u1|BCD~13_combout\ & ( (!\u2_controller|u1|BCD~14_combout\ & (!\u2_controller|u1|BCD~16_combout\ & ((\u2_controller|u1|BCD~15_combout\)))) # (\u2_controller|u1|BCD~14_combout\ & (((!\u2_controller|u1|BCD~15_combout\) # 
-- (\u2_controller|u1|BCD~11_combout\)))) ) ) ) # ( \u2_controller|u1|BCD~12_combout\ & ( !\u2_controller|u1|BCD~13_combout\ & ( (!\u2_controller|u1|BCD~15_combout\ & ((!\u2_controller|u1|BCD~14_combout\) # ((!\u2_controller|u1|BCD~16_combout\ & 
-- \u2_controller|u1|BCD~11_combout\)))) ) ) ) # ( !\u2_controller|u1|BCD~12_combout\ & ( !\u2_controller|u1|BCD~13_combout\ & ( (!\u2_controller|u1|BCD~14_combout\ & (!\u2_controller|u1|BCD~15_combout\ & ((\u2_controller|u1|BCD~11_combout\) # 
-- (\u2_controller|u1|BCD~16_combout\)))) # (\u2_controller|u1|BCD~14_combout\ & (((\u2_controller|u1|BCD~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101001010101101011100000000001010101100011010001001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_BCD~14_combout\,
	datab => \u2_controller|u1|ALT_INV_BCD~16_combout\,
	datac => \u2_controller|u1|ALT_INV_BCD~11_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~15_combout\,
	datae => \u2_controller|u1|ALT_INV_BCD~12_combout\,
	dataf => \u2_controller|u1|ALT_INV_BCD~13_combout\,
	combout => \u2_controller|u1|BCD~21_combout\);

-- Location: MLABCELL_X14_Y6_N42
\u2_controller|u1|BCD~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~24_combout\ = ( \u2_controller|u1|BCD~13_combout\ & ( !\u2_controller|u1|BCD~16_combout\ $ (((\u2_controller|u1|BCD~14_combout\ & \u2_controller|u1|BCD~15_combout\))) ) ) # ( !\u2_controller|u1|BCD~13_combout\ & ( 
-- !\u2_controller|u1|BCD~16_combout\ $ (\u2_controller|u1|BCD~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001111001100110000111100110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2_controller|u1|ALT_INV_BCD~16_combout\,
	datac => \u2_controller|u1|ALT_INV_BCD~14_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~15_combout\,
	dataf => \u2_controller|u1|ALT_INV_BCD~13_combout\,
	combout => \u2_controller|u1|BCD~24_combout\);

-- Location: MLABCELL_X14_Y6_N45
\u2_controller|u1|BCD~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~22_combout\ = ( \u2_controller|u1|BCD~13_combout\ & ( (!\u2_controller|u1|BCD~14_combout\ & (!\u2_controller|u1|BCD~16_combout\ $ ((!\u2_controller|u1|BCD~15_combout\)))) # (\u2_controller|u1|BCD~14_combout\ & 
-- (!\u2_controller|u1|BCD~15_combout\ & ((\u2_controller|u1|BCD~12_combout\) # (\u2_controller|u1|BCD~16_combout\)))) ) ) # ( !\u2_controller|u1|BCD~13_combout\ & ( (!\u2_controller|u1|BCD~14_combout\ & (\u2_controller|u1|BCD~16_combout\ & 
-- (!\u2_controller|u1|BCD~15_combout\))) # (\u2_controller|u1|BCD~14_combout\ & ((!\u2_controller|u1|BCD~15_combout\ & ((!\u2_controller|u1|BCD~16_combout\) # (!\u2_controller|u1|BCD~12_combout\))) # (\u2_controller|u1|BCD~15_combout\ & 
-- ((\u2_controller|u1|BCD~12_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001100101011100000110010100111000011110000011100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_BCD~14_combout\,
	datab => \u2_controller|u1|ALT_INV_BCD~16_combout\,
	datac => \u2_controller|u1|ALT_INV_BCD~15_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~12_combout\,
	dataf => \u2_controller|u1|ALT_INV_BCD~13_combout\,
	combout => \u2_controller|u1|BCD~22_combout\);

-- Location: LABCELL_X15_Y6_N0
\u2_controller|u1|BCD~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~25_combout\ = ( \u2_controller|u1|BCD~24_combout\ & ( \u2_controller|u1|BCD~22_combout\ & ( (!\u2_controller|u1|LessThan2~0_combout\ & (((!\u2_controller|u1|BCD~23_combout\)))) # (\u2_controller|u1|LessThan2~0_combout\ & 
-- ((!\u2_controller|u1|LessThan8~0_combout\ & ((!\u2_controller|u1|BCD~21_combout\) # (\u2_controller|u1|BCD~23_combout\))) # (\u2_controller|u1|LessThan8~0_combout\ & (!\u2_controller|u1|BCD~23_combout\)))) ) ) ) # ( !\u2_controller|u1|BCD~24_combout\ & ( 
-- \u2_controller|u1|BCD~22_combout\ & ( (!\u2_controller|u1|BCD~23_combout\ & (((\u2_controller|u1|LessThan2~0_combout\ & !\u2_controller|u1|LessThan8~0_combout\)) # (\u2_controller|u1|BCD~21_combout\))) ) ) ) # ( \u2_controller|u1|BCD~24_combout\ & ( 
-- !\u2_controller|u1|BCD~22_combout\ & ( (!\u2_controller|u1|BCD~23_combout\ & (\u2_controller|u1|LessThan2~0_combout\ & (!\u2_controller|u1|LessThan8~0_combout\ & \u2_controller|u1|BCD~21_combout\))) # (\u2_controller|u1|BCD~23_combout\ & 
-- (!\u2_controller|u1|BCD~21_combout\ & ((!\u2_controller|u1|LessThan2~0_combout\) # (\u2_controller|u1|LessThan8~0_combout\)))) ) ) ) # ( !\u2_controller|u1|BCD~24_combout\ & ( !\u2_controller|u1|BCD~22_combout\ & ( (\u2_controller|u1|BCD~23_combout\ & 
-- ((!\u2_controller|u1|LessThan2~0_combout\) # ((!\u2_controller|u1|BCD~21_combout\) # (\u2_controller|u1|LessThan8~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001011000010110100000001000000111100001111010010110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_LessThan2~0_combout\,
	datab => \u2_controller|u1|ALT_INV_LessThan8~0_combout\,
	datac => \u2_controller|u1|ALT_INV_BCD~23_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~21_combout\,
	datae => \u2_controller|u1|ALT_INV_BCD~24_combout\,
	dataf => \u2_controller|u1|ALT_INV_BCD~22_combout\,
	combout => \u2_controller|u1|BCD~25_combout\);

-- Location: LABCELL_X15_Y6_N30
\u2_controller|u1|BCD~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~27_combout\ = ( \u2_controller|u1|BCD~24_combout\ & ( \u2_controller|u1|BCD~22_combout\ & ( !\u2_controller|u1|BCD~21_combout\ $ (((!\u2_controller|u1|LessThan2~0_combout\) # ((\u2_controller|u1|BCD~23_combout\) # 
-- (\u2_controller|u1|LessThan8~0_combout\)))) ) ) ) # ( !\u2_controller|u1|BCD~24_combout\ & ( \u2_controller|u1|BCD~22_combout\ & ( (!\u2_controller|u1|BCD~21_combout\ & (!\u2_controller|u1|BCD~23_combout\ & ((!\u2_controller|u1|LessThan2~0_combout\) # 
-- (\u2_controller|u1|LessThan8~0_combout\)))) # (\u2_controller|u1|BCD~21_combout\ & (\u2_controller|u1|LessThan2~0_combout\ & (!\u2_controller|u1|LessThan8~0_combout\))) ) ) ) # ( \u2_controller|u1|BCD~24_combout\ & ( !\u2_controller|u1|BCD~22_combout\ & ( 
-- !\u2_controller|u1|BCD~23_combout\ $ (!\u2_controller|u1|BCD~21_combout\ $ (((\u2_controller|u1|LessThan2~0_combout\ & !\u2_controller|u1|LessThan8~0_combout\)))) ) ) ) # ( !\u2_controller|u1|BCD~24_combout\ & ( !\u2_controller|u1|BCD~22_combout\ & ( 
-- (!\u2_controller|u1|BCD~23_combout\ & (\u2_controller|u1|LessThan2~0_combout\ & (!\u2_controller|u1|LessThan8~0_combout\ & \u2_controller|u1|BCD~21_combout\))) # (\u2_controller|u1|BCD~23_combout\ & (!\u2_controller|u1|BCD~21_combout\ $ 
-- (((!\u2_controller|u1|LessThan2~0_combout\) # (\u2_controller|u1|LessThan8~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001011010010111011010010110000010001000100000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_LessThan2~0_combout\,
	datab => \u2_controller|u1|ALT_INV_LessThan8~0_combout\,
	datac => \u2_controller|u1|ALT_INV_BCD~23_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~21_combout\,
	datae => \u2_controller|u1|ALT_INV_BCD~24_combout\,
	dataf => \u2_controller|u1|ALT_INV_BCD~22_combout\,
	combout => \u2_controller|u1|BCD~27_combout\);

-- Location: LABCELL_X15_Y6_N36
\u2_controller|u1|BCD~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~28_combout\ = ( \u2_controller|u1|BCD~24_combout\ & ( \u2_controller|u1|BCD~22_combout\ & ( (\u2_controller|u1|LessThan2~0_combout\ & (!\u2_controller|u1|LessThan8~0_combout\ & (!\u2_controller|u1|BCD~23_combout\ & 
-- \u2_controller|u1|BCD~21_combout\))) ) ) ) # ( !\u2_controller|u1|BCD~24_combout\ & ( \u2_controller|u1|BCD~22_combout\ & ( (\u2_controller|u1|BCD~23_combout\ & (!\u2_controller|u1|BCD~21_combout\ & ((!\u2_controller|u1|LessThan2~0_combout\) # 
-- (\u2_controller|u1|LessThan8~0_combout\)))) ) ) ) # ( \u2_controller|u1|BCD~24_combout\ & ( !\u2_controller|u1|BCD~22_combout\ & ( (\u2_controller|u1|BCD~23_combout\ & (\u2_controller|u1|BCD~21_combout\ & ((!\u2_controller|u1|LessThan2~0_combout\) # 
-- (\u2_controller|u1|LessThan8~0_combout\)))) ) ) ) # ( !\u2_controller|u1|BCD~24_combout\ & ( !\u2_controller|u1|BCD~22_combout\ & ( (!\u2_controller|u1|BCD~23_combout\ & (!\u2_controller|u1|BCD~21_combout\ & ((!\u2_controller|u1|LessThan2~0_combout\) # 
-- (\u2_controller|u1|LessThan8~0_combout\)))) # (\u2_controller|u1|BCD~23_combout\ & (\u2_controller|u1|LessThan2~0_combout\ & (!\u2_controller|u1|LessThan8~0_combout\ & \u2_controller|u1|BCD~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000000100000000000000101100001011000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_LessThan2~0_combout\,
	datab => \u2_controller|u1|ALT_INV_LessThan8~0_combout\,
	datac => \u2_controller|u1|ALT_INV_BCD~23_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~21_combout\,
	datae => \u2_controller|u1|ALT_INV_BCD~24_combout\,
	dataf => \u2_controller|u1|ALT_INV_BCD~22_combout\,
	combout => \u2_controller|u1|BCD~28_combout\);

-- Location: LABCELL_X15_Y6_N21
\u2_controller|u1|BCD~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~26_combout\ = ( \u2_controller|u1|BCD~17_combout\ & ( !\u2_controller|u1|BCD~19_combout\ $ (\u2_controller|u1|BCD~18_combout\) ) ) # ( !\u2_controller|u1|BCD~17_combout\ & ( !\u2_controller|u1|BCD~19_combout\ $ 
-- (((\u2_controller|u1|BCD~18_combout\ & !\u2_controller|u1|BCD~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110101010101001011010101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_BCD~19_combout\,
	datac => \u2_controller|u1|ALT_INV_BCD~18_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~10_combout\,
	dataf => \u2_controller|u1|ALT_INV_BCD~17_combout\,
	combout => \u2_controller|u1|BCD~26_combout\);

-- Location: LABCELL_X15_Y6_N18
\u2_controller|u1|BCD~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|BCD~20_combout\ = ( \u2_controller|u1|BCD~9_combout\ & ( (!\u2_controller|u1|BCD~19_combout\ & (!\u2_controller|u1|BCD~17_combout\ $ (((!\u2_controller|u1|BCD~10_combout\) # (!\u2_controller|u1|BCD~18_combout\))))) # 
-- (\u2_controller|u1|BCD~19_combout\ & (!\u2_controller|u1|BCD~18_combout\ $ (((\u2_controller|u1|BCD~17_combout\ & !\u2_controller|u1|BCD~10_combout\))))) ) ) # ( !\u2_controller|u1|BCD~9_combout\ & ( (!\u2_controller|u1|BCD~19_combout\ & 
-- ((!\u2_controller|u1|BCD~17_combout\ & (\u2_controller|u1|BCD~10_combout\ & \u2_controller|u1|BCD~18_combout\)) # (\u2_controller|u1|BCD~17_combout\ & (!\u2_controller|u1|BCD~10_combout\ & !\u2_controller|u1|BCD~18_combout\)))) # 
-- (\u2_controller|u1|BCD~19_combout\ & (((!\u2_controller|u1|BCD~18_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010100001000011101010000100001100111001110000110011100111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_BCD~19_combout\,
	datab => \u2_controller|u1|ALT_INV_BCD~17_combout\,
	datac => \u2_controller|u1|ALT_INV_BCD~10_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~18_combout\,
	dataf => \u2_controller|u1|ALT_INV_BCD~9_combout\,
	combout => \u2_controller|u1|BCD~20_combout\);

-- Location: LABCELL_X15_Y6_N24
\u2_controller|u1|bcd1:BCD[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|bcd1:BCD[9]~0_combout\ = ( \u2_controller|u1|BCD~20_combout\ & ( (!\u2_controller|u1|BCD~25_combout\ & (!\u2_controller|u1|BCD~27_combout\ & (!\u2_controller|u1|BCD~28_combout\))) # (\u2_controller|u1|BCD~25_combout\ & 
-- (!\u2_controller|u1|BCD~27_combout\ $ (((\u2_controller|u1|BCD~26_combout\))))) ) ) # ( !\u2_controller|u1|BCD~20_combout\ & ( (!\u2_controller|u1|BCD~25_combout\ & (((\u2_controller|u1|BCD~27_combout\ & !\u2_controller|u1|BCD~26_combout\)) # 
-- (\u2_controller|u1|BCD~28_combout\))) # (\u2_controller|u1|BCD~25_combout\ & (!\u2_controller|u1|BCD~27_combout\ & ((\u2_controller|u1|BCD~26_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101001001110001010100100111011000100100100011100010010010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_BCD~25_combout\,
	datab => \u2_controller|u1|ALT_INV_BCD~27_combout\,
	datac => \u2_controller|u1|ALT_INV_BCD~28_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~26_combout\,
	dataf => \u2_controller|u1|ALT_INV_BCD~20_combout\,
	combout => \u2_controller|u1|bcd1:BCD[9]~0_combout\);

-- Location: FF_X15_Y6_N25
\u2_controller|u1|hundredths[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|u1|bcd1:BCD[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|hundredths\(1));

-- Location: LABCELL_X15_Y6_N27
\u2_controller|u1|bcd1:BCD[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|bcd1:BCD[10]~0_combout\ = ( \u2_controller|u1|BCD~20_combout\ & ( (!\u2_controller|u1|BCD~25_combout\ & ((!\u2_controller|u1|BCD~28_combout\ $ (\u2_controller|u1|BCD~26_combout\)))) # (\u2_controller|u1|BCD~25_combout\ & 
-- (\u2_controller|u1|BCD~26_combout\ & ((\u2_controller|u1|BCD~28_combout\) # (\u2_controller|u1|BCD~27_combout\)))) ) ) # ( !\u2_controller|u1|BCD~20_combout\ & ( (!\u2_controller|u1|BCD~25_combout\ & (!\u2_controller|u1|BCD~26_combout\ & 
-- ((!\u2_controller|u1|BCD~27_combout\) # (\u2_controller|u1|BCD~28_combout\)))) # (\u2_controller|u1|BCD~25_combout\ & (\u2_controller|u1|BCD~26_combout\ & ((!\u2_controller|u1|BCD~28_combout\) # (\u2_controller|u1|BCD~27_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101001010001100010100101000110100000000111111010000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_BCD~25_combout\,
	datab => \u2_controller|u1|ALT_INV_BCD~27_combout\,
	datac => \u2_controller|u1|ALT_INV_BCD~28_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~26_combout\,
	dataf => \u2_controller|u1|ALT_INV_BCD~20_combout\,
	combout => \u2_controller|u1|bcd1:BCD[10]~0_combout\);

-- Location: FF_X15_Y6_N28
\u2_controller|u1|hundredths[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|u1|bcd1:BCD[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|hundredths\(2));

-- Location: LABCELL_X15_Y6_N54
\u2_controller|u1|bcd1:BCD[11]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|bcd1:BCD[11]~0_combout\ = ( \u2_controller|u1|BCD~20_combout\ & ( (!\u2_controller|u1|BCD~28_combout\ & (!\u2_controller|u1|BCD~27_combout\ & (\u2_controller|u1|BCD~25_combout\ & \u2_controller|u1|BCD~26_combout\))) # 
-- (\u2_controller|u1|BCD~28_combout\ & (!\u2_controller|u1|BCD~25_combout\ & (!\u2_controller|u1|BCD~27_combout\ $ (\u2_controller|u1|BCD~26_combout\)))) ) ) # ( !\u2_controller|u1|BCD~20_combout\ & ( (\u2_controller|u1|BCD~27_combout\ & 
-- ((!\u2_controller|u1|BCD~25_combout\ & ((\u2_controller|u1|BCD~26_combout\) # (\u2_controller|u1|BCD~28_combout\))) # (\u2_controller|u1|BCD~25_combout\ & ((!\u2_controller|u1|BCD~26_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110000000100110011000001000000000110000100000000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_BCD~28_combout\,
	datab => \u2_controller|u1|ALT_INV_BCD~27_combout\,
	datac => \u2_controller|u1|ALT_INV_BCD~25_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~26_combout\,
	dataf => \u2_controller|u1|ALT_INV_BCD~20_combout\,
	combout => \u2_controller|u1|bcd1:BCD[11]~0_combout\);

-- Location: FF_X15_Y6_N55
\u2_controller|u1|hundredths[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|u1|bcd1:BCD[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|hundredths\(3));

-- Location: LABCELL_X15_Y6_N42
\u2_controller|u1|bcd1:BCD[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|u1|bcd1:BCD[8]~0_combout\ = ( \u2_controller|u1|BCD~18_combout\ & ( \u2_controller|u1|BCD~8_combout\ & ( (!\u2_controller|u1|BCD~9_combout\ & (((!\u2_controller|u1|BCD~19_combout\ & \u2_controller|u1|BCD~10_combout\)) # 
-- (\u2_controller|u1|BCD~17_combout\))) # (\u2_controller|u1|BCD~9_combout\ & (((\u2_controller|u1|BCD~10_combout\)))) ) ) ) # ( !\u2_controller|u1|BCD~18_combout\ & ( \u2_controller|u1|BCD~8_combout\ & ( (!\u2_controller|u1|BCD~9_combout\ & 
-- ((!\u2_controller|u1|BCD~17_combout\ $ (\u2_controller|u1|BCD~10_combout\)))) # (\u2_controller|u1|BCD~9_combout\ & ((!\u2_controller|u1|BCD~19_combout\ & ((!\u2_controller|u1|BCD~10_combout\))) # (\u2_controller|u1|BCD~19_combout\ & 
-- (!\u2_controller|u1|BCD~17_combout\)))) ) ) ) # ( \u2_controller|u1|BCD~18_combout\ & ( !\u2_controller|u1|BCD~8_combout\ & ( (!\u2_controller|u1|BCD~17_combout\ & (!\u2_controller|u1|BCD~19_combout\ & (\u2_controller|u1|BCD~10_combout\))) # 
-- (\u2_controller|u1|BCD~17_combout\ & ((!\u2_controller|u1|BCD~10_combout\ $ (\u2_controller|u1|BCD~9_combout\)))) ) ) ) # ( !\u2_controller|u1|BCD~18_combout\ & ( !\u2_controller|u1|BCD~8_combout\ & ( (!\u2_controller|u1|BCD~17_combout\ & 
-- (!\u2_controller|u1|BCD~10_combout\ & ((\u2_controller|u1|BCD~9_combout\) # (\u2_controller|u1|BCD~19_combout\)))) # (\u2_controller|u1|BCD~17_combout\ & (\u2_controller|u1|BCD~10_combout\ & ((!\u2_controller|u1|BCD~9_combout\) # 
-- (\u2_controller|u1|BCD~19_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001111000001001110000000101111000011111001000011101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_BCD~19_combout\,
	datab => \u2_controller|u1|ALT_INV_BCD~17_combout\,
	datac => \u2_controller|u1|ALT_INV_BCD~10_combout\,
	datad => \u2_controller|u1|ALT_INV_BCD~9_combout\,
	datae => \u2_controller|u1|ALT_INV_BCD~18_combout\,
	dataf => \u2_controller|u1|ALT_INV_BCD~8_combout\,
	combout => \u2_controller|u1|bcd1:BCD[8]~0_combout\);

-- Location: FF_X15_Y6_N43
\u2_controller|u1|hundredths[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|u1|bcd1:BCD[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|u1|hundredths\(0));

-- Location: LABCELL_X17_Y5_N33
\u2_controller|DISPLAY_SHUTDOWNn~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|DISPLAY_SHUTDOWNn~3_combout\ = ( \u2_controller|chars_cnt\(5) & ( (\u2_controller|chars_cnt[6]~DUPLICATE_q\ & (((\u2_controller|chars_cnt\(2)) # (\u2_controller|chars_cnt\(4))) # (\u2_controller|chars_cnt[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000111000011110000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_chars_cnt[3]~DUPLICATE_q\,
	datab => \u2_controller|ALT_INV_chars_cnt\(4),
	datac => \u2_controller|ALT_INV_chars_cnt[6]~DUPLICATE_q\,
	datad => \u2_controller|ALT_INV_chars_cnt\(2),
	dataf => \u2_controller|ALT_INV_chars_cnt\(5),
	combout => \u2_controller|DISPLAY_SHUTDOWNn~3_combout\);

-- Location: MLABCELL_X19_Y5_N0
\u2_controller|DISPLAY_SHUTDOWNn~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2_controller|DISPLAY_SHUTDOWNn~4_combout\ = ( \u2_controller|chars_cnt[9]~DUPLICATE_q\ & ( \u2_controller|chars_cnt\(8) & ( \u2_controller|DISPLAY_SHUTDOWNn~1_combout\ ) ) ) # ( !\u2_controller|chars_cnt[9]~DUPLICATE_q\ & ( \u2_controller|chars_cnt\(8) 
-- & ( \u2_controller|DISPLAY_SHUTDOWNn~1_combout\ ) ) ) # ( \u2_controller|chars_cnt[9]~DUPLICATE_q\ & ( !\u2_controller|chars_cnt\(8) & ( \u2_controller|DISPLAY_SHUTDOWNn~1_combout\ ) ) ) # ( !\u2_controller|chars_cnt[9]~DUPLICATE_q\ & ( 
-- !\u2_controller|chars_cnt\(8) & ( (\u2_controller|DISPLAY_SHUTDOWNn~1_combout\ & ((\u2_controller|DISPLAY_SHUTDOWNn~3_combout\) # (\u2_controller|chars_cnt\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|ALT_INV_chars_cnt\(7),
	datab => \u2_controller|ALT_INV_DISPLAY_SHUTDOWNn~1_combout\,
	datac => \u2_controller|ALT_INV_DISPLAY_SHUTDOWNn~3_combout\,
	datae => \u2_controller|ALT_INV_chars_cnt[9]~DUPLICATE_q\,
	dataf => \u2_controller|ALT_INV_chars_cnt\(8),
	combout => \u2_controller|DISPLAY_SHUTDOWNn~4_combout\);

-- Location: FF_X19_Y5_N1
\u2_controller|DISPLAY_SHUTDOWNn[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2_controller|DISPLAY_SHUTDOWNn~4_combout\,
	clrn => \RSTn~input_o\,
	ena => \u2_controller|DISPLAY_SHUTDOWNn[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2_controller|DISPLAY_SHUTDOWNn\(2));

-- Location: LABCELL_X21_Y2_N48
\u7_hunds|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7_hunds|Mux6~0_combout\ = ( \u2_controller|u1|hundredths\(0) & ( \u2_controller|DISPLAY_SHUTDOWNn\(2) & ( !\u2_controller|u1|hundredths\(3) $ (((\u2_controller|u1|hundredths\(2)) # (\u2_controller|u1|hundredths\(1)))) ) ) ) # ( 
-- !\u2_controller|u1|hundredths\(0) & ( \u2_controller|DISPLAY_SHUTDOWNn\(2) & ( (!\u2_controller|u1|hundredths\(1) & (\u2_controller|u1|hundredths\(2))) # (\u2_controller|u1|hundredths\(1) & ((\u2_controller|u1|hundredths\(3)))) ) ) ) # ( 
-- \u2_controller|u1|hundredths\(0) & ( !\u2_controller|DISPLAY_SHUTDOWNn\(2) ) ) # ( !\u2_controller|u1|hundredths\(0) & ( !\u2_controller|DISPLAY_SHUTDOWNn\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100100111001001111000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_hundredths\(1),
	datab => \u2_controller|u1|ALT_INV_hundredths\(2),
	datac => \u2_controller|u1|ALT_INV_hundredths\(3),
	datae => \u2_controller|u1|ALT_INV_hundredths\(0),
	dataf => \u2_controller|ALT_INV_DISPLAY_SHUTDOWNn\(2),
	combout => \u7_hunds|Mux6~0_combout\);

-- Location: LABCELL_X21_Y2_N42
\u7_hunds|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7_hunds|Mux5~0_combout\ = ( \u2_controller|u1|hundredths\(0) & ( \u2_controller|DISPLAY_SHUTDOWNn\(2) & ( (!\u2_controller|u1|hundredths\(1) & (\u2_controller|u1|hundredths\(2))) # (\u2_controller|u1|hundredths\(1) & 
-- ((\u2_controller|u1|hundredths\(3)))) ) ) ) # ( !\u2_controller|u1|hundredths\(0) & ( \u2_controller|DISPLAY_SHUTDOWNn\(2) & ( (!\u2_controller|u1|hundredths\(1) & (\u2_controller|u1|hundredths\(2) & \u2_controller|u1|hundredths\(3))) # 
-- (\u2_controller|u1|hundredths\(1) & ((\u2_controller|u1|hundredths\(3)) # (\u2_controller|u1|hundredths\(2)))) ) ) ) # ( \u2_controller|u1|hundredths\(0) & ( !\u2_controller|DISPLAY_SHUTDOWNn\(2) ) ) # ( !\u2_controller|u1|hundredths\(0) & ( 
-- !\u2_controller|DISPLAY_SHUTDOWNn\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100010111000101110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_hundredths\(1),
	datab => \u2_controller|u1|ALT_INV_hundredths\(2),
	datac => \u2_controller|u1|ALT_INV_hundredths\(3),
	datae => \u2_controller|u1|ALT_INV_hundredths\(0),
	dataf => \u2_controller|ALT_INV_DISPLAY_SHUTDOWNn\(2),
	combout => \u7_hunds|Mux5~0_combout\);

-- Location: LABCELL_X21_Y2_N15
\u7_hunds|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7_hunds|Mux4~0_combout\ = ( \u2_controller|u1|hundredths\(0) & ( \u2_controller|DISPLAY_SHUTDOWNn\(2) & ( (\u2_controller|u1|hundredths\(3) & ((\u2_controller|u1|hundredths\(2)) # (\u2_controller|u1|hundredths\(1)))) ) ) ) # ( 
-- !\u2_controller|u1|hundredths\(0) & ( \u2_controller|DISPLAY_SHUTDOWNn\(2) & ( (!\u2_controller|u1|hundredths\(2) & (\u2_controller|u1|hundredths\(1))) # (\u2_controller|u1|hundredths\(2) & ((\u2_controller|u1|hundredths\(3)))) ) ) ) # ( 
-- \u2_controller|u1|hundredths\(0) & ( !\u2_controller|DISPLAY_SHUTDOWNn\(2) ) ) # ( !\u2_controller|u1|hundredths\(0) & ( !\u2_controller|DISPLAY_SHUTDOWNn\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_hundredths\(1),
	datac => \u2_controller|u1|ALT_INV_hundredths\(2),
	datad => \u2_controller|u1|ALT_INV_hundredths\(3),
	datae => \u2_controller|u1|ALT_INV_hundredths\(0),
	dataf => \u2_controller|ALT_INV_DISPLAY_SHUTDOWNn\(2),
	combout => \u7_hunds|Mux4~0_combout\);

-- Location: LABCELL_X21_Y2_N33
\u7_hunds|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7_hunds|Mux3~0_combout\ = ( \u2_controller|u1|hundredths\(0) & ( \u2_controller|DISPLAY_SHUTDOWNn\(2) & ( (!\u2_controller|u1|hundredths\(1) & (!\u2_controller|u1|hundredths\(2) $ (\u2_controller|u1|hundredths\(3)))) # (\u2_controller|u1|hundredths\(1) 
-- & ((\u2_controller|u1|hundredths\(3)) # (\u2_controller|u1|hundredths\(2)))) ) ) ) # ( !\u2_controller|u1|hundredths\(0) & ( \u2_controller|DISPLAY_SHUTDOWNn\(2) & ( (!\u2_controller|u1|hundredths\(1) & (\u2_controller|u1|hundredths\(2))) # 
-- (\u2_controller|u1|hundredths\(1) & ((\u2_controller|u1|hundredths\(3)))) ) ) ) # ( \u2_controller|u1|hundredths\(0) & ( !\u2_controller|DISPLAY_SHUTDOWNn\(2) ) ) # ( !\u2_controller|u1|hundredths\(0) & ( !\u2_controller|DISPLAY_SHUTDOWNn\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001010010111111010010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_hundredths\(1),
	datac => \u2_controller|u1|ALT_INV_hundredths\(2),
	datad => \u2_controller|u1|ALT_INV_hundredths\(3),
	datae => \u2_controller|u1|ALT_INV_hundredths\(0),
	dataf => \u2_controller|ALT_INV_DISPLAY_SHUTDOWNn\(2),
	combout => \u7_hunds|Mux3~0_combout\);

-- Location: LABCELL_X21_Y2_N36
\u7_hunds|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7_hunds|Mux2~0_combout\ = ( \u2_controller|u1|hundredths\(0) & ( \u2_controller|DISPLAY_SHUTDOWNn\(2) ) ) # ( !\u2_controller|u1|hundredths\(0) & ( \u2_controller|DISPLAY_SHUTDOWNn\(2) & ( (!\u2_controller|u1|hundredths\(1) & 
-- (\u2_controller|u1|hundredths\(2))) # (\u2_controller|u1|hundredths\(1) & ((\u2_controller|u1|hundredths\(3)))) ) ) ) # ( \u2_controller|u1|hundredths\(0) & ( !\u2_controller|DISPLAY_SHUTDOWNn\(2) ) ) # ( !\u2_controller|u1|hundredths\(0) & ( 
-- !\u2_controller|DISPLAY_SHUTDOWNn\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100100111001001111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_hundredths\(1),
	datab => \u2_controller|u1|ALT_INV_hundredths\(2),
	datac => \u2_controller|u1|ALT_INV_hundredths\(3),
	datae => \u2_controller|u1|ALT_INV_hundredths\(0),
	dataf => \u2_controller|ALT_INV_DISPLAY_SHUTDOWNn\(2),
	combout => \u7_hunds|Mux2~0_combout\);

-- Location: LABCELL_X21_Y2_N57
\u7_hunds|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7_hunds|Mux1~0_combout\ = ( \u2_controller|u1|hundredths\(0) & ( \u2_controller|DISPLAY_SHUTDOWNn\(2) & ( (!\u2_controller|u1|hundredths\(2) $ (\u2_controller|u1|hundredths\(3))) # (\u2_controller|u1|hundredths\(1)) ) ) ) # ( 
-- !\u2_controller|u1|hundredths\(0) & ( \u2_controller|DISPLAY_SHUTDOWNn\(2) & ( (!\u2_controller|u1|hundredths\(2) & (\u2_controller|u1|hundredths\(1))) # (\u2_controller|u1|hundredths\(2) & ((\u2_controller|u1|hundredths\(3)))) ) ) ) # ( 
-- \u2_controller|u1|hundredths\(0) & ( !\u2_controller|DISPLAY_SHUTDOWNn\(2) ) ) # ( !\u2_controller|u1|hundredths\(0) & ( !\u2_controller|DISPLAY_SHUTDOWNn\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010000010111111111010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_hundredths\(1),
	datac => \u2_controller|u1|ALT_INV_hundredths\(2),
	datad => \u2_controller|u1|ALT_INV_hundredths\(3),
	datae => \u2_controller|u1|ALT_INV_hundredths\(0),
	dataf => \u2_controller|ALT_INV_DISPLAY_SHUTDOWNn\(2),
	combout => \u7_hunds|Mux1~0_combout\);

-- Location: LABCELL_X21_Y2_N24
\u7_hunds|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7_hunds|Mux0~0_combout\ = ( \u2_controller|u1|hundredths\(0) & ( \u2_controller|DISPLAY_SHUTDOWNn\(2) & ( (!\u2_controller|u1|hundredths\(1) & (!\u2_controller|u1|hundredths\(2) $ (\u2_controller|u1|hundredths\(3)))) # (\u2_controller|u1|hundredths\(1) 
-- & ((\u2_controller|u1|hundredths\(3)) # (\u2_controller|u1|hundredths\(2)))) ) ) ) # ( !\u2_controller|u1|hundredths\(0) & ( \u2_controller|DISPLAY_SHUTDOWNn\(2) & ( !\u2_controller|u1|hundredths\(3) $ (((\u2_controller|u1|hundredths\(2)) # 
-- (\u2_controller|u1|hundredths\(1)))) ) ) ) # ( \u2_controller|u1|hundredths\(0) & ( !\u2_controller|DISPLAY_SHUTDOWNn\(2) ) ) # ( !\u2_controller|u1|hundredths\(0) & ( !\u2_controller|DISPLAY_SHUTDOWNn\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110000111100001111001011110010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u1|ALT_INV_hundredths\(1),
	datab => \u2_controller|u1|ALT_INV_hundredths\(2),
	datac => \u2_controller|u1|ALT_INV_hundredths\(3),
	datae => \u2_controller|u1|ALT_INV_hundredths\(0),
	dataf => \u2_controller|ALT_INV_DISPLAY_SHUTDOWNn\(2),
	combout => \u7_hunds|Mux0~0_combout\);

-- Location: IOIBUF_X14_Y0_N52
\SRAM_DQ[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(0),
	o => \SRAM_DQ[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N18
\SRAM_DQ[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(1),
	o => \SRAM_DQ[1]~input_o\);

-- Location: IOIBUF_X15_Y0_N1
\SRAM_DQ[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(2),
	o => \SRAM_DQ[2]~input_o\);

-- Location: IOIBUF_X15_Y0_N18
\SRAM_DQ[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(3),
	o => \SRAM_DQ[3]~input_o\);

-- Location: IOIBUF_X15_Y0_N35
\SRAM_DQ[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(4),
	o => \SRAM_DQ[4]~input_o\);

-- Location: IOIBUF_X15_Y0_N52
\SRAM_DQ[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(5),
	o => \SRAM_DQ[5]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\SRAM_DQ[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(6),
	o => \SRAM_DQ[6]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\SRAM_DQ[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(7),
	o => \SRAM_DQ[7]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\SRAM_DQ[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(8),
	o => \SRAM_DQ[8]~input_o\);

-- Location: IOIBUF_X17_Y0_N58
\SRAM_DQ[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(9),
	o => \SRAM_DQ[9]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\SRAM_DQ[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(10),
	o => \SRAM_DQ[10]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\SRAM_DQ[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(11),
	o => \SRAM_DQ[11]~input_o\);

-- Location: IOIBUF_X17_Y0_N75
\SRAM_DQ[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(12),
	o => \SRAM_DQ[12]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\SRAM_DQ[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(13),
	o => \SRAM_DQ[13]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\SRAM_DQ[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(14),
	o => \SRAM_DQ[14]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\SRAM_DQ[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(15),
	o => \SRAM_DQ[15]~input_o\);
END structure;


