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

-- DATE "12/08/2024 10:31:47"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
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

ENTITY 	TopTestGame IS
    PORT (
	CLOCK_50 : IN std_logic;
	reset : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(3 DOWNTO 0)
	);
END TopTestGame;

-- Design Ports Information
-- SW[3]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TopTestGame IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \random_gen|lfsr[1]~5_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \random_gen|lfsr[0]~1_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \random_gen|lfsr[3]~13_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \random_gen|lfsr[2]~9_combout\ : std_logic;
SIGNAL \random_gen|lfsr[2]~11_combout\ : std_logic;
SIGNAL \random_gen|lfsr[2]~_emulated_q\ : std_logic;
SIGNAL \random_gen|lfsr[2]~10_combout\ : std_logic;
SIGNAL \random_gen|lfsr[3]~15_combout\ : std_logic;
SIGNAL \random_gen|lfsr[3]~_emulated_q\ : std_logic;
SIGNAL \random_gen|lfsr[3]~14_combout\ : std_logic;
SIGNAL \random_gen|lfsr~20_combout\ : std_logic;
SIGNAL \random_gen|lfsr[0]~3_combout\ : std_logic;
SIGNAL \random_gen|lfsr[0]~_emulated_q\ : std_logic;
SIGNAL \random_gen|lfsr[0]~2_combout\ : std_logic;
SIGNAL \random_gen|lfsr[1]~7_combout\ : std_logic;
SIGNAL \random_gen|lfsr[1]~_emulated_q\ : std_logic;
SIGNAL \random_gen|lfsr[1]~6_combout\ : std_logic;
SIGNAL \fsm_inst|HEX0_inst|Mux6~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX0_inst|Mux5~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX0_inst|Mux4~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX0_inst|Mux3~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX0_inst|Mux2~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX0_inst|Mux1~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX0_inst|Mux0~0_combout\ : std_logic;
SIGNAL \prescaler|Add0~73_sumout\ : std_logic;
SIGNAL \prescaler|Add0~2\ : std_logic;
SIGNAL \prescaler|Add0~5_sumout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \prescaler|Mux2~0_combout\ : std_logic;
SIGNAL \prescaler|Equal0~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \prescaler|N[16]~0_combout\ : std_logic;
SIGNAL \prescaler|Mux1~0_combout\ : std_logic;
SIGNAL \prescaler|Mux3~0_combout\ : std_logic;
SIGNAL \prescaler|N[7]~feeder_combout\ : std_logic;
SIGNAL \prescaler|Equal1~0_combout\ : std_logic;
SIGNAL \prescaler|counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|Mux0~0_combout\ : std_logic;
SIGNAL \prescaler|N[13]~1_combout\ : std_logic;
SIGNAL \prescaler|N[12]~feeder_combout\ : std_logic;
SIGNAL \prescaler|Add0~6\ : std_logic;
SIGNAL \prescaler|Add0~9_sumout\ : std_logic;
SIGNAL \prescaler|counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|Add0~10\ : std_logic;
SIGNAL \prescaler|Add0~13_sumout\ : std_logic;
SIGNAL \prescaler|Equal1~1_combout\ : std_logic;
SIGNAL \prescaler|Add0~14\ : std_logic;
SIGNAL \prescaler|Add0~17_sumout\ : std_logic;
SIGNAL \prescaler|Add0~18\ : std_logic;
SIGNAL \prescaler|Add0~21_sumout\ : std_logic;
SIGNAL \prescaler|Add0~22\ : std_logic;
SIGNAL \prescaler|Add0~25_sumout\ : std_logic;
SIGNAL \prescaler|Mux4~0_combout\ : std_logic;
SIGNAL \prescaler|N[0]~2_combout\ : std_logic;
SIGNAL \prescaler|Equal1~3_combout\ : std_logic;
SIGNAL \prescaler|N[17]~4_combout\ : std_logic;
SIGNAL \prescaler|Add0~26\ : std_logic;
SIGNAL \prescaler|Add0~29_sumout\ : std_logic;
SIGNAL \prescaler|Equal1~5_combout\ : std_logic;
SIGNAL \prescaler|counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|N[14]~3_combout\ : std_logic;
SIGNAL \prescaler|Equal1~4_combout\ : std_logic;
SIGNAL \prescaler|Equal1~2_combout\ : std_logic;
SIGNAL \prescaler|Equal1~6_combout\ : std_logic;
SIGNAL \prescaler|Equal1~7_combout\ : std_logic;
SIGNAL \prescaler|Add0~74\ : std_logic;
SIGNAL \prescaler|Add0~69_sumout\ : std_logic;
SIGNAL \prescaler|Add0~70\ : std_logic;
SIGNAL \prescaler|Add0~65_sumout\ : std_logic;
SIGNAL \prescaler|Add0~66\ : std_logic;
SIGNAL \prescaler|Add0~81_sumout\ : std_logic;
SIGNAL \prescaler|Add0~82\ : std_logic;
SIGNAL \prescaler|Add0~77_sumout\ : std_logic;
SIGNAL \prescaler|Add0~78\ : std_logic;
SIGNAL \prescaler|Add0~97_sumout\ : std_logic;
SIGNAL \prescaler|counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|Add0~98\ : std_logic;
SIGNAL \prescaler|Add0~93_sumout\ : std_logic;
SIGNAL \prescaler|Add0~94\ : std_logic;
SIGNAL \prescaler|Add0~45_sumout\ : std_logic;
SIGNAL \prescaler|Add0~46\ : std_logic;
SIGNAL \prescaler|Add0~41_sumout\ : std_logic;
SIGNAL \prescaler|Add0~42\ : std_logic;
SIGNAL \prescaler|Add0~61_sumout\ : std_logic;
SIGNAL \prescaler|Add0~62\ : std_logic;
SIGNAL \prescaler|Add0~37_sumout\ : std_logic;
SIGNAL \prescaler|counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|Add0~38\ : std_logic;
SIGNAL \prescaler|Add0~57_sumout\ : std_logic;
SIGNAL \prescaler|Add0~58\ : std_logic;
SIGNAL \prescaler|Add0~53_sumout\ : std_logic;
SIGNAL \prescaler|Add0~54\ : std_logic;
SIGNAL \prescaler|Add0~49_sumout\ : std_logic;
SIGNAL \prescaler|Add0~50\ : std_logic;
SIGNAL \prescaler|Add0~89_sumout\ : std_logic;
SIGNAL \prescaler|Add0~90\ : std_logic;
SIGNAL \prescaler|Add0~85_sumout\ : std_logic;
SIGNAL \prescaler|Add0~86\ : std_logic;
SIGNAL \prescaler|Add0~33_sumout\ : std_logic;
SIGNAL \prescaler|Add0~34\ : std_logic;
SIGNAL \prescaler|Add0~1_sumout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \fsm_inst|next_state.Setup~feeder_combout\ : std_logic;
SIGNAL \fsm_inst|next_state.Setup~q\ : std_logic;
SIGNAL \fsm_inst|current_state.Setup~q\ : std_logic;
SIGNAL \fsm_inst|current_state.WaitForStart~q\ : std_logic;
SIGNAL \fsm_inst|Selector33~0_combout\ : std_logic;
SIGNAL \fsm_inst|next_state.WaitForStart~q\ : std_logic;
SIGNAL \fsm_inst|current_state.WaitForStart~DUPLICATE_q\ : std_logic;
SIGNAL \fsm_inst|Add0~117_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector31~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~118\ : std_logic;
SIGNAL \fsm_inst|Add0~121_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector30~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~122\ : std_logic;
SIGNAL \fsm_inst|Add0~113_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector29~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~114\ : std_logic;
SIGNAL \fsm_inst|Add0~2\ : std_logic;
SIGNAL \fsm_inst|Add0~17_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector27~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~18\ : std_logic;
SIGNAL \fsm_inst|Add0~13_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector26~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~14\ : std_logic;
SIGNAL \fsm_inst|Add0~9_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector25~0_combout\ : std_logic;
SIGNAL \fsm_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~10\ : std_logic;
SIGNAL \fsm_inst|Add0~41_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector24~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~42\ : std_logic;
SIGNAL \fsm_inst|Add0~37_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector23~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~38\ : std_logic;
SIGNAL \fsm_inst|Add0~33_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector22~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~34\ : std_logic;
SIGNAL \fsm_inst|Add0~29_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector21~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~30\ : std_logic;
SIGNAL \fsm_inst|Add0~25_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector20~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~26\ : std_logic;
SIGNAL \fsm_inst|Add0~21_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector19~0_combout\ : std_logic;
SIGNAL \fsm_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~22\ : std_logic;
SIGNAL \fsm_inst|Add0~65_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector18~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~66\ : std_logic;
SIGNAL \fsm_inst|Add0~61_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector17~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~62\ : std_logic;
SIGNAL \fsm_inst|Add0~57_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector16~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~58\ : std_logic;
SIGNAL \fsm_inst|Add0~53_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector15~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~54\ : std_logic;
SIGNAL \fsm_inst|Add0~49_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector14~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~50\ : std_logic;
SIGNAL \fsm_inst|Add0~45_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector13~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~46\ : std_logic;
SIGNAL \fsm_inst|Add0~5_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector12~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~6\ : std_logic;
SIGNAL \fsm_inst|Add0~109_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector11~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~110\ : std_logic;
SIGNAL \fsm_inst|Add0~105_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector10~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~106\ : std_logic;
SIGNAL \fsm_inst|Add0~101_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector9~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~102\ : std_logic;
SIGNAL \fsm_inst|Add0~97_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector8~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~98\ : std_logic;
SIGNAL \fsm_inst|Add0~93_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector7~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~94\ : std_logic;
SIGNAL \fsm_inst|Add0~89_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector6~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~90\ : std_logic;
SIGNAL \fsm_inst|Add0~85_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector5~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~86\ : std_logic;
SIGNAL \fsm_inst|Add0~81_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector4~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~82\ : std_logic;
SIGNAL \fsm_inst|Add0~77_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector3~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~78\ : std_logic;
SIGNAL \fsm_inst|Add0~73_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector2~0_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~74\ : std_logic;
SIGNAL \fsm_inst|Add0~69_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector1~0_combout\ : std_logic;
SIGNAL \fsm_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \fsm_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \fsm_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \fsm_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \fsm_inst|LessThan0~9_combout\ : std_logic;
SIGNAL \fsm_inst|next_state.Setup~0_combout\ : std_logic;
SIGNAL \fsm_inst|LessThan0~7_combout\ : std_logic;
SIGNAL \fsm_inst|LessThan0~8_combout\ : std_logic;
SIGNAL \fsm_inst|next_state.Setup~1_combout\ : std_logic;
SIGNAL \fsm_inst|next_state.DisplayValues~q\ : std_logic;
SIGNAL \fsm_inst|current_state.DisplayValues~q\ : std_logic;
SIGNAL \fsm_inst|counter~2_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~70\ : std_logic;
SIGNAL \fsm_inst|Add0~125_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector0~0_combout\ : std_logic;
SIGNAL \fsm_inst|LessThan0~10_combout\ : std_logic;
SIGNAL \fsm_inst|Add0~1_sumout\ : std_logic;
SIGNAL \fsm_inst|Selector28~0_combout\ : std_logic;
SIGNAL \fsm_inst|LessThan0~6_combout\ : std_logic;
SIGNAL \fsm_inst|Selector34~0_combout\ : std_logic;
SIGNAL \fsm_inst|next_state.LatchValue~q\ : std_logic;
SIGNAL \fsm_inst|current_state.LatchValue~q\ : std_logic;
SIGNAL \fsm_inst|latched_clk_B_p1[3]~0_combout\ : std_logic;
SIGNAL \fsm_inst|latched_clk_B_p1[0]~reg0_q\ : std_logic;
SIGNAL \fsm_inst|latched_clk_B_p1[3]~reg0feeder_combout\ : std_logic;
SIGNAL \fsm_inst|latched_clk_B_p1[3]~reg0_q\ : std_logic;
SIGNAL \fsm_inst|latched_clk_B_p1[2]~reg0feeder_combout\ : std_logic;
SIGNAL \fsm_inst|latched_clk_B_p1[2]~reg0_q\ : std_logic;
SIGNAL \fsm_inst|latched_clk_B_p1[1]~reg0_q\ : std_logic;
SIGNAL \fsm_inst|HEX2_inst|Mux6~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX2_inst|Mux5~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX2_inst|Mux4~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX2_inst|Mux3~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX2_inst|Mux2~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX2_inst|Mux1~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX2_inst|Mux0~0_combout\ : std_logic;
SIGNAL \fsm_inst|latched_clk_A_p1[2]~reg0_q\ : std_logic;
SIGNAL \fsm_inst|latched_clk_A_p1[3]~reg0_q\ : std_logic;
SIGNAL \prescaler|counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \fsm_inst|latched_clk_A_p1[0]~reg0_q\ : std_logic;
SIGNAL \fsm_inst|latched_clk_A_p1[1]~reg0_q\ : std_logic;
SIGNAL \fsm_inst|HEX3_inst|Mux6~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX3_inst|Mux5~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX3_inst|Mux4~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX3_inst|Mux3~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX3_inst|Mux2~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX3_inst|Mux1~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX3_inst|Mux0~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX4_inst|Mux6~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX4_inst|Mux5~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX4_inst|Mux4~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX4_inst|Mux3~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX4_inst|Mux2~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX4_inst|Mux1~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX4_inst|Mux0~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX5_inst|Mux6~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX5_inst|Mux5~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX5_inst|Mux4~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX5_inst|Mux3~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX5_inst|Mux2~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX5_inst|Mux1~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX5_inst|Mux0~0_combout\ : std_logic;
SIGNAL \fsm_inst|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \prescaler|counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \prescaler|N\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \prescaler|SW_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \fsm_inst|ALT_INV_current_state.WaitForStart~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|ALT_INV_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|ALT_INV_counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|ALT_INV_counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|ALT_INV_counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|ALT_INV_counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|ALT_INV_counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \random_gen|ALT_INV_lfsr[3]~13_combout\ : std_logic;
SIGNAL \random_gen|ALT_INV_lfsr[2]~9_combout\ : std_logic;
SIGNAL \random_gen|ALT_INV_lfsr[1]~5_combout\ : std_logic;
SIGNAL \random_gen|ALT_INV_lfsr[0]~1_combout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_next_state.Setup~0_combout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_current_state.Setup~q\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_counter~2_combout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_current_state.DisplayValues~q\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_next_state.WaitForStart~q\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fsm_inst|ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_current_state.WaitForStart~q\ : std_logic;
SIGNAL \prescaler|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_SW_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \prescaler|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_next_state.LatchValue~q\ : std_logic;
SIGNAL \random_gen|ALT_INV_lfsr~20_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_N\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \prescaler|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_current_state.LatchValue~q\ : std_logic;
SIGNAL \random_gen|ALT_INV_lfsr[3]~14_combout\ : std_logic;
SIGNAL \random_gen|ALT_INV_lfsr[3]~_emulated_q\ : std_logic;
SIGNAL \random_gen|ALT_INV_lfsr[2]~10_combout\ : std_logic;
SIGNAL \random_gen|ALT_INV_lfsr[2]~_emulated_q\ : std_logic;
SIGNAL \random_gen|ALT_INV_lfsr[1]~6_combout\ : std_logic;
SIGNAL \random_gen|ALT_INV_lfsr[1]~_emulated_q\ : std_logic;
SIGNAL \random_gen|ALT_INV_lfsr[0]~2_combout\ : std_logic;
SIGNAL \random_gen|ALT_INV_lfsr[0]~_emulated_q\ : std_logic;
SIGNAL \fsm_inst|HEX5_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX4_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \fsm_inst|HEX3_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_latched_clk_A_p1[3]~reg0_q\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_latched_clk_A_p1[2]~reg0_q\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_latched_clk_A_p1[1]~reg0_q\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_latched_clk_A_p1[0]~reg0_q\ : std_logic;
SIGNAL \fsm_inst|HEX2_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_latched_clk_B_p1[3]~reg0_q\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_latched_clk_B_p1[2]~reg0_q\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_latched_clk_B_p1[1]~reg0_q\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_latched_clk_B_p1[0]~reg0_q\ : std_logic;
SIGNAL \fsm_inst|HEX0_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \fsm_inst|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \prescaler|ALT_INV_counter\ : std_logic_vector(24 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_reset <= reset;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\fsm_inst|ALT_INV_current_state.WaitForStart~DUPLICATE_q\ <= NOT \fsm_inst|current_state.WaitForStart~DUPLICATE_q\;
\prescaler|ALT_INV_counter[5]~DUPLICATE_q\ <= NOT \prescaler|counter[5]~DUPLICATE_q\;
\prescaler|ALT_INV_counter[15]~DUPLICATE_q\ <= NOT \prescaler|counter[15]~DUPLICATE_q\;
\prescaler|ALT_INV_counter[13]~DUPLICATE_q\ <= NOT \prescaler|counter[13]~DUPLICATE_q\;
\prescaler|ALT_INV_counter[10]~DUPLICATE_q\ <= NOT \prescaler|counter[10]~DUPLICATE_q\;
\prescaler|ALT_INV_counter[21]~DUPLICATE_q\ <= NOT \prescaler|counter[21]~DUPLICATE_q\;
\prescaler|ALT_INV_counter[19]~DUPLICATE_q\ <= NOT \prescaler|counter[19]~DUPLICATE_q\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\random_gen|ALT_INV_lfsr[3]~13_combout\ <= NOT \random_gen|lfsr[3]~13_combout\;
\random_gen|ALT_INV_lfsr[2]~9_combout\ <= NOT \random_gen|lfsr[2]~9_combout\;
\random_gen|ALT_INV_lfsr[1]~5_combout\ <= NOT \random_gen|lfsr[1]~5_combout\;
\random_gen|ALT_INV_lfsr[0]~1_combout\ <= NOT \random_gen|lfsr[0]~1_combout\;
\fsm_inst|ALT_INV_next_state.Setup~0_combout\ <= NOT \fsm_inst|next_state.Setup~0_combout\;
\fsm_inst|ALT_INV_current_state.Setup~q\ <= NOT \fsm_inst|current_state.Setup~q\;
\fsm_inst|ALT_INV_counter~2_combout\ <= NOT \fsm_inst|counter~2_combout\;
\fsm_inst|ALT_INV_current_state.DisplayValues~q\ <= NOT \fsm_inst|current_state.DisplayValues~q\;
\fsm_inst|ALT_INV_LessThan0~10_combout\ <= NOT \fsm_inst|LessThan0~10_combout\;
\fsm_inst|ALT_INV_next_state.WaitForStart~q\ <= NOT \fsm_inst|next_state.WaitForStart~q\;
\fsm_inst|ALT_INV_LessThan0~9_combout\ <= NOT \fsm_inst|LessThan0~9_combout\;
\fsm_inst|ALT_INV_counter\(31) <= NOT \fsm_inst|counter\(31);
\fsm_inst|ALT_INV_LessThan0~8_combout\ <= NOT \fsm_inst|LessThan0~8_combout\;
\fsm_inst|ALT_INV_counter\(1) <= NOT \fsm_inst|counter\(1);
\fsm_inst|ALT_INV_counter\(0) <= NOT \fsm_inst|counter\(0);
\fsm_inst|ALT_INV_LessThan0~7_combout\ <= NOT \fsm_inst|LessThan0~7_combout\;
\fsm_inst|ALT_INV_counter\(2) <= NOT \fsm_inst|counter\(2);
\fsm_inst|ALT_INV_LessThan0~6_combout\ <= NOT \fsm_inst|LessThan0~6_combout\;
\fsm_inst|ALT_INV_LessThan0~5_combout\ <= NOT \fsm_inst|LessThan0~5_combout\;
\fsm_inst|ALT_INV_LessThan0~4_combout\ <= NOT \fsm_inst|LessThan0~4_combout\;
\fsm_inst|ALT_INV_counter\(20) <= NOT \fsm_inst|counter\(20);
\fsm_inst|ALT_INV_counter\(21) <= NOT \fsm_inst|counter\(21);
\fsm_inst|ALT_INV_counter\(22) <= NOT \fsm_inst|counter\(22);
\fsm_inst|ALT_INV_counter\(23) <= NOT \fsm_inst|counter\(23);
\fsm_inst|ALT_INV_counter\(24) <= NOT \fsm_inst|counter\(24);
\fsm_inst|ALT_INV_LessThan0~3_combout\ <= NOT \fsm_inst|LessThan0~3_combout\;
\fsm_inst|ALT_INV_counter\(25) <= NOT \fsm_inst|counter\(25);
\fsm_inst|ALT_INV_counter\(26) <= NOT \fsm_inst|counter\(26);
\fsm_inst|ALT_INV_counter\(27) <= NOT \fsm_inst|counter\(27);
\fsm_inst|ALT_INV_counter\(28) <= NOT \fsm_inst|counter\(28);
\fsm_inst|ALT_INV_counter\(29) <= NOT \fsm_inst|counter\(29);
\fsm_inst|ALT_INV_counter\(30) <= NOT \fsm_inst|counter\(30);
\fsm_inst|ALT_INV_LessThan0~2_combout\ <= NOT \fsm_inst|LessThan0~2_combout\;
\fsm_inst|ALT_INV_counter\(13) <= NOT \fsm_inst|counter\(13);
\fsm_inst|ALT_INV_counter\(14) <= NOT \fsm_inst|counter\(14);
\fsm_inst|ALT_INV_counter\(15) <= NOT \fsm_inst|counter\(15);
\fsm_inst|ALT_INV_counter\(16) <= NOT \fsm_inst|counter\(16);
\fsm_inst|ALT_INV_counter\(17) <= NOT \fsm_inst|counter\(17);
\fsm_inst|ALT_INV_counter\(18) <= NOT \fsm_inst|counter\(18);
\fsm_inst|ALT_INV_LessThan0~1_combout\ <= NOT \fsm_inst|LessThan0~1_combout\;
\fsm_inst|ALT_INV_counter\(7) <= NOT \fsm_inst|counter\(7);
\fsm_inst|ALT_INV_counter\(8) <= NOT \fsm_inst|counter\(8);
\fsm_inst|ALT_INV_counter\(9) <= NOT \fsm_inst|counter\(9);
\fsm_inst|ALT_INV_counter\(10) <= NOT \fsm_inst|counter\(10);
\fsm_inst|ALT_INV_counter\(11) <= NOT \fsm_inst|counter\(11);
\fsm_inst|ALT_INV_counter\(12) <= NOT \fsm_inst|counter\(12);
\fsm_inst|ALT_INV_LessThan0~0_combout\ <= NOT \fsm_inst|LessThan0~0_combout\;
\fsm_inst|ALT_INV_counter\(4) <= NOT \fsm_inst|counter\(4);
\fsm_inst|ALT_INV_counter\(5) <= NOT \fsm_inst|counter\(5);
\fsm_inst|ALT_INV_counter\(6) <= NOT \fsm_inst|counter\(6);
\fsm_inst|ALT_INV_counter\(19) <= NOT \fsm_inst|counter\(19);
\fsm_inst|ALT_INV_counter\(3) <= NOT \fsm_inst|counter\(3);
\fsm_inst|ALT_INV_current_state.WaitForStart~q\ <= NOT \fsm_inst|current_state.WaitForStart~q\;
\prescaler|ALT_INV_Mux4~0_combout\ <= NOT \prescaler|Mux4~0_combout\;
\prescaler|ALT_INV_Mux1~0_combout\ <= NOT \prescaler|Mux1~0_combout\;
\prescaler|ALT_INV_Mux2~0_combout\ <= NOT \prescaler|Mux2~0_combout\;
\prescaler|ALT_INV_Mux3~0_combout\ <= NOT \prescaler|Mux3~0_combout\;
\prescaler|ALT_INV_Equal0~0_combout\ <= NOT \prescaler|Equal0~0_combout\;
\prescaler|ALT_INV_SW_reg\(1) <= NOT \prescaler|SW_reg\(1);
\prescaler|ALT_INV_SW_reg\(0) <= NOT \prescaler|SW_reg\(0);
\prescaler|ALT_INV_SW_reg\(2) <= NOT \prescaler|SW_reg\(2);
\prescaler|ALT_INV_Mux0~0_combout\ <= NOT \prescaler|Mux0~0_combout\;
\fsm_inst|ALT_INV_next_state.LatchValue~q\ <= NOT \fsm_inst|next_state.LatchValue~q\;
\random_gen|ALT_INV_lfsr~20_combout\ <= NOT \random_gen|lfsr~20_combout\;
\prescaler|ALT_INV_Equal1~6_combout\ <= NOT \prescaler|Equal1~6_combout\;
\prescaler|ALT_INV_Equal1~5_combout\ <= NOT \prescaler|Equal1~5_combout\;
\prescaler|ALT_INV_N\(17) <= NOT \prescaler|N\(17);
\prescaler|ALT_INV_N\(16) <= NOT \prescaler|N\(16);
\prescaler|ALT_INV_Equal1~4_combout\ <= NOT \prescaler|Equal1~4_combout\;
\prescaler|ALT_INV_N\(14) <= NOT \prescaler|N\(14);
\prescaler|ALT_INV_Equal1~3_combout\ <= NOT \prescaler|Equal1~3_combout\;
\prescaler|ALT_INV_Equal1~2_combout\ <= NOT \prescaler|Equal1~2_combout\;
\prescaler|ALT_INV_N\(0) <= NOT \prescaler|N\(0);
\prescaler|ALT_INV_Equal1~1_combout\ <= NOT \prescaler|Equal1~1_combout\;
\prescaler|ALT_INV_N\(13) <= NOT \prescaler|N\(13);
\prescaler|ALT_INV_N\(12) <= NOT \prescaler|N\(12);
\prescaler|ALT_INV_Equal1~0_combout\ <= NOT \prescaler|Equal1~0_combout\;
\prescaler|ALT_INV_N\(10) <= NOT \prescaler|N\(10);
\prescaler|ALT_INV_N\(8) <= NOT \prescaler|N\(8);
\prescaler|ALT_INV_N\(7) <= NOT \prescaler|N\(7);
\prescaler|ALT_INV_N\(18) <= NOT \prescaler|N\(18);
\fsm_inst|ALT_INV_current_state.LatchValue~q\ <= NOT \fsm_inst|current_state.LatchValue~q\;
\random_gen|ALT_INV_lfsr[3]~14_combout\ <= NOT \random_gen|lfsr[3]~14_combout\;
\random_gen|ALT_INV_lfsr[3]~_emulated_q\ <= NOT \random_gen|lfsr[3]~_emulated_q\;
\random_gen|ALT_INV_lfsr[2]~10_combout\ <= NOT \random_gen|lfsr[2]~10_combout\;
\random_gen|ALT_INV_lfsr[2]~_emulated_q\ <= NOT \random_gen|lfsr[2]~_emulated_q\;
\random_gen|ALT_INV_lfsr[1]~6_combout\ <= NOT \random_gen|lfsr[1]~6_combout\;
\random_gen|ALT_INV_lfsr[1]~_emulated_q\ <= NOT \random_gen|lfsr[1]~_emulated_q\;
\random_gen|ALT_INV_lfsr[0]~2_combout\ <= NOT \random_gen|lfsr[0]~2_combout\;
\random_gen|ALT_INV_lfsr[0]~_emulated_q\ <= NOT \random_gen|lfsr[0]~_emulated_q\;
\fsm_inst|HEX5_inst|ALT_INV_Mux0~0_combout\ <= NOT \fsm_inst|HEX5_inst|Mux0~0_combout\;
\fsm_inst|HEX4_inst|ALT_INV_Mux0~0_combout\ <= NOT \fsm_inst|HEX4_inst|Mux0~0_combout\;
\fsm_inst|HEX3_inst|ALT_INV_Mux0~0_combout\ <= NOT \fsm_inst|HEX3_inst|Mux0~0_combout\;
\fsm_inst|ALT_INV_latched_clk_A_p1[3]~reg0_q\ <= NOT \fsm_inst|latched_clk_A_p1[3]~reg0_q\;
\fsm_inst|ALT_INV_latched_clk_A_p1[2]~reg0_q\ <= NOT \fsm_inst|latched_clk_A_p1[2]~reg0_q\;
\fsm_inst|ALT_INV_latched_clk_A_p1[1]~reg0_q\ <= NOT \fsm_inst|latched_clk_A_p1[1]~reg0_q\;
\fsm_inst|ALT_INV_latched_clk_A_p1[0]~reg0_q\ <= NOT \fsm_inst|latched_clk_A_p1[0]~reg0_q\;
\fsm_inst|HEX2_inst|ALT_INV_Mux0~0_combout\ <= NOT \fsm_inst|HEX2_inst|Mux0~0_combout\;
\fsm_inst|ALT_INV_latched_clk_B_p1[3]~reg0_q\ <= NOT \fsm_inst|latched_clk_B_p1[3]~reg0_q\;
\fsm_inst|ALT_INV_latched_clk_B_p1[2]~reg0_q\ <= NOT \fsm_inst|latched_clk_B_p1[2]~reg0_q\;
\fsm_inst|ALT_INV_latched_clk_B_p1[1]~reg0_q\ <= NOT \fsm_inst|latched_clk_B_p1[1]~reg0_q\;
\fsm_inst|ALT_INV_latched_clk_B_p1[0]~reg0_q\ <= NOT \fsm_inst|latched_clk_B_p1[0]~reg0_q\;
\fsm_inst|HEX0_inst|ALT_INV_Mux0~0_combout\ <= NOT \fsm_inst|HEX0_inst|Mux0~0_combout\;
\fsm_inst|ALT_INV_Add0~125_sumout\ <= NOT \fsm_inst|Add0~125_sumout\;
\fsm_inst|ALT_INV_Add0~121_sumout\ <= NOT \fsm_inst|Add0~121_sumout\;
\fsm_inst|ALT_INV_Add0~117_sumout\ <= NOT \fsm_inst|Add0~117_sumout\;
\fsm_inst|ALT_INV_Add0~113_sumout\ <= NOT \fsm_inst|Add0~113_sumout\;
\fsm_inst|ALT_INV_Add0~109_sumout\ <= NOT \fsm_inst|Add0~109_sumout\;
\fsm_inst|ALT_INV_Add0~105_sumout\ <= NOT \fsm_inst|Add0~105_sumout\;
\fsm_inst|ALT_INV_Add0~101_sumout\ <= NOT \fsm_inst|Add0~101_sumout\;
\fsm_inst|ALT_INV_Add0~97_sumout\ <= NOT \fsm_inst|Add0~97_sumout\;
\fsm_inst|ALT_INV_Add0~93_sumout\ <= NOT \fsm_inst|Add0~93_sumout\;
\fsm_inst|ALT_INV_Add0~89_sumout\ <= NOT \fsm_inst|Add0~89_sumout\;
\fsm_inst|ALT_INV_Add0~85_sumout\ <= NOT \fsm_inst|Add0~85_sumout\;
\fsm_inst|ALT_INV_Add0~81_sumout\ <= NOT \fsm_inst|Add0~81_sumout\;
\fsm_inst|ALT_INV_Add0~77_sumout\ <= NOT \fsm_inst|Add0~77_sumout\;
\fsm_inst|ALT_INV_Add0~73_sumout\ <= NOT \fsm_inst|Add0~73_sumout\;
\fsm_inst|ALT_INV_Add0~69_sumout\ <= NOT \fsm_inst|Add0~69_sumout\;
\fsm_inst|ALT_INV_Add0~65_sumout\ <= NOT \fsm_inst|Add0~65_sumout\;
\fsm_inst|ALT_INV_Add0~61_sumout\ <= NOT \fsm_inst|Add0~61_sumout\;
\fsm_inst|ALT_INV_Add0~57_sumout\ <= NOT \fsm_inst|Add0~57_sumout\;
\fsm_inst|ALT_INV_Add0~53_sumout\ <= NOT \fsm_inst|Add0~53_sumout\;
\fsm_inst|ALT_INV_Add0~49_sumout\ <= NOT \fsm_inst|Add0~49_sumout\;
\fsm_inst|ALT_INV_Add0~45_sumout\ <= NOT \fsm_inst|Add0~45_sumout\;
\fsm_inst|ALT_INV_Add0~41_sumout\ <= NOT \fsm_inst|Add0~41_sumout\;
\fsm_inst|ALT_INV_Add0~37_sumout\ <= NOT \fsm_inst|Add0~37_sumout\;
\fsm_inst|ALT_INV_Add0~33_sumout\ <= NOT \fsm_inst|Add0~33_sumout\;
\fsm_inst|ALT_INV_Add0~29_sumout\ <= NOT \fsm_inst|Add0~29_sumout\;
\fsm_inst|ALT_INV_Add0~25_sumout\ <= NOT \fsm_inst|Add0~25_sumout\;
\fsm_inst|ALT_INV_Add0~21_sumout\ <= NOT \fsm_inst|Add0~21_sumout\;
\fsm_inst|ALT_INV_Add0~17_sumout\ <= NOT \fsm_inst|Add0~17_sumout\;
\fsm_inst|ALT_INV_Add0~13_sumout\ <= NOT \fsm_inst|Add0~13_sumout\;
\fsm_inst|ALT_INV_Add0~9_sumout\ <= NOT \fsm_inst|Add0~9_sumout\;
\fsm_inst|ALT_INV_Add0~5_sumout\ <= NOT \fsm_inst|Add0~5_sumout\;
\fsm_inst|ALT_INV_Add0~1_sumout\ <= NOT \fsm_inst|Add0~1_sumout\;
\prescaler|ALT_INV_counter\(16) <= NOT \prescaler|counter\(16);
\prescaler|ALT_INV_counter\(5) <= NOT \prescaler|counter\(5);
\prescaler|ALT_INV_counter\(6) <= NOT \prescaler|counter\(6);
\prescaler|ALT_INV_counter\(14) <= NOT \prescaler|counter\(14);
\prescaler|ALT_INV_counter\(15) <= NOT \prescaler|counter\(15);
\prescaler|ALT_INV_counter\(3) <= NOT \prescaler|counter\(3);
\prescaler|ALT_INV_counter\(4) <= NOT \prescaler|counter\(4);
\prescaler|ALT_INV_counter\(0) <= NOT \prescaler|counter\(0);
\prescaler|ALT_INV_counter\(1) <= NOT \prescaler|counter\(1);
\prescaler|ALT_INV_counter\(2) <= NOT \prescaler|counter\(2);
\prescaler|ALT_INV_counter\(9) <= NOT \prescaler|counter\(9);
\prescaler|ALT_INV_counter\(11) <= NOT \prescaler|counter\(11);
\prescaler|ALT_INV_counter\(12) <= NOT \prescaler|counter\(12);
\prescaler|ALT_INV_counter\(13) <= NOT \prescaler|counter\(13);
\prescaler|ALT_INV_counter\(7) <= NOT \prescaler|counter\(7);
\prescaler|ALT_INV_counter\(8) <= NOT \prescaler|counter\(8);
\prescaler|ALT_INV_counter\(10) <= NOT \prescaler|counter\(10);
\prescaler|ALT_INV_counter\(24) <= NOT \prescaler|counter\(24);
\prescaler|ALT_INV_counter\(23) <= NOT \prescaler|counter\(23);
\prescaler|ALT_INV_counter\(22) <= NOT \prescaler|counter\(22);
\prescaler|ALT_INV_counter\(21) <= NOT \prescaler|counter\(21);
\prescaler|ALT_INV_counter\(20) <= NOT \prescaler|counter\(20);
\prescaler|ALT_INV_counter\(19) <= NOT \prescaler|counter\(19);
\prescaler|ALT_INV_counter\(18) <= NOT \prescaler|counter\(18);
\prescaler|ALT_INV_counter\(17) <= NOT \prescaler|counter\(17);

-- Location: IOOBUF_X60_Y0_N19
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX0_inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X80_Y0_N2
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX0_inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X50_Y0_N93
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX0_inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N76
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX0_inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X56_Y0_N36
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX0_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X58_Y0_N76
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX0_inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X56_Y0_N53
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX0_inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X52_Y0_N53
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX0_inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X52_Y0_N2
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX0_inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X52_Y0_N36
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX0_inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X64_Y0_N19
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX0_inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X66_Y0_N42
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX0_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X50_Y0_N42
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX0_inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X60_Y0_N2
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX0_inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X88_Y0_N3
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX2_inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X56_Y0_N19
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX2_inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X68_Y0_N19
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX2_inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X68_Y0_N2
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX2_inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X72_Y0_N2
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX2_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X50_Y0_N59
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX2_inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X52_Y0_N19
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX2_inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X84_Y0_N2
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX3_inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X80_Y0_N19
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX3_inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X76_Y0_N19
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX3_inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X84_Y0_N19
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX3_inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X76_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX3_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X72_Y0_N19
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX3_inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X82_Y0_N42
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX3_inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X82_Y0_N59
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX4_inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X66_Y0_N76
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX4_inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X78_Y0_N2
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX4_inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X78_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX4_inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X64_Y0_N36
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX4_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X74_Y0_N42
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX4_inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X66_Y0_N93
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX4_inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X70_Y0_N19
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX5_inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X54_Y0_N2
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX5_inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X70_Y0_N2
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX5_inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X62_Y0_N19
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX5_inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X66_Y0_N59
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX5_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X62_Y0_N2
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX5_inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X88_Y0_N20
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm_inst|HEX5_inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X89_Y11_N45
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X89_Y9_N22
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X86_Y0_N19
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X88_Y0_N37
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y25_N38
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X56_Y2_N33
\random_gen|lfsr[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \random_gen|lfsr[1]~5_combout\ = ( \random_gen|lfsr[1]~5_combout\ & ( (!\reset~input_o\) # (\SW[7]~input_o\) ) ) # ( !\random_gen|lfsr[1]~5_combout\ & ( (\SW[7]~input_o\ & \reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_reset~input_o\,
	dataf => \random_gen|ALT_INV_lfsr[1]~5_combout\,
	combout => \random_gen|lfsr[1]~5_combout\);

-- Location: IOIBUF_X89_Y20_N78
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LABCELL_X57_Y2_N18
\random_gen|lfsr[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \random_gen|lfsr[0]~1_combout\ = ( \random_gen|lfsr[0]~1_combout\ & ( (!\reset~input_o\) # (\SW[6]~input_o\) ) ) # ( !\random_gen|lfsr[0]~1_combout\ & ( (\SW[6]~input_o\ & \reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \random_gen|ALT_INV_lfsr[0]~1_combout\,
	combout => \random_gen|lfsr[0]~1_combout\);

-- Location: IOIBUF_X89_Y21_N21
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X56_Y2_N36
\random_gen|lfsr[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \random_gen|lfsr[3]~13_combout\ = (!\reset~input_o\ & ((\random_gen|lfsr[3]~13_combout\))) # (\reset~input_o\ & (\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \random_gen|ALT_INV_lfsr[3]~13_combout\,
	datad => \ALT_INV_reset~input_o\,
	combout => \random_gen|lfsr[3]~13_combout\);

-- Location: IOIBUF_X89_Y20_N95
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LABCELL_X56_Y2_N3
\random_gen|lfsr[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \random_gen|lfsr[2]~9_combout\ = ( \reset~input_o\ & ( \SW[8]~input_o\ ) ) # ( !\reset~input_o\ & ( \random_gen|lfsr[2]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datad => \random_gen|ALT_INV_lfsr[2]~9_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \random_gen|lfsr[2]~9_combout\);

-- Location: LABCELL_X53_Y2_N45
\random_gen|lfsr[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \random_gen|lfsr[2]~11_combout\ = ( \random_gen|lfsr[1]~6_combout\ & ( !\random_gen|lfsr[2]~9_combout\ ) ) # ( !\random_gen|lfsr[1]~6_combout\ & ( \random_gen|lfsr[2]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \random_gen|ALT_INV_lfsr[2]~9_combout\,
	dataf => \random_gen|ALT_INV_lfsr[1]~6_combout\,
	combout => \random_gen|lfsr[2]~11_combout\);

-- Location: FF_X53_Y2_N46
\random_gen|lfsr[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \random_gen|lfsr[2]~11_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \random_gen|lfsr[2]~_emulated_q\);

-- Location: LABCELL_X56_Y2_N0
\random_gen|lfsr[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \random_gen|lfsr[2]~10_combout\ = ( \reset~input_o\ & ( \SW[8]~input_o\ ) ) # ( !\reset~input_o\ & ( !\random_gen|lfsr[2]~_emulated_q\ $ (!\random_gen|lfsr[2]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datac => \random_gen|ALT_INV_lfsr[2]~_emulated_q\,
	datad => \random_gen|ALT_INV_lfsr[2]~9_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \random_gen|lfsr[2]~10_combout\);

-- Location: LABCELL_X53_Y2_N24
\random_gen|lfsr[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \random_gen|lfsr[3]~15_combout\ = ( \random_gen|lfsr[2]~10_combout\ & ( !\random_gen|lfsr[3]~13_combout\ ) ) # ( !\random_gen|lfsr[2]~10_combout\ & ( \random_gen|lfsr[3]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \random_gen|ALT_INV_lfsr[3]~13_combout\,
	dataf => \random_gen|ALT_INV_lfsr[2]~10_combout\,
	combout => \random_gen|lfsr[3]~15_combout\);

-- Location: FF_X53_Y2_N25
\random_gen|lfsr[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \random_gen|lfsr[3]~15_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \random_gen|lfsr[3]~_emulated_q\);

-- Location: LABCELL_X56_Y2_N39
\random_gen|lfsr[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \random_gen|lfsr[3]~14_combout\ = ( \reset~input_o\ & ( \SW[9]~input_o\ ) ) # ( !\reset~input_o\ & ( !\random_gen|lfsr[3]~_emulated_q\ $ (!\random_gen|lfsr[3]~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \random_gen|ALT_INV_lfsr[3]~_emulated_q\,
	datad => \random_gen|ALT_INV_lfsr[3]~13_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \random_gen|lfsr[3]~14_combout\);

-- Location: LABCELL_X53_Y2_N54
\random_gen|lfsr~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \random_gen|lfsr~20_combout\ = ( !\random_gen|lfsr[3]~14_combout\ & ( \random_gen|lfsr[2]~10_combout\ ) ) # ( \random_gen|lfsr[3]~14_combout\ & ( !\random_gen|lfsr[2]~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \random_gen|ALT_INV_lfsr[3]~14_combout\,
	dataf => \random_gen|ALT_INV_lfsr[2]~10_combout\,
	combout => \random_gen|lfsr~20_combout\);

-- Location: LABCELL_X53_Y2_N15
\random_gen|lfsr[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \random_gen|lfsr[0]~3_combout\ = !\random_gen|lfsr[0]~1_combout\ $ (!\random_gen|lfsr~20_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \random_gen|ALT_INV_lfsr[0]~1_combout\,
	datab => \random_gen|ALT_INV_lfsr~20_combout\,
	combout => \random_gen|lfsr[0]~3_combout\);

-- Location: FF_X53_Y2_N16
\random_gen|lfsr[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \random_gen|lfsr[0]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \random_gen|lfsr[0]~_emulated_q\);

-- Location: LABCELL_X56_Y2_N42
\random_gen|lfsr[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \random_gen|lfsr[0]~2_combout\ = ( \random_gen|lfsr[0]~1_combout\ & ( (!\reset~input_o\ & (!\random_gen|lfsr[0]~_emulated_q\)) # (\reset~input_o\ & ((\SW[6]~input_o\))) ) ) # ( !\random_gen|lfsr[0]~1_combout\ & ( (!\reset~input_o\ & 
-- (\random_gen|lfsr[0]~_emulated_q\)) # (\reset~input_o\ & ((\SW[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111111000000111100111100000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \random_gen|ALT_INV_lfsr[0]~_emulated_q\,
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => \random_gen|ALT_INV_lfsr[0]~1_combout\,
	combout => \random_gen|lfsr[0]~2_combout\);

-- Location: LABCELL_X57_Y2_N30
\random_gen|lfsr[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \random_gen|lfsr[1]~7_combout\ = ( \random_gen|lfsr[0]~2_combout\ & ( !\random_gen|lfsr[1]~5_combout\ ) ) # ( !\random_gen|lfsr[0]~2_combout\ & ( \random_gen|lfsr[1]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \random_gen|ALT_INV_lfsr[1]~5_combout\,
	dataf => \random_gen|ALT_INV_lfsr[0]~2_combout\,
	combout => \random_gen|lfsr[1]~7_combout\);

-- Location: FF_X57_Y2_N32
\random_gen|lfsr[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \random_gen|lfsr[1]~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \random_gen|lfsr[1]~_emulated_q\);

-- Location: LABCELL_X56_Y2_N27
\random_gen|lfsr[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \random_gen|lfsr[1]~6_combout\ = ( \random_gen|lfsr[1]~5_combout\ & ( (!\reset~input_o\ & (!\random_gen|lfsr[1]~_emulated_q\)) # (\reset~input_o\ & ((\SW[7]~input_o\))) ) ) # ( !\random_gen|lfsr[1]~5_combout\ & ( (!\reset~input_o\ & 
-- (\random_gen|lfsr[1]~_emulated_q\)) # (\reset~input_o\ & ((\SW[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011110001000101110111000100010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \random_gen|ALT_INV_lfsr[1]~_emulated_q\,
	datab => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \random_gen|ALT_INV_lfsr[1]~5_combout\,
	combout => \random_gen|lfsr[1]~6_combout\);

-- Location: LABCELL_X57_Y1_N0
\fsm_inst|HEX0_inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX0_inst|Mux6~0_combout\ = ( \random_gen|lfsr[2]~10_combout\ & ( \random_gen|lfsr[0]~2_combout\ & ( \random_gen|lfsr[3]~14_combout\ ) ) ) # ( !\random_gen|lfsr[2]~10_combout\ & ( \random_gen|lfsr[0]~2_combout\ & ( 
-- !\random_gen|lfsr[1]~6_combout\ $ (\random_gen|lfsr[3]~14_combout\) ) ) ) # ( \random_gen|lfsr[2]~10_combout\ & ( !\random_gen|lfsr[0]~2_combout\ & ( (!\random_gen|lfsr[1]~6_combout\) # (\random_gen|lfsr[3]~14_combout\) ) ) ) # ( 
-- !\random_gen|lfsr[2]~10_combout\ & ( !\random_gen|lfsr[0]~2_combout\ & ( (\random_gen|lfsr[1]~6_combout\ & \random_gen|lfsr[3]~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111111000011110000110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \random_gen|ALT_INV_lfsr[1]~6_combout\,
	datac => \random_gen|ALT_INV_lfsr[3]~14_combout\,
	datae => \random_gen|ALT_INV_lfsr[2]~10_combout\,
	dataf => \random_gen|ALT_INV_lfsr[0]~2_combout\,
	combout => \fsm_inst|HEX0_inst|Mux6~0_combout\);

-- Location: LABCELL_X57_Y1_N9
\fsm_inst|HEX0_inst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX0_inst|Mux5~0_combout\ = ( \random_gen|lfsr[2]~10_combout\ & ( \random_gen|lfsr[0]~2_combout\ & ( (!\random_gen|lfsr[1]~6_combout\) # (\random_gen|lfsr[3]~14_combout\) ) ) ) # ( !\random_gen|lfsr[2]~10_combout\ & ( 
-- \random_gen|lfsr[0]~2_combout\ & ( (\random_gen|lfsr[3]~14_combout\ & \random_gen|lfsr[1]~6_combout\) ) ) ) # ( \random_gen|lfsr[2]~10_combout\ & ( !\random_gen|lfsr[0]~2_combout\ & ( (\random_gen|lfsr[1]~6_combout\) # (\random_gen|lfsr[3]~14_combout\) ) 
-- ) ) # ( !\random_gen|lfsr[2]~10_combout\ & ( !\random_gen|lfsr[0]~2_combout\ & ( (\random_gen|lfsr[3]~14_combout\ & \random_gen|lfsr[1]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010111110101111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \random_gen|ALT_INV_lfsr[3]~14_combout\,
	datac => \random_gen|ALT_INV_lfsr[1]~6_combout\,
	datae => \random_gen|ALT_INV_lfsr[2]~10_combout\,
	dataf => \random_gen|ALT_INV_lfsr[0]~2_combout\,
	combout => \fsm_inst|HEX0_inst|Mux5~0_combout\);

-- Location: LABCELL_X57_Y1_N36
\fsm_inst|HEX0_inst|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX0_inst|Mux4~0_combout\ = ( \random_gen|lfsr[2]~10_combout\ & ( \random_gen|lfsr[0]~2_combout\ & ( \random_gen|lfsr[3]~14_combout\ ) ) ) # ( !\random_gen|lfsr[2]~10_combout\ & ( \random_gen|lfsr[0]~2_combout\ & ( 
-- (\random_gen|lfsr[1]~6_combout\ & \random_gen|lfsr[3]~14_combout\) ) ) ) # ( \random_gen|lfsr[2]~10_combout\ & ( !\random_gen|lfsr[0]~2_combout\ & ( \random_gen|lfsr[3]~14_combout\ ) ) ) # ( !\random_gen|lfsr[2]~10_combout\ & ( 
-- !\random_gen|lfsr[0]~2_combout\ & ( \random_gen|lfsr[1]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000011000000110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \random_gen|ALT_INV_lfsr[1]~6_combout\,
	datac => \random_gen|ALT_INV_lfsr[3]~14_combout\,
	datae => \random_gen|ALT_INV_lfsr[2]~10_combout\,
	dataf => \random_gen|ALT_INV_lfsr[0]~2_combout\,
	combout => \fsm_inst|HEX0_inst|Mux4~0_combout\);

-- Location: LABCELL_X57_Y1_N54
\fsm_inst|HEX0_inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX0_inst|Mux3~0_combout\ = ( \random_gen|lfsr[2]~10_combout\ & ( \random_gen|lfsr[0]~2_combout\ & ( (\random_gen|lfsr[3]~14_combout\) # (\random_gen|lfsr[1]~6_combout\) ) ) ) # ( !\random_gen|lfsr[2]~10_combout\ & ( 
-- \random_gen|lfsr[0]~2_combout\ & ( (!\random_gen|lfsr[1]~6_combout\) # (\random_gen|lfsr[3]~14_combout\) ) ) ) # ( \random_gen|lfsr[2]~10_combout\ & ( !\random_gen|lfsr[0]~2_combout\ & ( (!\random_gen|lfsr[1]~6_combout\) # 
-- (\random_gen|lfsr[3]~14_combout\) ) ) ) # ( !\random_gen|lfsr[2]~10_combout\ & ( !\random_gen|lfsr[0]~2_combout\ & ( (\random_gen|lfsr[1]~6_combout\ & \random_gen|lfsr[3]~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111111001111110011110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \random_gen|ALT_INV_lfsr[1]~6_combout\,
	datac => \random_gen|ALT_INV_lfsr[3]~14_combout\,
	datae => \random_gen|ALT_INV_lfsr[2]~10_combout\,
	dataf => \random_gen|ALT_INV_lfsr[0]~2_combout\,
	combout => \fsm_inst|HEX0_inst|Mux3~0_combout\);

-- Location: LABCELL_X57_Y1_N15
\fsm_inst|HEX0_inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX0_inst|Mux2~0_combout\ = ( \random_gen|lfsr[2]~10_combout\ & ( \random_gen|lfsr[0]~2_combout\ ) ) # ( !\random_gen|lfsr[2]~10_combout\ & ( \random_gen|lfsr[0]~2_combout\ ) ) # ( \random_gen|lfsr[2]~10_combout\ & ( 
-- !\random_gen|lfsr[0]~2_combout\ & ( (!\random_gen|lfsr[1]~6_combout\) # (\random_gen|lfsr[3]~14_combout\) ) ) ) # ( !\random_gen|lfsr[2]~10_combout\ & ( !\random_gen|lfsr[0]~2_combout\ & ( (\random_gen|lfsr[3]~14_combout\ & \random_gen|lfsr[1]~6_combout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \random_gen|ALT_INV_lfsr[3]~14_combout\,
	datac => \random_gen|ALT_INV_lfsr[1]~6_combout\,
	datae => \random_gen|ALT_INV_lfsr[2]~10_combout\,
	dataf => \random_gen|ALT_INV_lfsr[0]~2_combout\,
	combout => \fsm_inst|HEX0_inst|Mux2~0_combout\);

-- Location: LABCELL_X57_Y1_N33
\fsm_inst|HEX0_inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX0_inst|Mux1~0_combout\ = ( \random_gen|lfsr[2]~10_combout\ & ( \random_gen|lfsr[0]~2_combout\ & ( (\random_gen|lfsr[1]~6_combout\) # (\random_gen|lfsr[3]~14_combout\) ) ) ) # ( !\random_gen|lfsr[2]~10_combout\ & ( 
-- \random_gen|lfsr[0]~2_combout\ & ( (!\random_gen|lfsr[3]~14_combout\) # (\random_gen|lfsr[1]~6_combout\) ) ) ) # ( \random_gen|lfsr[2]~10_combout\ & ( !\random_gen|lfsr[0]~2_combout\ & ( \random_gen|lfsr[3]~14_combout\ ) ) ) # ( 
-- !\random_gen|lfsr[2]~10_combout\ & ( !\random_gen|lfsr[0]~2_combout\ & ( \random_gen|lfsr[1]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010110101111101011110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \random_gen|ALT_INV_lfsr[3]~14_combout\,
	datac => \random_gen|ALT_INV_lfsr[1]~6_combout\,
	datae => \random_gen|ALT_INV_lfsr[2]~10_combout\,
	dataf => \random_gen|ALT_INV_lfsr[0]~2_combout\,
	combout => \fsm_inst|HEX0_inst|Mux1~0_combout\);

-- Location: LABCELL_X57_Y1_N24
\fsm_inst|HEX0_inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX0_inst|Mux0~0_combout\ = ( \random_gen|lfsr[2]~10_combout\ & ( \random_gen|lfsr[0]~2_combout\ & ( (!\random_gen|lfsr[1]~6_combout\ & !\random_gen|lfsr[3]~14_combout\) ) ) ) # ( !\random_gen|lfsr[2]~10_combout\ & ( 
-- \random_gen|lfsr[0]~2_combout\ & ( !\random_gen|lfsr[1]~6_combout\ $ (!\random_gen|lfsr[3]~14_combout\) ) ) ) # ( \random_gen|lfsr[2]~10_combout\ & ( !\random_gen|lfsr[0]~2_combout\ & ( !\random_gen|lfsr[3]~14_combout\ ) ) ) # ( 
-- !\random_gen|lfsr[2]~10_combout\ & ( !\random_gen|lfsr[0]~2_combout\ & ( !\random_gen|lfsr[1]~6_combout\ $ (!\random_gen|lfsr[3]~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100111100001111000000111100001111001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \random_gen|ALT_INV_lfsr[1]~6_combout\,
	datac => \random_gen|ALT_INV_lfsr[3]~14_combout\,
	datae => \random_gen|ALT_INV_lfsr[2]~10_combout\,
	dataf => \random_gen|ALT_INV_lfsr[0]~2_combout\,
	combout => \fsm_inst|HEX0_inst|Mux0~0_combout\);

-- Location: LABCELL_X81_Y4_N30
\prescaler|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~73_sumout\ = SUM(( \prescaler|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \prescaler|Add0~74\ = CARRY(( \prescaler|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(0),
	cin => GND,
	sumout => \prescaler|Add0~73_sumout\,
	cout => \prescaler|Add0~74\);

-- Location: LABCELL_X81_Y3_N21
\prescaler|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~1_sumout\ = SUM(( \prescaler|counter\(17) ) + ( GND ) + ( \prescaler|Add0~34\ ))
-- \prescaler|Add0~2\ = CARRY(( \prescaler|counter\(17) ) + ( GND ) + ( \prescaler|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \prescaler|ALT_INV_counter\(17),
	cin => \prescaler|Add0~34\,
	sumout => \prescaler|Add0~1_sumout\,
	cout => \prescaler|Add0~2\);

-- Location: LABCELL_X81_Y3_N24
\prescaler|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~5_sumout\ = SUM(( \prescaler|counter\(18) ) + ( GND ) + ( \prescaler|Add0~2\ ))
-- \prescaler|Add0~6\ = CARRY(( \prescaler|counter\(18) ) + ( GND ) + ( \prescaler|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(18),
	cin => \prescaler|Add0~2\,
	sumout => \prescaler|Add0~5_sumout\,
	cout => \prescaler|Add0~6\);

-- Location: FF_X81_Y3_N25
\prescaler|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~5_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(18));

-- Location: IOIBUF_X89_Y21_N4
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X89_Y25_N21
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LABCELL_X81_Y4_N3
\prescaler|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Mux2~0_combout\ = ( \SW[1]~input_o\ & ( (!\SW[0]~input_o\ & !\SW[2]~input_o\) ) ) # ( !\SW[1]~input_o\ & ( (!\SW[0]~input_o\ & \SW[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \prescaler|Mux2~0_combout\);

-- Location: FF_X82_Y4_N46
\prescaler|SW_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \prescaler|N[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|SW_reg\(0));

-- Location: FF_X82_Y4_N41
\prescaler|SW_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \prescaler|N[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|SW_reg\(1));

-- Location: MLABCELL_X82_Y4_N45
\prescaler|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal0~0_combout\ = ( \prescaler|SW_reg\(1) & ( (\SW[1]~input_o\ & (!\prescaler|SW_reg\(0) $ (\SW[0]~input_o\))) ) ) # ( !\prescaler|SW_reg\(1) & ( (!\SW[1]~input_o\ & (!\prescaler|SW_reg\(0) $ (\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \prescaler|ALT_INV_SW_reg\(0),
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \prescaler|ALT_INV_SW_reg\(1),
	combout => \prescaler|Equal0~0_combout\);

-- Location: IOIBUF_X89_Y20_N61
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X82_Y4_N44
\prescaler|SW_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \prescaler|N[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|SW_reg\(2));

-- Location: MLABCELL_X82_Y4_N42
\prescaler|N[16]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|N[16]~0_combout\ = ( \prescaler|SW_reg\(2) & ( (!\SW[5]~input_o\ & ((!\prescaler|Equal0~0_combout\) # (!\SW[2]~input_o\))) ) ) # ( !\prescaler|SW_reg\(2) & ( (!\SW[5]~input_o\ & ((!\prescaler|Equal0~0_combout\) # (\SW[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011110000110000001111000011110000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \prescaler|ALT_INV_SW_reg\(2),
	combout => \prescaler|N[16]~0_combout\);

-- Location: FF_X81_Y4_N5
\prescaler|N[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Mux2~0_combout\,
	ena => \prescaler|N[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|N\(8));

-- Location: MLABCELL_X82_Y4_N51
\prescaler|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Mux1~0_combout\ = ( !\SW[1]~input_o\ & ( (\SW[2]~input_o\ & !\SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \prescaler|Mux1~0_combout\);

-- Location: FF_X82_Y4_N49
\prescaler|N[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \prescaler|Mux1~0_combout\,
	sload => VCC,
	ena => \prescaler|N[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|N\(10));

-- Location: LABCELL_X81_Y4_N9
\prescaler|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Mux3~0_combout\ = ( \SW[0]~input_o\ & ( (!\SW[1]~input_o\ & !\SW[2]~input_o\) ) ) # ( !\SW[0]~input_o\ & ( (\SW[1]~input_o\ & !\SW[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \prescaler|Mux3~0_combout\);

-- Location: MLABCELL_X82_Y4_N18
\prescaler|N[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|N[7]~feeder_combout\ = ( \prescaler|Mux3~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \prescaler|ALT_INV_Mux3~0_combout\,
	combout => \prescaler|N[7]~feeder_combout\);

-- Location: FF_X82_Y4_N20
\prescaler|N[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|N[7]~feeder_combout\,
	ena => \prescaler|N[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|N\(7));

-- Location: FF_X81_Y3_N1
\prescaler|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~37_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(10));

-- Location: LABCELL_X81_Y4_N18
\prescaler|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal1~0_combout\ = ( \prescaler|counter\(8) & ( \prescaler|counter\(10) & ( (\prescaler|N\(8) & (\prescaler|N\(10) & (!\prescaler|counter\(7) $ (\prescaler|N\(7))))) ) ) ) # ( !\prescaler|counter\(8) & ( \prescaler|counter\(10) & ( 
-- (!\prescaler|N\(8) & (\prescaler|N\(10) & (!\prescaler|counter\(7) $ (\prescaler|N\(7))))) ) ) ) # ( \prescaler|counter\(8) & ( !\prescaler|counter\(10) & ( (\prescaler|N\(8) & (!\prescaler|N\(10) & (!\prescaler|counter\(7) $ (\prescaler|N\(7))))) ) ) ) # 
-- ( !\prescaler|counter\(8) & ( !\prescaler|counter\(10) & ( (!\prescaler|N\(8) & (!\prescaler|N\(10) & (!\prescaler|counter\(7) $ (\prescaler|N\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_N\(8),
	datab => \prescaler|ALT_INV_N\(10),
	datac => \prescaler|ALT_INV_counter\(7),
	datad => \prescaler|ALT_INV_N\(7),
	datae => \prescaler|ALT_INV_counter\(8),
	dataf => \prescaler|ALT_INV_counter\(10),
	combout => \prescaler|Equal1~0_combout\);

-- Location: FF_X81_Y3_N10
\prescaler|counter[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~49_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter[13]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y4_N15
\prescaler|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Mux0~0_combout\ = ( \SW[2]~input_o\ & ( (!\SW[1]~input_o\ & !\SW[0]~input_o\) ) ) # ( !\SW[2]~input_o\ & ( (!\SW[1]~input_o\ & \SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \prescaler|Mux0~0_combout\);

-- Location: MLABCELL_X82_Y4_N12
\prescaler|N[13]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|N[13]~1_combout\ = ( !\prescaler|Mux0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \prescaler|ALT_INV_Mux0~0_combout\,
	combout => \prescaler|N[13]~1_combout\);

-- Location: FF_X82_Y4_N14
\prescaler|N[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|N[13]~1_combout\,
	ena => \prescaler|N[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|N\(13));

-- Location: MLABCELL_X82_Y4_N54
\prescaler|N[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|N[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \prescaler|N[12]~feeder_combout\);

-- Location: FF_X82_Y4_N56
\prescaler|N[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|N[12]~feeder_combout\,
	ena => \prescaler|N[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|N\(12));

-- Location: LABCELL_X81_Y3_N27
\prescaler|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~9_sumout\ = SUM(( \prescaler|counter[19]~DUPLICATE_q\ ) + ( GND ) + ( \prescaler|Add0~6\ ))
-- \prescaler|Add0~10\ = CARRY(( \prescaler|counter[19]~DUPLICATE_q\ ) + ( GND ) + ( \prescaler|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter[19]~DUPLICATE_q\,
	cin => \prescaler|Add0~6\,
	sumout => \prescaler|Add0~9_sumout\,
	cout => \prescaler|Add0~10\);

-- Location: FF_X81_Y3_N29
\prescaler|counter[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~9_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter[19]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y3_N30
\prescaler|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~13_sumout\ = SUM(( \prescaler|counter\(20) ) + ( GND ) + ( \prescaler|Add0~10\ ))
-- \prescaler|Add0~14\ = CARRY(( \prescaler|counter\(20) ) + ( GND ) + ( \prescaler|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter\(20),
	cin => \prescaler|Add0~10\,
	sumout => \prescaler|Add0~13_sumout\,
	cout => \prescaler|Add0~14\);

-- Location: FF_X81_Y3_N31
\prescaler|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~13_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(20));

-- Location: MLABCELL_X82_Y4_N57
\prescaler|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal1~1_combout\ = ( \prescaler|counter\(20) & ( (\prescaler|counter[13]~DUPLICATE_q\ & (!\prescaler|N\(13) & (!\prescaler|counter\(12) $ (!\prescaler|N\(12))))) ) ) # ( !\prescaler|counter\(20) & ( (!\prescaler|counter[13]~DUPLICATE_q\ & 
-- (\prescaler|N\(13) & (!\prescaler|counter\(12) $ (!\prescaler|N\(12))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001000000001000000100000010000001000000001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(12),
	datab => \prescaler|ALT_INV_counter[13]~DUPLICATE_q\,
	datac => \prescaler|ALT_INV_N\(13),
	datad => \prescaler|ALT_INV_N\(12),
	dataf => \prescaler|ALT_INV_counter\(20),
	combout => \prescaler|Equal1~1_combout\);

-- Location: LABCELL_X81_Y3_N33
\prescaler|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~17_sumout\ = SUM(( \prescaler|counter\(21) ) + ( GND ) + ( \prescaler|Add0~14\ ))
-- \prescaler|Add0~18\ = CARRY(( \prescaler|counter\(21) ) + ( GND ) + ( \prescaler|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(21),
	cin => \prescaler|Add0~14\,
	sumout => \prescaler|Add0~17_sumout\,
	cout => \prescaler|Add0~18\);

-- Location: FF_X81_Y3_N35
\prescaler|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~17_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(21));

-- Location: LABCELL_X81_Y3_N36
\prescaler|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~21_sumout\ = SUM(( \prescaler|counter\(22) ) + ( GND ) + ( \prescaler|Add0~18\ ))
-- \prescaler|Add0~22\ = CARRY(( \prescaler|counter\(22) ) + ( GND ) + ( \prescaler|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(22),
	cin => \prescaler|Add0~18\,
	sumout => \prescaler|Add0~21_sumout\,
	cout => \prescaler|Add0~22\);

-- Location: FF_X81_Y3_N37
\prescaler|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~21_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(22));

-- Location: LABCELL_X81_Y3_N39
\prescaler|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~25_sumout\ = SUM(( \prescaler|counter\(23) ) + ( GND ) + ( \prescaler|Add0~22\ ))
-- \prescaler|Add0~26\ = CARRY(( \prescaler|counter\(23) ) + ( GND ) + ( \prescaler|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter\(23),
	cin => \prescaler|Add0~22\,
	sumout => \prescaler|Add0~25_sumout\,
	cout => \prescaler|Add0~26\);

-- Location: FF_X81_Y3_N41
\prescaler|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~25_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(23));

-- Location: MLABCELL_X82_Y4_N48
\prescaler|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Mux4~0_combout\ = (\prescaler|Mux1~0_combout\) # (\prescaler|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_Mux3~0_combout\,
	datad => \prescaler|ALT_INV_Mux1~0_combout\,
	combout => \prescaler|Mux4~0_combout\);

-- Location: MLABCELL_X82_Y4_N3
\prescaler|N[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|N[0]~2_combout\ = ( !\prescaler|Mux4~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \prescaler|ALT_INV_Mux4~0_combout\,
	combout => \prescaler|N[0]~2_combout\);

-- Location: FF_X82_Y4_N5
\prescaler|N[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|N[0]~2_combout\,
	ena => \prescaler|N[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|N\(0));

-- Location: LABCELL_X81_Y4_N6
\prescaler|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal1~3_combout\ = ( \prescaler|counter\(3) & ( (\prescaler|counter\(22) & (\prescaler|counter\(4) & (\prescaler|counter\(23) & !\prescaler|N\(0)))) ) ) # ( !\prescaler|counter\(3) & ( (!\prescaler|counter\(22) & (!\prescaler|counter\(4) & 
-- (!\prescaler|counter\(23) & \prescaler|N\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(22),
	datab => \prescaler|ALT_INV_counter\(4),
	datac => \prescaler|ALT_INV_counter\(23),
	datad => \prescaler|ALT_INV_N\(0),
	dataf => \prescaler|ALT_INV_counter\(3),
	combout => \prescaler|Equal1~3_combout\);

-- Location: LABCELL_X81_Y3_N54
\prescaler|N[17]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|N[17]~4_combout\ = ( !\prescaler|Mux2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \prescaler|ALT_INV_Mux2~0_combout\,
	combout => \prescaler|N[17]~4_combout\);

-- Location: FF_X81_Y3_N56
\prescaler|N[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|N[17]~4_combout\,
	ena => \prescaler|N[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|N\(17));

-- Location: FF_X81_Y3_N49
\prescaler|N[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \prescaler|Mux4~0_combout\,
	sload => VCC,
	ena => \prescaler|N[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|N\(16));

-- Location: LABCELL_X81_Y3_N42
\prescaler|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~29_sumout\ = SUM(( \prescaler|counter\(24) ) + ( GND ) + ( \prescaler|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(24),
	cin => \prescaler|Add0~26\,
	sumout => \prescaler|Add0~29_sumout\);

-- Location: FF_X81_Y3_N44
\prescaler|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~29_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(24));

-- Location: LABCELL_X81_Y3_N51
\prescaler|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal1~5_combout\ = ( \prescaler|counter\(17) & ( \prescaler|counter\(16) & ( (!\prescaler|N\(17) & (\prescaler|N\(16) & (\prescaler|counter\(24) & \prescaler|counter[19]~DUPLICATE_q\))) ) ) ) # ( !\prescaler|counter\(17) & ( 
-- \prescaler|counter\(16) & ( (\prescaler|N\(17) & (\prescaler|N\(16) & (\prescaler|counter\(24) & !\prescaler|counter[19]~DUPLICATE_q\))) ) ) ) # ( \prescaler|counter\(17) & ( !\prescaler|counter\(16) & ( (!\prescaler|N\(17) & (!\prescaler|N\(16) & 
-- (!\prescaler|counter\(24) & \prescaler|counter[19]~DUPLICATE_q\))) ) ) ) # ( !\prescaler|counter\(17) & ( !\prescaler|counter\(16) & ( (\prescaler|N\(17) & (!\prescaler|N\(16) & (!\prescaler|counter\(24) & !\prescaler|counter[19]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000001000000000000001000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_N\(17),
	datab => \prescaler|ALT_INV_N\(16),
	datac => \prescaler|ALT_INV_counter\(24),
	datad => \prescaler|ALT_INV_counter[19]~DUPLICATE_q\,
	datae => \prescaler|ALT_INV_counter\(17),
	dataf => \prescaler|ALT_INV_counter\(16),
	combout => \prescaler|Equal1~5_combout\);

-- Location: FF_X81_Y3_N16
\prescaler|counter[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~85_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter[15]~DUPLICATE_q\);

-- Location: FF_X81_Y4_N46
\prescaler|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~97_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(5));

-- Location: MLABCELL_X82_Y4_N6
\prescaler|N[14]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|N[14]~3_combout\ = ( !\prescaler|Mux3~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \prescaler|ALT_INV_Mux3~0_combout\,
	combout => \prescaler|N[14]~3_combout\);

-- Location: FF_X82_Y4_N8
\prescaler|N[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|N[14]~3_combout\,
	ena => \prescaler|N[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|N\(14));

-- Location: MLABCELL_X82_Y4_N27
\prescaler|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal1~4_combout\ = ( \prescaler|counter\(6) & ( \prescaler|counter\(14) & ( (\prescaler|counter[15]~DUPLICATE_q\ & (\prescaler|counter\(5) & (!\prescaler|N\(14) & \prescaler|counter\(21)))) ) ) ) # ( !\prescaler|counter\(6) & ( 
-- !\prescaler|counter\(14) & ( (!\prescaler|counter[15]~DUPLICATE_q\ & (!\prescaler|counter\(5) & (\prescaler|N\(14) & !\prescaler|counter\(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter[15]~DUPLICATE_q\,
	datab => \prescaler|ALT_INV_counter\(5),
	datac => \prescaler|ALT_INV_N\(14),
	datad => \prescaler|ALT_INV_counter\(21),
	datae => \prescaler|ALT_INV_counter\(6),
	dataf => \prescaler|ALT_INV_counter\(14),
	combout => \prescaler|Equal1~4_combout\);

-- Location: LABCELL_X81_Y4_N24
\prescaler|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal1~2_combout\ = ( \prescaler|counter\(2) & ( \prescaler|counter\(1) & ( (!\prescaler|counter\(11) & (!\prescaler|counter\(9) & (!\prescaler|N\(0) & \prescaler|counter\(0)))) ) ) ) # ( !\prescaler|counter\(2) & ( !\prescaler|counter\(1) & ( 
-- (!\prescaler|counter\(11) & (!\prescaler|counter\(9) & (\prescaler|N\(0) & !\prescaler|counter\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(11),
	datab => \prescaler|ALT_INV_counter\(9),
	datac => \prescaler|ALT_INV_N\(0),
	datad => \prescaler|ALT_INV_counter\(0),
	datae => \prescaler|ALT_INV_counter\(2),
	dataf => \prescaler|ALT_INV_counter\(1),
	combout => \prescaler|Equal1~2_combout\);

-- Location: LABCELL_X81_Y4_N0
\prescaler|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal1~6_combout\ = ( \prescaler|Equal1~2_combout\ & ( (\prescaler|Equal1~3_combout\ & (\prescaler|Equal1~5_combout\ & \prescaler|Equal1~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_Equal1~3_combout\,
	datac => \prescaler|ALT_INV_Equal1~5_combout\,
	datad => \prescaler|ALT_INV_Equal1~4_combout\,
	dataf => \prescaler|ALT_INV_Equal1~2_combout\,
	combout => \prescaler|Equal1~6_combout\);

-- Location: FF_X82_Y4_N16
\prescaler|N[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Mux0~0_combout\,
	ena => \prescaler|N[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|N\(18));

-- Location: LABCELL_X81_Y4_N12
\prescaler|Equal1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal1~7_combout\ = ( \prescaler|Equal1~6_combout\ & ( \prescaler|N\(18) & ( (\prescaler|counter\(18) & (\prescaler|Equal1~0_combout\ & \prescaler|Equal1~1_combout\)) ) ) ) # ( \prescaler|Equal1~6_combout\ & ( !\prescaler|N\(18) & ( 
-- (!\prescaler|counter\(18) & (\prescaler|Equal1~0_combout\ & \prescaler|Equal1~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(18),
	datac => \prescaler|ALT_INV_Equal1~0_combout\,
	datad => \prescaler|ALT_INV_Equal1~1_combout\,
	datae => \prescaler|ALT_INV_Equal1~6_combout\,
	dataf => \prescaler|ALT_INV_N\(18),
	combout => \prescaler|Equal1~7_combout\);

-- Location: FF_X81_Y4_N32
\prescaler|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~73_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(0));

-- Location: LABCELL_X81_Y4_N33
\prescaler|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~69_sumout\ = SUM(( \prescaler|counter\(1) ) + ( GND ) + ( \prescaler|Add0~74\ ))
-- \prescaler|Add0~70\ = CARRY(( \prescaler|counter\(1) ) + ( GND ) + ( \prescaler|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(1),
	cin => \prescaler|Add0~74\,
	sumout => \prescaler|Add0~69_sumout\,
	cout => \prescaler|Add0~70\);

-- Location: FF_X81_Y4_N35
\prescaler|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~69_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(1));

-- Location: LABCELL_X81_Y4_N36
\prescaler|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~65_sumout\ = SUM(( \prescaler|counter\(2) ) + ( GND ) + ( \prescaler|Add0~70\ ))
-- \prescaler|Add0~66\ = CARRY(( \prescaler|counter\(2) ) + ( GND ) + ( \prescaler|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter\(2),
	cin => \prescaler|Add0~70\,
	sumout => \prescaler|Add0~65_sumout\,
	cout => \prescaler|Add0~66\);

-- Location: FF_X81_Y4_N38
\prescaler|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~65_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(2));

-- Location: LABCELL_X81_Y4_N39
\prescaler|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~81_sumout\ = SUM(( \prescaler|counter\(3) ) + ( GND ) + ( \prescaler|Add0~66\ ))
-- \prescaler|Add0~82\ = CARRY(( \prescaler|counter\(3) ) + ( GND ) + ( \prescaler|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter\(3),
	cin => \prescaler|Add0~66\,
	sumout => \prescaler|Add0~81_sumout\,
	cout => \prescaler|Add0~82\);

-- Location: FF_X81_Y4_N41
\prescaler|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~81_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(3));

-- Location: LABCELL_X81_Y4_N42
\prescaler|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~77_sumout\ = SUM(( \prescaler|counter\(4) ) + ( GND ) + ( \prescaler|Add0~82\ ))
-- \prescaler|Add0~78\ = CARRY(( \prescaler|counter\(4) ) + ( GND ) + ( \prescaler|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(4),
	cin => \prescaler|Add0~82\,
	sumout => \prescaler|Add0~77_sumout\,
	cout => \prescaler|Add0~78\);

-- Location: FF_X81_Y4_N44
\prescaler|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~77_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(4));

-- Location: LABCELL_X81_Y4_N45
\prescaler|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~97_sumout\ = SUM(( \prescaler|counter[5]~DUPLICATE_q\ ) + ( GND ) + ( \prescaler|Add0~78\ ))
-- \prescaler|Add0~98\ = CARRY(( \prescaler|counter[5]~DUPLICATE_q\ ) + ( GND ) + ( \prescaler|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter[5]~DUPLICATE_q\,
	cin => \prescaler|Add0~78\,
	sumout => \prescaler|Add0~97_sumout\,
	cout => \prescaler|Add0~98\);

-- Location: FF_X81_Y4_N47
\prescaler|counter[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~97_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter[5]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y4_N48
\prescaler|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~93_sumout\ = SUM(( \prescaler|counter\(6) ) + ( GND ) + ( \prescaler|Add0~98\ ))
-- \prescaler|Add0~94\ = CARRY(( \prescaler|counter\(6) ) + ( GND ) + ( \prescaler|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \prescaler|ALT_INV_counter\(6),
	cin => \prescaler|Add0~98\,
	sumout => \prescaler|Add0~93_sumout\,
	cout => \prescaler|Add0~94\);

-- Location: FF_X81_Y4_N49
\prescaler|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~93_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(6));

-- Location: LABCELL_X81_Y4_N51
\prescaler|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~45_sumout\ = SUM(( \prescaler|counter\(7) ) + ( GND ) + ( \prescaler|Add0~94\ ))
-- \prescaler|Add0~46\ = CARRY(( \prescaler|counter\(7) ) + ( GND ) + ( \prescaler|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(7),
	cin => \prescaler|Add0~94\,
	sumout => \prescaler|Add0~45_sumout\,
	cout => \prescaler|Add0~46\);

-- Location: FF_X81_Y4_N53
\prescaler|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~45_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(7));

-- Location: LABCELL_X81_Y4_N54
\prescaler|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~41_sumout\ = SUM(( \prescaler|counter\(8) ) + ( GND ) + ( \prescaler|Add0~46\ ))
-- \prescaler|Add0~42\ = CARRY(( \prescaler|counter\(8) ) + ( GND ) + ( \prescaler|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter\(8),
	cin => \prescaler|Add0~46\,
	sumout => \prescaler|Add0~41_sumout\,
	cout => \prescaler|Add0~42\);

-- Location: FF_X81_Y4_N56
\prescaler|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~41_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(8));

-- Location: LABCELL_X81_Y4_N57
\prescaler|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~61_sumout\ = SUM(( \prescaler|counter\(9) ) + ( GND ) + ( \prescaler|Add0~42\ ))
-- \prescaler|Add0~62\ = CARRY(( \prescaler|counter\(9) ) + ( GND ) + ( \prescaler|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter\(9),
	cin => \prescaler|Add0~42\,
	sumout => \prescaler|Add0~61_sumout\,
	cout => \prescaler|Add0~62\);

-- Location: FF_X81_Y4_N59
\prescaler|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~61_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(9));

-- Location: LABCELL_X81_Y3_N0
\prescaler|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~37_sumout\ = SUM(( \prescaler|counter[10]~DUPLICATE_q\ ) + ( GND ) + ( \prescaler|Add0~62\ ))
-- \prescaler|Add0~38\ = CARRY(( \prescaler|counter[10]~DUPLICATE_q\ ) + ( GND ) + ( \prescaler|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter[10]~DUPLICATE_q\,
	cin => \prescaler|Add0~62\,
	sumout => \prescaler|Add0~37_sumout\,
	cout => \prescaler|Add0~38\);

-- Location: FF_X81_Y3_N2
\prescaler|counter[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~37_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter[10]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y3_N3
\prescaler|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~57_sumout\ = SUM(( \prescaler|counter\(11) ) + ( GND ) + ( \prescaler|Add0~38\ ))
-- \prescaler|Add0~58\ = CARRY(( \prescaler|counter\(11) ) + ( GND ) + ( \prescaler|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \prescaler|ALT_INV_counter\(11),
	cin => \prescaler|Add0~38\,
	sumout => \prescaler|Add0~57_sumout\,
	cout => \prescaler|Add0~58\);

-- Location: FF_X81_Y3_N5
\prescaler|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~57_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(11));

-- Location: LABCELL_X81_Y3_N6
\prescaler|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~53_sumout\ = SUM(( \prescaler|counter\(12) ) + ( GND ) + ( \prescaler|Add0~58\ ))
-- \prescaler|Add0~54\ = CARRY(( \prescaler|counter\(12) ) + ( GND ) + ( \prescaler|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter\(12),
	cin => \prescaler|Add0~58\,
	sumout => \prescaler|Add0~53_sumout\,
	cout => \prescaler|Add0~54\);

-- Location: FF_X81_Y3_N7
\prescaler|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~53_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(12));

-- Location: LABCELL_X81_Y3_N9
\prescaler|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~49_sumout\ = SUM(( \prescaler|counter\(13) ) + ( GND ) + ( \prescaler|Add0~54\ ))
-- \prescaler|Add0~50\ = CARRY(( \prescaler|counter\(13) ) + ( GND ) + ( \prescaler|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter\(13),
	cin => \prescaler|Add0~54\,
	sumout => \prescaler|Add0~49_sumout\,
	cout => \prescaler|Add0~50\);

-- Location: FF_X81_Y3_N11
\prescaler|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~49_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(13));

-- Location: LABCELL_X81_Y3_N12
\prescaler|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~89_sumout\ = SUM(( \prescaler|counter\(14) ) + ( GND ) + ( \prescaler|Add0~50\ ))
-- \prescaler|Add0~90\ = CARRY(( \prescaler|counter\(14) ) + ( GND ) + ( \prescaler|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(14),
	cin => \prescaler|Add0~50\,
	sumout => \prescaler|Add0~89_sumout\,
	cout => \prescaler|Add0~90\);

-- Location: FF_X81_Y3_N13
\prescaler|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~89_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(14));

-- Location: LABCELL_X81_Y3_N15
\prescaler|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~85_sumout\ = SUM(( \prescaler|counter\(15) ) + ( GND ) + ( \prescaler|Add0~90\ ))
-- \prescaler|Add0~86\ = CARRY(( \prescaler|counter\(15) ) + ( GND ) + ( \prescaler|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter\(15),
	cin => \prescaler|Add0~90\,
	sumout => \prescaler|Add0~85_sumout\,
	cout => \prescaler|Add0~86\);

-- Location: FF_X81_Y3_N17
\prescaler|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~85_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(15));

-- Location: LABCELL_X81_Y3_N18
\prescaler|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~33_sumout\ = SUM(( \prescaler|counter\(16) ) + ( GND ) + ( \prescaler|Add0~86\ ))
-- \prescaler|Add0~34\ = CARRY(( \prescaler|counter\(16) ) + ( GND ) + ( \prescaler|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter\(16),
	cin => \prescaler|Add0~86\,
	sumout => \prescaler|Add0~33_sumout\,
	cout => \prescaler|Add0~34\);

-- Location: FF_X81_Y3_N20
\prescaler|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~33_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(16));

-- Location: FF_X81_Y3_N23
\prescaler|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~1_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(17));

-- Location: IOIBUF_X36_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X22_Y0_N35
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X56_Y2_N24
\fsm_inst|next_state.Setup~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|next_state.Setup~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \fsm_inst|next_state.Setup~feeder_combout\);

-- Location: FF_X56_Y2_N25
\fsm_inst|next_state.Setup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|next_state.Setup~feeder_combout\,
	ena => \fsm_inst|next_state.Setup~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|next_state.Setup~q\);

-- Location: FF_X55_Y2_N10
\fsm_inst|current_state.Setup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fsm_inst|next_state.Setup~q\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|current_state.Setup~q\);

-- Location: FF_X55_Y2_N56
\fsm_inst|current_state.WaitForStart\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fsm_inst|next_state.WaitForStart~q\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|current_state.WaitForStart~q\);

-- Location: LABCELL_X55_Y2_N48
\fsm_inst|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector33~0_combout\ = ( \fsm_inst|current_state.LatchValue~q\ & ( (!\fsm_inst|current_state.Setup~q\) # (\fsm_inst|next_state.WaitForStart~q\) ) ) # ( !\fsm_inst|current_state.LatchValue~q\ & ( (!\fsm_inst|current_state.Setup~q\) # 
-- ((!\fsm_inst|LessThan0~10_combout\ & (\fsm_inst|current_state.WaitForStart~q\ & \fsm_inst|next_state.WaitForStart~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101110101010101010111010101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_current_state.Setup~q\,
	datab => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datac => \fsm_inst|ALT_INV_current_state.WaitForStart~q\,
	datad => \fsm_inst|ALT_INV_next_state.WaitForStart~q\,
	dataf => \fsm_inst|ALT_INV_current_state.LatchValue~q\,
	combout => \fsm_inst|Selector33~0_combout\);

-- Location: FF_X55_Y2_N49
\fsm_inst|next_state.WaitForStart\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector33~0_combout\,
	ena => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|next_state.WaitForStart~q\);

-- Location: FF_X55_Y2_N55
\fsm_inst|current_state.WaitForStart~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fsm_inst|next_state.WaitForStart~q\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|current_state.WaitForStart~DUPLICATE_q\);

-- Location: LABCELL_X56_Y4_N0
\fsm_inst|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~117_sumout\ = SUM(( \fsm_inst|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \fsm_inst|Add0~118\ = CARRY(( \fsm_inst|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm_inst|ALT_INV_counter\(0),
	cin => GND,
	sumout => \fsm_inst|Add0~117_sumout\,
	cout => \fsm_inst|Add0~118\);

-- Location: LABCELL_X57_Y2_N36
\fsm_inst|Selector31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector31~0_combout\ = ( \fsm_inst|Add0~117_sumout\ & ( (!\fsm_inst|current_state.WaitForStart~q\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(0))))) # (\fsm_inst|current_state.WaitForStart~q\ & ((!\fsm_inst|LessThan0~10_combout\) # 
-- ((\fsm_inst|counter\(0))))) ) ) # ( !\fsm_inst|Add0~117_sumout\ & ( (\fsm_inst|counter\(0) & ((!\fsm_inst|counter~2_combout\) # ((\fsm_inst|LessThan0~10_combout\ & \fsm_inst|current_state.WaitForStart~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110001000000001111000100100010111100110010001011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datab => \fsm_inst|ALT_INV_current_state.WaitForStart~q\,
	datac => \fsm_inst|ALT_INV_counter~2_combout\,
	datad => \fsm_inst|ALT_INV_counter\(0),
	dataf => \fsm_inst|ALT_INV_Add0~117_sumout\,
	combout => \fsm_inst|Selector31~0_combout\);

-- Location: FF_X57_Y2_N38
\fsm_inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector31~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(0));

-- Location: LABCELL_X56_Y4_N3
\fsm_inst|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~121_sumout\ = SUM(( \fsm_inst|counter\(1) ) + ( GND ) + ( \fsm_inst|Add0~118\ ))
-- \fsm_inst|Add0~122\ = CARRY(( \fsm_inst|counter\(1) ) + ( GND ) + ( \fsm_inst|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm_inst|ALT_INV_counter\(1),
	cin => \fsm_inst|Add0~118\,
	sumout => \fsm_inst|Add0~121_sumout\,
	cout => \fsm_inst|Add0~122\);

-- Location: LABCELL_X57_Y2_N45
\fsm_inst|Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector30~0_combout\ = ( \fsm_inst|Add0~121_sumout\ & ( (!\fsm_inst|current_state.WaitForStart~q\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(1))))) # (\fsm_inst|current_state.WaitForStart~q\ & ((!\fsm_inst|LessThan0~10_combout\) # 
-- ((\fsm_inst|counter\(1))))) ) ) # ( !\fsm_inst|Add0~121_sumout\ & ( (\fsm_inst|counter\(1) & ((!\fsm_inst|counter~2_combout\) # ((\fsm_inst|LessThan0~10_combout\ & \fsm_inst|current_state.WaitForStart~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110001000000001111000100100010111100110010001011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datab => \fsm_inst|ALT_INV_current_state.WaitForStart~q\,
	datac => \fsm_inst|ALT_INV_counter~2_combout\,
	datad => \fsm_inst|ALT_INV_counter\(1),
	dataf => \fsm_inst|ALT_INV_Add0~121_sumout\,
	combout => \fsm_inst|Selector30~0_combout\);

-- Location: FF_X57_Y2_N47
\fsm_inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector30~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(1));

-- Location: LABCELL_X56_Y4_N6
\fsm_inst|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~113_sumout\ = SUM(( \fsm_inst|counter\(2) ) + ( GND ) + ( \fsm_inst|Add0~122\ ))
-- \fsm_inst|Add0~114\ = CARRY(( \fsm_inst|counter\(2) ) + ( GND ) + ( \fsm_inst|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm_inst|ALT_INV_counter\(2),
	cin => \fsm_inst|Add0~122\,
	sumout => \fsm_inst|Add0~113_sumout\,
	cout => \fsm_inst|Add0~114\);

-- Location: LABCELL_X55_Y2_N3
\fsm_inst|Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector29~0_combout\ = ( \fsm_inst|current_state.WaitForStart~q\ & ( (!\fsm_inst|LessThan0~10_combout\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(2))) # (\fsm_inst|Add0~113_sumout\))) # (\fsm_inst|LessThan0~10_combout\ & 
-- (((\fsm_inst|counter\(2))))) ) ) # ( !\fsm_inst|current_state.WaitForStart~q\ & ( (!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001100101111110000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_counter~2_combout\,
	datab => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datac => \fsm_inst|ALT_INV_Add0~113_sumout\,
	datad => \fsm_inst|ALT_INV_counter\(2),
	dataf => \fsm_inst|ALT_INV_current_state.WaitForStart~q\,
	combout => \fsm_inst|Selector29~0_combout\);

-- Location: FF_X55_Y2_N5
\fsm_inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector29~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(2));

-- Location: LABCELL_X56_Y4_N9
\fsm_inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~1_sumout\ = SUM(( \fsm_inst|counter\(3) ) + ( GND ) + ( \fsm_inst|Add0~114\ ))
-- \fsm_inst|Add0~2\ = CARRY(( \fsm_inst|counter\(3) ) + ( GND ) + ( \fsm_inst|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm_inst|ALT_INV_counter\(3),
	cin => \fsm_inst|Add0~114\,
	sumout => \fsm_inst|Add0~1_sumout\,
	cout => \fsm_inst|Add0~2\);

-- Location: LABCELL_X56_Y4_N12
\fsm_inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~17_sumout\ = SUM(( \fsm_inst|counter\(4) ) + ( GND ) + ( \fsm_inst|Add0~2\ ))
-- \fsm_inst|Add0~18\ = CARRY(( \fsm_inst|counter\(4) ) + ( GND ) + ( \fsm_inst|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm_inst|ALT_INV_counter\(4),
	cin => \fsm_inst|Add0~2\,
	sumout => \fsm_inst|Add0~17_sumout\,
	cout => \fsm_inst|Add0~18\);

-- Location: LABCELL_X55_Y2_N45
\fsm_inst|Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector27~0_combout\ = ( \fsm_inst|current_state.WaitForStart~q\ & ( (!\fsm_inst|LessThan0~10_combout\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(4))) # (\fsm_inst|Add0~17_sumout\))) # (\fsm_inst|LessThan0~10_combout\ & 
-- (((\fsm_inst|counter\(4))))) ) ) # ( !\fsm_inst|current_state.WaitForStart~q\ & ( (!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001100101111110000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_counter~2_combout\,
	datab => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datac => \fsm_inst|ALT_INV_Add0~17_sumout\,
	datad => \fsm_inst|ALT_INV_counter\(4),
	dataf => \fsm_inst|ALT_INV_current_state.WaitForStart~q\,
	combout => \fsm_inst|Selector27~0_combout\);

-- Location: FF_X55_Y2_N47
\fsm_inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector27~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(4));

-- Location: LABCELL_X56_Y4_N15
\fsm_inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~13_sumout\ = SUM(( \fsm_inst|counter\(5) ) + ( GND ) + ( \fsm_inst|Add0~18\ ))
-- \fsm_inst|Add0~14\ = CARRY(( \fsm_inst|counter\(5) ) + ( GND ) + ( \fsm_inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm_inst|ALT_INV_counter\(5),
	cin => \fsm_inst|Add0~18\,
	sumout => \fsm_inst|Add0~13_sumout\,
	cout => \fsm_inst|Add0~14\);

-- Location: LABCELL_X55_Y2_N12
\fsm_inst|Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector26~0_combout\ = ( \fsm_inst|current_state.WaitForStart~q\ & ( (!\fsm_inst|LessThan0~10_combout\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(5))) # (\fsm_inst|Add0~13_sumout\))) # (\fsm_inst|LessThan0~10_combout\ & 
-- (((\fsm_inst|counter\(5))))) ) ) # ( !\fsm_inst|current_state.WaitForStart~q\ & ( (!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001100101111110000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_counter~2_combout\,
	datab => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datac => \fsm_inst|ALT_INV_Add0~13_sumout\,
	datad => \fsm_inst|ALT_INV_counter\(5),
	dataf => \fsm_inst|ALT_INV_current_state.WaitForStart~q\,
	combout => \fsm_inst|Selector26~0_combout\);

-- Location: FF_X55_Y2_N14
\fsm_inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector26~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(5));

-- Location: LABCELL_X56_Y4_N18
\fsm_inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~9_sumout\ = SUM(( \fsm_inst|counter\(6) ) + ( GND ) + ( \fsm_inst|Add0~14\ ))
-- \fsm_inst|Add0~10\ = CARRY(( \fsm_inst|counter\(6) ) + ( GND ) + ( \fsm_inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm_inst|ALT_INV_counter\(6),
	cin => \fsm_inst|Add0~14\,
	sumout => \fsm_inst|Add0~9_sumout\,
	cout => \fsm_inst|Add0~10\);

-- Location: LABCELL_X55_Y2_N6
\fsm_inst|Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector25~0_combout\ = ( \fsm_inst|counter\(6) & ( \fsm_inst|counter~2_combout\ & ( (\fsm_inst|current_state.WaitForStart~q\ & ((\fsm_inst|LessThan0~10_combout\) # (\fsm_inst|Add0~9_sumout\))) ) ) ) # ( !\fsm_inst|counter\(6) & ( 
-- \fsm_inst|counter~2_combout\ & ( (\fsm_inst|Add0~9_sumout\ & (!\fsm_inst|LessThan0~10_combout\ & \fsm_inst|current_state.WaitForStart~q\)) ) ) ) # ( \fsm_inst|counter\(6) & ( !\fsm_inst|counter~2_combout\ ) ) # ( !\fsm_inst|counter\(6) & ( 
-- !\fsm_inst|counter~2_combout\ & ( (\fsm_inst|Add0~9_sumout\ & (!\fsm_inst|LessThan0~10_combout\ & \fsm_inst|current_state.WaitForStart~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100111111111111111100000100000001000000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_Add0~9_sumout\,
	datab => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datac => \fsm_inst|ALT_INV_current_state.WaitForStart~q\,
	datae => \fsm_inst|ALT_INV_counter\(6),
	dataf => \fsm_inst|ALT_INV_counter~2_combout\,
	combout => \fsm_inst|Selector25~0_combout\);

-- Location: FF_X55_Y2_N8
\fsm_inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector25~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(6));

-- Location: LABCELL_X55_Y2_N51
\fsm_inst|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|LessThan0~0_combout\ = ( !\fsm_inst|counter\(6) & ( (!\fsm_inst|counter\(5) & !\fsm_inst|counter\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm_inst|ALT_INV_counter\(5),
	datad => \fsm_inst|ALT_INV_counter\(4),
	dataf => \fsm_inst|ALT_INV_counter\(6),
	combout => \fsm_inst|LessThan0~0_combout\);

-- Location: LABCELL_X56_Y4_N21
\fsm_inst|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~41_sumout\ = SUM(( \fsm_inst|counter\(7) ) + ( GND ) + ( \fsm_inst|Add0~10\ ))
-- \fsm_inst|Add0~42\ = CARRY(( \fsm_inst|counter\(7) ) + ( GND ) + ( \fsm_inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm_inst|ALT_INV_counter\(7),
	cin => \fsm_inst|Add0~10\,
	sumout => \fsm_inst|Add0~41_sumout\,
	cout => \fsm_inst|Add0~42\);

-- Location: LABCELL_X57_Y2_N15
\fsm_inst|Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector24~0_combout\ = ( \fsm_inst|Add0~41_sumout\ & ( (!\fsm_inst|current_state.WaitForStart~q\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(7))))) # (\fsm_inst|current_state.WaitForStart~q\ & ((!\fsm_inst|LessThan0~10_combout\) # 
-- ((\fsm_inst|counter\(7))))) ) ) # ( !\fsm_inst|Add0~41_sumout\ & ( (\fsm_inst|counter\(7) & ((!\fsm_inst|counter~2_combout\) # ((\fsm_inst|LessThan0~10_combout\ & \fsm_inst|current_state.WaitForStart~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110001000000001111000100100010111100110010001011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datab => \fsm_inst|ALT_INV_current_state.WaitForStart~q\,
	datac => \fsm_inst|ALT_INV_counter~2_combout\,
	datad => \fsm_inst|ALT_INV_counter\(7),
	dataf => \fsm_inst|ALT_INV_Add0~41_sumout\,
	combout => \fsm_inst|Selector24~0_combout\);

-- Location: FF_X57_Y2_N17
\fsm_inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector24~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(7));

-- Location: LABCELL_X56_Y4_N24
\fsm_inst|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~37_sumout\ = SUM(( \fsm_inst|counter\(8) ) + ( GND ) + ( \fsm_inst|Add0~42\ ))
-- \fsm_inst|Add0~38\ = CARRY(( \fsm_inst|counter\(8) ) + ( GND ) + ( \fsm_inst|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm_inst|ALT_INV_counter\(8),
	cin => \fsm_inst|Add0~42\,
	sumout => \fsm_inst|Add0~37_sumout\,
	cout => \fsm_inst|Add0~38\);

-- Location: LABCELL_X57_Y2_N27
\fsm_inst|Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector23~0_combout\ = ( \fsm_inst|Add0~37_sumout\ & ( (!\fsm_inst|current_state.WaitForStart~q\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(8))))) # (\fsm_inst|current_state.WaitForStart~q\ & ((!\fsm_inst|LessThan0~10_combout\) # 
-- ((\fsm_inst|counter\(8))))) ) ) # ( !\fsm_inst|Add0~37_sumout\ & ( (\fsm_inst|counter\(8) & ((!\fsm_inst|counter~2_combout\) # ((\fsm_inst|LessThan0~10_combout\ & \fsm_inst|current_state.WaitForStart~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110001000000001111000100100010111100110010001011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datab => \fsm_inst|ALT_INV_current_state.WaitForStart~q\,
	datac => \fsm_inst|ALT_INV_counter~2_combout\,
	datad => \fsm_inst|ALT_INV_counter\(8),
	dataf => \fsm_inst|ALT_INV_Add0~37_sumout\,
	combout => \fsm_inst|Selector23~0_combout\);

-- Location: FF_X57_Y2_N29
\fsm_inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector23~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(8));

-- Location: LABCELL_X56_Y4_N27
\fsm_inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~33_sumout\ = SUM(( \fsm_inst|counter\(9) ) + ( GND ) + ( \fsm_inst|Add0~38\ ))
-- \fsm_inst|Add0~34\ = CARRY(( \fsm_inst|counter\(9) ) + ( GND ) + ( \fsm_inst|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm_inst|ALT_INV_counter\(9),
	cin => \fsm_inst|Add0~38\,
	sumout => \fsm_inst|Add0~33_sumout\,
	cout => \fsm_inst|Add0~34\);

-- Location: LABCELL_X57_Y2_N48
\fsm_inst|Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector22~0_combout\ = ( \fsm_inst|Add0~33_sumout\ & ( (!\fsm_inst|current_state.WaitForStart~q\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(9))))) # (\fsm_inst|current_state.WaitForStart~q\ & ((!\fsm_inst|LessThan0~10_combout\) # 
-- ((\fsm_inst|counter\(9))))) ) ) # ( !\fsm_inst|Add0~33_sumout\ & ( (\fsm_inst|counter\(9) & ((!\fsm_inst|counter~2_combout\) # ((\fsm_inst|LessThan0~10_combout\ & \fsm_inst|current_state.WaitForStart~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110001000000001111000100100010111100110010001011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datab => \fsm_inst|ALT_INV_current_state.WaitForStart~q\,
	datac => \fsm_inst|ALT_INV_counter~2_combout\,
	datad => \fsm_inst|ALT_INV_counter\(9),
	dataf => \fsm_inst|ALT_INV_Add0~33_sumout\,
	combout => \fsm_inst|Selector22~0_combout\);

-- Location: FF_X57_Y2_N50
\fsm_inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector22~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(9));

-- Location: LABCELL_X56_Y4_N30
\fsm_inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~29_sumout\ = SUM(( \fsm_inst|counter\(10) ) + ( GND ) + ( \fsm_inst|Add0~34\ ))
-- \fsm_inst|Add0~30\ = CARRY(( \fsm_inst|counter\(10) ) + ( GND ) + ( \fsm_inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm_inst|ALT_INV_counter\(10),
	cin => \fsm_inst|Add0~34\,
	sumout => \fsm_inst|Add0~29_sumout\,
	cout => \fsm_inst|Add0~30\);

-- Location: LABCELL_X57_Y2_N12
\fsm_inst|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector21~0_combout\ = ( \fsm_inst|Add0~29_sumout\ & ( (!\fsm_inst|current_state.WaitForStart~q\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(10))))) # (\fsm_inst|current_state.WaitForStart~q\ & ((!\fsm_inst|LessThan0~10_combout\) # 
-- ((\fsm_inst|counter\(10))))) ) ) # ( !\fsm_inst|Add0~29_sumout\ & ( (\fsm_inst|counter\(10) & ((!\fsm_inst|counter~2_combout\) # ((\fsm_inst|LessThan0~10_combout\ & \fsm_inst|current_state.WaitForStart~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110001000000001111000100100010111100110010001011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datab => \fsm_inst|ALT_INV_current_state.WaitForStart~q\,
	datac => \fsm_inst|ALT_INV_counter~2_combout\,
	datad => \fsm_inst|ALT_INV_counter\(10),
	dataf => \fsm_inst|ALT_INV_Add0~29_sumout\,
	combout => \fsm_inst|Selector21~0_combout\);

