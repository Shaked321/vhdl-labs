-- Copyright (C) 2024  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "12/18/2024 12:18:56"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	stopwatch IS
    PORT (
	CLK : IN std_logic;
	RSTn : IN std_logic;
	SW_START_STOP : IN std_logic;
	SW_CLEAR : IN std_logic;
	SW_LAP : IN std_logic;
	HUND_ONES_7SEG : BUFFER std_logic_vector(6 DOWNTO 0);
	HUND_TENS_7SEG : BUFFER std_logic_vector(6 DOWNTO 0);
	SEC_ONES_7SEG : BUFFER std_logic_vector(6 DOWNTO 0);
	SEC_TENS_7SEG : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END stopwatch;

-- Design Ports Information
-- HUND_ONES_7SEG[0]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HUND_ONES_7SEG[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HUND_ONES_7SEG[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HUND_ONES_7SEG[3]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HUND_ONES_7SEG[4]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HUND_ONES_7SEG[5]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HUND_ONES_7SEG[6]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HUND_TENS_7SEG[0]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HUND_TENS_7SEG[1]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HUND_TENS_7SEG[2]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HUND_TENS_7SEG[3]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HUND_TENS_7SEG[4]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HUND_TENS_7SEG[5]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HUND_TENS_7SEG[6]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC_ONES_7SEG[0]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC_ONES_7SEG[1]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC_ONES_7SEG[2]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC_ONES_7SEG[3]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC_ONES_7SEG[4]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC_ONES_7SEG[5]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC_ONES_7SEG[6]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC_TENS_7SEG[0]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC_TENS_7SEG[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC_TENS_7SEG[2]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC_TENS_7SEG[3]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC_TENS_7SEG[4]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC_TENS_7SEG[5]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC_TENS_7SEG[6]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSTn	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_LAP	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_CLEAR	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_START_STOP	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF stopwatch IS
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
SIGNAL ww_SW_START_STOP : std_logic;
SIGNAL ww_SW_CLEAR : std_logic;
SIGNAL ww_SW_LAP : std_logic;
SIGNAL ww_HUND_ONES_7SEG : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HUND_TENS_7SEG : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEC_ONES_7SEG : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEC_TENS_7SEG : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW_CLEAR~input_o\ : std_logic;
SIGNAL \RSTn~input_o\ : std_logic;
SIGNAL \u1_SW_CLEAR|SIG_OUT~0_combout\ : std_logic;
SIGNAL \u1_SW_CLEAR|SIG_OUT~q\ : std_logic;
SIGNAL \SW_START_STOP~input_o\ : std_logic;
SIGNAL \u1_SW_START_STOP|sig_in_d[1]~feeder_combout\ : std_logic;
SIGNAL \u1_SW_START_STOP|SIG_OUT~0_combout\ : std_logic;
SIGNAL \u1_SW_START_STOP|SIG_OUT~q\ : std_logic;
SIGNAL \SW_LAP~input_o\ : std_logic;
SIGNAL \u1_SW_LAP|SIG_OUT~0_combout\ : std_logic;
SIGNAL \u1_SW_LAP|SIG_OUT~q\ : std_logic;
SIGNAL \u2|nx_state.st_lap~0_combout\ : std_logic;
SIGNAL \u2|pr_state.st_lap~q\ : std_logic;
SIGNAL \u2|Selector4~0_combout\ : std_logic;
SIGNAL \u2|pr_state.st_count~q\ : std_logic;
SIGNAL \u2|Selector3~0_combout\ : std_logic;
SIGNAL \u2|pr_state.st_stop~q\ : std_logic;
SIGNAL \u2|COUNT_CLEAR~0_combout\ : std_logic;
SIGNAL \u2|COUNT_CLEAR~combout\ : std_logic;
SIGNAL \u4|hund_cnt_ones~4_combout\ : std_logic;
SIGNAL \u3|Add0~37_sumout\ : std_logic;
SIGNAL \u3|Add0~46\ : std_logic;
SIGNAL \u3|Add0~49_sumout\ : std_logic;
SIGNAL \u2|COUNT_ENABLE~combout\ : std_logic;
SIGNAL \u3|count[7]~1_combout\ : std_logic;
SIGNAL \u3|Add0~50\ : std_logic;
SIGNAL \u3|Add0~25_sumout\ : std_logic;
SIGNAL \u3|Add0~26\ : std_logic;
SIGNAL \u3|Add0~29_sumout\ : std_logic;
SIGNAL \u3|Add0~30\ : std_logic;
SIGNAL \u3|Add0~53_sumout\ : std_logic;
SIGNAL \u3|Add0~54\ : std_logic;
SIGNAL \u3|Add0~1_sumout\ : std_logic;
SIGNAL \u3|Add0~2\ : std_logic;
SIGNAL \u3|Add0~9_sumout\ : std_logic;
SIGNAL \u3|Add0~10\ : std_logic;
SIGNAL \u3|Add0~13_sumout\ : std_logic;
SIGNAL \u3|Add0~14\ : std_logic;
SIGNAL \u3|Add0~17_sumout\ : std_logic;
SIGNAL \u3|Add0~18\ : std_logic;
SIGNAL \u3|Add0~21_sumout\ : std_logic;
SIGNAL \u3|Add0~22\ : std_logic;
SIGNAL \u3|Add0~73_sumout\ : std_logic;
SIGNAL \u3|Add0~74\ : std_logic;
SIGNAL \u3|Add0~5_sumout\ : std_logic;
SIGNAL \u3|LessThan0~0_combout\ : std_logic;
SIGNAL \u3|Add0~6\ : std_logic;
SIGNAL \u3|Add0~57_sumout\ : std_logic;
SIGNAL \u3|Add0~58\ : std_logic;
SIGNAL \u3|Add0~61_sumout\ : std_logic;
SIGNAL \u3|Add0~62\ : std_logic;
SIGNAL \u3|Add0~65_sumout\ : std_logic;
SIGNAL \u3|Add0~66\ : std_logic;
SIGNAL \u3|Add0~69_sumout\ : std_logic;
SIGNAL \u3|PULSE~0_combout\ : std_logic;
SIGNAL \u3|LessThan0~1_combout\ : std_logic;
SIGNAL \u3|count[7]~0_combout\ : std_logic;
SIGNAL \u3|Add0~38\ : std_logic;
SIGNAL \u3|Add0~41_sumout\ : std_logic;
SIGNAL \u3|Add0~42\ : std_logic;
SIGNAL \u3|Add0~33_sumout\ : std_logic;
SIGNAL \u3|Add0~34\ : std_logic;
SIGNAL \u3|Add0~45_sumout\ : std_logic;
SIGNAL \u3|LessThan0~2_combout\ : std_logic;
SIGNAL \u3|PULSE~1_combout\ : std_logic;
SIGNAL \u3|PULSE~2_combout\ : std_logic;
SIGNAL \u3|PULSE~q\ : std_logic;
SIGNAL \u4|hund_cnt_ones[2]~1_combout\ : std_logic;
SIGNAL \u4|hund_cnt_ones~0_combout\ : std_logic;
SIGNAL \u4|hund_cnt_ones~3_combout\ : std_logic;
SIGNAL \u4|hund_cnt_ones~2_combout\ : std_logic;
SIGNAL \u2|cnt_lap~1_combout\ : std_logic;
SIGNAL \u2|cnt_lap~q\ : std_logic;
SIGNAL \u2|Selector1~0_combout\ : std_logic;
SIGNAL \u2|COUNT_LAP~1_combout\ : std_logic;
SIGNAL \u2|COUNT_LAP~combout\ : std_logic;
SIGNAL \u5_HUND_ONES_7SEG|D_OUT[0]~0_combout\ : std_logic;
SIGNAL \u5_HUND_ONES_7SEG|D_OUT[1]~1_combout\ : std_logic;
SIGNAL \u5_HUND_ONES_7SEG|D_OUT[2]~2_combout\ : std_logic;
SIGNAL \u5_HUND_ONES_7SEG|D_OUT[3]~3_combout\ : std_logic;
SIGNAL \u5_HUND_ONES_7SEG|D_OUT[4]~4_combout\ : std_logic;
SIGNAL \u5_HUND_ONES_7SEG|D_OUT[5]~5_combout\ : std_logic;
SIGNAL \u5_HUND_ONES_7SEG|D_OUT[6]~6_combout\ : std_logic;
SIGNAL \u4|hund_cnt_tens~4_combout\ : std_logic;
SIGNAL \u4|hund_cnt_tens[3]~1_combout\ : std_logic;
SIGNAL \u4|hund_cnt_tens~0_combout\ : std_logic;
SIGNAL \u4|hund_cnt_tens~3_combout\ : std_logic;
SIGNAL \u4|hund_cnt_tens~2_combout\ : std_logic;
SIGNAL \u5_HUND_TENS_7SEG|D_OUT[0]~0_combout\ : std_logic;
SIGNAL \u5_HUND_TENS_7SEG|D_OUT[1]~1_combout\ : std_logic;
SIGNAL \u5_HUND_TENS_7SEG|D_OUT[2]~2_combout\ : std_logic;
SIGNAL \u5_HUND_TENS_7SEG|D_OUT[3]~3_combout\ : std_logic;
SIGNAL \u5_HUND_TENS_7SEG|D_OUT[4]~4_combout\ : std_logic;
SIGNAL \u5_HUND_TENS_7SEG|D_OUT[5]~5_combout\ : std_logic;
SIGNAL \u5_HUND_TENS_7SEG|D_OUT[6]~6_combout\ : std_logic;
SIGNAL \u4|sec_cnt_ones~4_combout\ : std_logic;
SIGNAL \u4|Equal0~0_combout\ : std_logic;
SIGNAL \u4|Equal1~0_combout\ : std_logic;
SIGNAL \u4|sec_cnt_ones[2]~1_combout\ : std_logic;
SIGNAL \u4|sec_cnt_ones~0_combout\ : std_logic;
SIGNAL \u4|sec_cnt_ones~3_combout\ : std_logic;
SIGNAL \u4|sec_cnt_ones~2_combout\ : std_logic;
SIGNAL \u5_SEC_ONES_7SEG|D_OUT[0]~0_combout\ : std_logic;
SIGNAL \u5_SEC_ONES_7SEG|D_OUT[1]~1_combout\ : std_logic;
SIGNAL \u5_SEC_ONES_7SEG|D_OUT[2]~2_combout\ : std_logic;
SIGNAL \u5_SEC_ONES_7SEG|D_OUT[3]~3_combout\ : std_logic;
SIGNAL \u5_SEC_ONES_7SEG|D_OUT[4]~4_combout\ : std_logic;
SIGNAL \u5_SEC_ONES_7SEG|D_OUT[5]~5_combout\ : std_logic;
SIGNAL \u5_SEC_ONES_7SEG|D_OUT[6]~6_combout\ : std_logic;
SIGNAL \u4|sec_cnt_tens~2_combout\ : std_logic;
SIGNAL \u4|Equal2~0_combout\ : std_logic;
SIGNAL \u4|sec_cnt_tens[0]~1_combout\ : std_logic;
SIGNAL \u4|sec_cnt_tens~0_combout\ : std_logic;
SIGNAL \u4|sec_cnt_tens~3_combout\ : std_logic;
SIGNAL \u5_SEC_TENS_7SEG|D_OUT[0]~0_combout\ : std_logic;
SIGNAL \u5_SEC_TENS_7SEG|D_OUT[1]~1_combout\ : std_logic;
SIGNAL \u5_SEC_TENS_7SEG|D_OUT[2]~2_combout\ : std_logic;
SIGNAL \u5_SEC_TENS_7SEG|D_OUT[3]~3_combout\ : std_logic;
SIGNAL \u5_SEC_TENS_7SEG|D_OUT[4]~4_combout\ : std_logic;
SIGNAL \u5_SEC_TENS_7SEG|D_OUT[5]~5_combout\ : std_logic;
SIGNAL \u5_SEC_TENS_7SEG|D_OUT[6]~6_combout\ : std_logic;
SIGNAL \u4|HUND_TENS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \u4|HUND_ONES\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|SEC_ONES\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|SEC_TENS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|hund_cnt_ones\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|hund_cnt_tens\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|sec_cnt_ones\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|sec_cnt_tens\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u1_SW_LAP|sig_in_d\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \u1_SW_CLEAR|sig_in_d\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \u1_SW_START_STOP|sig_in_d\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \ALT_INV_SW_START_STOP~input_o\ : std_logic;
SIGNAL \ALT_INV_RSTn~input_o\ : std_logic;
SIGNAL \u2|ALT_INV_COUNT_ENABLE~combout\ : std_logic;
SIGNAL \u2|ALT_INV_COUNT_CLEAR~combout\ : std_logic;
SIGNAL \u2|ALT_INV_COUNT_LAP~combout\ : std_logic;
SIGNAL \u1_SW_START_STOP|ALT_INV_sig_in_d\ : std_logic_vector(3 DOWNTO 2);
SIGNAL \u1_SW_CLEAR|ALT_INV_sig_in_d\ : std_logic_vector(3 DOWNTO 2);
SIGNAL \u1_SW_LAP|ALT_INV_sig_in_d\ : std_logic_vector(3 DOWNTO 2);
SIGNAL \u1_SW_START_STOP|ALT_INV_SIG_OUT~q\ : std_logic;
SIGNAL \u1_SW_CLEAR|ALT_INV_SIG_OUT~q\ : std_logic;
SIGNAL \u1_SW_LAP|ALT_INV_SIG_OUT~q\ : std_logic;
SIGNAL \u3|ALT_INV_PULSE~1_combout\ : std_logic;
SIGNAL \u3|ALT_INV_PULSE~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \u3|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \u3|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_COUNT_CLEAR~0_combout\ : std_logic;
SIGNAL \u4|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \u4|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \u4|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_COUNT_LAP~1_combout\ : std_logic;
SIGNAL \u2|ALT_INV_pr_state.st_count~q\ : std_logic;
SIGNAL \u2|ALT_INV_pr_state.st_stop~q\ : std_logic;
SIGNAL \u2|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_pr_state.st_lap~q\ : std_logic;
SIGNAL \u2|ALT_INV_cnt_lap~q\ : std_logic;
SIGNAL \u3|ALT_INV_PULSE~q\ : std_logic;
SIGNAL \u4|ALT_INV_sec_cnt_tens\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u4|ALT_INV_sec_cnt_ones\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|ALT_INV_hund_cnt_tens\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|ALT_INV_hund_cnt_ones\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u5_SEC_TENS_7SEG|ALT_INV_D_OUT[5]~5_combout\ : std_logic;
SIGNAL \u4|ALT_INV_SEC_TENS\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u4|ALT_INV_SEC_ONES\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|ALT_INV_HUND_TENS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|ALT_INV_HUND_ONES\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|ALT_INV_count\ : std_logic_vector(18 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_RSTn <= RSTn;
ww_SW_START_STOP <= SW_START_STOP;
ww_SW_CLEAR <= SW_CLEAR;
ww_SW_LAP <= SW_LAP;
HUND_ONES_7SEG <= ww_HUND_ONES_7SEG;
HUND_TENS_7SEG <= ww_HUND_TENS_7SEG;
SEC_ONES_7SEG <= ww_SEC_ONES_7SEG;
SEC_TENS_7SEG <= ww_SEC_TENS_7SEG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW_START_STOP~input_o\ <= NOT \SW_START_STOP~input_o\;
\ALT_INV_RSTn~input_o\ <= NOT \RSTn~input_o\;
\u2|ALT_INV_COUNT_ENABLE~combout\ <= NOT \u2|COUNT_ENABLE~combout\;
\u2|ALT_INV_COUNT_CLEAR~combout\ <= NOT \u2|COUNT_CLEAR~combout\;
\u2|ALT_INV_COUNT_LAP~combout\ <= NOT \u2|COUNT_LAP~combout\;
\u1_SW_START_STOP|ALT_INV_sig_in_d\(2) <= NOT \u1_SW_START_STOP|sig_in_d\(2);
\u1_SW_START_STOP|ALT_INV_sig_in_d\(3) <= NOT \u1_SW_START_STOP|sig_in_d\(3);
\u1_SW_CLEAR|ALT_INV_sig_in_d\(2) <= NOT \u1_SW_CLEAR|sig_in_d\(2);
\u1_SW_CLEAR|ALT_INV_sig_in_d\(3) <= NOT \u1_SW_CLEAR|sig_in_d\(3);
\u1_SW_LAP|ALT_INV_sig_in_d\(2) <= NOT \u1_SW_LAP|sig_in_d\(2);
\u1_SW_LAP|ALT_INV_sig_in_d\(3) <= NOT \u1_SW_LAP|sig_in_d\(3);
\u1_SW_START_STOP|ALT_INV_SIG_OUT~q\ <= NOT \u1_SW_START_STOP|SIG_OUT~q\;
\u1_SW_CLEAR|ALT_INV_SIG_OUT~q\ <= NOT \u1_SW_CLEAR|SIG_OUT~q\;
\u1_SW_LAP|ALT_INV_SIG_OUT~q\ <= NOT \u1_SW_LAP|SIG_OUT~q\;
\u3|ALT_INV_PULSE~1_combout\ <= NOT \u3|PULSE~1_combout\;
\u3|ALT_INV_PULSE~0_combout\ <= NOT \u3|PULSE~0_combout\;
\u3|ALT_INV_LessThan0~2_combout\ <= NOT \u3|LessThan0~2_combout\;
\u3|ALT_INV_LessThan0~1_combout\ <= NOT \u3|LessThan0~1_combout\;
\u3|ALT_INV_LessThan0~0_combout\ <= NOT \u3|LessThan0~0_combout\;
\u2|ALT_INV_COUNT_CLEAR~0_combout\ <= NOT \u2|COUNT_CLEAR~0_combout\;
\u4|ALT_INV_Equal2~0_combout\ <= NOT \u4|Equal2~0_combout\;
\u4|ALT_INV_Equal1~0_combout\ <= NOT \u4|Equal1~0_combout\;
\u4|ALT_INV_Equal0~0_combout\ <= NOT \u4|Equal0~0_combout\;
\u2|ALT_INV_COUNT_LAP~1_combout\ <= NOT \u2|COUNT_LAP~1_combout\;
\u2|ALT_INV_pr_state.st_count~q\ <= NOT \u2|pr_state.st_count~q\;
\u2|ALT_INV_pr_state.st_stop~q\ <= NOT \u2|pr_state.st_stop~q\;
\u2|ALT_INV_Selector1~0_combout\ <= NOT \u2|Selector1~0_combout\;
\u2|ALT_INV_pr_state.st_lap~q\ <= NOT \u2|pr_state.st_lap~q\;
\u2|ALT_INV_cnt_lap~q\ <= NOT \u2|cnt_lap~q\;
\u3|ALT_INV_PULSE~q\ <= NOT \u3|PULSE~q\;
\u4|ALT_INV_sec_cnt_tens\(2) <= NOT \u4|sec_cnt_tens\(2);
\u4|ALT_INV_sec_cnt_tens\(0) <= NOT \u4|sec_cnt_tens\(0);
\u4|ALT_INV_sec_cnt_tens\(1) <= NOT \u4|sec_cnt_tens\(1);
\u4|ALT_INV_sec_cnt_ones\(0) <= NOT \u4|sec_cnt_ones\(0);
\u4|ALT_INV_sec_cnt_ones\(1) <= NOT \u4|sec_cnt_ones\(1);
\u4|ALT_INV_sec_cnt_ones\(2) <= NOT \u4|sec_cnt_ones\(2);
\u4|ALT_INV_sec_cnt_ones\(3) <= NOT \u4|sec_cnt_ones\(3);
\u4|ALT_INV_hund_cnt_tens\(0) <= NOT \u4|hund_cnt_tens\(0);
\u4|ALT_INV_hund_cnt_tens\(1) <= NOT \u4|hund_cnt_tens\(1);
\u4|ALT_INV_hund_cnt_tens\(2) <= NOT \u4|hund_cnt_tens\(2);
\u4|ALT_INV_hund_cnt_tens\(3) <= NOT \u4|hund_cnt_tens\(3);
\u4|ALT_INV_hund_cnt_ones\(0) <= NOT \u4|hund_cnt_ones\(0);
\u4|ALT_INV_hund_cnt_ones\(1) <= NOT \u4|hund_cnt_ones\(1);
\u4|ALT_INV_hund_cnt_ones\(2) <= NOT \u4|hund_cnt_ones\(2);
\u4|ALT_INV_hund_cnt_ones\(3) <= NOT \u4|hund_cnt_ones\(3);
\u5_SEC_TENS_7SEG|ALT_INV_D_OUT[5]~5_combout\ <= NOT \u5_SEC_TENS_7SEG|D_OUT[5]~5_combout\;
\u4|ALT_INV_SEC_TENS\(2) <= NOT \u4|SEC_TENS\(2);
\u4|ALT_INV_SEC_TENS\(0) <= NOT \u4|SEC_TENS\(0);
\u4|ALT_INV_SEC_TENS\(1) <= NOT \u4|SEC_TENS\(1);
\u4|ALT_INV_SEC_ONES\(0) <= NOT \u4|SEC_ONES\(0);
\u4|ALT_INV_SEC_ONES\(1) <= NOT \u4|SEC_ONES\(1);
\u4|ALT_INV_SEC_ONES\(2) <= NOT \u4|SEC_ONES\(2);
\u4|ALT_INV_SEC_ONES\(3) <= NOT \u4|SEC_ONES\(3);
\u4|ALT_INV_HUND_TENS\(0) <= NOT \u4|HUND_TENS\(0);
\u4|ALT_INV_HUND_TENS\(1) <= NOT \u4|HUND_TENS\(1);
\u4|ALT_INV_HUND_TENS\(2) <= NOT \u4|HUND_TENS\(2);
\u4|ALT_INV_HUND_TENS\(3) <= NOT \u4|HUND_TENS\(3);
\u4|ALT_INV_HUND_ONES\(0) <= NOT \u4|HUND_ONES\(0);
\u4|ALT_INV_HUND_ONES\(1) <= NOT \u4|HUND_ONES\(1);
\u4|ALT_INV_HUND_ONES\(2) <= NOT \u4|HUND_ONES\(2);
\u4|ALT_INV_HUND_ONES\(3) <= NOT \u4|HUND_ONES\(3);
\u3|ALT_INV_count\(13) <= NOT \u3|count\(13);
\u3|ALT_INV_count\(18) <= NOT \u3|count\(18);
\u3|ALT_INV_count\(17) <= NOT \u3|count\(17);
\u3|ALT_INV_count\(16) <= NOT \u3|count\(16);
\u3|ALT_INV_count\(15) <= NOT \u3|count\(15);
\u3|ALT_INV_count\(7) <= NOT \u3|count\(7);
\u3|ALT_INV_count\(4) <= NOT \u3|count\(4);
\u3|ALT_INV_count\(3) <= NOT \u3|count\(3);
\u3|ALT_INV_count\(1) <= NOT \u3|count\(1);
\u3|ALT_INV_count\(0) <= NOT \u3|count\(0);
\u3|ALT_INV_count\(2) <= NOT \u3|count\(2);
\u3|ALT_INV_count\(6) <= NOT \u3|count\(6);
\u3|ALT_INV_count\(5) <= NOT \u3|count\(5);
\u3|ALT_INV_count\(12) <= NOT \u3|count\(12);
\u3|ALT_INV_count\(11) <= NOT \u3|count\(11);
\u3|ALT_INV_count\(10) <= NOT \u3|count\(10);
\u3|ALT_INV_count\(9) <= NOT \u3|count\(9);
\u3|ALT_INV_count\(14) <= NOT \u3|count\(14);
\u3|ALT_INV_count\(8) <= NOT \u3|count\(8);

-- Location: IOOBUF_X66_Y0_N2
\HUND_ONES_7SEG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_HUND_ONES_7SEG|D_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HUND_ONES_7SEG(0));

-- Location: IOOBUF_X64_Y0_N2
\HUND_ONES_7SEG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_HUND_ONES_7SEG|D_OUT[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HUND_ONES_7SEG(1));

-- Location: IOOBUF_X64_Y0_N19
\HUND_ONES_7SEG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_HUND_ONES_7SEG|D_OUT[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HUND_ONES_7SEG(2));

-- Location: IOOBUF_X66_Y0_N19
\HUND_ONES_7SEG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_HUND_ONES_7SEG|D_OUT[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HUND_ONES_7SEG(3));

-- Location: IOOBUF_X65_Y0_N2
\HUND_ONES_7SEG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_HUND_ONES_7SEG|D_OUT[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HUND_ONES_7SEG(4));

-- Location: IOOBUF_X65_Y0_N19
\HUND_ONES_7SEG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_HUND_ONES_7SEG|D_OUT[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HUND_ONES_7SEG(5));

-- Location: IOOBUF_X62_Y0_N42
\HUND_ONES_7SEG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_HUND_ONES_7SEG|D_OUT[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HUND_ONES_7SEG(6));

-- Location: IOOBUF_X62_Y0_N59
\HUND_TENS_7SEG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_HUND_TENS_7SEG|D_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HUND_TENS_7SEG(0));

-- Location: IOOBUF_X64_Y0_N36
\HUND_TENS_7SEG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_HUND_TENS_7SEG|D_OUT[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HUND_TENS_7SEG(1));

-- Location: IOOBUF_X65_Y0_N36
\HUND_TENS_7SEG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_HUND_TENS_7SEG|D_OUT[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HUND_TENS_7SEG(2));

-- Location: IOOBUF_X64_Y0_N53
\HUND_TENS_7SEG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_HUND_TENS_7SEG|D_OUT[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HUND_TENS_7SEG(3));

-- Location: IOOBUF_X62_Y0_N76
\HUND_TENS_7SEG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_HUND_TENS_7SEG|D_OUT[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HUND_TENS_7SEG(4));

-- Location: IOOBUF_X65_Y0_N53
\HUND_TENS_7SEG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_HUND_TENS_7SEG|D_OUT[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HUND_TENS_7SEG(5));

-- Location: IOOBUF_X62_Y0_N93
\HUND_TENS_7SEG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_HUND_TENS_7SEG|D_OUT[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HUND_TENS_7SEG(6));

-- Location: IOOBUF_X7_Y0_N36
\SEC_ONES_7SEG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_SEC_ONES_7SEG|D_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_SEC_ONES_7SEG(0));

-- Location: IOOBUF_X7_Y0_N53
\SEC_ONES_7SEG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_SEC_ONES_7SEG|D_OUT[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_SEC_ONES_7SEG(1));

-- Location: IOOBUF_X68_Y13_N22
\SEC_ONES_7SEG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_SEC_ONES_7SEG|D_OUT[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_SEC_ONES_7SEG(2));

-- Location: IOOBUF_X68_Y12_N5
\SEC_ONES_7SEG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_SEC_ONES_7SEG|D_OUT[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_SEC_ONES_7SEG(3));

-- Location: IOOBUF_X68_Y10_N62
\SEC_ONES_7SEG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_SEC_ONES_7SEG|D_OUT[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_SEC_ONES_7SEG(4));

-- Location: IOOBUF_X68_Y11_N22
\SEC_ONES_7SEG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_SEC_ONES_7SEG|D_OUT[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_SEC_ONES_7SEG(5));

-- Location: IOOBUF_X68_Y11_N5
\SEC_ONES_7SEG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_SEC_ONES_7SEG|D_OUT[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_SEC_ONES_7SEG(6));

-- Location: IOOBUF_X68_Y13_N56
\SEC_TENS_7SEG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_SEC_TENS_7SEG|D_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_SEC_TENS_7SEG(0));

-- Location: IOOBUF_X68_Y13_N39
\SEC_TENS_7SEG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_SEC_TENS_7SEG|D_OUT[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_SEC_TENS_7SEG(1));

-- Location: IOOBUF_X68_Y11_N56
\SEC_TENS_7SEG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_SEC_TENS_7SEG|D_OUT[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_SEC_TENS_7SEG(2));

-- Location: IOOBUF_X68_Y11_N39
\SEC_TENS_7SEG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_SEC_TENS_7SEG|D_OUT[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_SEC_TENS_7SEG(3));

-- Location: IOOBUF_X68_Y12_N39
\SEC_TENS_7SEG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_SEC_TENS_7SEG|D_OUT[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_SEC_TENS_7SEG(4));

-- Location: IOOBUF_X68_Y10_N96
\SEC_TENS_7SEG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_SEC_TENS_7SEG|ALT_INV_D_OUT[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_SEC_TENS_7SEG(5));

-- Location: IOOBUF_X68_Y10_N79
\SEC_TENS_7SEG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5_SEC_TENS_7SEG|D_OUT[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_SEC_TENS_7SEG(6));

-- Location: IOIBUF_X68_Y22_N44
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G9
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

-- Location: IOIBUF_X46_Y0_N1
\SW_CLEAR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_CLEAR,
	o => \SW_CLEAR~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\RSTn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RSTn,
	o => \RSTn~input_o\);

