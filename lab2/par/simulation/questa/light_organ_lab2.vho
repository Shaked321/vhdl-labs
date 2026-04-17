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

-- DATE "12/18/2024 09:33:45"

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

ENTITY 	light_organ IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	RATE : IN std_logic;
	LEDs : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END light_organ;

-- Design Ports Information
-- LEDs[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[1]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[3]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[4]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[6]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RATE	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF light_organ IS
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
SIGNAL ww_RST : std_logic;
SIGNAL ww_RATE : std_logic;
SIGNAL ww_LEDs : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \u2|dir~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \u2|dir~q\ : std_logic;
SIGNAL \u3|shift_reg~1_combout\ : std_logic;
SIGNAL \RATE~input_o\ : std_logic;
SIGNAL \u1|rate_state~q\ : std_logic;
SIGNAL \u1|Add0~5_sumout\ : std_logic;
SIGNAL \u1|Equal0~1_combout\ : std_logic;
SIGNAL \u1|LessThan0~1_combout\ : std_logic;
SIGNAL \u1|Add0~50\ : std_logic;
SIGNAL \u1|Add0~46\ : std_logic;
SIGNAL \u1|Add0~10\ : std_logic;
SIGNAL \u1|Add0~14\ : std_logic;
SIGNAL \u1|Add0~2\ : std_logic;
SIGNAL \u1|Add0~22\ : std_logic;
SIGNAL \u1|Add0~26\ : std_logic;
SIGNAL \u1|Add0~30\ : std_logic;
SIGNAL \u1|Add0~34\ : std_logic;
SIGNAL \u1|Add0~98\ : std_logic;
SIGNAL \u1|Add0~94\ : std_logic;
SIGNAL \u1|Add0~90\ : std_logic;
SIGNAL \u1|Add0~86\ : std_logic;
SIGNAL \u1|Add0~38\ : std_logic;
SIGNAL \u1|Add0~82\ : std_logic;
SIGNAL \u1|Add0~42\ : std_logic;
SIGNAL \u1|Add0~78\ : std_logic;
SIGNAL \u1|Add0~73_sumout\ : std_logic;
SIGNAL \u1|Add1~74\ : std_logic;
SIGNAL \u1|Add1~69_sumout\ : std_logic;
SIGNAL \u1|count~18_combout\ : std_logic;
SIGNAL \u1|Add0~74\ : std_logic;
SIGNAL \u1|Add0~69_sumout\ : std_logic;
SIGNAL \u1|Add1~70\ : std_logic;
SIGNAL \u1|Add1~65_sumout\ : std_logic;
SIGNAL \u1|count~17_combout\ : std_logic;
SIGNAL \u1|Add1~66\ : std_logic;
SIGNAL \u1|Add1~61_sumout\ : std_logic;
SIGNAL \u1|Add0~70\ : std_logic;
SIGNAL \u1|Add0~65_sumout\ : std_logic;
SIGNAL \u1|count~16_combout\ : std_logic;
SIGNAL \u1|Add1~62\ : std_logic;
SIGNAL \u1|Add1~57_sumout\ : std_logic;
SIGNAL \u1|Add0~66\ : std_logic;
SIGNAL \u1|Add0~61_sumout\ : std_logic;
SIGNAL \u1|count~15_combout\ : std_logic;
SIGNAL \u1|Add0~62\ : std_logic;
SIGNAL \u1|Add0~17_sumout\ : std_logic;
SIGNAL \u1|Add1~58\ : std_logic;
SIGNAL \u1|Add1~13_sumout\ : std_logic;
SIGNAL \u1|count~4_combout\ : std_logic;
SIGNAL \u1|Add1~14\ : std_logic;
SIGNAL \u1|Add1~53_sumout\ : std_logic;
SIGNAL \u1|Add0~18\ : std_logic;
SIGNAL \u1|Add0~57_sumout\ : std_logic;
SIGNAL \u1|count~14_combout\ : std_logic;
SIGNAL \u1|LessThan0~0_combout\ : std_logic;
SIGNAL \u1|LessThan0~2_combout\ : std_logic;
SIGNAL \u1|Equal0~0_combout\ : std_logic;
SIGNAL \u1|count~1_combout\ : std_logic;
SIGNAL \u1|Add0~6\ : std_logic;
SIGNAL \u1|Add0~53_sumout\ : std_logic;
SIGNAL \u1|Add1~49_sumout\ : std_logic;
SIGNAL \u1|count~13_combout\ : std_logic;
SIGNAL \u1|Add0~54\ : std_logic;
SIGNAL \u1|Add0~49_sumout\ : std_logic;
SIGNAL \u1|Add1~50\ : std_logic;
SIGNAL \u1|Add1~45_sumout\ : std_logic;
SIGNAL \u1|count~12_combout\ : std_logic;
SIGNAL \u1|Add1~46\ : std_logic;
SIGNAL \u1|Add1~41_sumout\ : std_logic;
SIGNAL \u1|Add0~45_sumout\ : std_logic;
SIGNAL \u1|count~11_combout\ : std_logic;
SIGNAL \u1|Add1~42\ : std_logic;
SIGNAL \u1|Add1~5_sumout\ : std_logic;
SIGNAL \u1|Add0~9_sumout\ : std_logic;
SIGNAL \u1|count~2_combout\ : std_logic;
SIGNAL \u1|Add1~6\ : std_logic;
SIGNAL \u1|Add1~9_sumout\ : std_logic;
SIGNAL \u1|Add0~13_sumout\ : std_logic;
SIGNAL \u1|count~3_combout\ : std_logic;
SIGNAL \u1|Add1~10\ : std_logic;
SIGNAL \u1|Add1~1_sumout\ : std_logic;
SIGNAL \u1|Add0~1_sumout\ : std_logic;
SIGNAL \u1|count~0_combout\ : std_logic;
SIGNAL \u1|Add1~2\ : std_logic;
SIGNAL \u1|Add1~17_sumout\ : std_logic;
SIGNAL \u1|Add0~21_sumout\ : std_logic;
SIGNAL \u1|count~5_combout\ : std_logic;
SIGNAL \u1|Add1~18\ : std_logic;
SIGNAL \u1|Add1~21_sumout\ : std_logic;
SIGNAL \u1|Add0~25_sumout\ : std_logic;
SIGNAL \u1|count~6_combout\ : std_logic;
SIGNAL \u1|Add1~22\ : std_logic;
SIGNAL \u1|Add1~25_sumout\ : std_logic;
SIGNAL \u1|Add0~29_sumout\ : std_logic;
SIGNAL \u1|count~7_combout\ : std_logic;
SIGNAL \u1|Add1~26\ : std_logic;
SIGNAL \u1|Add1~29_sumout\ : std_logic;
SIGNAL \u1|Add0~33_sumout\ : std_logic;
SIGNAL \u1|count~8_combout\ : std_logic;
SIGNAL \u1|Add1~30\ : std_logic;
SIGNAL \u1|Add1~94\ : std_logic;
SIGNAL \u1|Add1~89_sumout\ : std_logic;
SIGNAL \u1|Add0~93_sumout\ : std_logic;
SIGNAL \u1|count~23_combout\ : std_logic;
SIGNAL \u1|Add1~90\ : std_logic;
SIGNAL \u1|Add1~85_sumout\ : std_logic;
SIGNAL \u1|Add0~89_sumout\ : std_logic;
SIGNAL \u1|count~22_combout\ : std_logic;
SIGNAL \u1|Add1~86\ : std_logic;
SIGNAL \u1|Add1~81_sumout\ : std_logic;
SIGNAL \u1|Add0~85_sumout\ : std_logic;
SIGNAL \u1|count~21_combout\ : std_logic;
SIGNAL \u1|Add1~82\ : std_logic;
SIGNAL \u1|Add1~33_sumout\ : std_logic;
SIGNAL \u1|Add0~37_sumout\ : std_logic;
SIGNAL \u1|count~9_combout\ : std_logic;
SIGNAL \u1|Add1~34\ : std_logic;
SIGNAL \u1|Add1~77_sumout\ : std_logic;
SIGNAL \u1|Add0~81_sumout\ : std_logic;
SIGNAL \u1|count~20_combout\ : std_logic;
SIGNAL \u1|Add1~78\ : std_logic;
SIGNAL \u1|Add1~37_sumout\ : std_logic;
SIGNAL \u1|Add0~41_sumout\ : std_logic;
SIGNAL \u1|count~10_combout\ : std_logic;
SIGNAL \u1|Add1~38\ : std_logic;
SIGNAL \u1|Add1~73_sumout\ : std_logic;
SIGNAL \u1|Add0~77_sumout\ : std_logic;
SIGNAL \u1|count~19_combout\ : std_logic;
SIGNAL \u1|LessThan0~3_combout\ : std_logic;
SIGNAL \u1|Add1~93_sumout\ : std_logic;
SIGNAL \u1|Add0~97_sumout\ : std_logic;
SIGNAL \u1|count~24_combout\ : std_logic;
SIGNAL \u1|Equal0~3_combout\ : std_logic;
SIGNAL \u1|Equal0~2_combout\ : std_logic;
SIGNAL \u1|Equal0~4_combout\ : std_logic;
SIGNAL \u1|PULSE~q\ : std_logic;
SIGNAL \u3|shift_reg~2_combout\ : std_logic;
SIGNAL \u3|shift_reg~3_combout\ : std_logic;
SIGNAL \u3|shift_reg~4_combout\ : std_logic;
SIGNAL \u3|shift_reg~5_combout\ : std_logic;
SIGNAL \u3|shift_reg~6_combout\ : std_logic;
SIGNAL \u3|shift_reg~7_combout\ : std_logic;
SIGNAL \u3|shift_reg~0_combout\ : std_logic;
SIGNAL \u1|count\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \u3|shift_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~89_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~85_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~81_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~77_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \u1|ALT_INV_count\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \u1|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_rate_state~q\ : std_logic;
SIGNAL \u1|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \u1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \u1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \u1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_dir~q\ : std_logic;
SIGNAL \u3|ALT_INV_shift_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|ALT_INV_Add1~93_sumout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
ww_RATE <= RATE;
LEDs <= ww_LEDs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\u1|ALT_INV_Add0~97_sumout\ <= NOT \u1|Add0~97_sumout\;
\u1|ALT_INV_Add1~89_sumout\ <= NOT \u1|Add1~89_sumout\;
\u1|ALT_INV_Add0~93_sumout\ <= NOT \u1|Add0~93_sumout\;
\u1|ALT_INV_Add1~85_sumout\ <= NOT \u1|Add1~85_sumout\;
\u1|ALT_INV_Add0~89_sumout\ <= NOT \u1|Add0~89_sumout\;
\u1|ALT_INV_Add1~81_sumout\ <= NOT \u1|Add1~81_sumout\;
\u1|ALT_INV_Add0~85_sumout\ <= NOT \u1|Add0~85_sumout\;
\u1|ALT_INV_Add1~77_sumout\ <= NOT \u1|Add1~77_sumout\;
\u1|ALT_INV_Add0~81_sumout\ <= NOT \u1|Add0~81_sumout\;
\u1|ALT_INV_Add1~73_sumout\ <= NOT \u1|Add1~73_sumout\;
\u1|ALT_INV_Add0~77_sumout\ <= NOT \u1|Add0~77_sumout\;
\u1|ALT_INV_Add1~69_sumout\ <= NOT \u1|Add1~69_sumout\;
\u1|ALT_INV_Add0~73_sumout\ <= NOT \u1|Add0~73_sumout\;
\u1|ALT_INV_Add1~65_sumout\ <= NOT \u1|Add1~65_sumout\;
\u1|ALT_INV_Add0~69_sumout\ <= NOT \u1|Add0~69_sumout\;
\u1|ALT_INV_Add1~61_sumout\ <= NOT \u1|Add1~61_sumout\;
\u1|ALT_INV_Add0~65_sumout\ <= NOT \u1|Add0~65_sumout\;
\u1|ALT_INV_Add1~57_sumout\ <= NOT \u1|Add1~57_sumout\;
\u1|ALT_INV_Add0~61_sumout\ <= NOT \u1|Add0~61_sumout\;
\u1|ALT_INV_Add1~53_sumout\ <= NOT \u1|Add1~53_sumout\;
\u1|ALT_INV_Add0~57_sumout\ <= NOT \u1|Add0~57_sumout\;
\u1|ALT_INV_Add1~49_sumout\ <= NOT \u1|Add1~49_sumout\;
\u1|ALT_INV_Add0~53_sumout\ <= NOT \u1|Add0~53_sumout\;
\u1|ALT_INV_Add1~45_sumout\ <= NOT \u1|Add1~45_sumout\;
\u1|ALT_INV_Add0~49_sumout\ <= NOT \u1|Add0~49_sumout\;
\u1|ALT_INV_Add1~41_sumout\ <= NOT \u1|Add1~41_sumout\;
\u1|ALT_INV_Add0~45_sumout\ <= NOT \u1|Add0~45_sumout\;
\u1|ALT_INV_Add1~37_sumout\ <= NOT \u1|Add1~37_sumout\;
\u1|ALT_INV_Add0~41_sumout\ <= NOT \u1|Add0~41_sumout\;
\u1|ALT_INV_Add1~33_sumout\ <= NOT \u1|Add1~33_sumout\;
\u1|ALT_INV_Add0~37_sumout\ <= NOT \u1|Add0~37_sumout\;
\u1|ALT_INV_Add1~29_sumout\ <= NOT \u1|Add1~29_sumout\;
\u1|ALT_INV_Add0~33_sumout\ <= NOT \u1|Add0~33_sumout\;
\u1|ALT_INV_Add1~25_sumout\ <= NOT \u1|Add1~25_sumout\;
\u1|ALT_INV_Add0~29_sumout\ <= NOT \u1|Add0~29_sumout\;
\u1|ALT_INV_Add1~21_sumout\ <= NOT \u1|Add1~21_sumout\;
\u1|ALT_INV_Add0~25_sumout\ <= NOT \u1|Add0~25_sumout\;
\u1|ALT_INV_Add1~17_sumout\ <= NOT \u1|Add1~17_sumout\;
\u1|ALT_INV_Add0~21_sumout\ <= NOT \u1|Add0~21_sumout\;
\u1|ALT_INV_Add1~13_sumout\ <= NOT \u1|Add1~13_sumout\;
\u1|ALT_INV_Add0~17_sumout\ <= NOT \u1|Add0~17_sumout\;
\u1|ALT_INV_Add1~9_sumout\ <= NOT \u1|Add1~9_sumout\;
\u1|ALT_INV_Add0~13_sumout\ <= NOT \u1|Add0~13_sumout\;
\u1|ALT_INV_Add1~5_sumout\ <= NOT \u1|Add1~5_sumout\;
\u1|ALT_INV_Add0~9_sumout\ <= NOT \u1|Add0~9_sumout\;
\u1|ALT_INV_Add0~5_sumout\ <= NOT \u1|Add0~5_sumout\;
\u1|ALT_INV_Add1~1_sumout\ <= NOT \u1|Add1~1_sumout\;
\u1|ALT_INV_Add0~1_sumout\ <= NOT \u1|Add0~1_sumout\;
\u1|ALT_INV_count\(1) <= NOT \u1|count\(1);
\u1|ALT_INV_count\(2) <= NOT \u1|count\(2);
\u1|ALT_INV_count\(3) <= NOT \u1|count\(3);
\u1|ALT_INV_count\(17) <= NOT \u1|count\(17);
\u1|ALT_INV_count\(15) <= NOT \u1|count\(15);
\u1|ALT_INV_count\(10) <= NOT \u1|count\(10);
\u1|ALT_INV_count\(9) <= NOT \u1|count\(9);
\u1|ALT_INV_count\(8) <= NOT \u1|count\(8);
\u1|ALT_INV_count\(7) <= NOT \u1|count\(7);
\u1|ALT_INV_count\(23) <= NOT \u1|count\(23);
\u1|ALT_INV_count\(5) <= NOT \u1|count\(5);
\u1|ALT_INV_count\(4) <= NOT \u1|count\(4);
\u1|ALT_INV_LessThan0~3_combout\ <= NOT \u1|LessThan0~3_combout\;
\u1|ALT_INV_LessThan0~2_combout\ <= NOT \u1|LessThan0~2_combout\;
\u1|ALT_INV_LessThan0~1_combout\ <= NOT \u1|LessThan0~1_combout\;
\u1|ALT_INV_LessThan0~0_combout\ <= NOT \u1|LessThan0~0_combout\;
\u1|ALT_INV_rate_state~q\ <= NOT \u1|rate_state~q\;
\u1|ALT_INV_Equal0~3_combout\ <= NOT \u1|Equal0~3_combout\;
\u1|ALT_INV_count\(11) <= NOT \u1|count\(11);
\u1|ALT_INV_count\(12) <= NOT \u1|count\(12);
\u1|ALT_INV_count\(13) <= NOT \u1|count\(13);
\u1|ALT_INV_count\(14) <= NOT \u1|count\(14);
\u1|ALT_INV_count\(16) <= NOT \u1|count\(16);
\u1|ALT_INV_Equal0~2_combout\ <= NOT \u1|Equal0~2_combout\;
\u1|ALT_INV_count\(18) <= NOT \u1|count\(18);
\u1|ALT_INV_count\(19) <= NOT \u1|count\(19);
\u1|ALT_INV_count\(20) <= NOT \u1|count\(20);
\u1|ALT_INV_count\(21) <= NOT \u1|count\(21);
\u1|ALT_INV_count\(22) <= NOT \u1|count\(22);
\u1|ALT_INV_count\(24) <= NOT \u1|count\(24);
\u1|ALT_INV_Equal0~1_combout\ <= NOT \u1|Equal0~1_combout\;
\u1|ALT_INV_Equal0~0_combout\ <= NOT \u1|Equal0~0_combout\;
\u1|ALT_INV_count\(0) <= NOT \u1|count\(0);
\u1|ALT_INV_count\(6) <= NOT \u1|count\(6);
\u2|ALT_INV_dir~q\ <= NOT \u2|dir~q\;
\u3|ALT_INV_shift_reg\(7) <= NOT \u3|shift_reg\(7);
\u3|ALT_INV_shift_reg\(6) <= NOT \u3|shift_reg\(6);
\u3|ALT_INV_shift_reg\(5) <= NOT \u3|shift_reg\(5);
\u3|ALT_INV_shift_reg\(4) <= NOT \u3|shift_reg\(4);
\u3|ALT_INV_shift_reg\(3) <= NOT \u3|shift_reg\(3);
\u3|ALT_INV_shift_reg\(2) <= NOT \u3|shift_reg\(2);
\u3|ALT_INV_shift_reg\(1) <= NOT \u3|shift_reg\(1);
\u3|ALT_INV_shift_reg\(0) <= NOT \u3|shift_reg\(0);
\u1|ALT_INV_Add1~93_sumout\ <= NOT \u1|Add1~93_sumout\;

-- Location: IOOBUF_X14_Y61_N53
\LEDs[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|ALT_INV_shift_reg\(0),
	devoe => ww_devoe,
	o => ww_LEDs(0));

-- Location: IOOBUF_X15_Y61_N36
\LEDs[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|shift_reg\(1),
	devoe => ww_devoe,
	o => ww_LEDs(1));

-- Location: IOOBUF_X15_Y61_N53
\LEDs[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|shift_reg\(2),
	devoe => ww_devoe,
	o => ww_LEDs(2));

-- Location: IOOBUF_X14_Y61_N36
\LEDs[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|shift_reg\(3),
	devoe => ww_devoe,
	o => ww_LEDs(3));

-- Location: IOOBUF_X14_Y61_N19
\LEDs[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|shift_reg\(4),
	devoe => ww_devoe,
	o => ww_LEDs(4));

-- Location: IOOBUF_X12_Y61_N53
\LEDs[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|shift_reg\(5),
	devoe => ww_devoe,
	o => ww_LEDs(5));

-- Location: IOOBUF_X12_Y61_N2
\LEDs[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|shift_reg\(6),
	devoe => ww_devoe,
	o => ww_LEDs(6));

-- Location: IOOBUF_X14_Y61_N2
\LEDs[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|shift_reg\(7),
	devoe => ww_devoe,
	o => ww_LEDs(7));

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

-- Location: LABCELL_X21_Y43_N3
\u2|dir~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|dir~0_combout\ = ((\u3|shift_reg\(0) & \u2|dir~q\)) # (\u3|shift_reg\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111001100110011111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|ALT_INV_shift_reg\(7),
	datac => \u3|ALT_INV_shift_reg\(0),
	datad => \u2|ALT_INV_dir~q\,
	combout => \u2|dir~0_combout\);