-- Location: FF_X57_Y2_N14
\fsm_inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector21~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(10));

-- Location: LABCELL_X56_Y4_N33
\fsm_inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~25_sumout\ = SUM(( \fsm_inst|counter\(11) ) + ( GND ) + ( \fsm_inst|Add0~30\ ))
-- \fsm_inst|Add0~26\ = CARRY(( \fsm_inst|counter\(11) ) + ( GND ) + ( \fsm_inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_counter\(11),
	cin => \fsm_inst|Add0~30\,
	sumout => \fsm_inst|Add0~25_sumout\,
	cout => \fsm_inst|Add0~26\);

-- Location: LABCELL_X57_Y2_N51
\fsm_inst|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector20~0_combout\ = ( \fsm_inst|Add0~25_sumout\ & ( (!\fsm_inst|current_state.WaitForStart~q\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(11))))) # (\fsm_inst|current_state.WaitForStart~q\ & ((!\fsm_inst|LessThan0~10_combout\) # 
-- ((\fsm_inst|counter\(11))))) ) ) # ( !\fsm_inst|Add0~25_sumout\ & ( (\fsm_inst|counter\(11) & ((!\fsm_inst|counter~2_combout\) # ((\fsm_inst|LessThan0~10_combout\ & \fsm_inst|current_state.WaitForStart~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110001000000001111000100100010111100110010001011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datab => \fsm_inst|ALT_INV_current_state.WaitForStart~q\,
	datac => \fsm_inst|ALT_INV_counter~2_combout\,
	datad => \fsm_inst|ALT_INV_counter\(11),
	dataf => \fsm_inst|ALT_INV_Add0~25_sumout\,
	combout => \fsm_inst|Selector20~0_combout\);