-- Location: FF_X63_Y4_N5
\u1_SW_CLEAR|sig_in_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \SW_CLEAR~input_o\,
	clrn => \RSTn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_SW_CLEAR|sig_in_d\(1));

-- Location: FF_X63_Y4_N59
\u1_SW_CLEAR|sig_in_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u1_SW_CLEAR|sig_in_d\(1),
	clrn => \RSTn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_SW_CLEAR|sig_in_d\(2));

-- Location: FF_X63_Y4_N40
\u1_SW_CLEAR|sig_in_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u1_SW_CLEAR|sig_in_d\(2),
	clrn => \RSTn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_SW_CLEAR|sig_in_d\(3));

-- Location: LABCELL_X63_Y4_N42
\u1_SW_CLEAR|SIG_OUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_SW_CLEAR|SIG_OUT~0_combout\ = ( \u1_SW_CLEAR|sig_in_d\(3) & ( !\u1_SW_CLEAR|sig_in_d\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1_SW_CLEAR|ALT_INV_sig_in_d\(2),
	dataf => \u1_SW_CLEAR|ALT_INV_sig_in_d\(3),
	combout => \u1_SW_CLEAR|SIG_OUT~0_combout\);

-- Location: FF_X63_Y4_N44
\u1_SW_CLEAR|SIG_OUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_SW_CLEAR|SIG_OUT~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_SW_CLEAR|SIG_OUT~q\);