-- Location: IOIBUF_X21_Y0_N1
\RST~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: FF_X21_Y43_N5
\u2|dir\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u2|dir~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|dir~q\);

-- Location: LABCELL_X21_Y43_N12
\u3|shift_reg~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|shift_reg~1_combout\ = (!\u2|dir~q\ & (!\u3|shift_reg\(0))) # (\u2|dir~q\ & ((\u3|shift_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000001111110011000000111111001100000011111100110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|ALT_INV_shift_reg\(0),
	datac => \u3|ALT_INV_shift_reg\(2),
	datad => \u2|ALT_INV_dir~q\,
	combout => \u3|shift_reg~1_combout\);

-- Location: IOIBUF_X14_Y0_N35
\RATE~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RATE,
	o => \RATE~input_o\);

-- Location: FF_X18_Y43_N41
\u1|rate_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \RATE~input_o\,
	sload => VCC,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rate_state~q\);

-- Location: MLABCELL_X19_Y44_N0
\u1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~5_sumout\ = SUM(( \u1|count\(0) ) + ( VCC ) + ( !VCC ))
-- \u1|Add0~6\ = CARRY(( \u1|count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_count\(0),
	cin => GND,
	sumout => \u1|Add0~5_sumout\,
	cout => \u1|Add0~6\);

-- Location: LABCELL_X18_Y44_N24
\u1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Equal0~1_combout\ = ( !\u1|count\(2) & ( !\u1|count\(1) & ( (!\u1|count\(17) & (!\u1|count\(10) & (!\u1|count\(15) & !\u1|count\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_count\(17),
	datab => \u1|ALT_INV_count\(10),
	datac => \u1|ALT_INV_count\(15),
	datad => \u1|ALT_INV_count\(3),
	datae => \u1|ALT_INV_count\(2),
	dataf => \u1|ALT_INV_count\(1),
	combout => \u1|Equal0~1_combout\);

-- Location: LABCELL_X21_Y43_N33
\u1|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan0~1_combout\ = ( \u1|count\(14) & ( (\u1|count\(11) & (\u1|count\(16) & (\u1|count\(12) & \u1|count\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_count\(11),
	datab => \u1|ALT_INV_count\(16),
	datac => \u1|ALT_INV_count\(12),
	datad => \u1|ALT_INV_count\(13),
	dataf => \u1|ALT_INV_count\(14),
	combout => \u1|LessThan0~1_combout\);

-- Location: MLABCELL_X19_Y44_N6
\u1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~49_sumout\ = SUM(( \u1|count\(2) ) + ( VCC ) + ( \u1|Add0~54\ ))
-- \u1|Add0~50\ = CARRY(( \u1|count\(2) ) + ( VCC ) + ( \u1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(2),
	cin => \u1|Add0~54\,
	sumout => \u1|Add0~49_sumout\,
	cout => \u1|Add0~50\);

-- Location: MLABCELL_X19_Y44_N9
\u1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~45_sumout\ = SUM(( \u1|count\(3) ) + ( VCC ) + ( \u1|Add0~50\ ))
-- \u1|Add0~46\ = CARRY(( \u1|count\(3) ) + ( VCC ) + ( \u1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(3),
	cin => \u1|Add0~50\,
	sumout => \u1|Add0~45_sumout\,
	cout => \u1|Add0~46\);

-- Location: MLABCELL_X19_Y44_N12
\u1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~9_sumout\ = SUM(( \u1|count\(4) ) + ( VCC ) + ( \u1|Add0~46\ ))
-- \u1|Add0~10\ = CARRY(( \u1|count\(4) ) + ( VCC ) + ( \u1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(4),
	cin => \u1|Add0~46\,
	sumout => \u1|Add0~9_sumout\,
	cout => \u1|Add0~10\);

-- Location: MLABCELL_X19_Y44_N15
\u1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~13_sumout\ = SUM(( \u1|count\(5) ) + ( VCC ) + ( \u1|Add0~10\ ))
-- \u1|Add0~14\ = CARRY(( \u1|count\(5) ) + ( VCC ) + ( \u1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(5),
	cin => \u1|Add0~10\,
	sumout => \u1|Add0~13_sumout\,
	cout => \u1|Add0~14\);

-- Location: MLABCELL_X19_Y44_N18
\u1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~1_sumout\ = SUM(( !\u1|count\(6) ) + ( VCC ) + ( \u1|Add0~14\ ))
-- \u1|Add0~2\ = CARRY(( !\u1|count\(6) ) + ( VCC ) + ( \u1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(6),
	cin => \u1|Add0~14\,
	sumout => \u1|Add0~1_sumout\,
	cout => \u1|Add0~2\);

-- Location: MLABCELL_X19_Y44_N21
\u1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~21_sumout\ = SUM(( \u1|count\(7) ) + ( VCC ) + ( \u1|Add0~2\ ))
-- \u1|Add0~22\ = CARRY(( \u1|count\(7) ) + ( VCC ) + ( \u1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(7),
	cin => \u1|Add0~2\,
	sumout => \u1|Add0~21_sumout\,
	cout => \u1|Add0~22\);

-- Location: MLABCELL_X19_Y44_N24
\u1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~25_sumout\ = SUM(( \u1|count\(8) ) + ( VCC ) + ( \u1|Add0~22\ ))
-- \u1|Add0~26\ = CARRY(( \u1|count\(8) ) + ( VCC ) + ( \u1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(8),
	cin => \u1|Add0~22\,
	sumout => \u1|Add0~25_sumout\,
	cout => \u1|Add0~26\);

-- Location: MLABCELL_X19_Y44_N27
\u1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~29_sumout\ = SUM(( \u1|count\(9) ) + ( VCC ) + ( \u1|Add0~26\ ))
-- \u1|Add0~30\ = CARRY(( \u1|count\(9) ) + ( VCC ) + ( \u1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(9),
	cin => \u1|Add0~26\,
	sumout => \u1|Add0~29_sumout\,
	cout => \u1|Add0~30\);

-- Location: MLABCELL_X19_Y43_N0
\u1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~33_sumout\ = SUM(( \u1|count\(10) ) + ( VCC ) + ( \u1|Add0~30\ ))
-- \u1|Add0~34\ = CARRY(( \u1|count\(10) ) + ( VCC ) + ( \u1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(10),
	cin => \u1|Add0~30\,
	sumout => \u1|Add0~33_sumout\,
	cout => \u1|Add0~34\);

-- Location: MLABCELL_X19_Y43_N3
\u1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~97_sumout\ = SUM(( !\u1|count\(11) ) + ( VCC ) + ( \u1|Add0~34\ ))
-- \u1|Add0~98\ = CARRY(( !\u1|count\(11) ) + ( VCC ) + ( \u1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_count\(11),
	cin => \u1|Add0~34\,
	sumout => \u1|Add0~97_sumout\,
	cout => \u1|Add0~98\);

-- Location: MLABCELL_X19_Y43_N6
\u1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~93_sumout\ = SUM(( !\u1|count\(12) ) + ( VCC ) + ( \u1|Add0~98\ ))
-- \u1|Add0~94\ = CARRY(( !\u1|count\(12) ) + ( VCC ) + ( \u1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_count\(12),
	cin => \u1|Add0~98\,
	sumout => \u1|Add0~93_sumout\,
	cout => \u1|Add0~94\);

-- Location: MLABCELL_X19_Y43_N9
\u1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~89_sumout\ = SUM(( !\u1|count\(13) ) + ( VCC ) + ( \u1|Add0~94\ ))
-- \u1|Add0~90\ = CARRY(( !\u1|count\(13) ) + ( VCC ) + ( \u1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_count\(13),
	cin => \u1|Add0~94\,
	sumout => \u1|Add0~89_sumout\,
	cout => \u1|Add0~90\);

-- Location: MLABCELL_X19_Y43_N12
\u1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~85_sumout\ = SUM(( !\u1|count\(14) ) + ( VCC ) + ( \u1|Add0~90\ ))
-- \u1|Add0~86\ = CARRY(( !\u1|count\(14) ) + ( VCC ) + ( \u1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_count\(14),
	cin => \u1|Add0~90\,
	sumout => \u1|Add0~85_sumout\,
	cout => \u1|Add0~86\);

-- Location: MLABCELL_X19_Y43_N15
\u1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~37_sumout\ = SUM(( \u1|count\(15) ) + ( VCC ) + ( \u1|Add0~86\ ))
-- \u1|Add0~38\ = CARRY(( \u1|count\(15) ) + ( VCC ) + ( \u1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(15),
	cin => \u1|Add0~86\,
	sumout => \u1|Add0~37_sumout\,
	cout => \u1|Add0~38\);

-- Location: MLABCELL_X19_Y43_N18
\u1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~81_sumout\ = SUM(( !\u1|count\(16) ) + ( VCC ) + ( \u1|Add0~38\ ))
-- \u1|Add0~82\ = CARRY(( !\u1|count\(16) ) + ( VCC ) + ( \u1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_count\(16),
	cin => \u1|Add0~38\,
	sumout => \u1|Add0~81_sumout\,
	cout => \u1|Add0~82\);

-- Location: MLABCELL_X19_Y43_N21
\u1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~41_sumout\ = SUM(( \u1|count\(17) ) + ( VCC ) + ( \u1|Add0~82\ ))
-- \u1|Add0~42\ = CARRY(( \u1|count\(17) ) + ( VCC ) + ( \u1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_count\(17),
	cin => \u1|Add0~82\,
	sumout => \u1|Add0~41_sumout\,
	cout => \u1|Add0~42\);

-- Location: MLABCELL_X19_Y43_N24
\u1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~77_sumout\ = SUM(( !\u1|count\(18) ) + ( VCC ) + ( \u1|Add0~42\ ))
-- \u1|Add0~78\ = CARRY(( !\u1|count\(18) ) + ( VCC ) + ( \u1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_count\(18),
	cin => \u1|Add0~42\,
	sumout => \u1|Add0~77_sumout\,
	cout => \u1|Add0~78\);

-- Location: MLABCELL_X19_Y43_N27
\u1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~73_sumout\ = SUM(( !\u1|count\(19) ) + ( VCC ) + ( \u1|Add0~78\ ))
-- \u1|Add0~74\ = CARRY(( !\u1|count\(19) ) + ( VCC ) + ( \u1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_count\(19),
	cin => \u1|Add0~78\,
	sumout => \u1|Add0~73_sumout\,
	cout => \u1|Add0~74\);

-- Location: LABCELL_X18_Y43_N21
\u1|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~73_sumout\ = SUM(( !\u1|count\(18) ) + ( VCC ) + ( \u1|Add1~38\ ))
-- \u1|Add1~74\ = CARRY(( !\u1|count\(18) ) + ( VCC ) + ( \u1|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_count\(18),
	cin => \u1|Add1~38\,
	sumout => \u1|Add1~73_sumout\,
	cout => \u1|Add1~74\);

-- Location: LABCELL_X18_Y43_N24
\u1|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~69_sumout\ = SUM(( !\u1|count\(19) ) + ( VCC ) + ( \u1|Add1~74\ ))
-- \u1|Add1~70\ = CARRY(( !\u1|count\(19) ) + ( VCC ) + ( \u1|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_count\(19),
	cin => \u1|Add1~74\,
	sumout => \u1|Add1~69_sumout\,
	cout => \u1|Add1~70\);

-- Location: MLABCELL_X19_Y43_N54
\u1|count~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~18_combout\ = ( !\u1|LessThan0~3_combout\ & ( (!\u1|rate_state~q\ & ((!\u1|Add1~69_sumout\))) # (\u1|rate_state~q\ & (!\u1|Add0~73_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101001010000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_rate_state~q\,
	datac => \u1|ALT_INV_Add0~73_sumout\,
	datad => \u1|ALT_INV_Add1~69_sumout\,
	dataf => \u1|ALT_INV_LessThan0~3_combout\,
	combout => \u1|count~18_combout\);

-- Location: FF_X19_Y43_N56
\u1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~18_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(19));

-- Location: MLABCELL_X19_Y43_N30
\u1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~69_sumout\ = SUM(( !\u1|count\(20) ) + ( VCC ) + ( \u1|Add0~74\ ))
-- \u1|Add0~70\ = CARRY(( !\u1|count\(20) ) + ( VCC ) + ( \u1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_count\(20),
	cin => \u1|Add0~74\,
	sumout => \u1|Add0~69_sumout\,
	cout => \u1|Add0~70\);

-- Location: LABCELL_X18_Y43_N27
\u1|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~65_sumout\ = SUM(( !\u1|count\(20) ) + ( VCC ) + ( \u1|Add1~70\ ))
-- \u1|Add1~66\ = CARRY(( !\u1|count\(20) ) + ( VCC ) + ( \u1|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_count\(20),
	cin => \u1|Add1~70\,
	sumout => \u1|Add1~65_sumout\,
	cout => \u1|Add1~66\);

-- Location: LABCELL_X18_Y43_N48
\u1|count~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~17_combout\ = ( \u1|rate_state~q\ & ( (!\u1|LessThan0~3_combout\ & !\u1|Add0~69_sumout\) ) ) # ( !\u1|rate_state~q\ & ( (!\u1|LessThan0~3_combout\ & !\u1|Add1~65_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_LessThan0~3_combout\,
	datac => \u1|ALT_INV_Add0~69_sumout\,
	datad => \u1|ALT_INV_Add1~65_sumout\,
	dataf => \u1|ALT_INV_rate_state~q\,
	combout => \u1|count~17_combout\);

-- Location: FF_X18_Y43_N50
\u1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~17_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(20));

-- Location: LABCELL_X18_Y43_N30
\u1|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~61_sumout\ = SUM(( !\u1|count\(21) ) + ( VCC ) + ( \u1|Add1~66\ ))
-- \u1|Add1~62\ = CARRY(( !\u1|count\(21) ) + ( VCC ) + ( \u1|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_count\(21),
	cin => \u1|Add1~66\,
	sumout => \u1|Add1~61_sumout\,
	cout => \u1|Add1~62\);

-- Location: MLABCELL_X19_Y43_N33
\u1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~65_sumout\ = SUM(( !\u1|count\(21) ) + ( VCC ) + ( \u1|Add0~70\ ))
-- \u1|Add0~66\ = CARRY(( !\u1|count\(21) ) + ( VCC ) + ( \u1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_count\(21),
	cin => \u1|Add0~70\,
	sumout => \u1|Add0~65_sumout\,
	cout => \u1|Add0~66\);

-- Location: MLABCELL_X19_Y43_N48
\u1|count~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~16_combout\ = ( \u1|Add0~65_sumout\ & ( (!\u1|rate_state~q\ & (!\u1|LessThan0~3_combout\ & !\u1|Add1~61_sumout\)) ) ) # ( !\u1|Add0~65_sumout\ & ( (!\u1|LessThan0~3_combout\ & ((!\u1|Add1~61_sumout\) # (\u1|rate_state~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000100110001001100010010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_rate_state~q\,
	datab => \u1|ALT_INV_LessThan0~3_combout\,
	datac => \u1|ALT_INV_Add1~61_sumout\,
	dataf => \u1|ALT_INV_Add0~65_sumout\,
	combout => \u1|count~16_combout\);

-- Location: FF_X19_Y43_N50
\u1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~16_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(21));

-- Location: LABCELL_X18_Y43_N33
\u1|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~57_sumout\ = SUM(( !\u1|count\(22) ) + ( VCC ) + ( \u1|Add1~62\ ))
-- \u1|Add1~58\ = CARRY(( !\u1|count\(22) ) + ( VCC ) + ( \u1|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_count\(22),
	cin => \u1|Add1~62\,
	sumout => \u1|Add1~57_sumout\,
	cout => \u1|Add1~58\);

-- Location: MLABCELL_X19_Y43_N36
\u1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~61_sumout\ = SUM(( !\u1|count\(22) ) + ( VCC ) + ( \u1|Add0~66\ ))
-- \u1|Add0~62\ = CARRY(( !\u1|count\(22) ) + ( VCC ) + ( \u1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(22),
	cin => \u1|Add0~66\,
	sumout => \u1|Add0~61_sumout\,
	cout => \u1|Add0~62\);

-- Location: LABCELL_X21_Y43_N45
\u1|count~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~15_combout\ = (!\u1|LessThan0~3_combout\ & ((!\u1|rate_state~q\ & (!\u1|Add1~57_sumout\)) # (\u1|rate_state~q\ & ((!\u1|Add0~61_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010000000101000101000000010100010100000001010001010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan0~3_combout\,
	datab => \u1|ALT_INV_rate_state~q\,
	datac => \u1|ALT_INV_Add1~57_sumout\,
	datad => \u1|ALT_INV_Add0~61_sumout\,
	combout => \u1|count~15_combout\);

-- Location: FF_X21_Y43_N47
\u1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~15_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(22));

-- Location: MLABCELL_X19_Y43_N39
\u1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~17_sumout\ = SUM(( \u1|count\(23) ) + ( VCC ) + ( \u1|Add0~62\ ))
-- \u1|Add0~18\ = CARRY(( \u1|count\(23) ) + ( VCC ) + ( \u1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(23),
	cin => \u1|Add0~62\,
	sumout => \u1|Add0~17_sumout\,
	cout => \u1|Add0~18\);

-- Location: LABCELL_X18_Y43_N36
\u1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~13_sumout\ = SUM(( \u1|count\(23) ) + ( VCC ) + ( \u1|Add1~58\ ))
-- \u1|Add1~14\ = CARRY(( \u1|count\(23) ) + ( VCC ) + ( \u1|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_count\(23),
	cin => \u1|Add1~58\,
	sumout => \u1|Add1~13_sumout\,
	cout => \u1|Add1~14\);

-- Location: LABCELL_X18_Y43_N45
\u1|count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~4_combout\ = ( \u1|rate_state~q\ & ( \u1|Add0~17_sumout\ ) ) # ( !\u1|rate_state~q\ & ( \u1|Add1~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_Add0~17_sumout\,
	datad => \u1|ALT_INV_Add1~13_sumout\,
	dataf => \u1|ALT_INV_rate_state~q\,
	combout => \u1|count~4_combout\);

-- Location: FF_X18_Y43_N47
\u1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~4_combout\,
	clrn => \RST~input_o\,
	sclr => \u1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(23));

-- Location: LABCELL_X18_Y43_N39
\u1|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~53_sumout\ = SUM(( !\u1|count\(24) ) + ( VCC ) + ( \u1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_count\(24),
	cin => \u1|Add1~14\,
	sumout => \u1|Add1~53_sumout\);

-- Location: MLABCELL_X19_Y43_N42
\u1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~57_sumout\ = SUM(( !\u1|count\(24) ) + ( VCC ) + ( \u1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(24),
	cin => \u1|Add0~18\,
	sumout => \u1|Add0~57_sumout\);

-- Location: MLABCELL_X19_Y43_N51
\u1|count~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~14_combout\ = ( \u1|Add0~57_sumout\ & ( (!\u1|rate_state~q\ & (!\u1|LessThan0~3_combout\ & !\u1|Add1~53_sumout\)) ) ) # ( !\u1|Add0~57_sumout\ & ( (!\u1|LessThan0~3_combout\ & ((!\u1|Add1~53_sumout\) # (\u1|rate_state~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000100110001001100010010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_rate_state~q\,
	datab => \u1|ALT_INV_LessThan0~3_combout\,
	datac => \u1|ALT_INV_Add1~53_sumout\,
	dataf => \u1|ALT_INV_Add0~57_sumout\,
	combout => \u1|count~14_combout\);

-- Location: FF_X19_Y43_N53
\u1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~14_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(24));

-- Location: LABCELL_X18_Y43_N42
\u1|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan0~0_combout\ = ( \u1|count\(22) & ( (\u1|count\(20) & (\u1|count\(19) & (\u1|count\(24) & \u1|count\(21)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_count\(20),
	datab => \u1|ALT_INV_count\(19),
	datac => \u1|ALT_INV_count\(24),
	datad => \u1|ALT_INV_count\(21),
	dataf => \u1|ALT_INV_count\(22),
	combout => \u1|LessThan0~0_combout\);

-- Location: MLABCELL_X19_Y44_N33
\u1|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan0~2_combout\ = ( \u1|LessThan0~0_combout\ & ( (\u1|count\(18) & (\u1|LessThan0~1_combout\ & \u1|count\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_count\(18),
	datac => \u1|ALT_INV_LessThan0~1_combout\,
	datad => \u1|ALT_INV_count\(6),
	dataf => \u1|ALT_INV_LessThan0~0_combout\,
	combout => \u1|LessThan0~2_combout\);

-- Location: MLABCELL_X19_Y44_N48
\u1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Equal0~0_combout\ = ( !\u1|count\(4) & ( !\u1|count\(7) & ( (!\u1|count\(8) & (!\u1|count\(5) & (!\u1|count\(23) & !\u1|count\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_count\(8),
	datab => \u1|ALT_INV_count\(5),
	datac => \u1|ALT_INV_count\(23),
	datad => \u1|ALT_INV_count\(9),
	datae => \u1|ALT_INV_count\(4),
	dataf => \u1|ALT_INV_count\(7),
	combout => \u1|Equal0~0_combout\);

-- Location: MLABCELL_X19_Y44_N42
\u1|count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~1_combout\ = ( \u1|count\(0) & ( \u1|Equal0~0_combout\ & ( (!\u1|Add0~5_sumout\ & (!\u1|rate_state~q\ & ((!\u1|Equal0~1_combout\) # (!\u1|LessThan0~2_combout\)))) # (\u1|Add0~5_sumout\ & ((!\u1|Equal0~1_combout\) # 
-- ((!\u1|LessThan0~2_combout\)))) ) ) ) # ( !\u1|count\(0) & ( \u1|Equal0~0_combout\ & ( (\u1|Add0~5_sumout\ & (\u1|rate_state~q\ & ((!\u1|Equal0~1_combout\) # (!\u1|LessThan0~2_combout\)))) ) ) ) # ( \u1|count\(0) & ( !\u1|Equal0~0_combout\ & ( 
-- (!\u1|rate_state~q\) # (\u1|Add0~5_sumout\) ) ) ) # ( !\u1|count\(0) & ( !\u1|Equal0~0_combout\ & ( (\u1|Add0~5_sumout\ & \u1|rate_state~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100000000010101001111110001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_Add0~5_sumout\,
	datab => \u1|ALT_INV_Equal0~1_combout\,
	datac => \u1|ALT_INV_LessThan0~2_combout\,
	datad => \u1|ALT_INV_rate_state~q\,
	datae => \u1|ALT_INV_count\(0),
	dataf => \u1|ALT_INV_Equal0~0_combout\,
	combout => \u1|count~1_combout\);

-- Location: FF_X19_Y44_N44
\u1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(0));

-- Location: MLABCELL_X19_Y44_N3
\u1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~53_sumout\ = SUM(( \u1|count\(1) ) + ( VCC ) + ( \u1|Add0~6\ ))
-- \u1|Add0~54\ = CARRY(( \u1|count\(1) ) + ( VCC ) + ( \u1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_count\(1),
	cin => \u1|Add0~6\,
	sumout => \u1|Add0~53_sumout\,
	cout => \u1|Add0~54\);

-- Location: LABCELL_X18_Y44_N30
\u1|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~49_sumout\ = SUM(( \u1|count\(1) ) + ( VCC ) + ( !VCC ))
-- \u1|Add1~50\ = CARRY(( \u1|count\(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(1),
	cin => GND,
	sumout => \u1|Add1~49_sumout\,
	cout => \u1|Add1~50\);

-- Location: LABCELL_X18_Y44_N18
\u1|count~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~13_combout\ = ( \u1|Add1~49_sumout\ & ( (!\u1|rate_state~q\) # (\u1|Add0~53_sumout\) ) ) # ( !\u1|Add1~49_sumout\ & ( (\u1|rate_state~q\ & \u1|Add0~53_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_rate_state~q\,
	datac => \u1|ALT_INV_Add0~53_sumout\,
	dataf => \u1|ALT_INV_Add1~49_sumout\,
	combout => \u1|count~13_combout\);

-- Location: FF_X18_Y44_N20
\u1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~13_combout\,
	clrn => \RST~input_o\,
	sclr => \u1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(1));

-- Location: LABCELL_X18_Y44_N33
\u1|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~45_sumout\ = SUM(( \u1|count\(2) ) + ( VCC ) + ( \u1|Add1~50\ ))
-- \u1|Add1~46\ = CARRY(( \u1|count\(2) ) + ( VCC ) + ( \u1|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_count\(2),
	cin => \u1|Add1~50\,
	sumout => \u1|Add1~45_sumout\,
	cout => \u1|Add1~46\);

-- Location: LABCELL_X18_Y44_N21
\u1|count~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~12_combout\ = ( \u1|Add1~45_sumout\ & ( (!\u1|rate_state~q\) # (\u1|Add0~49_sumout\) ) ) # ( !\u1|Add1~45_sumout\ & ( (\u1|rate_state~q\ & \u1|Add0~49_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_rate_state~q\,
	datad => \u1|ALT_INV_Add0~49_sumout\,
	dataf => \u1|ALT_INV_Add1~45_sumout\,
	combout => \u1|count~12_combout\);

-- Location: FF_X18_Y44_N23
\u1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~12_combout\,
	clrn => \RST~input_o\,
	sclr => \u1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(2));

-- Location: LABCELL_X18_Y44_N36
\u1|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~41_sumout\ = SUM(( \u1|count\(3) ) + ( VCC ) + ( \u1|Add1~46\ ))
-- \u1|Add1~42\ = CARRY(( \u1|count\(3) ) + ( VCC ) + ( \u1|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_count\(3),
	cin => \u1|Add1~46\,
	sumout => \u1|Add1~41_sumout\,
	cout => \u1|Add1~42\);

-- Location: LABCELL_X18_Y44_N12
\u1|count~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~11_combout\ = (!\u1|rate_state~q\ & (\u1|Add1~41_sumout\)) # (\u1|rate_state~q\ & ((\u1|Add0~45_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_rate_state~q\,
	datac => \u1|ALT_INV_Add1~41_sumout\,
	datad => \u1|ALT_INV_Add0~45_sumout\,
	combout => \u1|count~11_combout\);

-- Location: FF_X18_Y44_N14
\u1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~11_combout\,
	clrn => \RST~input_o\,
	sclr => \u1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(3));

-- Location: LABCELL_X18_Y44_N39
\u1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~5_sumout\ = SUM(( \u1|count\(4) ) + ( VCC ) + ( \u1|Add1~42\ ))
-- \u1|Add1~6\ = CARRY(( \u1|count\(4) ) + ( VCC ) + ( \u1|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_count\(4),
	cin => \u1|Add1~42\,
	sumout => \u1|Add1~5_sumout\,
	cout => \u1|Add1~6\);

-- Location: LABCELL_X18_Y44_N0
\u1|count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~2_combout\ = ( \u1|Add0~9_sumout\ & ( (\u1|Add1~5_sumout\) # (\u1|rate_state~q\) ) ) # ( !\u1|Add0~9_sumout\ & ( (!\u1|rate_state~q\ & \u1|Add1~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_rate_state~q\,
	datab => \u1|ALT_INV_Add1~5_sumout\,
	dataf => \u1|ALT_INV_Add0~9_sumout\,
	combout => \u1|count~2_combout\);

-- Location: FF_X18_Y44_N2
\u1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~2_combout\,
	clrn => \RST~input_o\,
	sclr => \u1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(4));

-- Location: LABCELL_X18_Y44_N42
\u1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~9_sumout\ = SUM(( \u1|count\(5) ) + ( VCC ) + ( \u1|Add1~6\ ))
-- \u1|Add1~10\ = CARRY(( \u1|count\(5) ) + ( VCC ) + ( \u1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(5),
	cin => \u1|Add1~6\,
	sumout => \u1|Add1~9_sumout\,
	cout => \u1|Add1~10\);

-- Location: LABCELL_X18_Y44_N3
\u1|count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~3_combout\ = (!\u1|rate_state~q\ & (\u1|Add1~9_sumout\)) # (\u1|rate_state~q\ & ((\u1|Add0~13_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_rate_state~q\,
	datac => \u1|ALT_INV_Add1~9_sumout\,
	datad => \u1|ALT_INV_Add0~13_sumout\,
	combout => \u1|count~3_combout\);

-- Location: FF_X18_Y44_N5
\u1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~3_combout\,
	clrn => \RST~input_o\,
	sclr => \u1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(5));

-- Location: LABCELL_X18_Y44_N45
\u1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~1_sumout\ = SUM(( !\u1|count\(6) ) + ( VCC ) + ( \u1|Add1~10\ ))
-- \u1|Add1~2\ = CARRY(( !\u1|count\(6) ) + ( VCC ) + ( \u1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(6),
	cin => \u1|Add1~10\,
	sumout => \u1|Add1~1_sumout\,
	cout => \u1|Add1~2\);

-- Location: MLABCELL_X19_Y44_N36
\u1|count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~0_combout\ = ( \u1|rate_state~q\ & ( \u1|Equal0~0_combout\ & ( (!\u1|Add0~1_sumout\ & ((!\u1|Equal0~1_combout\) # (!\u1|LessThan0~2_combout\))) ) ) ) # ( !\u1|rate_state~q\ & ( \u1|Equal0~0_combout\ & ( (!\u1|Add1~1_sumout\ & 
-- ((!\u1|Equal0~1_combout\) # (!\u1|LessThan0~2_combout\))) ) ) ) # ( \u1|rate_state~q\ & ( !\u1|Equal0~0_combout\ & ( !\u1|Add0~1_sumout\ ) ) ) # ( !\u1|rate_state~q\ & ( !\u1|Equal0~0_combout\ & ( !\u1|Add1~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111111110000000010101000101010001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_Add1~1_sumout\,
	datab => \u1|ALT_INV_Equal0~1_combout\,
	datac => \u1|ALT_INV_LessThan0~2_combout\,
	datad => \u1|ALT_INV_Add0~1_sumout\,
	datae => \u1|ALT_INV_rate_state~q\,
	dataf => \u1|ALT_INV_Equal0~0_combout\,
	combout => \u1|count~0_combout\);

-- Location: FF_X19_Y44_N38
\u1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(6));

-- Location: LABCELL_X18_Y44_N48
\u1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~17_sumout\ = SUM(( \u1|count\(7) ) + ( VCC ) + ( \u1|Add1~2\ ))
-- \u1|Add1~18\ = CARRY(( \u1|count\(7) ) + ( VCC ) + ( \u1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(7),
	cin => \u1|Add1~2\,
	sumout => \u1|Add1~17_sumout\,
	cout => \u1|Add1~18\);

-- Location: MLABCELL_X19_Y44_N30
\u1|count~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~5_combout\ = (!\u1|rate_state~q\ & (\u1|Add1~17_sumout\)) # (\u1|rate_state~q\ & ((\u1|Add0~21_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_Add1~17_sumout\,
	datac => \u1|ALT_INV_rate_state~q\,
	datad => \u1|ALT_INV_Add0~21_sumout\,
	combout => \u1|count~5_combout\);

-- Location: FF_X19_Y44_N32
\u1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~5_combout\,
	clrn => \RST~input_o\,
	sclr => \u1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(7));

-- Location: LABCELL_X18_Y44_N51
\u1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~21_sumout\ = SUM(( \u1|count\(8) ) + ( VCC ) + ( \u1|Add1~18\ ))
-- \u1|Add1~22\ = CARRY(( \u1|count\(8) ) + ( VCC ) + ( \u1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(8),
	cin => \u1|Add1~18\,
	sumout => \u1|Add1~21_sumout\,
	cout => \u1|Add1~22\);

-- Location: LABCELL_X18_Y44_N9
\u1|count~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~6_combout\ = (!\u1|rate_state~q\ & (\u1|Add1~21_sumout\)) # (\u1|rate_state~q\ & ((\u1|Add0~25_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_rate_state~q\,
	datac => \u1|ALT_INV_Add1~21_sumout\,
	datad => \u1|ALT_INV_Add0~25_sumout\,
	combout => \u1|count~6_combout\);

-- Location: FF_X18_Y44_N11
\u1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~6_combout\,
	clrn => \RST~input_o\,
	sclr => \u1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(8));

-- Location: LABCELL_X18_Y44_N54
\u1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~25_sumout\ = SUM(( \u1|count\(9) ) + ( VCC ) + ( \u1|Add1~22\ ))
-- \u1|Add1~26\ = CARRY(( \u1|count\(9) ) + ( VCC ) + ( \u1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_count\(9),
	cin => \u1|Add1~22\,
	sumout => \u1|Add1~25_sumout\,
	cout => \u1|Add1~26\);

-- Location: LABCELL_X18_Y44_N6
\u1|count~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~7_combout\ = ( \u1|Add0~29_sumout\ & ( (\u1|Add1~25_sumout\) # (\u1|rate_state~q\) ) ) # ( !\u1|Add0~29_sumout\ & ( (!\u1|rate_state~q\ & \u1|Add1~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_rate_state~q\,
	datac => \u1|ALT_INV_Add1~25_sumout\,
	dataf => \u1|ALT_INV_Add0~29_sumout\,
	combout => \u1|count~7_combout\);

-- Location: FF_X18_Y44_N8
\u1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~7_combout\,
	clrn => \RST~input_o\,
	sclr => \u1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(9));

-- Location: LABCELL_X18_Y44_N57
\u1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~29_sumout\ = SUM(( \u1|count\(10) ) + ( VCC ) + ( \u1|Add1~26\ ))
-- \u1|Add1~30\ = CARRY(( \u1|count\(10) ) + ( VCC ) + ( \u1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(10),
	cin => \u1|Add1~26\,
	sumout => \u1|Add1~29_sumout\,
	cout => \u1|Add1~30\);

-- Location: LABCELL_X18_Y44_N15
\u1|count~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~8_combout\ = (!\u1|rate_state~q\ & (\u1|Add1~29_sumout\)) # (\u1|rate_state~q\ & ((\u1|Add0~33_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_rate_state~q\,
	datac => \u1|ALT_INV_Add1~29_sumout\,
	datad => \u1|ALT_INV_Add0~33_sumout\,
	combout => \u1|count~8_combout\);

-- Location: FF_X18_Y44_N17
\u1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~8_combout\,
	clrn => \RST~input_o\,
	sclr => \u1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(10));

-- Location: LABCELL_X18_Y43_N0
\u1|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~93_sumout\ = SUM(( !\u1|count\(11) ) + ( VCC ) + ( \u1|Add1~30\ ))
-- \u1|Add1~94\ = CARRY(( !\u1|count\(11) ) + ( VCC ) + ( \u1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(11),
	cin => \u1|Add1~30\,
	sumout => \u1|Add1~93_sumout\,
	cout => \u1|Add1~94\);

-- Location: LABCELL_X18_Y43_N3
\u1|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~89_sumout\ = SUM(( !\u1|count\(12) ) + ( VCC ) + ( \u1|Add1~94\ ))
-- \u1|Add1~90\ = CARRY(( !\u1|count\(12) ) + ( VCC ) + ( \u1|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(12),
	cin => \u1|Add1~94\,
	sumout => \u1|Add1~89_sumout\,
	cout => \u1|Add1~90\);

-- Location: LABCELL_X21_Y43_N57
\u1|count~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~23_combout\ = ( \u1|Add0~93_sumout\ & ( (!\u1|LessThan0~3_combout\ & (!\u1|rate_state~q\ & !\u1|Add1~89_sumout\)) ) ) # ( !\u1|Add0~93_sumout\ & ( (!\u1|LessThan0~3_combout\ & ((!\u1|Add1~89_sumout\) # (\u1|rate_state~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010100010101000101010001010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan0~3_combout\,
	datab => \u1|ALT_INV_rate_state~q\,
	datac => \u1|ALT_INV_Add1~89_sumout\,
	dataf => \u1|ALT_INV_Add0~93_sumout\,
	combout => \u1|count~23_combout\);

-- Location: FF_X21_Y43_N59
\u1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~23_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(12));

-- Location: LABCELL_X18_Y43_N6
\u1|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~85_sumout\ = SUM(( !\u1|count\(13) ) + ( VCC ) + ( \u1|Add1~90\ ))
-- \u1|Add1~86\ = CARRY(( !\u1|count\(13) ) + ( VCC ) + ( \u1|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_count\(13),
	cin => \u1|Add1~90\,
	sumout => \u1|Add1~85_sumout\,
	cout => \u1|Add1~86\);

-- Location: LABCELL_X21_Y43_N54
\u1|count~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~22_combout\ = (!\u1|LessThan0~3_combout\ & ((!\u1|rate_state~q\ & (!\u1|Add1~85_sumout\)) # (\u1|rate_state~q\ & ((!\u1|Add0~89_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010000000101000101000000010100010100000001010001010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan0~3_combout\,
	datab => \u1|ALT_INV_rate_state~q\,
	datac => \u1|ALT_INV_Add1~85_sumout\,
	datad => \u1|ALT_INV_Add0~89_sumout\,
	combout => \u1|count~22_combout\);

-- Location: FF_X21_Y43_N56
\u1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~22_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(13));

-- Location: LABCELL_X18_Y43_N9
\u1|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~81_sumout\ = SUM(( !\u1|count\(14) ) + ( VCC ) + ( \u1|Add1~86\ ))
-- \u1|Add1~82\ = CARRY(( !\u1|count\(14) ) + ( VCC ) + ( \u1|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_count\(14),
	cin => \u1|Add1~86\,
	sumout => \u1|Add1~81_sumout\,
	cout => \u1|Add1~82\);

-- Location: LABCELL_X21_Y43_N18
\u1|count~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~21_combout\ = ( \u1|Add0~85_sumout\ & ( (!\u1|LessThan0~3_combout\ & (!\u1|rate_state~q\ & !\u1|Add1~81_sumout\)) ) ) # ( !\u1|Add0~85_sumout\ & ( (!\u1|LessThan0~3_combout\ & ((!\u1|Add1~81_sumout\) # (\u1|rate_state~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010100010101000101010001010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan0~3_combout\,
	datab => \u1|ALT_INV_rate_state~q\,
	datac => \u1|ALT_INV_Add1~81_sumout\,
	dataf => \u1|ALT_INV_Add0~85_sumout\,
	combout => \u1|count~21_combout\);

-- Location: FF_X21_Y43_N20
\u1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~21_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(14));

-- Location: LABCELL_X18_Y43_N12
\u1|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~33_sumout\ = SUM(( \u1|count\(15) ) + ( VCC ) + ( \u1|Add1~82\ ))
-- \u1|Add1~34\ = CARRY(( \u1|count\(15) ) + ( VCC ) + ( \u1|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(15),
	cin => \u1|Add1~82\,
	sumout => \u1|Add1~33_sumout\,
	cout => \u1|Add1~34\);

-- Location: LABCELL_X18_Y43_N51
\u1|count~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~9_combout\ = ( \u1|rate_state~q\ & ( \u1|Add0~37_sumout\ ) ) # ( !\u1|rate_state~q\ & ( \u1|Add1~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_Add1~33_sumout\,
	datad => \u1|ALT_INV_Add0~37_sumout\,
	dataf => \u1|ALT_INV_rate_state~q\,
	combout => \u1|count~9_combout\);

-- Location: FF_X18_Y43_N53
\u1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~9_combout\,
	clrn => \RST~input_o\,
	sclr => \u1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(15));

-- Location: LABCELL_X18_Y43_N15
\u1|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~77_sumout\ = SUM(( !\u1|count\(16) ) + ( VCC ) + ( \u1|Add1~34\ ))
-- \u1|Add1~78\ = CARRY(( !\u1|count\(16) ) + ( VCC ) + ( \u1|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(16),
	cin => \u1|Add1~34\,
	sumout => \u1|Add1~77_sumout\,
	cout => \u1|Add1~78\);

-- Location: LABCELL_X21_Y43_N42
\u1|count~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~20_combout\ = (!\u1|LessThan0~3_combout\ & ((!\u1|rate_state~q\ & (!\u1|Add1~77_sumout\)) # (\u1|rate_state~q\ & ((!\u1|Add0~81_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010000000101000101000000010100010100000001010001010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan0~3_combout\,
	datab => \u1|ALT_INV_rate_state~q\,
	datac => \u1|ALT_INV_Add1~77_sumout\,
	datad => \u1|ALT_INV_Add0~81_sumout\,
	combout => \u1|count~20_combout\);

-- Location: FF_X21_Y43_N44
\u1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~20_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(16));

-- Location: LABCELL_X18_Y43_N18
\u1|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~37_sumout\ = SUM(( \u1|count\(17) ) + ( VCC ) + ( \u1|Add1~78\ ))
-- \u1|Add1~38\ = CARRY(( \u1|count\(17) ) + ( VCC ) + ( \u1|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_count\(17),
	cin => \u1|Add1~78\,
	sumout => \u1|Add1~37_sumout\,
	cout => \u1|Add1~38\);

-- Location: LABCELL_X21_Y43_N0
\u1|count~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~10_combout\ = ( \u1|Add0~41_sumout\ & ( (\u1|rate_state~q\) # (\u1|Add1~37_sumout\) ) ) # ( !\u1|Add0~41_sumout\ & ( (\u1|Add1~37_sumout\ & !\u1|rate_state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_Add1~37_sumout\,
	datad => \u1|ALT_INV_rate_state~q\,
	dataf => \u1|ALT_INV_Add0~41_sumout\,
	combout => \u1|count~10_combout\);

-- Location: FF_X21_Y43_N2
\u1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~10_combout\,
	clrn => \RST~input_o\,
	sclr => \u1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(17));

-- Location: MLABCELL_X19_Y43_N57
\u1|count~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~19_combout\ = ( \u1|Add0~77_sumout\ & ( (!\u1|rate_state~q\ & (!\u1|LessThan0~3_combout\ & !\u1|Add1~73_sumout\)) ) ) # ( !\u1|Add0~77_sumout\ & ( (!\u1|LessThan0~3_combout\ & ((!\u1|Add1~73_sumout\) # (\u1|rate_state~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010000111100000101000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_rate_state~q\,
	datac => \u1|ALT_INV_LessThan0~3_combout\,
	datad => \u1|ALT_INV_Add1~73_sumout\,
	dataf => \u1|ALT_INV_Add0~77_sumout\,
	combout => \u1|count~19_combout\);

-- Location: FF_X19_Y43_N59
\u1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~19_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(18));

-- Location: MLABCELL_X19_Y44_N54
\u1|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan0~3_combout\ = ( \u1|count\(6) & ( \u1|Equal0~0_combout\ & ( (\u1|count\(18) & (\u1|Equal0~1_combout\ & (\u1|LessThan0~0_combout\ & \u1|LessThan0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_count\(18),
	datab => \u1|ALT_INV_Equal0~1_combout\,
	datac => \u1|ALT_INV_LessThan0~0_combout\,
	datad => \u1|ALT_INV_LessThan0~1_combout\,
	datae => \u1|ALT_INV_count\(6),
	dataf => \u1|ALT_INV_Equal0~0_combout\,
	combout => \u1|LessThan0~3_combout\);

-- Location: LABCELL_X21_Y43_N21
\u1|count~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|count~24_combout\ = (!\u1|LessThan0~3_combout\ & ((!\u1|rate_state~q\ & (!\u1|Add1~93_sumout\)) # (\u1|rate_state~q\ & ((!\u1|Add0~97_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010000000101000101000000010100010100000001010001010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan0~3_combout\,
	datab => \u1|ALT_INV_rate_state~q\,
	datac => \u1|ALT_INV_Add1~93_sumout\,
	datad => \u1|ALT_INV_Add0~97_sumout\,
	combout => \u1|count~24_combout\);

-- Location: FF_X21_Y43_N23
\u1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|count~24_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(11));

-- Location: LABCELL_X21_Y43_N27
\u1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Equal0~3_combout\ = ( !\u1|count\(14) & ( (!\u1|count\(11) & (!\u1|count\(16) & (!\u1|count\(12) & !\u1|count\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_count\(11),
	datab => \u1|ALT_INV_count\(16),
	datac => \u1|ALT_INV_count\(12),
	datad => \u1|ALT_INV_count\(13),
	dataf => \u1|ALT_INV_count\(14),
	combout => \u1|Equal0~3_combout\);

-- Location: LABCELL_X18_Y43_N54
\u1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Equal0~2_combout\ = ( !\u1|count\(21) & ( !\u1|count\(22) & ( (!\u1|count\(24) & (!\u1|count\(20) & (!\u1|count\(18) & !\u1|count\(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_count\(24),
	datab => \u1|ALT_INV_count\(20),
	datac => \u1|ALT_INV_count\(18),
	datad => \u1|ALT_INV_count\(19),
	datae => \u1|ALT_INV_count\(21),
	dataf => \u1|ALT_INV_count\(22),
	combout => \u1|Equal0~2_combout\);

-- Location: LABCELL_X21_Y43_N36
\u1|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Equal0~4_combout\ = ( \u1|Equal0~1_combout\ & ( \u1|Equal0~2_combout\ & ( (\u1|Equal0~3_combout\ & (\u1|Equal0~0_combout\ & (!\u1|count\(6) & !\u1|count\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_Equal0~3_combout\,
	datab => \u1|ALT_INV_Equal0~0_combout\,
	datac => \u1|ALT_INV_count\(6),
	datad => \u1|ALT_INV_count\(0),
	datae => \u1|ALT_INV_Equal0~1_combout\,
	dataf => \u1|ALT_INV_Equal0~2_combout\,
	combout => \u1|Equal0~4_combout\);

-- Location: FF_X21_Y43_N38
\u1|PULSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u1|Equal0~4_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|PULSE~q\);

-- Location: FF_X21_Y43_N14
\u3|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|shift_reg~1_combout\,
	clrn => \RST~input_o\,
	ena => \u1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|shift_reg\(1));

-- Location: LABCELL_X21_Y43_N15
\u3|shift_reg~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|shift_reg~2_combout\ = ( \u3|shift_reg\(3) & ( (\u2|dir~q\) # (\u3|shift_reg\(1)) ) ) # ( !\u3|shift_reg\(3) & ( (\u3|shift_reg\(1) & !\u2|dir~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|ALT_INV_shift_reg\(1),
	datad => \u2|ALT_INV_dir~q\,
	dataf => \u3|ALT_INV_shift_reg\(3),
	combout => \u3|shift_reg~2_combout\);

-- Location: FF_X21_Y43_N17
\u3|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|shift_reg~2_combout\,
	clrn => \RST~input_o\,
	ena => \u1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|shift_reg\(2));

-- Location: LABCELL_X21_Y43_N48
\u3|shift_reg~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|shift_reg~3_combout\ = (!\u2|dir~q\ & (\u3|shift_reg\(2))) # (\u2|dir~q\ & ((\u3|shift_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|ALT_INV_shift_reg\(2),
	datac => \u3|ALT_INV_shift_reg\(4),
	datad => \u2|ALT_INV_dir~q\,
	combout => \u3|shift_reg~3_combout\);

-- Location: FF_X21_Y43_N50
\u3|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|shift_reg~3_combout\,
	clrn => \RST~input_o\,
	ena => \u1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|shift_reg\(3));

-- Location: LABCELL_X21_Y43_N51
\u3|shift_reg~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|shift_reg~4_combout\ = ( \u3|shift_reg\(5) & ( (\u2|dir~q\) # (\u3|shift_reg\(3)) ) ) # ( !\u3|shift_reg\(5) & ( (\u3|shift_reg\(3) & !\u2|dir~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_shift_reg\(3),
	datad => \u2|ALT_INV_dir~q\,
	dataf => \u3|ALT_INV_shift_reg\(5),
	combout => \u3|shift_reg~4_combout\);

-- Location: FF_X21_Y43_N53
\u3|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|shift_reg~4_combout\,
	clrn => \RST~input_o\,
	ena => \u1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|shift_reg\(4));

-- Location: LABCELL_X21_Y43_N24
\u3|shift_reg~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|shift_reg~5_combout\ = ( \u3|shift_reg\(6) & ( (\u2|dir~q\) # (\u3|shift_reg\(4)) ) ) # ( !\u3|shift_reg\(6) & ( (\u3|shift_reg\(4) & !\u2|dir~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|ALT_INV_shift_reg\(4),
	datad => \u2|ALT_INV_dir~q\,
	dataf => \u3|ALT_INV_shift_reg\(6),
	combout => \u3|shift_reg~5_combout\);

-- Location: FF_X21_Y43_N26
\u3|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|shift_reg~5_combout\,
	clrn => \RST~input_o\,
	ena => \u1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|shift_reg\(5));

-- Location: LABCELL_X21_Y43_N30
\u3|shift_reg~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|shift_reg~6_combout\ = ( \u3|shift_reg\(5) & ( (!\u2|dir~q\) # (\u3|shift_reg\(7)) ) ) # ( !\u3|shift_reg\(5) & ( (\u3|shift_reg\(7) & \u2|dir~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|ALT_INV_shift_reg\(7),
	datad => \u2|ALT_INV_dir~q\,
	dataf => \u3|ALT_INV_shift_reg\(5),
	combout => \u3|shift_reg~6_combout\);

-- Location: FF_X21_Y43_N32
\u3|shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|shift_reg~6_combout\,
	clrn => \RST~input_o\,
	ena => \u1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|shift_reg\(6));

-- Location: LABCELL_X21_Y43_N9
\u3|shift_reg~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|shift_reg~7_combout\ = ( \u3|shift_reg\(6) & ( (!\u3|shift_reg\(0)) # (!\u2|dir~q\) ) ) # ( !\u3|shift_reg\(6) & ( (!\u3|shift_reg\(0) & \u2|dir~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|ALT_INV_shift_reg\(0),
	datad => \u2|ALT_INV_dir~q\,
	dataf => \u3|ALT_INV_shift_reg\(6),
	combout => \u3|shift_reg~7_combout\);

-- Location: FF_X21_Y43_N11
\u3|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|shift_reg~7_combout\,
	clrn => \RST~input_o\,
	ena => \u1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|shift_reg\(7));

-- Location: LABCELL_X21_Y43_N6
\u3|shift_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|shift_reg~0_combout\ = ( \u3|shift_reg\(1) & ( (!\u3|shift_reg\(7) & !\u2|dir~q\) ) ) # ( !\u3|shift_reg\(1) & ( (!\u3|shift_reg\(7)) # (\u2|dir~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|ALT_INV_shift_reg\(7),
	datad => \u2|ALT_INV_dir~q\,
	dataf => \u3|ALT_INV_shift_reg\(1),
	combout => \u3|shift_reg~0_combout\);

-- Location: FF_X21_Y43_N8
\u3|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \u3|shift_reg~0_combout\,
	clrn => \RST~input_o\,
	ena => \u1|PULSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|shift_reg\(0));

-- Location: MLABCELL_X60_Y57_N3
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