-- Location: FF_X57_Y2_N53
\fsm_inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector20~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(11));

-- Location: LABCELL_X56_Y4_N36
\fsm_inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~21_sumout\ = SUM(( \fsm_inst|counter\(12) ) + ( GND ) + ( \fsm_inst|Add0~26\ ))
-- \fsm_inst|Add0~22\ = CARRY(( \fsm_inst|counter\(12) ) + ( GND ) + ( \fsm_inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm_inst|ALT_INV_counter\(12),
	cin => \fsm_inst|Add0~26\,
	sumout => \fsm_inst|Add0~21_sumout\,
	cout => \fsm_inst|Add0~22\);

-- Location: LABCELL_X57_Y2_N39
\fsm_inst|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector19~0_combout\ = ( \fsm_inst|counter~2_combout\ & ( (\fsm_inst|current_state.WaitForStart~q\ & ((!\fsm_inst|LessThan0~10_combout\ & (\fsm_inst|Add0~21_sumout\)) # (\fsm_inst|LessThan0~10_combout\ & ((\fsm_inst|counter\(12)))))) ) ) # ( 
-- !\fsm_inst|counter~2_combout\ & ( ((!\fsm_inst|LessThan0~10_combout\ & (\fsm_inst|current_state.WaitForStart~q\ & \fsm_inst|Add0~21_sumout\))) # (\fsm_inst|counter\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011111111000000101111111100000010000100110000001000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datab => \fsm_inst|ALT_INV_current_state.WaitForStart~q\,
	datac => \fsm_inst|ALT_INV_Add0~21_sumout\,
	datad => \fsm_inst|ALT_INV_counter\(12),
	dataf => \fsm_inst|ALT_INV_counter~2_combout\,
	combout => \fsm_inst|Selector19~0_combout\);

-- Location: FF_X57_Y2_N41
\fsm_inst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector19~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(12));

-- Location: LABCELL_X57_Y2_N54
\fsm_inst|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|LessThan0~1_combout\ = ( !\fsm_inst|counter\(7) & ( !\fsm_inst|counter\(9) & ( (!\fsm_inst|counter\(11) & (!\fsm_inst|counter\(12) & (!\fsm_inst|counter\(8) & !\fsm_inst|counter\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_counter\(11),
	datab => \fsm_inst|ALT_INV_counter\(12),
	datac => \fsm_inst|ALT_INV_counter\(8),
	datad => \fsm_inst|ALT_INV_counter\(10),
	datae => \fsm_inst|ALT_INV_counter\(7),
	dataf => \fsm_inst|ALT_INV_counter\(9),
	combout => \fsm_inst|LessThan0~1_combout\);

-- Location: LABCELL_X56_Y4_N39
\fsm_inst|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~65_sumout\ = SUM(( \fsm_inst|counter\(13) ) + ( GND ) + ( \fsm_inst|Add0~22\ ))
-- \fsm_inst|Add0~66\ = CARRY(( \fsm_inst|counter\(13) ) + ( GND ) + ( \fsm_inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm_inst|ALT_INV_counter\(13),
	cin => \fsm_inst|Add0~22\,
	sumout => \fsm_inst|Add0~65_sumout\,
	cout => \fsm_inst|Add0~66\);

-- Location: LABCELL_X55_Y2_N24
\fsm_inst|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector18~0_combout\ = ( \fsm_inst|Add0~65_sumout\ & ( (!\fsm_inst|current_state.WaitForStart~q\ & (!\fsm_inst|counter~2_combout\ & ((\fsm_inst|counter\(13))))) # (\fsm_inst|current_state.WaitForStart~q\ & (((!\fsm_inst|LessThan0~10_combout\) # 
-- (\fsm_inst|counter\(13))))) ) ) # ( !\fsm_inst|Add0~65_sumout\ & ( (\fsm_inst|counter\(13) & ((!\fsm_inst|counter~2_combout\) # ((\fsm_inst|LessThan0~10_combout\ & \fsm_inst|current_state.WaitForStart~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101011000000001010101100001100101011110000110010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_counter~2_combout\,
	datab => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datac => \fsm_inst|ALT_INV_current_state.WaitForStart~q\,
	datad => \fsm_inst|ALT_INV_counter\(13),
	dataf => \fsm_inst|ALT_INV_Add0~65_sumout\,
	combout => \fsm_inst|Selector18~0_combout\);

-- Location: FF_X55_Y2_N26
\fsm_inst|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector18~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(13));

-- Location: LABCELL_X56_Y4_N42
\fsm_inst|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~61_sumout\ = SUM(( \fsm_inst|counter\(14) ) + ( GND ) + ( \fsm_inst|Add0~66\ ))
-- \fsm_inst|Add0~62\ = CARRY(( \fsm_inst|counter\(14) ) + ( GND ) + ( \fsm_inst|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm_inst|ALT_INV_counter\(14),
	cin => \fsm_inst|Add0~66\,
	sumout => \fsm_inst|Add0~61_sumout\,
	cout => \fsm_inst|Add0~62\);

-- Location: LABCELL_X55_Y2_N33
\fsm_inst|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector17~0_combout\ = ( \fsm_inst|current_state.WaitForStart~q\ & ( (!\fsm_inst|LessThan0~10_combout\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(14))) # (\fsm_inst|Add0~61_sumout\))) # (\fsm_inst|LessThan0~10_combout\ & 
-- (((\fsm_inst|counter\(14))))) ) ) # ( !\fsm_inst|current_state.WaitForStart~q\ & ( (!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001100101111110000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_counter~2_combout\,
	datab => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datac => \fsm_inst|ALT_INV_Add0~61_sumout\,
	datad => \fsm_inst|ALT_INV_counter\(14),
	dataf => \fsm_inst|ALT_INV_current_state.WaitForStart~q\,
	combout => \fsm_inst|Selector17~0_combout\);

-- Location: FF_X55_Y2_N35
\fsm_inst|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector17~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(14));

-- Location: LABCELL_X56_Y4_N45
\fsm_inst|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~57_sumout\ = SUM(( \fsm_inst|counter\(15) ) + ( GND ) + ( \fsm_inst|Add0~62\ ))
-- \fsm_inst|Add0~58\ = CARRY(( \fsm_inst|counter\(15) ) + ( GND ) + ( \fsm_inst|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm_inst|ALT_INV_counter\(15),
	cin => \fsm_inst|Add0~62\,
	sumout => \fsm_inst|Add0~57_sumout\,
	cout => \fsm_inst|Add0~58\);

-- Location: LABCELL_X55_Y2_N18
\fsm_inst|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector16~0_combout\ = ( \fsm_inst|Add0~57_sumout\ & ( (!\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(15))))) # (\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & 
-- ((!\fsm_inst|LessThan0~10_combout\) # ((\fsm_inst|counter\(15))))) ) ) # ( !\fsm_inst|Add0~57_sumout\ & ( (\fsm_inst|counter\(15) & ((!\fsm_inst|counter~2_combout\) # ((\fsm_inst|LessThan0~10_combout\ & 
-- \fsm_inst|current_state.WaitForStart~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110001000000001111000100100010111100110010001011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datab => \fsm_inst|ALT_INV_current_state.WaitForStart~DUPLICATE_q\,
	datac => \fsm_inst|ALT_INV_counter~2_combout\,
	datad => \fsm_inst|ALT_INV_counter\(15),
	dataf => \fsm_inst|ALT_INV_Add0~57_sumout\,
	combout => \fsm_inst|Selector16~0_combout\);

-- Location: FF_X55_Y2_N20
\fsm_inst|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector16~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(15));

-- Location: LABCELL_X56_Y4_N48
\fsm_inst|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~53_sumout\ = SUM(( \fsm_inst|counter\(16) ) + ( GND ) + ( \fsm_inst|Add0~58\ ))
-- \fsm_inst|Add0~54\ = CARRY(( \fsm_inst|counter\(16) ) + ( GND ) + ( \fsm_inst|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm_inst|ALT_INV_counter\(16),
	cin => \fsm_inst|Add0~58\,
	sumout => \fsm_inst|Add0~53_sumout\,
	cout => \fsm_inst|Add0~54\);

-- Location: LABCELL_X55_Y2_N30
\fsm_inst|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector15~0_combout\ = ( \fsm_inst|Add0~53_sumout\ & ( (!\fsm_inst|current_state.WaitForStart~q\ & (!\fsm_inst|counter~2_combout\ & ((\fsm_inst|counter\(16))))) # (\fsm_inst|current_state.WaitForStart~q\ & (((!\fsm_inst|LessThan0~10_combout\) # 
-- (\fsm_inst|counter\(16))))) ) ) # ( !\fsm_inst|Add0~53_sumout\ & ( (\fsm_inst|counter\(16) & ((!\fsm_inst|counter~2_combout\) # ((\fsm_inst|LessThan0~10_combout\ & \fsm_inst|current_state.WaitForStart~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101011000000001010101100001100101011110000110010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_counter~2_combout\,
	datab => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datac => \fsm_inst|ALT_INV_current_state.WaitForStart~q\,
	datad => \fsm_inst|ALT_INV_counter\(16),
	dataf => \fsm_inst|ALT_INV_Add0~53_sumout\,
	combout => \fsm_inst|Selector15~0_combout\);