-- Location: IOIBUF_X46_Y0_N18
\SW_START_STOP~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_START_STOP,
	o => \SW_START_STOP~input_o\);

-- Location: MLABCELL_X50_Y2_N6
\u1_SW_START_STOP|sig_in_d[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_SW_START_STOP|sig_in_d[1]~feeder_combout\ = ( \SW_START_STOP~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW_START_STOP~input_o\,
	combout => \u1_SW_START_STOP|sig_in_d[1]~feeder_combout\);

-- Location: FF_X50_Y2_N8
\u1_SW_START_STOP|sig_in_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_SW_START_STOP|sig_in_d[1]~feeder_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_SW_START_STOP|sig_in_d\(1));

-- Location: FF_X50_Y2_N35
\u1_SW_START_STOP|sig_in_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u1_SW_START_STOP|sig_in_d\(1),
	clrn => \RSTn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_SW_START_STOP|sig_in_d\(2));

-- Location: FF_X63_Y2_N43
\u1_SW_START_STOP|sig_in_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u1_SW_START_STOP|sig_in_d\(2),
	clrn => \RSTn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_SW_START_STOP|sig_in_d\(3));

-- Location: LABCELL_X63_Y2_N45
\u1_SW_START_STOP|SIG_OUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_SW_START_STOP|SIG_OUT~0_combout\ = ( \u1_SW_START_STOP|sig_in_d\(3) & ( !\u1_SW_START_STOP|sig_in_d\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1_SW_START_STOP|ALT_INV_sig_in_d\(2),
	dataf => \u1_SW_START_STOP|ALT_INV_sig_in_d\(3),
	combout => \u1_SW_START_STOP|SIG_OUT~0_combout\);

-- Location: FF_X63_Y2_N47
\u1_SW_START_STOP|SIG_OUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_SW_START_STOP|SIG_OUT~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_SW_START_STOP|SIG_OUT~q\);

-- Location: IOIBUF_X21_Y0_N18
\SW_LAP~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_LAP,
	o => \SW_LAP~input_o\);

-- Location: FF_X63_Y2_N14
\u1_SW_LAP|sig_in_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \SW_LAP~input_o\,
	clrn => \RSTn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_SW_LAP|sig_in_d\(1));

-- Location: FF_X63_Y2_N5
\u1_SW_LAP|sig_in_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u1_SW_LAP|sig_in_d\(1),
	clrn => \RSTn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_SW_LAP|sig_in_d\(2));

-- Location: FF_X63_Y2_N37
\u1_SW_LAP|sig_in_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u1_SW_LAP|sig_in_d\(2),
	clrn => \RSTn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_SW_LAP|sig_in_d\(3));

-- Location: LABCELL_X63_Y2_N33
\u1_SW_LAP|SIG_OUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1_SW_LAP|SIG_OUT~0_combout\ = ( \u1_SW_LAP|sig_in_d\(3) & ( !\u1_SW_LAP|sig_in_d\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_SW_LAP|ALT_INV_sig_in_d\(2),
	dataf => \u1_SW_LAP|ALT_INV_sig_in_d\(3),
	combout => \u1_SW_LAP|SIG_OUT~0_combout\);

-- Location: FF_X63_Y2_N35
\u1_SW_LAP|SIG_OUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1_SW_LAP|SIG_OUT~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1_SW_LAP|SIG_OUT~q\);

-- Location: LABCELL_X63_Y2_N54
\u2|nx_state.st_lap~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|nx_state.st_lap~0_combout\ = ( \u1_SW_LAP|SIG_OUT~q\ & ( \u2|pr_state.st_count~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_pr_state.st_count~q\,
	dataf => \u1_SW_LAP|ALT_INV_SIG_OUT~q\,
	combout => \u2|nx_state.st_lap~0_combout\);

-- Location: FF_X63_Y2_N56
\u2|pr_state.st_lap\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2|nx_state.st_lap~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|pr_state.st_lap~q\);

-- Location: LABCELL_X63_Y2_N48
\u2|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Selector4~0_combout\ = ( \u1_SW_LAP|SIG_OUT~q\ & ( (!\u2|pr_state.st_lap~q\ & (((\u1_SW_START_STOP|SIG_OUT~q\ & !\u2|pr_state.st_count~q\)))) # (\u2|pr_state.st_lap~q\ & (!\u1_SW_CLEAR|SIG_OUT~q\)) ) ) # ( !\u1_SW_LAP|SIG_OUT~q\ & ( 
-- (!\u2|pr_state.st_lap~q\ & ((!\u1_SW_START_STOP|SIG_OUT~q\ & (!\u1_SW_CLEAR|SIG_OUT~q\ & \u2|pr_state.st_count~q\)) # (\u1_SW_START_STOP|SIG_OUT~q\ & ((!\u2|pr_state.st_count~q\))))) # (\u2|pr_state.st_lap~q\ & (!\u1_SW_CLEAR|SIG_OUT~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101010001010001110101000101000111010000010100011101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_SW_CLEAR|ALT_INV_SIG_OUT~q\,
	datab => \u1_SW_START_STOP|ALT_INV_SIG_OUT~q\,
	datac => \u2|ALT_INV_pr_state.st_lap~q\,
	datad => \u2|ALT_INV_pr_state.st_count~q\,
	dataf => \u1_SW_LAP|ALT_INV_SIG_OUT~q\,
	combout => \u2|Selector4~0_combout\);

-- Location: FF_X63_Y2_N50
\u2|pr_state.st_count\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2|Selector4~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|pr_state.st_count~q\);

-- Location: LABCELL_X63_Y2_N39
\u2|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Selector3~0_combout\ = ( \u2|pr_state.st_stop~q\ & ( \u2|pr_state.st_count~q\ & ( (!\u1_SW_CLEAR|SIG_OUT~q\ & ((!\u1_SW_START_STOP|SIG_OUT~q\) # (!\u1_SW_LAP|SIG_OUT~q\))) ) ) ) # ( !\u2|pr_state.st_stop~q\ & ( \u2|pr_state.st_count~q\ & ( 
-- (!\u1_SW_CLEAR|SIG_OUT~q\ & (\u1_SW_START_STOP|SIG_OUT~q\ & !\u1_SW_LAP|SIG_OUT~q\)) ) ) ) # ( \u2|pr_state.st_stop~q\ & ( !\u2|pr_state.st_count~q\ & ( (!\u1_SW_CLEAR|SIG_OUT~q\ & !\u1_SW_START_STOP|SIG_OUT~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000001010000000001010101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1_SW_CLEAR|ALT_INV_SIG_OUT~q\,
	datac => \u1_SW_START_STOP|ALT_INV_SIG_OUT~q\,
	datad => \u1_SW_LAP|ALT_INV_SIG_OUT~q\,
	datae => \u2|ALT_INV_pr_state.st_stop~q\,
	dataf => \u2|ALT_INV_pr_state.st_count~q\,
	combout => \u2|Selector3~0_combout\);

-- Location: FF_X63_Y2_N41
\u2|pr_state.st_stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2|Selector3~0_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|pr_state.st_stop~q\);

-- Location: LABCELL_X63_Y2_N30
\u2|COUNT_CLEAR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|COUNT_CLEAR~0_combout\ = ( \u2|pr_state.st_stop~q\ ) # ( !\u2|pr_state.st_stop~q\ & ( \u2|pr_state.st_lap~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2|ALT_INV_pr_state.st_lap~q\,
	dataf => \u2|ALT_INV_pr_state.st_stop~q\,
	combout => \u2|COUNT_CLEAR~0_combout\);

-- Location: LABCELL_X63_Y2_N21
\u2|COUNT_CLEAR\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|COUNT_CLEAR~combout\ = ( \u2|COUNT_CLEAR~0_combout\ & ( \u2|COUNT_CLEAR~combout\ ) ) # ( !\u2|COUNT_CLEAR~0_combout\ & ( !\u2|pr_state.st_count~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_pr_state.st_count~q\,
	datad => \u2|ALT_INV_COUNT_CLEAR~combout\,
	dataf => \u2|ALT_INV_COUNT_CLEAR~0_combout\,
	combout => \u2|COUNT_CLEAR~combout\);

-- Location: LABCELL_X64_Y2_N0
\u4|hund_cnt_ones~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|hund_cnt_ones~4_combout\ = (!\u2|COUNT_CLEAR~combout\ & !\u4|hund_cnt_ones\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_COUNT_CLEAR~combout\,
	datad => \u4|ALT_INV_hund_cnt_ones\(0),
	combout => \u4|hund_cnt_ones~4_combout\);