-- Location: FF_X55_Y2_N32
\fsm_inst|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector15~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(16));

-- Location: LABCELL_X56_Y4_N51
\fsm_inst|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~49_sumout\ = SUM(( \fsm_inst|counter\(17) ) + ( GND ) + ( \fsm_inst|Add0~54\ ))
-- \fsm_inst|Add0~50\ = CARRY(( \fsm_inst|counter\(17) ) + ( GND ) + ( \fsm_inst|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm_inst|ALT_INV_counter\(17),
	cin => \fsm_inst|Add0~54\,
	sumout => \fsm_inst|Add0~49_sumout\,
	cout => \fsm_inst|Add0~50\);

-- Location: LABCELL_X55_Y2_N27
\fsm_inst|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector14~0_combout\ = ( \fsm_inst|current_state.WaitForStart~q\ & ( (!\fsm_inst|LessThan0~10_combout\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(17))) # (\fsm_inst|Add0~49_sumout\))) # (\fsm_inst|LessThan0~10_combout\ & 
-- (((\fsm_inst|counter\(17))))) ) ) # ( !\fsm_inst|current_state.WaitForStart~q\ & ( (!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(17)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001100101111110000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_counter~2_combout\,
	datab => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datac => \fsm_inst|ALT_INV_Add0~49_sumout\,
	datad => \fsm_inst|ALT_INV_counter\(17),
	dataf => \fsm_inst|ALT_INV_current_state.WaitForStart~q\,
	combout => \fsm_inst|Selector14~0_combout\);

-- Location: FF_X55_Y2_N29
\fsm_inst|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector14~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(17));

-- Location: LABCELL_X56_Y4_N54
\fsm_inst|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~45_sumout\ = SUM(( \fsm_inst|counter\(18) ) + ( GND ) + ( \fsm_inst|Add0~50\ ))
-- \fsm_inst|Add0~46\ = CARRY(( \fsm_inst|counter\(18) ) + ( GND ) + ( \fsm_inst|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm_inst|ALT_INV_counter\(18),
	cin => \fsm_inst|Add0~50\,
	sumout => \fsm_inst|Add0~45_sumout\,
	cout => \fsm_inst|Add0~46\);

-- Location: LABCELL_X55_Y2_N21
\fsm_inst|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector13~0_combout\ = ( \fsm_inst|Add0~45_sumout\ & ( (!\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(18))))) # (\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & 
-- ((!\fsm_inst|LessThan0~10_combout\) # ((\fsm_inst|counter\(18))))) ) ) # ( !\fsm_inst|Add0~45_sumout\ & ( (\fsm_inst|counter\(18) & ((!\fsm_inst|counter~2_combout\) # ((\fsm_inst|LessThan0~10_combout\ & 
-- \fsm_inst|current_state.WaitForStart~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110001000000001111000100100010111100110010001011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datab => \fsm_inst|ALT_INV_current_state.WaitForStart~DUPLICATE_q\,
	datac => \fsm_inst|ALT_INV_counter~2_combout\,
	datad => \fsm_inst|ALT_INV_counter\(18),
	dataf => \fsm_inst|ALT_INV_Add0~45_sumout\,
	combout => \fsm_inst|Selector13~0_combout\);