-- Location: LABCELL_X61_Y4_N0
\u3|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add0~37_sumout\ = SUM(( \u3|count\(0) ) + ( VCC ) + ( !VCC ))
-- \u3|Add0~38\ = CARRY(( \u3|count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|ALT_INV_count\(0),
	cin => GND,
	sumout => \u3|Add0~37_sumout\,
	cout => \u3|Add0~38\);

-- Location: LABCELL_X61_Y4_N9
\u3|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add0~45_sumout\ = SUM(( \u3|count\(3) ) + ( GND ) + ( \u3|Add0~34\ ))
-- \u3|Add0~46\ = CARRY(( \u3|count\(3) ) + ( GND ) + ( \u3|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|ALT_INV_count\(3),
	cin => \u3|Add0~34\,
	sumout => \u3|Add0~45_sumout\,
	cout => \u3|Add0~46\);

-- Location: LABCELL_X61_Y4_N12
\u3|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add0~49_sumout\ = SUM(( \u3|count\(4) ) + ( GND ) + ( \u3|Add0~46\ ))
-- \u3|Add0~50\ = CARRY(( \u3|count\(4) ) + ( GND ) + ( \u3|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|ALT_INV_count\(4),
	cin => \u3|Add0~46\,
	sumout => \u3|Add0~49_sumout\,
	cout => \u3|Add0~50\);

-- Location: LABCELL_X63_Y2_N15
\u2|COUNT_ENABLE\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|COUNT_ENABLE~combout\ = ( \u2|pr_state.st_lap~q\ & ( \u2|COUNT_ENABLE~combout\ ) ) # ( !\u2|pr_state.st_lap~q\ & ( \u2|COUNT_ENABLE~combout\ & ( \u2|pr_state.st_count~q\ ) ) ) # ( !\u2|pr_state.st_lap~q\ & ( !\u2|COUNT_ENABLE~combout\ & ( 
-- \u2|pr_state.st_count~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_pr_state.st_count~q\,
	datae => \u2|ALT_INV_pr_state.st_lap~q\,
	dataf => \u2|ALT_INV_COUNT_ENABLE~combout\,
	combout => \u2|COUNT_ENABLE~combout\);

-- Location: LABCELL_X63_Y2_N42
\u3|count[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|count[7]~1_combout\ = ( \u2|COUNT_ENABLE~combout\ ) # ( !\u2|COUNT_ENABLE~combout\ & ( \u2|COUNT_CLEAR~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_COUNT_CLEAR~combout\,
	dataf => \u2|ALT_INV_COUNT_ENABLE~combout\,
	combout => \u3|count[7]~1_combout\);

-- Location: FF_X61_Y4_N14
\u3|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|Add0~49_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u3|count[7]~0_combout\,
	ena => \u3|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(4));

-- Location: LABCELL_X61_Y4_N15
\u3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add0~25_sumout\ = SUM(( \u3|count\(5) ) + ( GND ) + ( \u3|Add0~50\ ))
-- \u3|Add0~26\ = CARRY(( \u3|count\(5) ) + ( GND ) + ( \u3|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|ALT_INV_count\(5),
	cin => \u3|Add0~50\,
	sumout => \u3|Add0~25_sumout\,
	cout => \u3|Add0~26\);

-- Location: FF_X61_Y4_N17
\u3|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|Add0~25_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u3|count[7]~0_combout\,
	ena => \u3|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(5));

-- Location: LABCELL_X61_Y4_N18
\u3|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add0~29_sumout\ = SUM(( \u3|count\(6) ) + ( GND ) + ( \u3|Add0~26\ ))
-- \u3|Add0~30\ = CARRY(( \u3|count\(6) ) + ( GND ) + ( \u3|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|ALT_INV_count\(6),
	cin => \u3|Add0~26\,
	sumout => \u3|Add0~29_sumout\,
	cout => \u3|Add0~30\);

-- Location: FF_X61_Y4_N20
\u3|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|Add0~29_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u3|count[7]~0_combout\,
	ena => \u3|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(6));

-- Location: LABCELL_X61_Y4_N21
\u3|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add0~53_sumout\ = SUM(( \u3|count\(7) ) + ( GND ) + ( \u3|Add0~30\ ))
-- \u3|Add0~54\ = CARRY(( \u3|count\(7) ) + ( GND ) + ( \u3|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_count\(7),
	cin => \u3|Add0~30\,
	sumout => \u3|Add0~53_sumout\,
	cout => \u3|Add0~54\);

-- Location: FF_X61_Y4_N23
\u3|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|Add0~53_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u3|count[7]~0_combout\,
	ena => \u3|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(7));

-- Location: LABCELL_X61_Y4_N24
\u3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add0~1_sumout\ = SUM(( \u3|count\(8) ) + ( GND ) + ( \u3|Add0~54\ ))
-- \u3|Add0~2\ = CARRY(( \u3|count\(8) ) + ( GND ) + ( \u3|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|ALT_INV_count\(8),
	cin => \u3|Add0~54\,
	sumout => \u3|Add0~1_sumout\,
	cout => \u3|Add0~2\);

-- Location: FF_X61_Y4_N26
\u3|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|Add0~1_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u3|count[7]~0_combout\,
	ena => \u3|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(8));

-- Location: LABCELL_X61_Y4_N27
\u3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add0~9_sumout\ = SUM(( \u3|count\(9) ) + ( GND ) + ( \u3|Add0~2\ ))
-- \u3|Add0~10\ = CARRY(( \u3|count\(9) ) + ( GND ) + ( \u3|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_count\(9),
	cin => \u3|Add0~2\,
	sumout => \u3|Add0~9_sumout\,
	cout => \u3|Add0~10\);

-- Location: FF_X61_Y4_N29
\u3|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|Add0~9_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u3|count[7]~0_combout\,
	ena => \u3|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(9));

-- Location: LABCELL_X61_Y4_N30
\u3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add0~13_sumout\ = SUM(( \u3|count\(10) ) + ( GND ) + ( \u3|Add0~10\ ))
-- \u3|Add0~14\ = CARRY(( \u3|count\(10) ) + ( GND ) + ( \u3|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|ALT_INV_count\(10),
	cin => \u3|Add0~10\,
	sumout => \u3|Add0~13_sumout\,
	cout => \u3|Add0~14\);

-- Location: FF_X61_Y4_N32
\u3|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|Add0~13_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u3|count[7]~0_combout\,
	ena => \u3|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(10));

-- Location: LABCELL_X61_Y4_N33
\u3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add0~17_sumout\ = SUM(( \u3|count\(11) ) + ( GND ) + ( \u3|Add0~14\ ))
-- \u3|Add0~18\ = CARRY(( \u3|count\(11) ) + ( GND ) + ( \u3|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_count\(11),
	cin => \u3|Add0~14\,
	sumout => \u3|Add0~17_sumout\,
	cout => \u3|Add0~18\);

-- Location: FF_X61_Y4_N35
\u3|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|Add0~17_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u3|count[7]~0_combout\,
	ena => \u3|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(11));

-- Location: LABCELL_X61_Y4_N36
\u3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add0~21_sumout\ = SUM(( \u3|count\(12) ) + ( GND ) + ( \u3|Add0~18\ ))
-- \u3|Add0~22\ = CARRY(( \u3|count\(12) ) + ( GND ) + ( \u3|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|ALT_INV_count\(12),
	cin => \u3|Add0~18\,
	sumout => \u3|Add0~21_sumout\,
	cout => \u3|Add0~22\);

-- Location: FF_X61_Y4_N38
\u3|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|Add0~21_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u3|count[7]~0_combout\,
	ena => \u3|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(12));

-- Location: LABCELL_X61_Y4_N39
\u3|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add0~73_sumout\ = SUM(( \u3|count\(13) ) + ( GND ) + ( \u3|Add0~22\ ))
-- \u3|Add0~74\ = CARRY(( \u3|count\(13) ) + ( GND ) + ( \u3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|ALT_INV_count\(13),
	cin => \u3|Add0~22\,
	sumout => \u3|Add0~73_sumout\,
	cout => \u3|Add0~74\);

-- Location: FF_X61_Y4_N41
\u3|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|Add0~73_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u3|count[7]~0_combout\,
	ena => \u3|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(13));

-- Location: LABCELL_X61_Y4_N42
\u3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add0~5_sumout\ = SUM(( \u3|count\(14) ) + ( GND ) + ( \u3|Add0~74\ ))
-- \u3|Add0~6\ = CARRY(( \u3|count\(14) ) + ( GND ) + ( \u3|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|ALT_INV_count\(14),
	cin => \u3|Add0~74\,
	sumout => \u3|Add0~5_sumout\,
	cout => \u3|Add0~6\);

-- Location: FF_X61_Y4_N44
\u3|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|Add0~5_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u3|count[7]~0_combout\,
	ena => \u3|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(14));

-- Location: MLABCELL_X60_Y4_N0
\u3|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|LessThan0~0_combout\ = ( !\u3|count\(9) & ( (!\u3|count\(10) & (!\u3|count\(12) & (!\u3|count\(11) & !\u3|count\(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_count\(10),
	datab => \u3|ALT_INV_count\(12),
	datac => \u3|ALT_INV_count\(11),
	datad => \u3|ALT_INV_count\(14),
	datae => \u3|ALT_INV_count\(9),
	combout => \u3|LessThan0~0_combout\);

-- Location: LABCELL_X61_Y4_N45
\u3|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add0~57_sumout\ = SUM(( \u3|count\(15) ) + ( GND ) + ( \u3|Add0~6\ ))
-- \u3|Add0~58\ = CARRY(( \u3|count\(15) ) + ( GND ) + ( \u3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|ALT_INV_count\(15),
	cin => \u3|Add0~6\,
	sumout => \u3|Add0~57_sumout\,
	cout => \u3|Add0~58\);

-- Location: FF_X61_Y4_N47
\u3|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|Add0~57_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u3|count[7]~0_combout\,
	ena => \u3|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(15));

-- Location: LABCELL_X61_Y4_N48
\u3|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add0~61_sumout\ = SUM(( \u3|count\(16) ) + ( GND ) + ( \u3|Add0~58\ ))
-- \u3|Add0~62\ = CARRY(( \u3|count\(16) ) + ( GND ) + ( \u3|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|ALT_INV_count\(16),
	cin => \u3|Add0~58\,
	sumout => \u3|Add0~61_sumout\,
	cout => \u3|Add0~62\);

-- Location: FF_X61_Y4_N50
\u3|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|Add0~61_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u3|count[7]~0_combout\,
	ena => \u3|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(16));

-- Location: LABCELL_X61_Y4_N51
\u3|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add0~65_sumout\ = SUM(( \u3|count\(17) ) + ( GND ) + ( \u3|Add0~62\ ))
-- \u3|Add0~66\ = CARRY(( \u3|count\(17) ) + ( GND ) + ( \u3|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_count\(17),
	cin => \u3|Add0~62\,
	sumout => \u3|Add0~65_sumout\,
	cout => \u3|Add0~66\);

-- Location: FF_X61_Y4_N53
\u3|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|Add0~65_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u3|count[7]~0_combout\,
	ena => \u3|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(17));

-- Location: LABCELL_X61_Y4_N54
\u3|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add0~69_sumout\ = SUM(( \u3|count\(18) ) + ( GND ) + ( \u3|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|ALT_INV_count\(18),
	cin => \u3|Add0~66\,
	sumout => \u3|Add0~69_sumout\);

-- Location: FF_X61_Y4_N56
\u3|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|Add0~69_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u3|count[7]~0_combout\,
	ena => \u3|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(18));

-- Location: MLABCELL_X60_Y4_N12
\u3|PULSE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|PULSE~0_combout\ = ( \u3|count\(14) & ( \u3|count\(17) & ( (\u3|count\(15) & (\u3|count\(18) & \u3|count\(16))) ) ) ) # ( !\u3|count\(14) & ( \u3|count\(17) & ( (\u3|count\(15) & (\u3|count\(18) & (\u3|count\(13) & \u3|count\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_count\(15),
	datab => \u3|ALT_INV_count\(18),
	datac => \u3|ALT_INV_count\(13),
	datad => \u3|ALT_INV_count\(16),
	datae => \u3|ALT_INV_count\(14),
	dataf => \u3|ALT_INV_count\(17),
	combout => \u3|PULSE~0_combout\);

-- Location: LABCELL_X63_Y4_N51
\u3|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|LessThan0~1_combout\ = ( !\u3|count\(6) & ( !\u3|count\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \u3|ALT_INV_count\(6),
	dataf => \u3|ALT_INV_count\(5),
	combout => \u3|LessThan0~1_combout\);

-- Location: LABCELL_X63_Y4_N54
\u3|count[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|count[7]~0_combout\ = ( \u2|COUNT_CLEAR~combout\ & ( \u3|LessThan0~1_combout\ ) ) # ( !\u2|COUNT_CLEAR~combout\ & ( \u3|LessThan0~1_combout\ & ( (\u3|PULSE~0_combout\ & ((!\u3|LessThan0~0_combout\) # ((!\u3|LessThan0~2_combout\ & \u3|count\(8))))) ) ) 
-- ) # ( \u2|COUNT_CLEAR~combout\ & ( !\u3|LessThan0~1_combout\ ) ) # ( !\u2|COUNT_CLEAR~combout\ & ( !\u3|LessThan0~1_combout\ & ( (\u3|PULSE~0_combout\ & ((!\u3|LessThan0~0_combout\) # (\u3|count\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000110011111111111111111100100010001100101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_LessThan0~0_combout\,
	datab => \u3|ALT_INV_PULSE~0_combout\,
	datac => \u3|ALT_INV_LessThan0~2_combout\,
	datad => \u3|ALT_INV_count\(8),
	datae => \u2|ALT_INV_COUNT_CLEAR~combout\,
	dataf => \u3|ALT_INV_LessThan0~1_combout\,
	combout => \u3|count[7]~0_combout\);

-- Location: FF_X61_Y4_N2
\u3|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|Add0~37_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u3|count[7]~0_combout\,
	ena => \u3|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(0));

-- Location: LABCELL_X61_Y4_N3
\u3|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add0~41_sumout\ = SUM(( \u3|count\(1) ) + ( GND ) + ( \u3|Add0~38\ ))
-- \u3|Add0~42\ = CARRY(( \u3|count\(1) ) + ( GND ) + ( \u3|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_count\(1),
	cin => \u3|Add0~38\,
	sumout => \u3|Add0~41_sumout\,
	cout => \u3|Add0~42\);

-- Location: FF_X61_Y4_N5
\u3|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|Add0~41_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u3|count[7]~0_combout\,
	ena => \u3|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(1));

-- Location: LABCELL_X61_Y4_N6
\u3|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add0~33_sumout\ = SUM(( \u3|count\(2) ) + ( GND ) + ( \u3|Add0~42\ ))
-- \u3|Add0~34\ = CARRY(( \u3|count\(2) ) + ( GND ) + ( \u3|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|ALT_INV_count\(2),
	cin => \u3|Add0~42\,
	sumout => \u3|Add0~33_sumout\,
	cout => \u3|Add0~34\);

-- Location: FF_X61_Y4_N8
\u3|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|Add0~33_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u3|count[7]~0_combout\,
	ena => \u3|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(2));

-- Location: FF_X61_Y4_N11
\u3|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|Add0~45_sumout\,
	clrn => \RSTn~input_o\,
	sclr => \u3|count[7]~0_combout\,
	ena => \u3|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(3));

-- Location: MLABCELL_X60_Y4_N6
\u3|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|LessThan0~2_combout\ = ( !\u3|count\(7) & ( \u3|count\(1) & ( (!\u3|count\(3)) # ((!\u3|count\(4)) # ((!\u3|count\(2)) # (!\u3|count\(0)))) ) ) ) # ( !\u3|count\(7) & ( !\u3|count\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_count\(3),
	datab => \u3|ALT_INV_count\(4),
	datac => \u3|ALT_INV_count\(2),
	datad => \u3|ALT_INV_count\(0),
	datae => \u3|ALT_INV_count\(7),
	dataf => \u3|ALT_INV_count\(1),
	combout => \u3|LessThan0~2_combout\);

-- Location: LABCELL_X63_Y2_N51
\u3|PULSE~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|PULSE~1_combout\ = ( \u2|COUNT_ENABLE~combout\ & ( !\u2|COUNT_CLEAR~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2|ALT_INV_COUNT_CLEAR~combout\,
	dataf => \u2|ALT_INV_COUNT_ENABLE~combout\,
	combout => \u3|PULSE~1_combout\);

-- Location: LABCELL_X63_Y4_N0
\u3|PULSE~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|PULSE~2_combout\ = ( \u3|PULSE~1_combout\ & ( \u3|LessThan0~1_combout\ & ( (\u3|PULSE~0_combout\ & ((!\u3|LessThan0~0_combout\) # ((!\u3|LessThan0~2_combout\ & \u3|count\(8))))) ) ) ) # ( \u3|PULSE~1_combout\ & ( !\u3|LessThan0~1_combout\ & ( 
-- (\u3|PULSE~0_combout\ & ((!\u3|LessThan0~0_combout\) # (\u3|count\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011001100000000000000000011000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_LessThan0~2_combout\,
	datab => \u3|ALT_INV_PULSE~0_combout\,
	datac => \u3|ALT_INV_LessThan0~0_combout\,
	datad => \u3|ALT_INV_count\(8),
	datae => \u3|ALT_INV_PULSE~1_combout\,
	dataf => \u3|ALT_INV_LessThan0~1_combout\,
	combout => \u3|PULSE~2_combout\);

-- Location: FF_X63_Y4_N2
\u3|PULSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|PULSE~2_combout\,
	clrn => \RSTn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|PULSE~q\);

-- Location: LABCELL_X63_Y2_N18
\u4|hund_cnt_ones[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|hund_cnt_ones[2]~1_combout\ = ( \u3|PULSE~q\ ) # ( !\u3|PULSE~q\ & ( \u2|COUNT_CLEAR~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_COUNT_CLEAR~combout\,
	dataf => \u3|ALT_INV_PULSE~q\,
	combout => \u4|hund_cnt_ones[2]~1_combout\);

-- Location: FF_X64_Y2_N2
\u4|hund_cnt_ones[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u4|hund_cnt_ones~4_combout\,
	clrn => \RSTn~input_o\,
	ena => \u4|hund_cnt_ones[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|hund_cnt_ones\(0));

-- Location: LABCELL_X64_Y2_N27
\u4|hund_cnt_ones~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|hund_cnt_ones~0_combout\ = ( \u4|hund_cnt_ones\(1) & ( (!\u2|COUNT_CLEAR~combout\ & (!\u4|hund_cnt_ones\(3) $ (((!\u4|hund_cnt_ones\(2)) # (!\u4|hund_cnt_ones\(0)))))) ) ) # ( !\u4|hund_cnt_ones\(1) & ( (!\u2|COUNT_CLEAR~combout\ & 
-- (\u4|hund_cnt_ones\(3) & ((!\u4|hund_cnt_ones\(0)) # (\u4|hund_cnt_ones\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000100000000001100010000000100110010000000010011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_hund_cnt_ones\(2),
	datab => \u2|ALT_INV_COUNT_CLEAR~combout\,
	datac => \u4|ALT_INV_hund_cnt_ones\(0),
	datad => \u4|ALT_INV_hund_cnt_ones\(3),
	dataf => \u4|ALT_INV_hund_cnt_ones\(1),
	combout => \u4|hund_cnt_ones~0_combout\);

-- Location: FF_X64_Y2_N29
\u4|hund_cnt_ones[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u4|hund_cnt_ones~0_combout\,
	clrn => \RSTn~input_o\,
	ena => \u4|hund_cnt_ones[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|hund_cnt_ones\(3));

-- Location: LABCELL_X64_Y2_N24
\u4|hund_cnt_ones~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|hund_cnt_ones~3_combout\ = ( \u4|hund_cnt_ones\(0) & ( (!\u2|COUNT_CLEAR~combout\ & (!\u4|hund_cnt_ones\(1) & ((!\u4|hund_cnt_ones\(3)) # (\u4|hund_cnt_ones\(2))))) ) ) # ( !\u4|hund_cnt_ones\(0) & ( (!\u2|COUNT_CLEAR~combout\ & \u4|hund_cnt_ones\(1)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011000100000000001100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_hund_cnt_ones\(2),
	datab => \u2|ALT_INV_COUNT_CLEAR~combout\,
	datac => \u4|ALT_INV_hund_cnt_ones\(3),
	datad => \u4|ALT_INV_hund_cnt_ones\(1),
	dataf => \u4|ALT_INV_hund_cnt_ones\(0),
	combout => \u4|hund_cnt_ones~3_combout\);

-- Location: FF_X64_Y2_N26
\u4|hund_cnt_ones[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u4|hund_cnt_ones~3_combout\,
	clrn => \RSTn~input_o\,
	ena => \u4|hund_cnt_ones[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|hund_cnt_ones\(1));

-- Location: LABCELL_X64_Y2_N51
\u4|hund_cnt_ones~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|hund_cnt_ones~2_combout\ = ( \u4|hund_cnt_ones\(0) & ( (!\u2|COUNT_CLEAR~combout\ & (!\u4|hund_cnt_ones\(1) $ (!\u4|hund_cnt_ones\(2)))) ) ) # ( !\u4|hund_cnt_ones\(0) & ( (!\u2|COUNT_CLEAR~combout\ & \u4|hund_cnt_ones\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_hund_cnt_ones\(1),
	datac => \u2|ALT_INV_COUNT_CLEAR~combout\,
	datad => \u4|ALT_INV_hund_cnt_ones\(2),
	dataf => \u4|ALT_INV_hund_cnt_ones\(0),
	combout => \u4|hund_cnt_ones~2_combout\);

-- Location: FF_X64_Y2_N53
\u4|hund_cnt_ones[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u4|hund_cnt_ones~2_combout\,
	clrn => \RSTn~input_o\,
	ena => \u4|hund_cnt_ones[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|hund_cnt_ones\(2));

-- Location: LABCELL_X63_Y2_N27
\u2|cnt_lap~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|cnt_lap~1_combout\ = ( \u2|pr_state.st_lap~q\ & ( !\RSTn~input_o\ $ (!\u2|cnt_lap~q\) ) ) # ( !\u2|pr_state.st_lap~q\ & ( \u2|cnt_lap~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_RSTn~input_o\,
	datad => \u2|ALT_INV_cnt_lap~q\,
	dataf => \u2|ALT_INV_pr_state.st_lap~q\,
	combout => \u2|cnt_lap~1_combout\);

-- Location: FF_X63_Y2_N29
\u2|cnt_lap\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2|cnt_lap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cnt_lap~q\);

-- Location: LABCELL_X63_Y2_N6
\u2|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Selector1~0_combout\ = (\u2|pr_state.st_lap~q\ & \u2|cnt_lap~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_pr_state.st_lap~q\,
	datac => \u2|ALT_INV_cnt_lap~q\,
	combout => \u2|Selector1~0_combout\);

-- Location: LABCELL_X63_Y2_N9
\u2|COUNT_LAP~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|COUNT_LAP~1_combout\ = ( \u2|pr_state.st_count~q\ ) # ( !\u2|pr_state.st_count~q\ & ( \u2|pr_state.st_stop~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_pr_state.st_stop~q\,
	dataf => \u2|ALT_INV_pr_state.st_count~q\,
	combout => \u2|COUNT_LAP~1_combout\);

-- Location: LABCELL_X63_Y2_N24
\u2|COUNT_LAP\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|COUNT_LAP~combout\ = ( \u2|COUNT_LAP~1_combout\ & ( \u2|COUNT_LAP~combout\ ) ) # ( !\u2|COUNT_LAP~1_combout\ & ( \u2|Selector1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_COUNT_LAP~combout\,
	datab => \u2|ALT_INV_Selector1~0_combout\,
	dataf => \u2|ALT_INV_COUNT_LAP~1_combout\,
	combout => \u2|COUNT_LAP~combout\);

-- Location: FF_X64_Y2_N38
\u4|HUND_ONES[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u4|hund_cnt_ones\(2),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u2|ALT_INV_COUNT_LAP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|HUND_ONES\(2));

-- Location: FF_X64_Y2_N41
\u4|HUND_ONES[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u4|hund_cnt_ones\(1),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u2|ALT_INV_COUNT_LAP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|HUND_ONES\(1));

-- Location: FF_X64_Y2_N47
\u4|HUND_ONES[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u4|hund_cnt_ones\(0),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u2|ALT_INV_COUNT_LAP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|HUND_ONES\(0));

-- Location: FF_X64_Y2_N32
\u4|HUND_ONES[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u4|hund_cnt_ones\(3),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u2|ALT_INV_COUNT_LAP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|HUND_ONES\(3));

-- Location: LABCELL_X64_Y2_N21
\u5_HUND_ONES_7SEG|D_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_HUND_ONES_7SEG|D_OUT[0]~0_combout\ = ( \u4|HUND_ONES\(3) & ( (\u4|HUND_ONES\(1)) # (\u4|HUND_ONES\(2)) ) ) # ( !\u4|HUND_ONES\(3) & ( (!\u4|HUND_ONES\(1) & (!\u4|HUND_ONES\(2) $ (!\u4|HUND_ONES\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_HUND_ONES\(2),
	datab => \u4|ALT_INV_HUND_ONES\(1),
	datac => \u4|ALT_INV_HUND_ONES\(0),
	dataf => \u4|ALT_INV_HUND_ONES\(3),
	combout => \u5_HUND_ONES_7SEG|D_OUT[0]~0_combout\);

-- Location: LABCELL_X64_Y2_N57
\u5_HUND_ONES_7SEG|D_OUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_HUND_ONES_7SEG|D_OUT[1]~1_combout\ = ( \u4|HUND_ONES\(3) & ( (\u4|HUND_ONES\(1)) # (\u4|HUND_ONES\(2)) ) ) # ( !\u4|HUND_ONES\(3) & ( (\u4|HUND_ONES\(2) & (!\u4|HUND_ONES\(1) $ (!\u4|HUND_ONES\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_HUND_ONES\(2),
	datac => \u4|ALT_INV_HUND_ONES\(1),
	datad => \u4|ALT_INV_HUND_ONES\(0),
	dataf => \u4|ALT_INV_HUND_ONES\(3),
	combout => \u5_HUND_ONES_7SEG|D_OUT[1]~1_combout\);

-- Location: LABCELL_X64_Y2_N18
\u5_HUND_ONES_7SEG|D_OUT[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_HUND_ONES_7SEG|D_OUT[2]~2_combout\ = ( \u4|HUND_ONES\(3) & ( (\u4|HUND_ONES\(1)) # (\u4|HUND_ONES\(2)) ) ) # ( !\u4|HUND_ONES\(3) & ( (!\u4|HUND_ONES\(2) & (\u4|HUND_ONES\(1) & !\u4|HUND_ONES\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_HUND_ONES\(2),
	datab => \u4|ALT_INV_HUND_ONES\(1),
	datad => \u4|ALT_INV_HUND_ONES\(0),
	dataf => \u4|ALT_INV_HUND_ONES\(3),
	combout => \u5_HUND_ONES_7SEG|D_OUT[2]~2_combout\);

-- Location: LABCELL_X64_Y2_N3
\u5_HUND_ONES_7SEG|D_OUT[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_HUND_ONES_7SEG|D_OUT[3]~3_combout\ = ( \u4|HUND_ONES\(3) & ( (\u4|HUND_ONES\(1)) # (\u4|HUND_ONES\(2)) ) ) # ( !\u4|HUND_ONES\(3) & ( (!\u4|HUND_ONES\(2) & (!\u4|HUND_ONES\(1) & \u4|HUND_ONES\(0))) # (\u4|HUND_ONES\(2) & (!\u4|HUND_ONES\(1) $ 
-- (\u4|HUND_ONES\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001010010010100100101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_HUND_ONES\(2),
	datab => \u4|ALT_INV_HUND_ONES\(1),
	datac => \u4|ALT_INV_HUND_ONES\(0),
	dataf => \u4|ALT_INV_HUND_ONES\(3),
	combout => \u5_HUND_ONES_7SEG|D_OUT[3]~3_combout\);

-- Location: LABCELL_X64_Y2_N36
\u5_HUND_ONES_7SEG|D_OUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_HUND_ONES_7SEG|D_OUT[4]~4_combout\ = ( \u4|HUND_ONES\(1) & ( (\u4|HUND_ONES\(0)) # (\u4|HUND_ONES\(3)) ) ) # ( !\u4|HUND_ONES\(1) & ( (\u4|HUND_ONES\(2)) # (\u4|HUND_ONES\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|ALT_INV_HUND_ONES\(3),
	datac => \u4|ALT_INV_HUND_ONES\(0),
	datad => \u4|ALT_INV_HUND_ONES\(2),
	dataf => \u4|ALT_INV_HUND_ONES\(1),
	combout => \u5_HUND_ONES_7SEG|D_OUT[4]~4_combout\);

-- Location: LABCELL_X64_Y2_N39
\u5_HUND_ONES_7SEG|D_OUT[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_HUND_ONES_7SEG|D_OUT[5]~5_combout\ = ( \u4|HUND_ONES\(3) & ( (\u4|HUND_ONES\(1)) # (\u4|HUND_ONES\(2)) ) ) # ( !\u4|HUND_ONES\(3) & ( (!\u4|HUND_ONES\(2) & ((\u4|HUND_ONES\(1)) # (\u4|HUND_ONES\(0)))) # (\u4|HUND_ONES\(2) & (\u4|HUND_ONES\(0) & 
-- \u4|HUND_ONES\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101111000010101010111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_HUND_ONES\(2),
	datac => \u4|ALT_INV_HUND_ONES\(0),
	datad => \u4|ALT_INV_HUND_ONES\(1),
	dataf => \u4|ALT_INV_HUND_ONES\(3),
	combout => \u5_HUND_ONES_7SEG|D_OUT[5]~5_combout\);

-- Location: LABCELL_X64_Y2_N45
\u5_HUND_ONES_7SEG|D_OUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_HUND_ONES_7SEG|D_OUT[6]~6_combout\ = ( \u4|HUND_ONES\(0) & ( \u4|HUND_ONES\(3) & ( (\u4|HUND_ONES\(1)) # (\u4|HUND_ONES\(2)) ) ) ) # ( !\u4|HUND_ONES\(0) & ( \u4|HUND_ONES\(3) & ( (\u4|HUND_ONES\(1)) # (\u4|HUND_ONES\(2)) ) ) ) # ( \u4|HUND_ONES\(0) & 
-- ( !\u4|HUND_ONES\(3) & ( !\u4|HUND_ONES\(2) $ (\u4|HUND_ONES\(1)) ) ) ) # ( !\u4|HUND_ONES\(0) & ( !\u4|HUND_ONES\(3) & ( (!\u4|HUND_ONES\(2) & !\u4|HUND_ONES\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101001011010010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_HUND_ONES\(2),
	datac => \u4|ALT_INV_HUND_ONES\(1),
	datae => \u4|ALT_INV_HUND_ONES\(0),
	dataf => \u4|ALT_INV_HUND_ONES\(3),
	combout => \u5_HUND_ONES_7SEG|D_OUT[6]~6_combout\);

-- Location: LABCELL_X63_Y6_N57
\u4|hund_cnt_tens~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|hund_cnt_tens~4_combout\ = (!\u2|COUNT_CLEAR~combout\ & !\u4|hund_cnt_tens\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_COUNT_CLEAR~combout\,
	datad => \u4|ALT_INV_hund_cnt_tens\(0),
	combout => \u4|hund_cnt_tens~4_combout\);

-- Location: LABCELL_X63_Y4_N36
\u4|hund_cnt_tens[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|hund_cnt_tens[3]~1_combout\ = ( \u3|PULSE~q\ & ( \u4|hund_cnt_ones\(3) & ( ((!\u4|hund_cnt_ones\(1) & (\u4|hund_cnt_ones\(0) & !\u4|hund_cnt_ones\(2)))) # (\u2|COUNT_CLEAR~combout\) ) ) ) # ( !\u3|PULSE~q\ & ( \u4|hund_cnt_ones\(3) & ( 
-- \u2|COUNT_CLEAR~combout\ ) ) ) # ( \u3|PULSE~q\ & ( !\u4|hund_cnt_ones\(3) & ( \u2|COUNT_CLEAR~combout\ ) ) ) # ( !\u3|PULSE~q\ & ( !\u4|hund_cnt_ones\(3) & ( \u2|COUNT_CLEAR~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_hund_cnt_ones\(1),
	datab => \u4|ALT_INV_hund_cnt_ones\(0),
	datac => \u4|ALT_INV_hund_cnt_ones\(2),
	datad => \u2|ALT_INV_COUNT_CLEAR~combout\,
	datae => \u3|ALT_INV_PULSE~q\,
	dataf => \u4|ALT_INV_hund_cnt_ones\(3),
	combout => \u4|hund_cnt_tens[3]~1_combout\);

-- Location: FF_X63_Y6_N59
\u4|hund_cnt_tens[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u4|hund_cnt_tens~4_combout\,
	clrn => \RSTn~input_o\,
	ena => \u4|hund_cnt_tens[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|hund_cnt_tens\(0));

-- Location: LABCELL_X63_Y6_N18
\u4|hund_cnt_tens~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|hund_cnt_tens~0_combout\ = ( !\u2|COUNT_CLEAR~combout\ & ( (!\u4|hund_cnt_tens\(2) & (\u4|hund_cnt_tens\(3) & ((!\u4|hund_cnt_tens\(0)) # (\u4|hund_cnt_tens\(1))))) # (\u4|hund_cnt_tens\(2) & (!\u4|hund_cnt_tens\(3) $ (((!\u4|hund_cnt_tens\(0)) # 
-- (!\u4|hund_cnt_tens\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111011110000000011101111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_hund_cnt_tens\(2),
	datab => \u4|ALT_INV_hund_cnt_tens\(0),
	datac => \u4|ALT_INV_hund_cnt_tens\(1),
	datad => \u4|ALT_INV_hund_cnt_tens\(3),
	dataf => \u2|ALT_INV_COUNT_CLEAR~combout\,
	combout => \u4|hund_cnt_tens~0_combout\);

-- Location: FF_X63_Y6_N20
\u4|hund_cnt_tens[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u4|hund_cnt_tens~0_combout\,
	clrn => \RSTn~input_o\,
	ena => \u4|hund_cnt_tens[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|hund_cnt_tens\(3));

-- Location: LABCELL_X63_Y6_N21
\u4|hund_cnt_tens~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|hund_cnt_tens~3_combout\ = ( \u4|hund_cnt_tens\(3) & ( (!\u2|COUNT_CLEAR~combout\ & ((!\u4|hund_cnt_tens\(0) & ((\u4|hund_cnt_tens\(1)))) # (\u4|hund_cnt_tens\(0) & (\u4|hund_cnt_tens\(2) & !\u4|hund_cnt_tens\(1))))) ) ) # ( !\u4|hund_cnt_tens\(3) & ( 
-- (!\u2|COUNT_CLEAR~combout\ & (!\u4|hund_cnt_tens\(0) $ (!\u4|hund_cnt_tens\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000010000110000000001000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_hund_cnt_tens\(2),
	datab => \u4|ALT_INV_hund_cnt_tens\(0),
	datac => \u2|ALT_INV_COUNT_CLEAR~combout\,
	datad => \u4|ALT_INV_hund_cnt_tens\(1),
	dataf => \u4|ALT_INV_hund_cnt_tens\(3),
	combout => \u4|hund_cnt_tens~3_combout\);

-- Location: FF_X63_Y6_N23
\u4|hund_cnt_tens[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u4|hund_cnt_tens~3_combout\,
	clrn => \RSTn~input_o\,
	ena => \u4|hund_cnt_tens[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|hund_cnt_tens\(1));

-- Location: LABCELL_X63_Y6_N54
\u4|hund_cnt_tens~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|hund_cnt_tens~2_combout\ = (!\u2|COUNT_CLEAR~combout\ & (!\u4|hund_cnt_tens\(2) $ (((!\u4|hund_cnt_tens\(1)) # (!\u4|hund_cnt_tens\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011001000000001001100100000000100110010000000010011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_hund_cnt_tens\(1),
	datab => \u2|ALT_INV_COUNT_CLEAR~combout\,
	datac => \u4|ALT_INV_hund_cnt_tens\(0),
	datad => \u4|ALT_INV_hund_cnt_tens\(2),
	combout => \u4|hund_cnt_tens~2_combout\);

-- Location: FF_X63_Y6_N56
\u4|hund_cnt_tens[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u4|hund_cnt_tens~2_combout\,
	clrn => \RSTn~input_o\,
	ena => \u4|hund_cnt_tens[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|hund_cnt_tens\(2));

-- Location: FF_X64_Y2_N17
\u4|HUND_TENS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u4|hund_cnt_tens\(2),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u2|ALT_INV_COUNT_LAP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|HUND_TENS\(2));

-- Location: FF_X64_Y2_N11
\u4|HUND_TENS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u4|hund_cnt_tens\(1),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u2|ALT_INV_COUNT_LAP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|HUND_TENS\(1));

-- Location: FF_X64_Y2_N14
\u4|HUND_TENS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u4|hund_cnt_tens\(0),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u2|ALT_INV_COUNT_LAP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|HUND_TENS\(0));

-- Location: FF_X64_Y2_N8
\u4|HUND_TENS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u4|hund_cnt_tens\(3),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u2|ALT_INV_COUNT_LAP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|HUND_TENS\(3));

-- Location: LABCELL_X64_Y2_N54
\u5_HUND_TENS_7SEG|D_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_HUND_TENS_7SEG|D_OUT[0]~0_combout\ = ( \u4|HUND_TENS\(3) & ( (\u4|HUND_TENS\(1)) # (\u4|HUND_TENS\(2)) ) ) # ( !\u4|HUND_TENS\(3) & ( (!\u4|HUND_TENS\(1) & (!\u4|HUND_TENS\(2) $ (!\u4|HUND_TENS\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|ALT_INV_HUND_TENS\(2),
	datac => \u4|ALT_INV_HUND_TENS\(1),
	datad => \u4|ALT_INV_HUND_TENS\(0),
	dataf => \u4|ALT_INV_HUND_TENS\(3),
	combout => \u5_HUND_TENS_7SEG|D_OUT[0]~0_combout\);

-- Location: LABCELL_X63_Y2_N57
\u5_HUND_TENS_7SEG|D_OUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_HUND_TENS_7SEG|D_OUT[1]~1_combout\ = (!\u4|HUND_TENS\(3) & (\u4|HUND_TENS\(2) & (!\u4|HUND_TENS\(1) $ (!\u4|HUND_TENS\(0))))) # (\u4|HUND_TENS\(3) & (((\u4|HUND_TENS\(2))) # (\u4|HUND_TENS\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101111101000100010111110100010001011111010001000101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_HUND_TENS\(3),
	datab => \u4|ALT_INV_HUND_TENS\(1),
	datac => \u4|ALT_INV_HUND_TENS\(0),
	datad => \u4|ALT_INV_HUND_TENS\(2),
	combout => \u5_HUND_TENS_7SEG|D_OUT[1]~1_combout\);

-- Location: LABCELL_X64_Y2_N48
\u5_HUND_TENS_7SEG|D_OUT[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_HUND_TENS_7SEG|D_OUT[2]~2_combout\ = ( \u4|HUND_TENS\(3) & ( (\u4|HUND_TENS\(1)) # (\u4|HUND_TENS\(2)) ) ) # ( !\u4|HUND_TENS\(3) & ( (!\u4|HUND_TENS\(2) & (\u4|HUND_TENS\(1) & !\u4|HUND_TENS\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|ALT_INV_HUND_TENS\(2),
	datac => \u4|ALT_INV_HUND_TENS\(1),
	datad => \u4|ALT_INV_HUND_TENS\(0),
	dataf => \u4|ALT_INV_HUND_TENS\(3),
	combout => \u5_HUND_TENS_7SEG|D_OUT[2]~2_combout\);

-- Location: LABCELL_X64_Y2_N6
\u5_HUND_TENS_7SEG|D_OUT[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_HUND_TENS_7SEG|D_OUT[3]~3_combout\ = (!\u4|HUND_TENS\(1) & (!\u4|HUND_TENS\(2) $ (((!\u4|HUND_TENS\(0)) # (\u4|HUND_TENS\(3)))))) # (\u4|HUND_TENS\(1) & (((\u4|HUND_TENS\(0) & \u4|HUND_TENS\(2))) # (\u4|HUND_TENS\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000100111111011000010011111101100001001111110110000100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_HUND_TENS\(0),
	datab => \u4|ALT_INV_HUND_TENS\(2),
	datac => \u4|ALT_INV_HUND_TENS\(1),
	datad => \u4|ALT_INV_HUND_TENS\(3),
	combout => \u5_HUND_TENS_7SEG|D_OUT[3]~3_combout\);

-- Location: LABCELL_X64_Y2_N15
\u5_HUND_TENS_7SEG|D_OUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_HUND_TENS_7SEG|D_OUT[4]~4_combout\ = ( \u4|HUND_TENS\(0) ) # ( !\u4|HUND_TENS\(0) & ( (!\u4|HUND_TENS\(1) & ((\u4|HUND_TENS\(2)))) # (\u4|HUND_TENS\(1) & (\u4|HUND_TENS\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_HUND_TENS\(1),
	datab => \u4|ALT_INV_HUND_TENS\(3),
	datad => \u4|ALT_INV_HUND_TENS\(2),
	dataf => \u4|ALT_INV_HUND_TENS\(0),
	combout => \u5_HUND_TENS_7SEG|D_OUT[4]~4_combout\);

-- Location: LABCELL_X64_Y2_N9
\u5_HUND_TENS_7SEG|D_OUT[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_HUND_TENS_7SEG|D_OUT[5]~5_combout\ = (!\u4|HUND_TENS\(0) & ((!\u4|HUND_TENS\(2) & ((\u4|HUND_TENS\(1)))) # (\u4|HUND_TENS\(2) & (\u4|HUND_TENS\(3))))) # (\u4|HUND_TENS\(0) & ((!\u4|HUND_TENS\(2) $ (\u4|HUND_TENS\(3))) # (\u4|HUND_TENS\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001111011111010000111101111101000011110111110100001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_HUND_TENS\(0),
	datab => \u4|ALT_INV_HUND_TENS\(2),
	datac => \u4|ALT_INV_HUND_TENS\(3),
	datad => \u4|ALT_INV_HUND_TENS\(1),
	combout => \u5_HUND_TENS_7SEG|D_OUT[5]~5_combout\);

-- Location: LABCELL_X64_Y2_N12
\u5_HUND_TENS_7SEG|D_OUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_HUND_TENS_7SEG|D_OUT[6]~6_combout\ = ( \u4|HUND_TENS\(2) & ( ((\u4|HUND_TENS\(1) & \u4|HUND_TENS\(0))) # (\u4|HUND_TENS\(3)) ) ) # ( !\u4|HUND_TENS\(2) & ( !\u4|HUND_TENS\(1) $ (\u4|HUND_TENS\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_HUND_TENS\(1),
	datab => \u4|ALT_INV_HUND_TENS\(3),
	datad => \u4|ALT_INV_HUND_TENS\(0),
	dataf => \u4|ALT_INV_HUND_TENS\(2),
	combout => \u5_HUND_TENS_7SEG|D_OUT[6]~6_combout\);

-- Location: LABCELL_X63_Y4_N9
\u4|sec_cnt_ones~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|sec_cnt_ones~4_combout\ = (!\u2|COUNT_CLEAR~combout\ & !\u4|sec_cnt_ones\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_COUNT_CLEAR~combout\,
	datad => \u4|ALT_INV_sec_cnt_ones\(0),
	combout => \u4|sec_cnt_ones~4_combout\);

-- Location: LABCELL_X63_Y4_N45
\u4|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|Equal0~0_combout\ = ( \u4|hund_cnt_ones\(3) & ( (!\u4|hund_cnt_ones\(2) & (\u4|hund_cnt_ones\(0) & !\u4|hund_cnt_ones\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_hund_cnt_ones\(2),
	datac => \u4|ALT_INV_hund_cnt_ones\(0),
	datad => \u4|ALT_INV_hund_cnt_ones\(1),
	dataf => \u4|ALT_INV_hund_cnt_ones\(3),
	combout => \u4|Equal0~0_combout\);

-- Location: LABCELL_X64_Y2_N33
\u4|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|Equal1~0_combout\ = ( \u4|hund_cnt_tens\(0) & ( \u4|hund_cnt_tens\(3) & ( (!\u4|hund_cnt_tens\(1) & !\u4|hund_cnt_tens\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_hund_cnt_tens\(1),
	datac => \u4|ALT_INV_hund_cnt_tens\(2),
	datae => \u4|ALT_INV_hund_cnt_tens\(0),
	dataf => \u4|ALT_INV_hund_cnt_tens\(3),
	combout => \u4|Equal1~0_combout\);

-- Location: LABCELL_X63_Y4_N12
\u4|sec_cnt_ones[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|sec_cnt_ones[2]~1_combout\ = ( \u4|Equal1~0_combout\ & ( ((\u3|PULSE~q\ & \u4|Equal0~0_combout\)) # (\u2|COUNT_CLEAR~combout\) ) ) # ( !\u4|Equal1~0_combout\ & ( \u2|COUNT_CLEAR~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_COUNT_CLEAR~combout\,
	datac => \u3|ALT_INV_PULSE~q\,
	datad => \u4|ALT_INV_Equal0~0_combout\,
	dataf => \u4|ALT_INV_Equal1~0_combout\,
	combout => \u4|sec_cnt_ones[2]~1_combout\);

-- Location: FF_X63_Y4_N11
\u4|sec_cnt_ones[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u4|sec_cnt_ones~4_combout\,
	clrn => \RSTn~input_o\,
	ena => \u4|sec_cnt_ones[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|sec_cnt_ones\(0));

-- Location: FF_X63_Y6_N50
\u4|SEC_ONES[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u4|sec_cnt_ones\(0),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u2|ALT_INV_COUNT_LAP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|SEC_ONES\(0));

-- Location: LABCELL_X63_Y4_N30
\u4|sec_cnt_ones~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|sec_cnt_ones~0_combout\ = ( \u4|sec_cnt_ones\(0) & ( (!\u2|COUNT_CLEAR~combout\ & ((!\u4|sec_cnt_ones\(2) & (\u4|sec_cnt_ones\(1) & \u4|sec_cnt_ones\(3))) # (\u4|sec_cnt_ones\(2) & (!\u4|sec_cnt_ones\(1) $ (!\u4|sec_cnt_ones\(3)))))) ) ) # ( 
-- !\u4|sec_cnt_ones\(0) & ( (!\u2|COUNT_CLEAR~combout\ & \u4|sec_cnt_ones\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000010001010000000001000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_COUNT_CLEAR~combout\,
	datab => \u4|ALT_INV_sec_cnt_ones\(2),
	datac => \u4|ALT_INV_sec_cnt_ones\(1),
	datad => \u4|ALT_INV_sec_cnt_ones\(3),
	dataf => \u4|ALT_INV_sec_cnt_ones\(0),
	combout => \u4|sec_cnt_ones~0_combout\);

-- Location: FF_X63_Y4_N32
\u4|sec_cnt_ones[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u4|sec_cnt_ones~0_combout\,
	clrn => \RSTn~input_o\,
	ena => \u4|sec_cnt_ones[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|sec_cnt_ones\(3));

-- Location: LABCELL_X63_Y4_N33
\u4|sec_cnt_ones~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|sec_cnt_ones~3_combout\ = ( \u4|sec_cnt_ones\(0) & ( (!\u2|COUNT_CLEAR~combout\ & (!\u4|sec_cnt_ones\(1) & ((!\u4|sec_cnt_ones\(3)) # (\u4|sec_cnt_ones\(2))))) ) ) # ( !\u4|sec_cnt_ones\(0) & ( (!\u2|COUNT_CLEAR~combout\ & \u4|sec_cnt_ones\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010100010000000001010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_COUNT_CLEAR~combout\,
	datab => \u4|ALT_INV_sec_cnt_ones\(2),
	datac => \u4|ALT_INV_sec_cnt_ones\(3),
	datad => \u4|ALT_INV_sec_cnt_ones\(1),
	dataf => \u4|ALT_INV_sec_cnt_ones\(0),
	combout => \u4|sec_cnt_ones~3_combout\);

-- Location: FF_X63_Y4_N35
\u4|sec_cnt_ones[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u4|sec_cnt_ones~3_combout\,
	clrn => \RSTn~input_o\,
	ena => \u4|sec_cnt_ones[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|sec_cnt_ones\(1));

-- Location: LABCELL_X63_Y4_N6
\u4|sec_cnt_ones~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|sec_cnt_ones~2_combout\ = ( \u4|sec_cnt_ones\(0) & ( (!\u2|COUNT_CLEAR~combout\ & (!\u4|sec_cnt_ones\(1) $ (!\u4|sec_cnt_ones\(2)))) ) ) # ( !\u4|sec_cnt_ones\(0) & ( (!\u2|COUNT_CLEAR~combout\ & \u4|sec_cnt_ones\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_COUNT_CLEAR~combout\,
	datac => \u4|ALT_INV_sec_cnt_ones\(1),
	datad => \u4|ALT_INV_sec_cnt_ones\(2),
	dataf => \u4|ALT_INV_sec_cnt_ones\(0),
	combout => \u4|sec_cnt_ones~2_combout\);

-- Location: FF_X63_Y4_N8
\u4|sec_cnt_ones[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u4|sec_cnt_ones~2_combout\,
	clrn => \RSTn~input_o\,
	ena => \u4|sec_cnt_ones[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|sec_cnt_ones\(2));

-- Location: FF_X63_Y6_N11
\u4|SEC_ONES[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u4|sec_cnt_ones\(2),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u2|ALT_INV_COUNT_LAP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|SEC_ONES\(2));

-- Location: FF_X63_Y6_N47
\u4|SEC_ONES[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u4|sec_cnt_ones\(1),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u2|ALT_INV_COUNT_LAP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|SEC_ONES\(1));

-- Location: FF_X63_Y6_N32
\u4|SEC_ONES[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u4|sec_cnt_ones\(3),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u2|ALT_INV_COUNT_LAP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|SEC_ONES\(3));

-- Location: LABCELL_X63_Y6_N33
\u5_SEC_ONES_7SEG|D_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_SEC_ONES_7SEG|D_OUT[0]~0_combout\ = ( \u4|SEC_ONES\(1) & ( \u4|SEC_ONES\(3) ) ) # ( !\u4|SEC_ONES\(1) & ( \u4|SEC_ONES\(3) & ( \u4|SEC_ONES\(2) ) ) ) # ( !\u4|SEC_ONES\(1) & ( !\u4|SEC_ONES\(3) & ( !\u4|SEC_ONES\(0) $ (!\u4|SEC_ONES\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_SEC_ONES\(0),
	datac => \u4|ALT_INV_SEC_ONES\(2),
	datae => \u4|ALT_INV_SEC_ONES\(1),
	dataf => \u4|ALT_INV_SEC_ONES\(3),
	combout => \u5_SEC_ONES_7SEG|D_OUT[0]~0_combout\);

-- Location: LABCELL_X63_Y6_N6
\u5_SEC_ONES_7SEG|D_OUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_SEC_ONES_7SEG|D_OUT[1]~1_combout\ = ( \u4|SEC_ONES\(1) & ( \u4|SEC_ONES\(3) ) ) # ( !\u4|SEC_ONES\(1) & ( \u4|SEC_ONES\(3) & ( \u4|SEC_ONES\(2) ) ) ) # ( \u4|SEC_ONES\(1) & ( !\u4|SEC_ONES\(3) & ( (\u4|SEC_ONES\(2) & !\u4|SEC_ONES\(0)) ) ) ) # ( 
-- !\u4|SEC_ONES\(1) & ( !\u4|SEC_ONES\(3) & ( (\u4|SEC_ONES\(2) & \u4|SEC_ONES\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100000011000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|ALT_INV_SEC_ONES\(2),
	datac => \u4|ALT_INV_SEC_ONES\(0),
	datae => \u4|ALT_INV_SEC_ONES\(1),
	dataf => \u4|ALT_INV_SEC_ONES\(3),
	combout => \u5_SEC_ONES_7SEG|D_OUT[1]~1_combout\);

-- Location: LABCELL_X63_Y6_N42
\u5_SEC_ONES_7SEG|D_OUT[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_SEC_ONES_7SEG|D_OUT[2]~2_combout\ = ( \u4|SEC_ONES\(3) & ( (\u4|SEC_ONES\(1)) # (\u4|SEC_ONES\(2)) ) ) # ( !\u4|SEC_ONES\(3) & ( (!\u4|SEC_ONES\(0) & (!\u4|SEC_ONES\(2) & \u4|SEC_ONES\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_SEC_ONES\(0),
	datab => \u4|ALT_INV_SEC_ONES\(2),
	datad => \u4|ALT_INV_SEC_ONES\(1),
	dataf => \u4|ALT_INV_SEC_ONES\(3),
	combout => \u5_SEC_ONES_7SEG|D_OUT[2]~2_combout\);

-- Location: LABCELL_X63_Y6_N24
\u5_SEC_ONES_7SEG|D_OUT[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_SEC_ONES_7SEG|D_OUT[3]~3_combout\ = ( \u4|SEC_ONES\(3) & ( (\u4|SEC_ONES\(1)) # (\u4|SEC_ONES\(2)) ) ) # ( !\u4|SEC_ONES\(3) & ( (!\u4|SEC_ONES\(0) & (\u4|SEC_ONES\(2) & !\u4|SEC_ONES\(1))) # (\u4|SEC_ONES\(0) & (!\u4|SEC_ONES\(2) $ 
-- (\u4|SEC_ONES\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000010001011001100001000100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_SEC_ONES\(0),
	datab => \u4|ALT_INV_SEC_ONES\(2),
	datad => \u4|ALT_INV_SEC_ONES\(1),
	dataf => \u4|ALT_INV_SEC_ONES\(3),
	combout => \u5_SEC_ONES_7SEG|D_OUT[3]~3_combout\);

-- Location: LABCELL_X63_Y6_N27
\u5_SEC_ONES_7SEG|D_OUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_SEC_ONES_7SEG|D_OUT[4]~4_combout\ = ( \u4|SEC_ONES\(3) & ( ((\u4|SEC_ONES\(1)) # (\u4|SEC_ONES\(2))) # (\u4|SEC_ONES\(0)) ) ) # ( !\u4|SEC_ONES\(3) & ( ((\u4|SEC_ONES\(2) & !\u4|SEC_ONES\(1))) # (\u4|SEC_ONES\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101110101011101010111010101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_SEC_ONES\(0),
	datab => \u4|ALT_INV_SEC_ONES\(2),
	datac => \u4|ALT_INV_SEC_ONES\(1),
	dataf => \u4|ALT_INV_SEC_ONES\(3),
	combout => \u5_SEC_ONES_7SEG|D_OUT[4]~4_combout\);

-- Location: LABCELL_X63_Y6_N45
\u5_SEC_ONES_7SEG|D_OUT[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_SEC_ONES_7SEG|D_OUT[5]~5_combout\ = ( \u4|SEC_ONES\(3) & ( (\u4|SEC_ONES\(1)) # (\u4|SEC_ONES\(2)) ) ) # ( !\u4|SEC_ONES\(3) & ( (!\u4|SEC_ONES\(0) & (!\u4|SEC_ONES\(2) & \u4|SEC_ONES\(1))) # (\u4|SEC_ONES\(0) & ((!\u4|SEC_ONES\(2)) # 
-- (\u4|SEC_ONES\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011011101010001001101110100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_SEC_ONES\(0),
	datab => \u4|ALT_INV_SEC_ONES\(2),
	datad => \u4|ALT_INV_SEC_ONES\(1),
	dataf => \u4|ALT_INV_SEC_ONES\(3),
	combout => \u5_SEC_ONES_7SEG|D_OUT[5]~5_combout\);

-- Location: LABCELL_X63_Y6_N48
\u5_SEC_ONES_7SEG|D_OUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_SEC_ONES_7SEG|D_OUT[6]~6_combout\ = ( \u4|SEC_ONES\(3) & ( (\u4|SEC_ONES\(1)) # (\u4|SEC_ONES\(2)) ) ) # ( !\u4|SEC_ONES\(3) & ( (!\u4|SEC_ONES\(2) & (!\u4|SEC_ONES\(1))) # (\u4|SEC_ONES\(2) & (\u4|SEC_ONES\(1) & \u4|SEC_ONES\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000011110000001100001100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|ALT_INV_SEC_ONES\(2),
	datac => \u4|ALT_INV_SEC_ONES\(1),
	datad => \u4|ALT_INV_SEC_ONES\(0),
	dataf => \u4|ALT_INV_SEC_ONES\(3),
	combout => \u5_SEC_ONES_7SEG|D_OUT[6]~6_combout\);

-- Location: LABCELL_X63_Y4_N18
\u4|sec_cnt_tens~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|sec_cnt_tens~2_combout\ = (!\u2|COUNT_CLEAR~combout\ & !\u4|sec_cnt_tens\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_COUNT_CLEAR~combout\,
	datad => \u4|ALT_INV_sec_cnt_tens\(0),
	combout => \u4|sec_cnt_tens~2_combout\);

-- Location: LABCELL_X63_Y4_N27
\u4|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|Equal2~0_combout\ = ( !\u4|sec_cnt_ones\(2) & ( (\u4|sec_cnt_ones\(3) & (\u4|sec_cnt_ones\(0) & !\u4|sec_cnt_ones\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|ALT_INV_sec_cnt_ones\(3),
	datac => \u4|ALT_INV_sec_cnt_ones\(0),
	datad => \u4|ALT_INV_sec_cnt_ones\(1),
	dataf => \u4|ALT_INV_sec_cnt_ones\(2),
	combout => \u4|Equal2~0_combout\);

-- Location: LABCELL_X63_Y4_N21
\u4|sec_cnt_tens[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|sec_cnt_tens[0]~1_combout\ = ( \u4|Equal1~0_combout\ & ( ((\u4|Equal2~0_combout\ & (\u4|Equal0~0_combout\ & \u3|PULSE~q\))) # (\u2|COUNT_CLEAR~combout\) ) ) # ( !\u4|Equal1~0_combout\ & ( \u2|COUNT_CLEAR~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001101110011001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_Equal2~0_combout\,
	datab => \u2|ALT_INV_COUNT_CLEAR~combout\,
	datac => \u4|ALT_INV_Equal0~0_combout\,
	datad => \u3|ALT_INV_PULSE~q\,
	dataf => \u4|ALT_INV_Equal1~0_combout\,
	combout => \u4|sec_cnt_tens[0]~1_combout\);

-- Location: FF_X63_Y4_N20
\u4|sec_cnt_tens[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u4|sec_cnt_tens~2_combout\,
	clrn => \RSTn~input_o\,
	ena => \u4|sec_cnt_tens[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|sec_cnt_tens\(0));

-- Location: LABCELL_X63_Y4_N15
\u4|sec_cnt_tens~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|sec_cnt_tens~0_combout\ = ( \u4|sec_cnt_tens\(2) & ( (!\u4|sec_cnt_tens\(0) & (!\u2|COUNT_CLEAR~combout\ & \u4|sec_cnt_tens\(1))) ) ) # ( !\u4|sec_cnt_tens\(2) & ( (!\u2|COUNT_CLEAR~combout\ & (!\u4|sec_cnt_tens\(0) $ (!\u4|sec_cnt_tens\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010001000010001001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_sec_cnt_tens\(0),
	datab => \u2|ALT_INV_COUNT_CLEAR~combout\,
	datad => \u4|ALT_INV_sec_cnt_tens\(1),
	dataf => \u4|ALT_INV_sec_cnt_tens\(2),
	combout => \u4|sec_cnt_tens~0_combout\);

-- Location: FF_X63_Y4_N17
\u4|sec_cnt_tens[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u4|sec_cnt_tens~0_combout\,
	clrn => \RSTn~input_o\,
	ena => \u4|sec_cnt_tens[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|sec_cnt_tens\(1));

-- Location: LABCELL_X63_Y4_N24
\u4|sec_cnt_tens~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|sec_cnt_tens~3_combout\ = ( \u4|sec_cnt_tens\(1) & ( (!\u2|COUNT_CLEAR~combout\ & (!\u4|sec_cnt_tens\(0) $ (!\u4|sec_cnt_tens\(2)))) ) ) # ( !\u4|sec_cnt_tens\(1) & ( (!\u2|COUNT_CLEAR~combout\ & (!\u4|sec_cnt_tens\(0) & \u4|sec_cnt_tens\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_COUNT_CLEAR~combout\,
	datac => \u4|ALT_INV_sec_cnt_tens\(0),
	datad => \u4|ALT_INV_sec_cnt_tens\(2),
	dataf => \u4|ALT_INV_sec_cnt_tens\(1),
	combout => \u4|sec_cnt_tens~3_combout\);

-- Location: FF_X63_Y4_N26
\u4|sec_cnt_tens[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u4|sec_cnt_tens~3_combout\,
	clrn => \RSTn~input_o\,
	ena => \u4|sec_cnt_tens[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|sec_cnt_tens\(2));

-- Location: FF_X63_Y6_N2
\u4|SEC_TENS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u4|sec_cnt_tens\(2),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u2|ALT_INV_COUNT_LAP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|SEC_TENS\(2));

-- Location: FF_X63_Y6_N5
\u4|SEC_TENS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u4|sec_cnt_tens\(0),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u2|ALT_INV_COUNT_LAP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|SEC_TENS\(0));

-- Location: FF_X63_Y6_N53
\u4|SEC_TENS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \u4|sec_cnt_tens\(1),
	clrn => \RSTn~input_o\,
	sload => VCC,
	ena => \u2|ALT_INV_COUNT_LAP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|SEC_TENS\(1));

-- Location: LABCELL_X63_Y6_N39
\u5_SEC_TENS_7SEG|D_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_SEC_TENS_7SEG|D_OUT[0]~0_combout\ = ( !\u4|SEC_TENS\(1) & ( !\u4|SEC_TENS\(2) $ (!\u4|SEC_TENS\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_SEC_TENS\(2),
	datab => \u4|ALT_INV_SEC_TENS\(0),
	dataf => \u4|ALT_INV_SEC_TENS\(1),
	combout => \u5_SEC_TENS_7SEG|D_OUT[0]~0_combout\);

-- Location: LABCELL_X63_Y6_N12
\u5_SEC_TENS_7SEG|D_OUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_SEC_TENS_7SEG|D_OUT[1]~1_combout\ = ( \u4|SEC_TENS\(1) & ( (\u4|SEC_TENS\(2) & !\u4|SEC_TENS\(0)) ) ) # ( !\u4|SEC_TENS\(1) & ( (\u4|SEC_TENS\(2) & \u4|SEC_TENS\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_SEC_TENS\(2),
	datad => \u4|ALT_INV_SEC_TENS\(0),
	dataf => \u4|ALT_INV_SEC_TENS\(1),
	combout => \u5_SEC_TENS_7SEG|D_OUT[1]~1_combout\);

-- Location: LABCELL_X63_Y6_N36
\u5_SEC_TENS_7SEG|D_OUT[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_SEC_TENS_7SEG|D_OUT[2]~2_combout\ = ( \u4|SEC_TENS\(1) & ( (!\u4|SEC_TENS\(2) & !\u4|SEC_TENS\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_SEC_TENS\(2),
	datad => \u4|ALT_INV_SEC_TENS\(0),
	dataf => \u4|ALT_INV_SEC_TENS\(1),
	combout => \u5_SEC_TENS_7SEG|D_OUT[2]~2_combout\);

-- Location: LABCELL_X63_Y6_N15
\u5_SEC_TENS_7SEG|D_OUT[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_SEC_TENS_7SEG|D_OUT[3]~3_combout\ = ( \u4|SEC_TENS\(1) & ( (\u4|SEC_TENS\(2) & \u4|SEC_TENS\(0)) ) ) # ( !\u4|SEC_TENS\(1) & ( !\u4|SEC_TENS\(2) $ (!\u4|SEC_TENS\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_SEC_TENS\(2),
	datab => \u4|ALT_INV_SEC_TENS\(0),
	dataf => \u4|ALT_INV_SEC_TENS\(1),
	combout => \u5_SEC_TENS_7SEG|D_OUT[3]~3_combout\);

-- Location: LABCELL_X63_Y6_N51
\u5_SEC_TENS_7SEG|D_OUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_SEC_TENS_7SEG|D_OUT[4]~4_combout\ = ((\u4|SEC_TENS\(2) & !\u4|SEC_TENS\(1))) # (\u4|SEC_TENS\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111010111110000111101011111000011110101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_SEC_TENS\(2),
	datac => \u4|ALT_INV_SEC_TENS\(0),
	datad => \u4|ALT_INV_SEC_TENS\(1),
	combout => \u5_SEC_TENS_7SEG|D_OUT[4]~4_combout\);

-- Location: LABCELL_X63_Y6_N3
\u5_SEC_TENS_7SEG|D_OUT[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_SEC_TENS_7SEG|D_OUT[5]~5_combout\ = ( \u4|SEC_TENS\(1) & ( (\u4|SEC_TENS\(2) & !\u4|SEC_TENS\(0)) ) ) # ( !\u4|SEC_TENS\(1) & ( (!\u4|SEC_TENS\(0)) # (\u4|SEC_TENS\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u4|ALT_INV_SEC_TENS\(2),
	datad => \u4|ALT_INV_SEC_TENS\(0),
	dataf => \u4|ALT_INV_SEC_TENS\(1),
	combout => \u5_SEC_TENS_7SEG|D_OUT[5]~5_combout\);

-- Location: LABCELL_X63_Y6_N0
\u5_SEC_TENS_7SEG|D_OUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5_SEC_TENS_7SEG|D_OUT[6]~6_combout\ = (!\u4|SEC_TENS\(1) & ((!\u4|SEC_TENS\(2)))) # (\u4|SEC_TENS\(1) & (\u4|SEC_TENS\(0) & \u4|SEC_TENS\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000101101010100000010110101010000001011010101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_SEC_TENS\(1),
	datac => \u4|ALT_INV_SEC_TENS\(0),
	datad => \u4|ALT_INV_SEC_TENS\(2),
	combout => \u5_SEC_TENS_7SEG|D_OUT[6]~6_combout\);

-- Location: LABCELL_X67_Y48_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