-- Location: FF_X55_Y2_N23
\fsm_inst|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector13~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(18));

-- Location: LABCELL_X56_Y4_N57
\fsm_inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~5_sumout\ = SUM(( \fsm_inst|counter\(19) ) + ( GND ) + ( \fsm_inst|Add0~46\ ))
-- \fsm_inst|Add0~6\ = CARRY(( \fsm_inst|counter\(19) ) + ( GND ) + ( \fsm_inst|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_counter\(19),
	cin => \fsm_inst|Add0~46\,
	sumout => \fsm_inst|Add0~5_sumout\,
	cout => \fsm_inst|Add0~6\);

-- Location: LABCELL_X57_Y2_N42
\fsm_inst|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector12~0_combout\ = ( \fsm_inst|Add0~5_sumout\ & ( (!\fsm_inst|current_state.WaitForStart~q\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(19))))) # (\fsm_inst|current_state.WaitForStart~q\ & ((!\fsm_inst|LessThan0~10_combout\) # 
-- ((\fsm_inst|counter\(19))))) ) ) # ( !\fsm_inst|Add0~5_sumout\ & ( (\fsm_inst|counter\(19) & ((!\fsm_inst|counter~2_combout\) # ((\fsm_inst|LessThan0~10_combout\ & \fsm_inst|current_state.WaitForStart~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110001000000001111000100100010111100110010001011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datab => \fsm_inst|ALT_INV_current_state.WaitForStart~q\,
	datac => \fsm_inst|ALT_INV_counter~2_combout\,
	datad => \fsm_inst|ALT_INV_counter\(19),
	dataf => \fsm_inst|ALT_INV_Add0~5_sumout\,
	combout => \fsm_inst|Selector12~0_combout\);

-- Location: FF_X57_Y2_N44
\fsm_inst|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector12~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(19));

-- Location: LABCELL_X56_Y3_N0
\fsm_inst|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~109_sumout\ = SUM(( \fsm_inst|counter\(20) ) + ( GND ) + ( \fsm_inst|Add0~6\ ))
-- \fsm_inst|Add0~110\ = CARRY(( \fsm_inst|counter\(20) ) + ( GND ) + ( \fsm_inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm_inst|ALT_INV_counter\(20),
	cin => \fsm_inst|Add0~6\,
	sumout => \fsm_inst|Add0~109_sumout\,
	cout => \fsm_inst|Add0~110\);

-- Location: LABCELL_X57_Y2_N21
\fsm_inst|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector11~0_combout\ = ( \fsm_inst|Add0~109_sumout\ & ( (!\fsm_inst|current_state.WaitForStart~q\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(20))))) # (\fsm_inst|current_state.WaitForStart~q\ & ((!\fsm_inst|LessThan0~10_combout\) # 
-- ((\fsm_inst|counter\(20))))) ) ) # ( !\fsm_inst|Add0~109_sumout\ & ( (\fsm_inst|counter\(20) & ((!\fsm_inst|counter~2_combout\) # ((\fsm_inst|LessThan0~10_combout\ & \fsm_inst|current_state.WaitForStart~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110001000000001111000100100010111100110010001011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datab => \fsm_inst|ALT_INV_current_state.WaitForStart~q\,
	datac => \fsm_inst|ALT_INV_counter~2_combout\,
	datad => \fsm_inst|ALT_INV_counter\(20),
	dataf => \fsm_inst|ALT_INV_Add0~109_sumout\,
	combout => \fsm_inst|Selector11~0_combout\);

-- Location: FF_X57_Y2_N23
\fsm_inst|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector11~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(20));

-- Location: LABCELL_X56_Y3_N3
\fsm_inst|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~105_sumout\ = SUM(( \fsm_inst|counter\(21) ) + ( GND ) + ( \fsm_inst|Add0~110\ ))
-- \fsm_inst|Add0~106\ = CARRY(( \fsm_inst|counter\(21) ) + ( GND ) + ( \fsm_inst|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm_inst|ALT_INV_counter\(21),
	cin => \fsm_inst|Add0~110\,
	sumout => \fsm_inst|Add0~105_sumout\,
	cout => \fsm_inst|Add0~106\);

-- Location: LABCELL_X56_Y3_N42
\fsm_inst|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector10~0_combout\ = ( \fsm_inst|LessThan0~10_combout\ & ( (\fsm_inst|counter\(21) & ((!\fsm_inst|counter~2_combout\) # (\fsm_inst|current_state.WaitForStart~DUPLICATE_q\))) ) ) # ( !\fsm_inst|LessThan0~10_combout\ & ( 
-- (!\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & (!\fsm_inst|counter~2_combout\ & ((\fsm_inst|counter\(21))))) # (\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(21))) # 
-- (\fsm_inst|Add0~105_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000000110111010000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_current_state.WaitForStart~DUPLICATE_q\,
	datab => \fsm_inst|ALT_INV_counter~2_combout\,
	datac => \fsm_inst|ALT_INV_Add0~105_sumout\,
	datad => \fsm_inst|ALT_INV_counter\(21),
	dataf => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	combout => \fsm_inst|Selector10~0_combout\);

-- Location: FF_X56_Y3_N44
\fsm_inst|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector10~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(21));

-- Location: LABCELL_X56_Y3_N6
\fsm_inst|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~101_sumout\ = SUM(( \fsm_inst|counter\(22) ) + ( GND ) + ( \fsm_inst|Add0~106\ ))
-- \fsm_inst|Add0~102\ = CARRY(( \fsm_inst|counter\(22) ) + ( GND ) + ( \fsm_inst|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm_inst|ALT_INV_counter\(22),
	cin => \fsm_inst|Add0~106\,
	sumout => \fsm_inst|Add0~101_sumout\,
	cout => \fsm_inst|Add0~102\);

-- Location: LABCELL_X57_Y2_N6
\fsm_inst|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector9~0_combout\ = ( \fsm_inst|Add0~101_sumout\ & ( (!\fsm_inst|current_state.WaitForStart~q\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(22))))) # (\fsm_inst|current_state.WaitForStart~q\ & ((!\fsm_inst|LessThan0~10_combout\) # 
-- ((\fsm_inst|counter\(22))))) ) ) # ( !\fsm_inst|Add0~101_sumout\ & ( (\fsm_inst|counter\(22) & ((!\fsm_inst|counter~2_combout\) # ((\fsm_inst|LessThan0~10_combout\ & \fsm_inst|current_state.WaitForStart~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110001000000001111000100100010111100110010001011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datab => \fsm_inst|ALT_INV_current_state.WaitForStart~q\,
	datac => \fsm_inst|ALT_INV_counter~2_combout\,
	datad => \fsm_inst|ALT_INV_counter\(22),
	dataf => \fsm_inst|ALT_INV_Add0~101_sumout\,
	combout => \fsm_inst|Selector9~0_combout\);

-- Location: FF_X57_Y2_N8
\fsm_inst|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector9~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(22));

-- Location: LABCELL_X56_Y3_N9
\fsm_inst|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~97_sumout\ = SUM(( \fsm_inst|counter\(23) ) + ( GND ) + ( \fsm_inst|Add0~102\ ))
-- \fsm_inst|Add0~98\ = CARRY(( \fsm_inst|counter\(23) ) + ( GND ) + ( \fsm_inst|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_counter\(23),
	cin => \fsm_inst|Add0~102\,
	sumout => \fsm_inst|Add0~97_sumout\,
	cout => \fsm_inst|Add0~98\);

-- Location: LABCELL_X56_Y3_N51
\fsm_inst|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector8~0_combout\ = ( \fsm_inst|LessThan0~10_combout\ & ( (\fsm_inst|counter\(23) & ((!\fsm_inst|counter~2_combout\) # (\fsm_inst|current_state.WaitForStart~DUPLICATE_q\))) ) ) # ( !\fsm_inst|LessThan0~10_combout\ & ( 
-- (!\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & (!\fsm_inst|counter~2_combout\ & ((\fsm_inst|counter\(23))))) # (\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(23))) # 
-- (\fsm_inst|Add0~97_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000000110111010000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_current_state.WaitForStart~DUPLICATE_q\,
	datab => \fsm_inst|ALT_INV_counter~2_combout\,
	datac => \fsm_inst|ALT_INV_Add0~97_sumout\,
	datad => \fsm_inst|ALT_INV_counter\(23),
	dataf => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	combout => \fsm_inst|Selector8~0_combout\);

-- Location: FF_X56_Y3_N53
\fsm_inst|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector8~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(23));

-- Location: LABCELL_X56_Y3_N12
\fsm_inst|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~93_sumout\ = SUM(( \fsm_inst|counter\(24) ) + ( GND ) + ( \fsm_inst|Add0~98\ ))
-- \fsm_inst|Add0~94\ = CARRY(( \fsm_inst|counter\(24) ) + ( GND ) + ( \fsm_inst|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm_inst|ALT_INV_counter\(24),
	cin => \fsm_inst|Add0~98\,
	sumout => \fsm_inst|Add0~93_sumout\,
	cout => \fsm_inst|Add0~94\);

-- Location: LABCELL_X56_Y3_N48
\fsm_inst|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector7~0_combout\ = ( \fsm_inst|Add0~93_sumout\ & ( (!\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & (!\fsm_inst|counter~2_combout\ & ((\fsm_inst|counter\(24))))) # (\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & 
-- (((!\fsm_inst|LessThan0~10_combout\) # (\fsm_inst|counter\(24))))) ) ) # ( !\fsm_inst|Add0~93_sumout\ & ( (\fsm_inst|counter\(24) & ((!\fsm_inst|counter~2_combout\) # ((\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & 
-- \fsm_inst|LessThan0~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001101000000001100110101010000110111010101000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_current_state.WaitForStart~DUPLICATE_q\,
	datab => \fsm_inst|ALT_INV_counter~2_combout\,
	datac => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datad => \fsm_inst|ALT_INV_counter\(24),
	dataf => \fsm_inst|ALT_INV_Add0~93_sumout\,
	combout => \fsm_inst|Selector7~0_combout\);

-- Location: FF_X56_Y3_N50
\fsm_inst|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector7~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(24));

-- Location: LABCELL_X56_Y3_N15
\fsm_inst|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~89_sumout\ = SUM(( \fsm_inst|counter\(25) ) + ( GND ) + ( \fsm_inst|Add0~94\ ))
-- \fsm_inst|Add0~90\ = CARRY(( \fsm_inst|counter\(25) ) + ( GND ) + ( \fsm_inst|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm_inst|ALT_INV_counter\(25),
	cin => \fsm_inst|Add0~94\,
	sumout => \fsm_inst|Add0~89_sumout\,
	cout => \fsm_inst|Add0~90\);

-- Location: LABCELL_X56_Y3_N36
\fsm_inst|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector6~0_combout\ = ( \fsm_inst|Add0~89_sumout\ & ( (!\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & (!\fsm_inst|counter~2_combout\ & ((\fsm_inst|counter\(25))))) # (\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & 
-- (((!\fsm_inst|LessThan0~10_combout\) # (\fsm_inst|counter\(25))))) ) ) # ( !\fsm_inst|Add0~89_sumout\ & ( (\fsm_inst|counter\(25) & ((!\fsm_inst|counter~2_combout\) # ((\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & 
-- \fsm_inst|LessThan0~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001101000000001100110101010000110111010101000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_current_state.WaitForStart~DUPLICATE_q\,
	datab => \fsm_inst|ALT_INV_counter~2_combout\,
	datac => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datad => \fsm_inst|ALT_INV_counter\(25),
	dataf => \fsm_inst|ALT_INV_Add0~89_sumout\,
	combout => \fsm_inst|Selector6~0_combout\);

-- Location: FF_X56_Y3_N38
\fsm_inst|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector6~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(25));

-- Location: LABCELL_X56_Y3_N18
\fsm_inst|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~85_sumout\ = SUM(( \fsm_inst|counter\(26) ) + ( GND ) + ( \fsm_inst|Add0~90\ ))
-- \fsm_inst|Add0~86\ = CARRY(( \fsm_inst|counter\(26) ) + ( GND ) + ( \fsm_inst|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm_inst|ALT_INV_counter\(26),
	cin => \fsm_inst|Add0~90\,
	sumout => \fsm_inst|Add0~85_sumout\,
	cout => \fsm_inst|Add0~86\);

-- Location: LABCELL_X56_Y3_N54
\fsm_inst|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector5~0_combout\ = ( \fsm_inst|LessThan0~10_combout\ & ( (\fsm_inst|counter\(26) & ((!\fsm_inst|counter~2_combout\) # (\fsm_inst|current_state.WaitForStart~DUPLICATE_q\))) ) ) # ( !\fsm_inst|LessThan0~10_combout\ & ( 
-- (!\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & (!\fsm_inst|counter~2_combout\ & ((\fsm_inst|counter\(26))))) # (\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(26))) # 
-- (\fsm_inst|Add0~85_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000000110111010000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_current_state.WaitForStart~DUPLICATE_q\,
	datab => \fsm_inst|ALT_INV_counter~2_combout\,
	datac => \fsm_inst|ALT_INV_Add0~85_sumout\,
	datad => \fsm_inst|ALT_INV_counter\(26),
	dataf => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	combout => \fsm_inst|Selector5~0_combout\);

-- Location: FF_X56_Y3_N56
\fsm_inst|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector5~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(26));

-- Location: LABCELL_X56_Y3_N21
\fsm_inst|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~81_sumout\ = SUM(( \fsm_inst|counter\(27) ) + ( GND ) + ( \fsm_inst|Add0~86\ ))
-- \fsm_inst|Add0~82\ = CARRY(( \fsm_inst|counter\(27) ) + ( GND ) + ( \fsm_inst|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm_inst|ALT_INV_counter\(27),
	cin => \fsm_inst|Add0~86\,
	sumout => \fsm_inst|Add0~81_sumout\,
	cout => \fsm_inst|Add0~82\);

-- Location: LABCELL_X57_Y2_N24
\fsm_inst|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector4~0_combout\ = ( \fsm_inst|counter~2_combout\ & ( (\fsm_inst|current_state.WaitForStart~q\ & ((!\fsm_inst|LessThan0~10_combout\ & (\fsm_inst|Add0~81_sumout\)) # (\fsm_inst|LessThan0~10_combout\ & ((\fsm_inst|counter\(27)))))) ) ) # ( 
-- !\fsm_inst|counter~2_combout\ & ( ((!\fsm_inst|LessThan0~10_combout\ & (\fsm_inst|current_state.WaitForStart~q\ & \fsm_inst|Add0~81_sumout\))) # (\fsm_inst|counter\(27)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011111111000000101111111100000010000100110000001000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datab => \fsm_inst|ALT_INV_current_state.WaitForStart~q\,
	datac => \fsm_inst|ALT_INV_Add0~81_sumout\,
	datad => \fsm_inst|ALT_INV_counter\(27),
	dataf => \fsm_inst|ALT_INV_counter~2_combout\,
	combout => \fsm_inst|Selector4~0_combout\);

-- Location: FF_X57_Y2_N26
\fsm_inst|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector4~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(27));

-- Location: LABCELL_X56_Y3_N24
\fsm_inst|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~77_sumout\ = SUM(( \fsm_inst|counter\(28) ) + ( GND ) + ( \fsm_inst|Add0~82\ ))
-- \fsm_inst|Add0~78\ = CARRY(( \fsm_inst|counter\(28) ) + ( GND ) + ( \fsm_inst|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm_inst|ALT_INV_counter\(28),
	cin => \fsm_inst|Add0~82\,
	sumout => \fsm_inst|Add0~77_sumout\,
	cout => \fsm_inst|Add0~78\);

-- Location: LABCELL_X56_Y3_N45
\fsm_inst|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector3~0_combout\ = ( \fsm_inst|LessThan0~10_combout\ & ( (\fsm_inst|counter\(28) & ((!\fsm_inst|counter~2_combout\) # (\fsm_inst|current_state.WaitForStart~DUPLICATE_q\))) ) ) # ( !\fsm_inst|LessThan0~10_combout\ & ( 
-- (!\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & (!\fsm_inst|counter~2_combout\ & ((\fsm_inst|counter\(28))))) # (\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(28))) # 
-- (\fsm_inst|Add0~77_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000000110111010000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_current_state.WaitForStart~DUPLICATE_q\,
	datab => \fsm_inst|ALT_INV_counter~2_combout\,
	datac => \fsm_inst|ALT_INV_Add0~77_sumout\,
	datad => \fsm_inst|ALT_INV_counter\(28),
	dataf => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	combout => \fsm_inst|Selector3~0_combout\);

-- Location: FF_X56_Y3_N47
\fsm_inst|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector3~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(28));

-- Location: LABCELL_X56_Y3_N27
\fsm_inst|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~73_sumout\ = SUM(( \fsm_inst|counter\(29) ) + ( GND ) + ( \fsm_inst|Add0~78\ ))
-- \fsm_inst|Add0~74\ = CARRY(( \fsm_inst|counter\(29) ) + ( GND ) + ( \fsm_inst|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm_inst|ALT_INV_counter\(29),
	cin => \fsm_inst|Add0~78\,
	sumout => \fsm_inst|Add0~73_sumout\,
	cout => \fsm_inst|Add0~74\);

-- Location: LABCELL_X56_Y3_N57
\fsm_inst|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector2~0_combout\ = ( \fsm_inst|LessThan0~10_combout\ & ( (\fsm_inst|counter\(29) & ((!\fsm_inst|counter~2_combout\) # (\fsm_inst|current_state.WaitForStart~DUPLICATE_q\))) ) ) # ( !\fsm_inst|LessThan0~10_combout\ & ( 
-- (!\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & (!\fsm_inst|counter~2_combout\ & ((\fsm_inst|counter\(29))))) # (\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(29))) # 
-- (\fsm_inst|Add0~73_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000000110111010000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_current_state.WaitForStart~DUPLICATE_q\,
	datab => \fsm_inst|ALT_INV_counter~2_combout\,
	datac => \fsm_inst|ALT_INV_Add0~73_sumout\,
	datad => \fsm_inst|ALT_INV_counter\(29),
	dataf => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	combout => \fsm_inst|Selector2~0_combout\);

-- Location: FF_X56_Y3_N59
\fsm_inst|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector2~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(29));

-- Location: LABCELL_X56_Y3_N30
\fsm_inst|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~69_sumout\ = SUM(( \fsm_inst|counter\(30) ) + ( GND ) + ( \fsm_inst|Add0~74\ ))
-- \fsm_inst|Add0~70\ = CARRY(( \fsm_inst|counter\(30) ) + ( GND ) + ( \fsm_inst|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm_inst|ALT_INV_counter\(30),
	cin => \fsm_inst|Add0~74\,
	sumout => \fsm_inst|Add0~69_sumout\,
	cout => \fsm_inst|Add0~70\);

-- Location: LABCELL_X56_Y3_N39
\fsm_inst|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector1~0_combout\ = ( \fsm_inst|LessThan0~10_combout\ & ( (\fsm_inst|counter\(30) & ((!\fsm_inst|counter~2_combout\) # (\fsm_inst|current_state.WaitForStart~DUPLICATE_q\))) ) ) # ( !\fsm_inst|LessThan0~10_combout\ & ( 
-- (!\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & (!\fsm_inst|counter~2_combout\ & ((\fsm_inst|counter\(30))))) # (\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(30))) # 
-- (\fsm_inst|Add0~69_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000000110111010000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_current_state.WaitForStart~DUPLICATE_q\,
	datab => \fsm_inst|ALT_INV_counter~2_combout\,
	datac => \fsm_inst|ALT_INV_Add0~69_sumout\,
	datad => \fsm_inst|ALT_INV_counter\(30),
	dataf => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	combout => \fsm_inst|Selector1~0_combout\);

-- Location: FF_X56_Y3_N41
\fsm_inst|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector1~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(30));

-- Location: LABCELL_X57_Y2_N0
\fsm_inst|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|LessThan0~3_combout\ = ( !\fsm_inst|counter\(29) & ( !\fsm_inst|counter\(30) & ( (!\fsm_inst|counter\(25) & (!\fsm_inst|counter\(28) & (!\fsm_inst|counter\(27) & !\fsm_inst|counter\(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_counter\(25),
	datab => \fsm_inst|ALT_INV_counter\(28),
	datac => \fsm_inst|ALT_INV_counter\(27),
	datad => \fsm_inst|ALT_INV_counter\(26),
	datae => \fsm_inst|ALT_INV_counter\(29),
	dataf => \fsm_inst|ALT_INV_counter\(30),
	combout => \fsm_inst|LessThan0~3_combout\);

-- Location: LABCELL_X55_Y2_N57
\fsm_inst|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|LessThan0~2_combout\ = ( !\fsm_inst|counter\(17) & ( !\fsm_inst|counter\(13) & ( (!\fsm_inst|counter\(18) & (!\fsm_inst|counter\(15) & (!\fsm_inst|counter\(16) & !\fsm_inst|counter\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_counter\(18),
	datab => \fsm_inst|ALT_INV_counter\(15),
	datac => \fsm_inst|ALT_INV_counter\(16),
	datad => \fsm_inst|ALT_INV_counter\(14),
	datae => \fsm_inst|ALT_INV_counter\(17),
	dataf => \fsm_inst|ALT_INV_counter\(13),
	combout => \fsm_inst|LessThan0~2_combout\);

-- Location: LABCELL_X57_Y2_N33
\fsm_inst|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|LessThan0~4_combout\ = ( !\fsm_inst|counter\(21) & ( (!\fsm_inst|counter\(20) & (!\fsm_inst|counter\(23) & (!\fsm_inst|counter\(22) & !\fsm_inst|counter\(24)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_counter\(20),
	datab => \fsm_inst|ALT_INV_counter\(23),
	datac => \fsm_inst|ALT_INV_counter\(22),
	datad => \fsm_inst|ALT_INV_counter\(24),
	dataf => \fsm_inst|ALT_INV_counter\(21),
	combout => \fsm_inst|LessThan0~4_combout\);

-- Location: LABCELL_X56_Y2_N18
\fsm_inst|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|LessThan0~5_combout\ = ( \fsm_inst|LessThan0~2_combout\ & ( \fsm_inst|LessThan0~4_combout\ & ( (\fsm_inst|LessThan0~0_combout\ & (\fsm_inst|LessThan0~1_combout\ & (!\fsm_inst|counter\(19) & \fsm_inst|LessThan0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_LessThan0~0_combout\,
	datab => \fsm_inst|ALT_INV_LessThan0~1_combout\,
	datac => \fsm_inst|ALT_INV_counter\(19),
	datad => \fsm_inst|ALT_INV_LessThan0~3_combout\,
	datae => \fsm_inst|ALT_INV_LessThan0~2_combout\,
	dataf => \fsm_inst|ALT_INV_LessThan0~4_combout\,
	combout => \fsm_inst|LessThan0~5_combout\);

-- Location: LABCELL_X56_Y2_N45
\fsm_inst|LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|LessThan0~9_combout\ = ( \fsm_inst|LessThan0~5_combout\ & ( ((\random_gen|lfsr[3]~14_combout\ & !\fsm_inst|counter\(3))) # (\fsm_inst|counter\(31)) ) ) # ( !\fsm_inst|LessThan0~5_combout\ & ( \fsm_inst|counter\(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101011111010101010101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_counter\(31),
	datac => \random_gen|ALT_INV_lfsr[3]~14_combout\,
	datad => \fsm_inst|ALT_INV_counter\(3),
	dataf => \fsm_inst|ALT_INV_LessThan0~5_combout\,
	combout => \fsm_inst|LessThan0~9_combout\);

-- Location: LABCELL_X55_Y2_N42
\fsm_inst|next_state.Setup~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|next_state.Setup~0_combout\ = ( \KEY[3]~input_o\ & ( !\fsm_inst|current_state.LatchValue~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm_inst|ALT_INV_current_state.LatchValue~q\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \fsm_inst|next_state.Setup~0_combout\);

-- Location: LABCELL_X56_Y2_N51
\fsm_inst|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|LessThan0~7_combout\ = ( \random_gen|lfsr[2]~10_combout\ & ( !\fsm_inst|counter\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm_inst|ALT_INV_counter\(2),
	dataf => \random_gen|ALT_INV_lfsr[2]~10_combout\,
	combout => \fsm_inst|LessThan0~7_combout\);

-- Location: LABCELL_X56_Y2_N6
\fsm_inst|LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|LessThan0~8_combout\ = ( \random_gen|lfsr[0]~2_combout\ & ( \random_gen|lfsr[2]~10_combout\ & ( (!\fsm_inst|counter\(1) & ((!\fsm_inst|counter\(0)) # (\random_gen|lfsr[1]~6_combout\))) # (\fsm_inst|counter\(1) & (\random_gen|lfsr[1]~6_combout\ & 
-- !\fsm_inst|counter\(0))) ) ) ) # ( !\random_gen|lfsr[0]~2_combout\ & ( \random_gen|lfsr[2]~10_combout\ & ( (!\fsm_inst|counter\(1) & \random_gen|lfsr[1]~6_combout\) ) ) ) # ( \random_gen|lfsr[0]~2_combout\ & ( !\random_gen|lfsr[2]~10_combout\ & ( 
-- (!\fsm_inst|counter\(2) & ((!\fsm_inst|counter\(1) & ((!\fsm_inst|counter\(0)) # (\random_gen|lfsr[1]~6_combout\))) # (\fsm_inst|counter\(1) & (\random_gen|lfsr[1]~6_combout\ & !\fsm_inst|counter\(0))))) ) ) ) # ( !\random_gen|lfsr[0]~2_combout\ & ( 
-- !\random_gen|lfsr[2]~10_combout\ & ( (!\fsm_inst|counter\(1) & (\random_gen|lfsr[1]~6_combout\ & !\fsm_inst|counter\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000101100100000000000100010001000101011001010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_counter\(1),
	datab => \random_gen|ALT_INV_lfsr[1]~6_combout\,
	datac => \fsm_inst|ALT_INV_counter\(0),
	datad => \fsm_inst|ALT_INV_counter\(2),
	datae => \random_gen|ALT_INV_lfsr[0]~2_combout\,
	dataf => \random_gen|ALT_INV_lfsr[2]~10_combout\,
	combout => \fsm_inst|LessThan0~8_combout\);

-- Location: LABCELL_X56_Y2_N15
\fsm_inst|next_state.Setup~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|next_state.Setup~1_combout\ = ( \fsm_inst|LessThan0~6_combout\ & ( \fsm_inst|LessThan0~8_combout\ & ( (!\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & \fsm_inst|next_state.Setup~0_combout\) ) ) ) # ( !\fsm_inst|LessThan0~6_combout\ & ( 
-- \fsm_inst|LessThan0~8_combout\ & ( (\fsm_inst|next_state.Setup~0_combout\ & ((!\fsm_inst|current_state.WaitForStart~DUPLICATE_q\) # (!\fsm_inst|LessThan0~9_combout\))) ) ) ) # ( \fsm_inst|LessThan0~6_combout\ & ( !\fsm_inst|LessThan0~8_combout\ & ( 
-- (\fsm_inst|next_state.Setup~0_combout\ & ((!\fsm_inst|current_state.WaitForStart~DUPLICATE_q\) # ((!\fsm_inst|LessThan0~9_combout\ & !\fsm_inst|LessThan0~7_combout\)))) ) ) ) # ( !\fsm_inst|LessThan0~6_combout\ & ( !\fsm_inst|LessThan0~8_combout\ & ( 
-- (\fsm_inst|next_state.Setup~0_combout\ & ((!\fsm_inst|current_state.WaitForStart~DUPLICATE_q\) # (!\fsm_inst|LessThan0~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000101000001110000011100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_current_state.WaitForStart~DUPLICATE_q\,
	datab => \fsm_inst|ALT_INV_LessThan0~9_combout\,
	datac => \fsm_inst|ALT_INV_next_state.Setup~0_combout\,
	datad => \fsm_inst|ALT_INV_LessThan0~7_combout\,
	datae => \fsm_inst|ALT_INV_LessThan0~6_combout\,
	dataf => \fsm_inst|ALT_INV_LessThan0~8_combout\,
	combout => \fsm_inst|next_state.Setup~1_combout\);

-- Location: FF_X56_Y2_N17
\fsm_inst|next_state.DisplayValues\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fsm_inst|current_state.DisplayValues~q\,
	sload => VCC,
	ena => \fsm_inst|next_state.Setup~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|next_state.DisplayValues~q\);

-- Location: FF_X55_Y2_N1
\fsm_inst|current_state.DisplayValues\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fsm_inst|next_state.DisplayValues~q\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|current_state.DisplayValues~q\);

-- Location: LABCELL_X55_Y2_N0
\fsm_inst|counter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|counter~2_combout\ = ( !\fsm_inst|current_state.LatchValue~q\ & ( !\fsm_inst|current_state.DisplayValues~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm_inst|ALT_INV_current_state.DisplayValues~q\,
	dataf => \fsm_inst|ALT_INV_current_state.LatchValue~q\,
	combout => \fsm_inst|counter~2_combout\);

-- Location: LABCELL_X56_Y3_N33
\fsm_inst|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Add0~125_sumout\ = SUM(( \fsm_inst|counter\(31) ) + ( GND ) + ( \fsm_inst|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm_inst|ALT_INV_counter\(31),
	cin => \fsm_inst|Add0~70\,
	sumout => \fsm_inst|Add0~125_sumout\);

-- Location: LABCELL_X56_Y2_N48
\fsm_inst|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector0~0_combout\ = ( \fsm_inst|Add0~125_sumout\ & ( (!\fsm_inst|counter~2_combout\ & (((!\fsm_inst|LessThan0~10_combout\ & \fsm_inst|current_state.WaitForStart~DUPLICATE_q\)) # (\fsm_inst|counter\(31)))) # (\fsm_inst|counter~2_combout\ & 
-- (!\fsm_inst|LessThan0~10_combout\ & (\fsm_inst|current_state.WaitForStart~DUPLICATE_q\))) ) ) # ( !\fsm_inst|Add0~125_sumout\ & ( (!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(31)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001100101011100000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_counter~2_combout\,
	datab => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datac => \fsm_inst|ALT_INV_current_state.WaitForStart~DUPLICATE_q\,
	datad => \fsm_inst|ALT_INV_counter\(31),
	dataf => \fsm_inst|ALT_INV_Add0~125_sumout\,
	combout => \fsm_inst|Selector0~0_combout\);

-- Location: FF_X56_Y2_N50
\fsm_inst|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector0~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(31));

-- Location: LABCELL_X56_Y2_N54
\fsm_inst|LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|LessThan0~10_combout\ = ( \fsm_inst|counter\(3) & ( \fsm_inst|LessThan0~8_combout\ & ( (!\fsm_inst|counter\(31) & ((!\random_gen|lfsr[3]~14_combout\) # (!\fsm_inst|LessThan0~5_combout\))) ) ) ) # ( !\fsm_inst|counter\(3) & ( 
-- \fsm_inst|LessThan0~8_combout\ & ( (!\fsm_inst|counter\(31) & !\fsm_inst|LessThan0~5_combout\) ) ) ) # ( \fsm_inst|counter\(3) & ( !\fsm_inst|LessThan0~8_combout\ & ( (!\fsm_inst|counter\(31) & ((!\random_gen|lfsr[3]~14_combout\) # 
-- ((!\fsm_inst|LessThan0~5_combout\) # (!\fsm_inst|LessThan0~7_combout\)))) ) ) ) # ( !\fsm_inst|counter\(3) & ( !\fsm_inst|LessThan0~8_combout\ & ( (!\fsm_inst|counter\(31) & ((!\fsm_inst|LessThan0~5_combout\) # ((!\random_gen|lfsr[3]~14_combout\ & 
-- !\fsm_inst|LessThan0~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011000000110011001100100011000000110000001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \random_gen|ALT_INV_lfsr[3]~14_combout\,
	datab => \fsm_inst|ALT_INV_counter\(31),
	datac => \fsm_inst|ALT_INV_LessThan0~5_combout\,
	datad => \fsm_inst|ALT_INV_LessThan0~7_combout\,
	datae => \fsm_inst|ALT_INV_counter\(3),
	dataf => \fsm_inst|ALT_INV_LessThan0~8_combout\,
	combout => \fsm_inst|LessThan0~10_combout\);

-- Location: LABCELL_X57_Y2_N9
\fsm_inst|Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector28~0_combout\ = ( \fsm_inst|Add0~1_sumout\ & ( (!\fsm_inst|current_state.WaitForStart~q\ & (((!\fsm_inst|counter~2_combout\ & \fsm_inst|counter\(3))))) # (\fsm_inst|current_state.WaitForStart~q\ & ((!\fsm_inst|LessThan0~10_combout\) # 
-- ((\fsm_inst|counter\(3))))) ) ) # ( !\fsm_inst|Add0~1_sumout\ & ( (\fsm_inst|counter\(3) & ((!\fsm_inst|counter~2_combout\) # ((\fsm_inst|LessThan0~10_combout\ & \fsm_inst|current_state.WaitForStart~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110001000000001111000100100010111100110010001011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_LessThan0~10_combout\,
	datab => \fsm_inst|ALT_INV_current_state.WaitForStart~q\,
	datac => \fsm_inst|ALT_INV_counter~2_combout\,
	datad => \fsm_inst|ALT_INV_counter\(3),
	dataf => \fsm_inst|ALT_INV_Add0~1_sumout\,
	combout => \fsm_inst|Selector28~0_combout\);

-- Location: FF_X57_Y2_N11
\fsm_inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector28~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|counter\(3));

-- Location: LABCELL_X56_Y2_N30
\fsm_inst|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|LessThan0~6_combout\ = ( \fsm_inst|LessThan0~5_combout\ & ( (!\fsm_inst|counter\(3)) # (\random_gen|lfsr[3]~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \random_gen|ALT_INV_lfsr[3]~14_combout\,
	datad => \fsm_inst|ALT_INV_counter\(3),
	dataf => \fsm_inst|ALT_INV_LessThan0~5_combout\,
	combout => \fsm_inst|LessThan0~6_combout\);

-- Location: LABCELL_X55_Y2_N36
\fsm_inst|Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|Selector34~0_combout\ = ( !\fsm_inst|next_state.LatchValue~q\ & ( (!\fsm_inst|LessThan0~9_combout\ & (\fsm_inst|current_state.WaitForStart~DUPLICATE_q\ & ((!\fsm_inst|LessThan0~6_combout\) # ((!\fsm_inst|LessThan0~8_combout\ & 
-- !\fsm_inst|LessThan0~7_combout\))))) ) ) # ( \fsm_inst|next_state.LatchValue~q\ & ( ((((\fsm_inst|current_state.WaitForStart~DUPLICATE_q\)) # (\fsm_inst|current_state.LatchValue~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011100000000011111111111100000000101000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_LessThan0~6_combout\,
	datab => \fsm_inst|ALT_INV_LessThan0~8_combout\,
	datac => \fsm_inst|ALT_INV_current_state.LatchValue~q\,
	datad => \fsm_inst|ALT_INV_current_state.WaitForStart~DUPLICATE_q\,
	datae => \fsm_inst|ALT_INV_next_state.LatchValue~q\,
	dataf => \fsm_inst|ALT_INV_LessThan0~7_combout\,
	datag => \fsm_inst|ALT_INV_LessThan0~9_combout\,
	combout => \fsm_inst|Selector34~0_combout\);

-- Location: FF_X55_Y2_N38
\fsm_inst|next_state.LatchValue\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|Selector34~0_combout\,
	ena => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|next_state.LatchValue~q\);

-- Location: FF_X55_Y2_N44
\fsm_inst|current_state.LatchValue\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \fsm_inst|next_state.LatchValue~q\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|current_state.LatchValue~q\);

-- Location: LABCELL_X55_Y2_N15
\fsm_inst|latched_clk_B_p1[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|latched_clk_B_p1[3]~0_combout\ = ( \fsm_inst|current_state.LatchValue~q\ & ( !\KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \fsm_inst|ALT_INV_current_state.LatchValue~q\,
	combout => \fsm_inst|latched_clk_B_p1[3]~0_combout\);

-- Location: FF_X77_Y2_N50
\fsm_inst|latched_clk_B_p1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \prescaler|counter\(17),
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \fsm_inst|latched_clk_B_p1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|latched_clk_B_p1[0]~reg0_q\);

-- Location: LABCELL_X77_Y2_N39
\fsm_inst|latched_clk_B_p1[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|latched_clk_B_p1[3]~reg0feeder_combout\ = ( \prescaler|counter\(20) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \prescaler|ALT_INV_counter\(20),
	combout => \fsm_inst|latched_clk_B_p1[3]~reg0feeder_combout\);

-- Location: FF_X77_Y2_N41
\fsm_inst|latched_clk_B_p1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|latched_clk_B_p1[3]~reg0feeder_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \fsm_inst|latched_clk_B_p1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|latched_clk_B_p1[3]~reg0_q\);

-- Location: FF_X81_Y3_N28
\prescaler|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~9_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(19));

-- Location: LABCELL_X77_Y2_N36
\fsm_inst|latched_clk_B_p1[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|latched_clk_B_p1[2]~reg0feeder_combout\ = ( \prescaler|counter\(19) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \prescaler|ALT_INV_counter\(19),
	combout => \fsm_inst|latched_clk_B_p1[2]~reg0feeder_combout\);

-- Location: FF_X77_Y2_N38
\fsm_inst|latched_clk_B_p1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fsm_inst|latched_clk_B_p1[2]~reg0feeder_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \fsm_inst|latched_clk_B_p1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|latched_clk_B_p1[2]~reg0_q\);

-- Location: FF_X77_Y2_N20
\fsm_inst|latched_clk_B_p1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \prescaler|counter\(18),
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \fsm_inst|latched_clk_B_p1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|latched_clk_B_p1[1]~reg0_q\);

-- Location: LABCELL_X77_Y2_N54
\fsm_inst|HEX2_inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX2_inst|Mux6~0_combout\ = ( \fsm_inst|latched_clk_B_p1[1]~reg0_q\ & ( \fsm_inst|latched_clk_B_p1[3]~reg0_q\ ) ) # ( !\fsm_inst|latched_clk_B_p1[1]~reg0_q\ & ( !\fsm_inst|latched_clk_B_p1[2]~reg0_q\ $ (((!\fsm_inst|latched_clk_B_p1[0]~reg0_q\) 
-- # (\fsm_inst|latched_clk_B_p1[3]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101101001011010010110100101100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_latched_clk_B_p1[0]~reg0_q\,
	datab => \fsm_inst|ALT_INV_latched_clk_B_p1[3]~reg0_q\,
	datac => \fsm_inst|ALT_INV_latched_clk_B_p1[2]~reg0_q\,
	dataf => \fsm_inst|ALT_INV_latched_clk_B_p1[1]~reg0_q\,
	combout => \fsm_inst|HEX2_inst|Mux6~0_combout\);

-- Location: LABCELL_X77_Y2_N27
\fsm_inst|HEX2_inst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX2_inst|Mux5~0_combout\ = ( \fsm_inst|latched_clk_B_p1[1]~reg0_q\ & ( ((!\fsm_inst|latched_clk_B_p1[0]~reg0_q\ & \fsm_inst|latched_clk_B_p1[2]~reg0_q\)) # (\fsm_inst|latched_clk_B_p1[3]~reg0_q\) ) ) # ( !\fsm_inst|latched_clk_B_p1[1]~reg0_q\ & 
-- ( (\fsm_inst|latched_clk_B_p1[2]~reg0_q\ & ((\fsm_inst|latched_clk_B_p1[3]~reg0_q\) # (\fsm_inst|latched_clk_B_p1[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100110011101110110011001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_latched_clk_B_p1[0]~reg0_q\,
	datab => \fsm_inst|ALT_INV_latched_clk_B_p1[3]~reg0_q\,
	datad => \fsm_inst|ALT_INV_latched_clk_B_p1[2]~reg0_q\,
	dataf => \fsm_inst|ALT_INV_latched_clk_B_p1[1]~reg0_q\,
	combout => \fsm_inst|HEX2_inst|Mux5~0_combout\);

-- Location: LABCELL_X77_Y2_N57
\fsm_inst|HEX2_inst|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX2_inst|Mux4~0_combout\ = ( \fsm_inst|latched_clk_B_p1[1]~reg0_q\ & ( ((!\fsm_inst|latched_clk_B_p1[0]~reg0_q\ & !\fsm_inst|latched_clk_B_p1[2]~reg0_q\)) # (\fsm_inst|latched_clk_B_p1[3]~reg0_q\) ) ) # ( !\fsm_inst|latched_clk_B_p1[1]~reg0_q\ 
-- & ( (\fsm_inst|latched_clk_B_p1[3]~reg0_q\ & \fsm_inst|latched_clk_B_p1[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001110111011001100111011101100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_latched_clk_B_p1[0]~reg0_q\,
	datab => \fsm_inst|ALT_INV_latched_clk_B_p1[3]~reg0_q\,
	datad => \fsm_inst|ALT_INV_latched_clk_B_p1[2]~reg0_q\,
	dataf => \fsm_inst|ALT_INV_latched_clk_B_p1[1]~reg0_q\,
	combout => \fsm_inst|HEX2_inst|Mux4~0_combout\);

-- Location: LABCELL_X77_Y2_N45
\fsm_inst|HEX2_inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX2_inst|Mux3~0_combout\ = ( \fsm_inst|latched_clk_B_p1[1]~reg0_q\ & ( ((\fsm_inst|latched_clk_B_p1[0]~reg0_q\ & \fsm_inst|latched_clk_B_p1[2]~reg0_q\)) # (\fsm_inst|latched_clk_B_p1[3]~reg0_q\) ) ) # ( !\fsm_inst|latched_clk_B_p1[1]~reg0_q\ & 
-- ( (!\fsm_inst|latched_clk_B_p1[0]~reg0_q\ & ((\fsm_inst|latched_clk_B_p1[2]~reg0_q\))) # (\fsm_inst|latched_clk_B_p1[0]~reg0_q\ & ((!\fsm_inst|latched_clk_B_p1[2]~reg0_q\) # (\fsm_inst|latched_clk_B_p1[3]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110111011010101011011101100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_latched_clk_B_p1[0]~reg0_q\,
	datab => \fsm_inst|ALT_INV_latched_clk_B_p1[3]~reg0_q\,
	datad => \fsm_inst|ALT_INV_latched_clk_B_p1[2]~reg0_q\,
	dataf => \fsm_inst|ALT_INV_latched_clk_B_p1[1]~reg0_q\,
	combout => \fsm_inst|HEX2_inst|Mux3~0_combout\);

-- Location: LABCELL_X77_Y2_N42
\fsm_inst|HEX2_inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX2_inst|Mux2~0_combout\ = ( \fsm_inst|latched_clk_B_p1[1]~reg0_q\ & ( (\fsm_inst|latched_clk_B_p1[0]~reg0_q\) # (\fsm_inst|latched_clk_B_p1[3]~reg0_q\) ) ) # ( !\fsm_inst|latched_clk_B_p1[1]~reg0_q\ & ( (\fsm_inst|latched_clk_B_p1[2]~reg0_q\) 
-- # (\fsm_inst|latched_clk_B_p1[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm_inst|ALT_INV_latched_clk_B_p1[3]~reg0_q\,
	datac => \fsm_inst|ALT_INV_latched_clk_B_p1[0]~reg0_q\,
	datad => \fsm_inst|ALT_INV_latched_clk_B_p1[2]~reg0_q\,
	dataf => \fsm_inst|ALT_INV_latched_clk_B_p1[1]~reg0_q\,
	combout => \fsm_inst|HEX2_inst|Mux2~0_combout\);

-- Location: LABCELL_X77_Y2_N24
\fsm_inst|HEX2_inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX2_inst|Mux1~0_combout\ = ( \fsm_inst|latched_clk_B_p1[1]~reg0_q\ & ( ((!\fsm_inst|latched_clk_B_p1[2]~reg0_q\) # (\fsm_inst|latched_clk_B_p1[0]~reg0_q\)) # (\fsm_inst|latched_clk_B_p1[3]~reg0_q\) ) ) # ( !\fsm_inst|latched_clk_B_p1[1]~reg0_q\ 
-- & ( (!\fsm_inst|latched_clk_B_p1[3]~reg0_q\ & (\fsm_inst|latched_clk_B_p1[0]~reg0_q\ & !\fsm_inst|latched_clk_B_p1[2]~reg0_q\)) # (\fsm_inst|latched_clk_B_p1[3]~reg0_q\ & ((\fsm_inst|latched_clk_B_p1[2]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110011000011000011001111111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm_inst|ALT_INV_latched_clk_B_p1[3]~reg0_q\,
	datac => \fsm_inst|ALT_INV_latched_clk_B_p1[0]~reg0_q\,
	datad => \fsm_inst|ALT_INV_latched_clk_B_p1[2]~reg0_q\,
	dataf => \fsm_inst|ALT_INV_latched_clk_B_p1[1]~reg0_q\,
	combout => \fsm_inst|HEX2_inst|Mux1~0_combout\);

-- Location: LABCELL_X77_Y2_N3
\fsm_inst|HEX2_inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX2_inst|Mux0~0_combout\ = ( \fsm_inst|latched_clk_B_p1[1]~reg0_q\ & ( (!\fsm_inst|latched_clk_B_p1[3]~reg0_q\ & ((!\fsm_inst|latched_clk_B_p1[0]~reg0_q\) # (!\fsm_inst|latched_clk_B_p1[2]~reg0_q\))) ) ) # ( 
-- !\fsm_inst|latched_clk_B_p1[1]~reg0_q\ & ( !\fsm_inst|latched_clk_B_p1[3]~reg0_q\ $ (!\fsm_inst|latched_clk_B_p1[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000101000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_latched_clk_B_p1[0]~reg0_q\,
	datac => \fsm_inst|ALT_INV_latched_clk_B_p1[3]~reg0_q\,
	datad => \fsm_inst|ALT_INV_latched_clk_B_p1[2]~reg0_q\,
	dataf => \fsm_inst|ALT_INV_latched_clk_B_p1[1]~reg0_q\,
	combout => \fsm_inst|HEX2_inst|Mux0~0_combout\);

-- Location: FF_X77_Y2_N11
\fsm_inst|latched_clk_A_p1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \prescaler|counter\(23),
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \fsm_inst|latched_clk_B_p1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|latched_clk_A_p1[2]~reg0_q\);

-- Location: FF_X77_Y2_N14
\fsm_inst|latched_clk_A_p1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \prescaler|counter\(24),
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \fsm_inst|latched_clk_B_p1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|latched_clk_A_p1[3]~reg0_q\);

-- Location: FF_X81_Y3_N34
\prescaler|counter[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~17_sumout\,
	sclr => \prescaler|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter[21]~DUPLICATE_q\);

-- Location: FF_X77_Y2_N8
\fsm_inst|latched_clk_A_p1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \prescaler|counter[21]~DUPLICATE_q\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \fsm_inst|latched_clk_B_p1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|latched_clk_A_p1[0]~reg0_q\);

-- Location: FF_X77_Y2_N17
\fsm_inst|latched_clk_A_p1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \prescaler|counter\(22),
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \fsm_inst|latched_clk_B_p1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_inst|latched_clk_A_p1[1]~reg0_q\);

-- Location: LABCELL_X77_Y2_N33
\fsm_inst|HEX3_inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX3_inst|Mux6~0_combout\ = ( \fsm_inst|latched_clk_A_p1[1]~reg0_q\ & ( \fsm_inst|latched_clk_A_p1[3]~reg0_q\ ) ) # ( !\fsm_inst|latched_clk_A_p1[1]~reg0_q\ & ( !\fsm_inst|latched_clk_A_p1[2]~reg0_q\ $ (((!\fsm_inst|latched_clk_A_p1[0]~reg0_q\) 
-- # (\fsm_inst|latched_clk_A_p1[3]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100101011001010110010101100100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_latched_clk_A_p1[2]~reg0_q\,
	datab => \fsm_inst|ALT_INV_latched_clk_A_p1[3]~reg0_q\,
	datac => \fsm_inst|ALT_INV_latched_clk_A_p1[0]~reg0_q\,
	dataf => \fsm_inst|ALT_INV_latched_clk_A_p1[1]~reg0_q\,
	combout => \fsm_inst|HEX3_inst|Mux6~0_combout\);

-- Location: LABCELL_X77_Y2_N30
\fsm_inst|HEX3_inst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX3_inst|Mux5~0_combout\ = ( \fsm_inst|latched_clk_A_p1[1]~reg0_q\ & ( ((\fsm_inst|latched_clk_A_p1[2]~reg0_q\ & !\fsm_inst|latched_clk_A_p1[0]~reg0_q\)) # (\fsm_inst|latched_clk_A_p1[3]~reg0_q\) ) ) # ( !\fsm_inst|latched_clk_A_p1[1]~reg0_q\ & 
-- ( (\fsm_inst|latched_clk_A_p1[2]~reg0_q\ & ((\fsm_inst|latched_clk_A_p1[0]~reg0_q\) # (\fsm_inst|latched_clk_A_p1[3]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010101110011011100110111001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_latched_clk_A_p1[2]~reg0_q\,
	datab => \fsm_inst|ALT_INV_latched_clk_A_p1[3]~reg0_q\,
	datac => \fsm_inst|ALT_INV_latched_clk_A_p1[0]~reg0_q\,
	dataf => \fsm_inst|ALT_INV_latched_clk_A_p1[1]~reg0_q\,
	combout => \fsm_inst|HEX3_inst|Mux5~0_combout\);

-- Location: LABCELL_X77_Y2_N0
\fsm_inst|HEX3_inst|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX3_inst|Mux4~0_combout\ = ( \fsm_inst|latched_clk_A_p1[1]~reg0_q\ & ( ((!\fsm_inst|latched_clk_A_p1[2]~reg0_q\ & !\fsm_inst|latched_clk_A_p1[0]~reg0_q\)) # (\fsm_inst|latched_clk_A_p1[3]~reg0_q\) ) ) # ( !\fsm_inst|latched_clk_A_p1[1]~reg0_q\ 
-- & ( (\fsm_inst|latched_clk_A_p1[3]~reg0_q\ & \fsm_inst|latched_clk_A_p1[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011001100111111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm_inst|ALT_INV_latched_clk_A_p1[3]~reg0_q\,
	datac => \fsm_inst|ALT_INV_latched_clk_A_p1[2]~reg0_q\,
	datad => \fsm_inst|ALT_INV_latched_clk_A_p1[0]~reg0_q\,
	dataf => \fsm_inst|ALT_INV_latched_clk_A_p1[1]~reg0_q\,
	combout => \fsm_inst|HEX3_inst|Mux4~0_combout\);

-- Location: LABCELL_X77_Y2_N51
\fsm_inst|HEX3_inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX3_inst|Mux3~0_combout\ = ( \fsm_inst|latched_clk_A_p1[0]~reg0_q\ & ( \fsm_inst|latched_clk_A_p1[1]~reg0_q\ & ( (\fsm_inst|latched_clk_A_p1[3]~reg0_q\) # (\fsm_inst|latched_clk_A_p1[2]~reg0_q\) ) ) ) # ( !\fsm_inst|latched_clk_A_p1[0]~reg0_q\ 
-- & ( \fsm_inst|latched_clk_A_p1[1]~reg0_q\ & ( \fsm_inst|latched_clk_A_p1[3]~reg0_q\ ) ) ) # ( \fsm_inst|latched_clk_A_p1[0]~reg0_q\ & ( !\fsm_inst|latched_clk_A_p1[1]~reg0_q\ & ( (!\fsm_inst|latched_clk_A_p1[2]~reg0_q\) # 
-- (\fsm_inst|latched_clk_A_p1[3]~reg0_q\) ) ) ) # ( !\fsm_inst|latched_clk_A_p1[0]~reg0_q\ & ( !\fsm_inst|latched_clk_A_p1[1]~reg0_q\ & ( \fsm_inst|latched_clk_A_p1[2]~reg0_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011111100111100001111000011110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm_inst|ALT_INV_latched_clk_A_p1[2]~reg0_q\,
	datac => \fsm_inst|ALT_INV_latched_clk_A_p1[3]~reg0_q\,
	datae => \fsm_inst|ALT_INV_latched_clk_A_p1[0]~reg0_q\,
	dataf => \fsm_inst|ALT_INV_latched_clk_A_p1[1]~reg0_q\,
	combout => \fsm_inst|HEX3_inst|Mux3~0_combout\);

-- Location: LABCELL_X77_Y2_N15
\fsm_inst|HEX3_inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX3_inst|Mux2~0_combout\ = ((!\fsm_inst|latched_clk_A_p1[1]~reg0_q\ & (\fsm_inst|latched_clk_A_p1[2]~reg0_q\)) # (\fsm_inst|latched_clk_A_p1[1]~reg0_q\ & ((\fsm_inst|latched_clk_A_p1[3]~reg0_q\)))) # (\fsm_inst|latched_clk_A_p1[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101011111011101110101111101110111010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_latched_clk_A_p1[0]~reg0_q\,
	datab => \fsm_inst|ALT_INV_latched_clk_A_p1[2]~reg0_q\,
	datac => \fsm_inst|ALT_INV_latched_clk_A_p1[3]~reg0_q\,
	datad => \fsm_inst|ALT_INV_latched_clk_A_p1[1]~reg0_q\,
	combout => \fsm_inst|HEX3_inst|Mux2~0_combout\);

-- Location: LABCELL_X77_Y2_N21
\fsm_inst|HEX3_inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX3_inst|Mux1~0_combout\ = ( \fsm_inst|latched_clk_A_p1[0]~reg0_q\ & ( \fsm_inst|latched_clk_A_p1[1]~reg0_q\ ) ) # ( !\fsm_inst|latched_clk_A_p1[0]~reg0_q\ & ( \fsm_inst|latched_clk_A_p1[1]~reg0_q\ & ( (!\fsm_inst|latched_clk_A_p1[2]~reg0_q\) # 
-- (\fsm_inst|latched_clk_A_p1[3]~reg0_q\) ) ) ) # ( \fsm_inst|latched_clk_A_p1[0]~reg0_q\ & ( !\fsm_inst|latched_clk_A_p1[1]~reg0_q\ & ( !\fsm_inst|latched_clk_A_p1[2]~reg0_q\ $ (\fsm_inst|latched_clk_A_p1[3]~reg0_q\) ) ) ) # ( 
-- !\fsm_inst|latched_clk_A_p1[0]~reg0_q\ & ( !\fsm_inst|latched_clk_A_p1[1]~reg0_q\ & ( (\fsm_inst|latched_clk_A_p1[2]~reg0_q\ & \fsm_inst|latched_clk_A_p1[3]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110000111100001111001111110011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm_inst|ALT_INV_latched_clk_A_p1[2]~reg0_q\,
	datac => \fsm_inst|ALT_INV_latched_clk_A_p1[3]~reg0_q\,
	datae => \fsm_inst|ALT_INV_latched_clk_A_p1[0]~reg0_q\,
	dataf => \fsm_inst|ALT_INV_latched_clk_A_p1[1]~reg0_q\,
	combout => \fsm_inst|HEX3_inst|Mux1~0_combout\);

-- Location: LABCELL_X77_Y2_N12
\fsm_inst|HEX3_inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX3_inst|Mux0~0_combout\ = ( \fsm_inst|latched_clk_A_p1[1]~reg0_q\ & ( (!\fsm_inst|latched_clk_A_p1[3]~reg0_q\ & ((!\fsm_inst|latched_clk_A_p1[0]~reg0_q\) # (!\fsm_inst|latched_clk_A_p1[2]~reg0_q\))) ) ) # ( 
-- !\fsm_inst|latched_clk_A_p1[1]~reg0_q\ & ( !\fsm_inst|latched_clk_A_p1[2]~reg0_q\ $ (!\fsm_inst|latched_clk_A_p1[3]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011101110000000001110111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_inst|ALT_INV_latched_clk_A_p1[0]~reg0_q\,
	datab => \fsm_inst|ALT_INV_latched_clk_A_p1[2]~reg0_q\,
	datad => \fsm_inst|ALT_INV_latched_clk_A_p1[3]~reg0_q\,
	dataf => \fsm_inst|ALT_INV_latched_clk_A_p1[1]~reg0_q\,
	combout => \fsm_inst|HEX3_inst|Mux0~0_combout\);

-- Location: MLABCELL_X82_Y4_N0
\fsm_inst|HEX4_inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX4_inst|Mux6~0_combout\ = ( \prescaler|counter\(18) & ( \prescaler|counter\(20) ) ) # ( !\prescaler|counter\(18) & ( !\prescaler|counter\(19) $ (((!\prescaler|counter\(17)) # (\prescaler|counter\(20)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101100101011001010110010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(19),
	datab => \prescaler|ALT_INV_counter\(17),
	datac => \prescaler|ALT_INV_counter\(20),
	dataf => \prescaler|ALT_INV_counter\(18),
	combout => \fsm_inst|HEX4_inst|Mux6~0_combout\);

-- Location: MLABCELL_X78_Y2_N24
\fsm_inst|HEX4_inst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX4_inst|Mux5~0_combout\ = ( \prescaler|counter\(18) & ( ((!\prescaler|counter\(17) & \prescaler|counter\(19))) # (\prescaler|counter\(20)) ) ) # ( !\prescaler|counter\(18) & ( (\prescaler|counter\(19) & ((\prescaler|counter\(20)) # 
-- (\prescaler|counter\(17)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111001110110011101100000111000001110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(17),
	datab => \prescaler|ALT_INV_counter\(20),
	datac => \prescaler|ALT_INV_counter\(19),
	datae => \prescaler|ALT_INV_counter\(18),
	combout => \fsm_inst|HEX4_inst|Mux5~0_combout\);

-- Location: MLABCELL_X82_Y4_N9
\fsm_inst|HEX4_inst|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX4_inst|Mux4~0_combout\ = ( \prescaler|counter\(18) & ( ((!\prescaler|counter\(17) & !\prescaler|counter\(19))) # (\prescaler|counter\(20)) ) ) # ( !\prescaler|counter\(18) & ( (\prescaler|counter\(20) & \prescaler|counter\(19)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111110101010101011111010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(20),
	datac => \prescaler|ALT_INV_counter\(17),
	datad => \prescaler|ALT_INV_counter\(19),
	dataf => \prescaler|ALT_INV_counter\(18),
	combout => \fsm_inst|HEX4_inst|Mux4~0_combout\);

-- Location: MLABCELL_X82_Y4_N36
\fsm_inst|HEX4_inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX4_inst|Mux3~0_combout\ = ( \prescaler|counter\(19) & ( (!\prescaler|counter\(17) $ (\prescaler|counter\(18))) # (\prescaler|counter\(20)) ) ) # ( !\prescaler|counter\(19) & ( (!\prescaler|counter\(18) & ((\prescaler|counter\(17)))) # 
-- (\prescaler|counter\(18) & (\prescaler|counter\(20))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101110101111101011100110101001101011101011111010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(20),
	datab => \prescaler|ALT_INV_counter\(17),
	datac => \prescaler|ALT_INV_counter\(18),
	datae => \prescaler|ALT_INV_counter\(19),
	combout => \fsm_inst|HEX4_inst|Mux3~0_combout\);

-- Location: MLABCELL_X82_Y4_N30
\fsm_inst|HEX4_inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX4_inst|Mux2~0_combout\ = ( \prescaler|counter\(18) & ( (\prescaler|counter\(17)) # (\prescaler|counter\(20)) ) ) # ( !\prescaler|counter\(18) & ( (\prescaler|counter\(19)) # (\prescaler|counter\(17)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(20),
	datab => \prescaler|ALT_INV_counter\(17),
	datac => \prescaler|ALT_INV_counter\(19),
	dataf => \prescaler|ALT_INV_counter\(18),
	combout => \fsm_inst|HEX4_inst|Mux2~0_combout\);

-- Location: MLABCELL_X78_Y2_N21
\fsm_inst|HEX4_inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX4_inst|Mux1~0_combout\ = ( \prescaler|counter\(17) & ( \prescaler|counter\(19) & ( (\prescaler|counter\(20)) # (\prescaler|counter\(18)) ) ) ) # ( !\prescaler|counter\(17) & ( \prescaler|counter\(19) & ( \prescaler|counter\(20) ) ) ) # ( 
-- \prescaler|counter\(17) & ( !\prescaler|counter\(19) & ( (!\prescaler|counter\(20)) # (\prescaler|counter\(18)) ) ) ) # ( !\prescaler|counter\(17) & ( !\prescaler|counter\(19) & ( \prescaler|counter\(18) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111101011111010100001111000011110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(18),
	datac => \prescaler|ALT_INV_counter\(20),
	datae => \prescaler|ALT_INV_counter\(17),
	dataf => \prescaler|ALT_INV_counter\(19),
	combout => \fsm_inst|HEX4_inst|Mux1~0_combout\);

-- Location: MLABCELL_X78_Y2_N48
\fsm_inst|HEX4_inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX4_inst|Mux0~0_combout\ = ( \prescaler|counter\(18) & ( (!\prescaler|counter\(20) & ((!\prescaler|counter\(17)) # (!\prescaler|counter\(19)))) ) ) # ( !\prescaler|counter\(18) & ( !\prescaler|counter\(20) $ (!\prescaler|counter\(19)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110010001100100000111100001111001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(17),
	datab => \prescaler|ALT_INV_counter\(20),
	datac => \prescaler|ALT_INV_counter\(19),
	datae => \prescaler|ALT_INV_counter\(18),
	combout => \fsm_inst|HEX4_inst|Mux0~0_combout\);

-- Location: LABCELL_X75_Y2_N51
\fsm_inst|HEX5_inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX5_inst|Mux6~0_combout\ = ( \prescaler|counter\(24) & ( \prescaler|counter\(23) ) ) # ( !\prescaler|counter\(24) & ( \prescaler|counter\(23) & ( (!\prescaler|counter[21]~DUPLICATE_q\ & !\prescaler|counter\(22)) ) ) ) # ( 
-- \prescaler|counter\(24) & ( !\prescaler|counter\(23) & ( \prescaler|counter\(22) ) ) ) # ( !\prescaler|counter\(24) & ( !\prescaler|counter\(23) & ( (\prescaler|counter[21]~DUPLICATE_q\ & !\prescaler|counter\(22)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000011110000111110100000101000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter[21]~DUPLICATE_q\,
	datac => \prescaler|ALT_INV_counter\(22),
	datae => \prescaler|ALT_INV_counter\(24),
	dataf => \prescaler|ALT_INV_counter\(23),
	combout => \fsm_inst|HEX5_inst|Mux6~0_combout\);

-- Location: LABCELL_X75_Y2_N42
\fsm_inst|HEX5_inst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX5_inst|Mux5~0_combout\ = ( \prescaler|counter\(24) & ( \prescaler|counter\(23) ) ) # ( !\prescaler|counter\(24) & ( \prescaler|counter\(23) & ( !\prescaler|counter\(22) $ (!\prescaler|counter[21]~DUPLICATE_q\) ) ) ) # ( 
-- \prescaler|counter\(24) & ( !\prescaler|counter\(23) & ( \prescaler|counter\(22) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100111100001111001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(22),
	datac => \prescaler|ALT_INV_counter[21]~DUPLICATE_q\,
	datae => \prescaler|ALT_INV_counter\(24),
	dataf => \prescaler|ALT_INV_counter\(23),
	combout => \fsm_inst|HEX5_inst|Mux5~0_combout\);

-- Location: LABCELL_X75_Y2_N27
\fsm_inst|HEX5_inst|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX5_inst|Mux4~0_combout\ = ( \prescaler|counter\(24) & ( \prescaler|counter\(23) ) ) # ( \prescaler|counter\(24) & ( !\prescaler|counter\(23) & ( \prescaler|counter\(22) ) ) ) # ( !\prescaler|counter\(24) & ( !\prescaler|counter\(23) & ( 
-- (!\prescaler|counter[21]~DUPLICATE_q\ & \prescaler|counter\(22)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter[21]~DUPLICATE_q\,
	datac => \prescaler|ALT_INV_counter\(22),
	datae => \prescaler|ALT_INV_counter\(24),
	dataf => \prescaler|ALT_INV_counter\(23),
	combout => \fsm_inst|HEX5_inst|Mux4~0_combout\);

-- Location: LABCELL_X75_Y2_N54
\fsm_inst|HEX5_inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX5_inst|Mux3~0_combout\ = ( \prescaler|counter\(24) & ( \prescaler|counter\(23) ) ) # ( !\prescaler|counter\(24) & ( \prescaler|counter\(23) & ( !\prescaler|counter\(22) $ (\prescaler|counter[21]~DUPLICATE_q\) ) ) ) # ( \prescaler|counter\(24) 
-- & ( !\prescaler|counter\(23) & ( (\prescaler|counter[21]~DUPLICATE_q\) # (\prescaler|counter\(22)) ) ) ) # ( !\prescaler|counter\(24) & ( !\prescaler|counter\(23) & ( (!\prescaler|counter\(22) & \prescaler|counter[21]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111111000011110000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(22),
	datac => \prescaler|ALT_INV_counter[21]~DUPLICATE_q\,
	datae => \prescaler|ALT_INV_counter\(24),
	dataf => \prescaler|ALT_INV_counter\(23),
	combout => \fsm_inst|HEX5_inst|Mux3~0_combout\);

-- Location: LABCELL_X75_Y2_N15
\fsm_inst|HEX5_inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX5_inst|Mux2~0_combout\ = ( \prescaler|counter\(24) & ( \prescaler|counter\(23) ) ) # ( !\prescaler|counter\(24) & ( \prescaler|counter\(23) & ( (!\prescaler|counter\(22)) # (\prescaler|counter[21]~DUPLICATE_q\) ) ) ) # ( 
-- \prescaler|counter\(24) & ( !\prescaler|counter\(23) & ( (\prescaler|counter\(22)) # (\prescaler|counter[21]~DUPLICATE_q\) ) ) ) # ( !\prescaler|counter\(24) & ( !\prescaler|counter\(23) & ( \prescaler|counter[21]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010111110101111111110101111101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter[21]~DUPLICATE_q\,
	datac => \prescaler|ALT_INV_counter\(22),
	datae => \prescaler|ALT_INV_counter\(24),
	dataf => \prescaler|ALT_INV_counter\(23),
	combout => \fsm_inst|HEX5_inst|Mux2~0_combout\);

-- Location: LABCELL_X75_Y2_N6
\fsm_inst|HEX5_inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX5_inst|Mux1~0_combout\ = ( \prescaler|counter\(24) & ( \prescaler|counter\(23) ) ) # ( !\prescaler|counter\(24) & ( \prescaler|counter\(23) & ( (\prescaler|counter\(22) & \prescaler|counter[21]~DUPLICATE_q\) ) ) ) # ( \prescaler|counter\(24) 
-- & ( !\prescaler|counter\(23) & ( \prescaler|counter\(22) ) ) ) # ( !\prescaler|counter\(24) & ( !\prescaler|counter\(23) & ( (\prescaler|counter[21]~DUPLICATE_q\) # (\prescaler|counter\(22)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001100110011001100000011000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(22),
	datac => \prescaler|ALT_INV_counter[21]~DUPLICATE_q\,
	datae => \prescaler|ALT_INV_counter\(24),
	dataf => \prescaler|ALT_INV_counter\(23),
	combout => \fsm_inst|HEX5_inst|Mux1~0_combout\);

-- Location: LABCELL_X75_Y2_N36
\fsm_inst|HEX5_inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm_inst|HEX5_inst|Mux0~0_combout\ = ( !\prescaler|counter\(24) & ( \prescaler|counter\(23) & ( (!\prescaler|counter\(22)) # (!\prescaler|counter[21]~DUPLICATE_q\) ) ) ) # ( \prescaler|counter\(24) & ( !\prescaler|counter\(23) & ( 
-- !\prescaler|counter\(22) ) ) ) # ( !\prescaler|counter\(24) & ( !\prescaler|counter\(23) & ( \prescaler|counter\(22) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110011111100111111000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(22),
	datac => \prescaler|ALT_INV_counter[21]~DUPLICATE_q\,
	datae => \prescaler|ALT_INV_counter\(24),
	dataf => \prescaler|ALT_INV_counter\(23),
	combout => \fsm_inst|HEX5_inst|Mux0~0_combout\);

-- Location: IOIBUF_X89_Y25_N55
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X22_Y0_N52
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LABCELL_X11_Y36_N3
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


