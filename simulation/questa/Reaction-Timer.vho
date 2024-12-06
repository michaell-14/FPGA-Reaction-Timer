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

-- DATE "12/06/2024 00:39:17"

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
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END TopTestGame;

-- Design Ports Information
-- reset	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- LEDR[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \RandomGen|lfsr[2]~9_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \RandomGen|lfsr[1]~5_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \RandomGen|lfsr[0]~1_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \RandomGen|lfsr[3]~13_combout\ : std_logic;
SIGNAL \RandomGen|lfsr[3]~15_combout\ : std_logic;
SIGNAL \RandomGen|lfsr[3]~_emulated_q\ : std_logic;
SIGNAL \RandomGen|lfsr[3]~14_combout\ : std_logic;
SIGNAL \RandomGen|lfsr[0]~3_combout\ : std_logic;
SIGNAL \RandomGen|lfsr[0]~_emulated_q\ : std_logic;
SIGNAL \RandomGen|lfsr[0]~2_combout\ : std_logic;
SIGNAL \RandomGen|lfsr[1]~7_combout\ : std_logic;
SIGNAL \RandomGen|lfsr[1]~_emulated_q\ : std_logic;
SIGNAL \RandomGen|lfsr[1]~6_combout\ : std_logic;
SIGNAL \RandomGen|lfsr[2]~11_combout\ : std_logic;
SIGNAL \RandomGen|lfsr[2]~_emulated_q\ : std_logic;
SIGNAL \RandomGen|lfsr[2]~10_combout\ : std_logic;
SIGNAL \seg_decoder0|Mux6~0_combout\ : std_logic;
SIGNAL \seg_decoder0|Mux5~0_combout\ : std_logic;
SIGNAL \seg_decoder0|Mux4~0_combout\ : std_logic;
SIGNAL \seg_decoder0|Mux3~0_combout\ : std_logic;
SIGNAL \seg_decoder0|Mux2~0_combout\ : std_logic;
SIGNAL \seg_decoder0|Mux1~0_combout\ : std_logic;
SIGNAL \seg_decoder0|Mux0~0_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \prescaler|Add0~53_sumout\ : std_logic;
SIGNAL \prescaler|Mux0~0_combout\ : std_logic;
SIGNAL \prescaler|Equal0~0_combout\ : std_logic;
SIGNAL \prescaler|Mux1~0_combout\ : std_logic;
SIGNAL \prescaler|Add0~10\ : std_logic;
SIGNAL \prescaler|Add0~13_sumout\ : std_logic;
SIGNAL \prescaler|Add0~14\ : std_logic;
SIGNAL \prescaler|Add0~17_sumout\ : std_logic;
SIGNAL \prescaler|Add0~18\ : std_logic;
SIGNAL \prescaler|Add0~21_sumout\ : std_logic;
SIGNAL \prescaler|Add0~22\ : std_logic;
SIGNAL \prescaler|Add0~25_sumout\ : std_logic;
SIGNAL \prescaler|Equal1~4_combout\ : std_logic;
SIGNAL \prescaler|Mux4~0_combout\ : std_logic;
SIGNAL \prescaler|Equal1~5_combout\ : std_logic;
SIGNAL \prescaler|counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|Equal1~1_combout\ : std_logic;
SIGNAL \prescaler|Mux2~0_combout\ : std_logic;
SIGNAL \prescaler|Add0~26\ : std_logic;
SIGNAL \prescaler|Add0~29_sumout\ : std_logic;
SIGNAL \prescaler|counter[24]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|Mux3~0_combout\ : std_logic;
SIGNAL \prescaler|Equal1~3_combout\ : std_logic;
SIGNAL \prescaler|Mux5~0_combout\ : std_logic;
SIGNAL \prescaler|counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|Equal1~2_combout\ : std_logic;
SIGNAL \prescaler|counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|Equal1~0_combout\ : std_logic;
SIGNAL \prescaler|Equal1~6_combout\ : std_logic;
SIGNAL \prescaler|counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|Add0~54\ : std_logic;
SIGNAL \prescaler|Add0~73_sumout\ : std_logic;
SIGNAL \prescaler|Add0~74\ : std_logic;
SIGNAL \prescaler|Add0~89_sumout\ : std_logic;
SIGNAL \prescaler|Add0~90\ : std_logic;
SIGNAL \prescaler|Add0~69_sumout\ : std_logic;
SIGNAL \prescaler|Add0~70\ : std_logic;
SIGNAL \prescaler|Add0~85_sumout\ : std_logic;
SIGNAL \prescaler|Add0~86\ : std_logic;
SIGNAL \prescaler|Add0~65_sumout\ : std_logic;
SIGNAL \prescaler|counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|Add0~66\ : std_logic;
SIGNAL \prescaler|Add0~81_sumout\ : std_logic;
SIGNAL \prescaler|Add0~82\ : std_logic;
SIGNAL \prescaler|Add0~49_sumout\ : std_logic;
SIGNAL \prescaler|counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|Add0~50\ : std_logic;
SIGNAL \prescaler|Add0~45_sumout\ : std_logic;
SIGNAL \prescaler|Add0~46\ : std_logic;
SIGNAL \prescaler|Add0~41_sumout\ : std_logic;
SIGNAL \prescaler|Add0~42\ : std_logic;
SIGNAL \prescaler|Add0~37_sumout\ : std_logic;
SIGNAL \prescaler|Add0~38\ : std_logic;
SIGNAL \prescaler|Add0~97_sumout\ : std_logic;
SIGNAL \prescaler|Add0~98\ : std_logic;
SIGNAL \prescaler|Add0~61_sumout\ : std_logic;
SIGNAL \prescaler|Add0~62\ : std_logic;
SIGNAL \prescaler|Add0~77_sumout\ : std_logic;
SIGNAL \prescaler|Add0~78\ : std_logic;
SIGNAL \prescaler|Add0~57_sumout\ : std_logic;
SIGNAL \prescaler|Add0~58\ : std_logic;
SIGNAL \prescaler|Add0~93_sumout\ : std_logic;
SIGNAL \prescaler|Add0~94\ : std_logic;
SIGNAL \prescaler|Add0~33_sumout\ : std_logic;
SIGNAL \prescaler|Add0~34\ : std_logic;
SIGNAL \prescaler|Add0~1_sumout\ : std_logic;
SIGNAL \prescaler|counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|Add0~2\ : std_logic;
SIGNAL \prescaler|Add0~5_sumout\ : std_logic;
SIGNAL \prescaler|Add0~6\ : std_logic;
SIGNAL \prescaler|Add0~9_sumout\ : std_logic;
SIGNAL \seg_decoder2|Mux6~0_combout\ : std_logic;
SIGNAL \seg_decoder2|Mux5~0_combout\ : std_logic;
SIGNAL \seg_decoder2|Mux4~0_combout\ : std_logic;
SIGNAL \seg_decoder2|Mux3~0_combout\ : std_logic;
SIGNAL \seg_decoder2|Mux2~0_combout\ : std_logic;
SIGNAL \seg_decoder2|Mux1~0_combout\ : std_logic;
SIGNAL \seg_decoder2|Mux0~0_combout\ : std_logic;
SIGNAL \prescaler|counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \latched_clk_A[0]~feeder_combout\ : std_logic;
SIGNAL \seg_decoder3|Mux6~0_combout\ : std_logic;
SIGNAL \seg_decoder3|Mux5~0_combout\ : std_logic;
SIGNAL \seg_decoder3|Mux4~0_combout\ : std_logic;
SIGNAL \seg_decoder3|Mux3~0_combout\ : std_logic;
SIGNAL \seg_decoder3|Mux2~0_combout\ : std_logic;
SIGNAL \seg_decoder3|Mux1~0_combout\ : std_logic;
SIGNAL \seg_decoder3|Mux0~0_combout\ : std_logic;
SIGNAL \seg_decoder4|Mux6~0_combout\ : std_logic;
SIGNAL \seg_decoder4|Mux5~0_combout\ : std_logic;
SIGNAL \seg_decoder4|Mux4~0_combout\ : std_logic;
SIGNAL \seg_decoder4|Mux3~0_combout\ : std_logic;
SIGNAL \seg_decoder4|Mux2~0_combout\ : std_logic;
SIGNAL \seg_decoder4|Mux1~0_combout\ : std_logic;
SIGNAL \seg_decoder4|Mux0~0_combout\ : std_logic;
SIGNAL \seg_decoder5|Mux6~0_combout\ : std_logic;
SIGNAL \seg_decoder5|Mux5~0_combout\ : std_logic;
SIGNAL \seg_decoder5|Mux4~0_combout\ : std_logic;
SIGNAL \seg_decoder5|Mux3~0_combout\ : std_logic;
SIGNAL \seg_decoder5|Mux2~0_combout\ : std_logic;
SIGNAL \seg_decoder5|Mux1~0_combout\ : std_logic;
SIGNAL \seg_decoder5|Mux0~0_combout\ : std_logic;
SIGNAL \prescaler|counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL latched_clk_B : std_logic_vector(3 DOWNTO 0);
SIGNAL latched_clk_A : std_logic_vector(3 DOWNTO 0);
SIGNAL \prescaler|N\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \prescaler|SW_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \prescaler|ALT_INV_counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|ALT_INV_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|ALT_INV_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|ALT_INV_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|ALT_INV_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|ALT_INV_counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|ALT_INV_counter[24]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|ALT_INV_counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \prescaler|ALT_INV_counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \RandomGen|ALT_INV_lfsr[3]~13_combout\ : std_logic;
SIGNAL \RandomGen|ALT_INV_lfsr[2]~9_combout\ : std_logic;
SIGNAL \RandomGen|ALT_INV_lfsr[1]~5_combout\ : std_logic;
SIGNAL \RandomGen|ALT_INV_lfsr[0]~1_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_SW_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \prescaler|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_N\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \prescaler|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \RandomGen|ALT_INV_lfsr[3]~14_combout\ : std_logic;
SIGNAL \RandomGen|ALT_INV_lfsr[3]~_emulated_q\ : std_logic;
SIGNAL \RandomGen|ALT_INV_lfsr[2]~10_combout\ : std_logic;
SIGNAL \RandomGen|ALT_INV_lfsr[2]~_emulated_q\ : std_logic;
SIGNAL \RandomGen|ALT_INV_lfsr[1]~6_combout\ : std_logic;
SIGNAL \RandomGen|ALT_INV_lfsr[1]~_emulated_q\ : std_logic;
SIGNAL \RandomGen|ALT_INV_lfsr[0]~2_combout\ : std_logic;
SIGNAL \RandomGen|ALT_INV_lfsr[0]~_emulated_q\ : std_logic;
SIGNAL \seg_decoder5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \seg_decoder4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \seg_decoder3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL ALT_INV_latched_clk_A : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg_decoder2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL ALT_INV_latched_clk_B : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg_decoder0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_counter\ : std_logic_vector(23 DOWNTO 0);

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
\prescaler|ALT_INV_counter[13]~DUPLICATE_q\ <= NOT \prescaler|counter[13]~DUPLICATE_q\;
\prescaler|ALT_INV_counter[1]~DUPLICATE_q\ <= NOT \prescaler|counter[1]~DUPLICATE_q\;
\prescaler|ALT_INV_counter[5]~DUPLICATE_q\ <= NOT \prescaler|counter[5]~DUPLICATE_q\;
\prescaler|ALT_INV_counter[0]~DUPLICATE_q\ <= NOT \prescaler|counter[0]~DUPLICATE_q\;
\prescaler|ALT_INV_counter[7]~DUPLICATE_q\ <= NOT \prescaler|counter[7]~DUPLICATE_q\;
\prescaler|ALT_INV_counter[10]~DUPLICATE_q\ <= NOT \prescaler|counter[10]~DUPLICATE_q\;
\prescaler|ALT_INV_counter[24]~DUPLICATE_q\ <= NOT \prescaler|counter[24]~DUPLICATE_q\;
\prescaler|ALT_INV_counter[21]~DUPLICATE_q\ <= NOT \prescaler|counter[21]~DUPLICATE_q\;
\prescaler|ALT_INV_counter[17]~DUPLICATE_q\ <= NOT \prescaler|counter[17]~DUPLICATE_q\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\RandomGen|ALT_INV_lfsr[3]~13_combout\ <= NOT \RandomGen|lfsr[3]~13_combout\;
\RandomGen|ALT_INV_lfsr[2]~9_combout\ <= NOT \RandomGen|lfsr[2]~9_combout\;
\RandomGen|ALT_INV_lfsr[1]~5_combout\ <= NOT \RandomGen|lfsr[1]~5_combout\;
\RandomGen|ALT_INV_lfsr[0]~1_combout\ <= NOT \RandomGen|lfsr[0]~1_combout\;
\prescaler|ALT_INV_SW_reg\(2) <= NOT \prescaler|SW_reg\(2);
\prescaler|ALT_INV_SW_reg\(1) <= NOT \prescaler|SW_reg\(1);
\prescaler|ALT_INV_SW_reg\(0) <= NOT \prescaler|SW_reg\(0);
\prescaler|ALT_INV_Equal1~5_combout\ <= NOT \prescaler|Equal1~5_combout\;
\prescaler|ALT_INV_Equal1~4_combout\ <= NOT \prescaler|Equal1~4_combout\;
\prescaler|ALT_INV_N\(18) <= NOT \prescaler|N\(18);
\prescaler|ALT_INV_N\(17) <= NOT \prescaler|N\(17);
\prescaler|ALT_INV_Equal1~3_combout\ <= NOT \prescaler|Equal1~3_combout\;
\prescaler|ALT_INV_N\(11) <= NOT \prescaler|N\(11);
\prescaler|ALT_INV_Equal1~2_combout\ <= NOT \prescaler|Equal1~2_combout\;
\prescaler|ALT_INV_N\(15) <= NOT \prescaler|N\(15);
\prescaler|ALT_INV_Equal1~1_combout\ <= NOT \prescaler|Equal1~1_combout\;
\prescaler|ALT_INV_N\(12) <= NOT \prescaler|N\(12);
\prescaler|ALT_INV_Equal1~0_combout\ <= NOT \prescaler|Equal1~0_combout\;
\prescaler|ALT_INV_N\(0) <= NOT \prescaler|N\(0);
\RandomGen|ALT_INV_lfsr[3]~14_combout\ <= NOT \RandomGen|lfsr[3]~14_combout\;
\RandomGen|ALT_INV_lfsr[3]~_emulated_q\ <= NOT \RandomGen|lfsr[3]~_emulated_q\;
\RandomGen|ALT_INV_lfsr[2]~10_combout\ <= NOT \RandomGen|lfsr[2]~10_combout\;
\RandomGen|ALT_INV_lfsr[2]~_emulated_q\ <= NOT \RandomGen|lfsr[2]~_emulated_q\;
\RandomGen|ALT_INV_lfsr[1]~6_combout\ <= NOT \RandomGen|lfsr[1]~6_combout\;
\RandomGen|ALT_INV_lfsr[1]~_emulated_q\ <= NOT \RandomGen|lfsr[1]~_emulated_q\;
\RandomGen|ALT_INV_lfsr[0]~2_combout\ <= NOT \RandomGen|lfsr[0]~2_combout\;
\RandomGen|ALT_INV_lfsr[0]~_emulated_q\ <= NOT \RandomGen|lfsr[0]~_emulated_q\;
\seg_decoder5|ALT_INV_Mux0~0_combout\ <= NOT \seg_decoder5|Mux0~0_combout\;
\seg_decoder4|ALT_INV_Mux0~0_combout\ <= NOT \seg_decoder4|Mux0~0_combout\;
\seg_decoder3|ALT_INV_Mux0~0_combout\ <= NOT \seg_decoder3|Mux0~0_combout\;
ALT_INV_latched_clk_A(3) <= NOT latched_clk_A(3);
ALT_INV_latched_clk_A(2) <= NOT latched_clk_A(2);
ALT_INV_latched_clk_A(1) <= NOT latched_clk_A(1);
ALT_INV_latched_clk_A(0) <= NOT latched_clk_A(0);
\seg_decoder2|ALT_INV_Mux0~0_combout\ <= NOT \seg_decoder2|Mux0~0_combout\;
ALT_INV_latched_clk_B(3) <= NOT latched_clk_B(3);
ALT_INV_latched_clk_B(2) <= NOT latched_clk_B(2);
ALT_INV_latched_clk_B(1) <= NOT latched_clk_B(1);
ALT_INV_latched_clk_B(0) <= NOT latched_clk_B(0);
\seg_decoder0|ALT_INV_Mux0~0_combout\ <= NOT \seg_decoder0|Mux0~0_combout\;
\prescaler|ALT_INV_counter\(11) <= NOT \prescaler|counter\(11);
\prescaler|ALT_INV_counter\(15) <= NOT \prescaler|counter\(15);
\prescaler|ALT_INV_counter\(16) <= NOT \prescaler|counter\(16);
\prescaler|ALT_INV_counter\(2) <= NOT \prescaler|counter\(2);
\prescaler|ALT_INV_counter\(4) <= NOT \prescaler|counter\(4);
\prescaler|ALT_INV_counter\(6) <= NOT \prescaler|counter\(6);
\prescaler|ALT_INV_counter\(13) <= NOT \prescaler|counter\(13);
\prescaler|ALT_INV_counter\(1) <= NOT \prescaler|counter\(1);
\prescaler|ALT_INV_counter\(3) <= NOT \prescaler|counter\(3);
\prescaler|ALT_INV_counter\(5) <= NOT \prescaler|counter\(5);
\prescaler|ALT_INV_counter\(12) <= NOT \prescaler|counter\(12);
\prescaler|ALT_INV_counter\(14) <= NOT \prescaler|counter\(14);
\prescaler|ALT_INV_counter\(0) <= NOT \prescaler|counter\(0);
\prescaler|ALT_INV_counter\(7) <= NOT \prescaler|counter\(7);
\prescaler|ALT_INV_counter\(8) <= NOT \prescaler|counter\(8);
\prescaler|ALT_INV_counter\(9) <= NOT \prescaler|counter\(9);
\prescaler|ALT_INV_counter\(10) <= NOT \prescaler|counter\(10);
\prescaler|ALT_INV_counter\(23) <= NOT \prescaler|counter\(23);
\prescaler|ALT_INV_counter\(22) <= NOT \prescaler|counter\(22);
\prescaler|ALT_INV_counter\(21) <= NOT \prescaler|counter\(21);
\prescaler|ALT_INV_counter\(20) <= NOT \prescaler|counter\(20);
\prescaler|ALT_INV_counter\(19) <= NOT \prescaler|counter\(19);
\prescaler|ALT_INV_counter\(18) <= NOT \prescaler|counter\(18);

-- Location: IOOBUF_X60_Y0_N19
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_decoder0|Mux6~0_combout\,
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
	i => \seg_decoder0|Mux5~0_combout\,
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
	i => \seg_decoder0|Mux4~0_combout\,
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
	i => \seg_decoder0|Mux3~0_combout\,
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
	i => \seg_decoder0|Mux2~0_combout\,
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
	i => \seg_decoder0|Mux1~0_combout\,
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
	i => \seg_decoder0|ALT_INV_Mux0~0_combout\,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => \seg_decoder2|Mux6~0_combout\,
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
	i => \seg_decoder2|Mux5~0_combout\,
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
	i => \seg_decoder2|Mux4~0_combout\,
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
	i => \seg_decoder2|Mux3~0_combout\,
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
	i => \seg_decoder2|Mux2~0_combout\,
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
	i => \seg_decoder2|Mux1~0_combout\,
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
	i => \seg_decoder2|ALT_INV_Mux0~0_combout\,
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
	i => \seg_decoder3|Mux6~0_combout\,
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
	i => \seg_decoder3|Mux5~0_combout\,
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
	i => \seg_decoder3|Mux4~0_combout\,
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
	i => \seg_decoder3|Mux3~0_combout\,
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
	i => \seg_decoder3|Mux2~0_combout\,
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
	i => \seg_decoder3|Mux1~0_combout\,
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
	i => \seg_decoder3|ALT_INV_Mux0~0_combout\,
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
	i => \seg_decoder4|Mux6~0_combout\,
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
	i => \seg_decoder4|Mux5~0_combout\,
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
	i => \seg_decoder4|Mux4~0_combout\,
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
	i => \seg_decoder4|Mux3~0_combout\,
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
	i => \seg_decoder4|Mux2~0_combout\,
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
	i => \seg_decoder4|Mux1~0_combout\,
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
	i => \seg_decoder4|ALT_INV_Mux0~0_combout\,
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
	i => \seg_decoder5|Mux6~0_combout\,
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
	i => \seg_decoder5|Mux5~0_combout\,
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
	i => \seg_decoder5|Mux4~0_combout\,
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
	i => \seg_decoder5|Mux3~0_combout\,
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
	i => \seg_decoder5|Mux2~0_combout\,
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
	i => \seg_decoder5|Mux1~0_combout\,
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
	i => \seg_decoder5|ALT_INV_Mux0~0_combout\,
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
	i => \ALT_INV_KEY[0]~input_o\,
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
	i => \prescaler|counter[24]~DUPLICATE_q\,
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
	i => \prescaler|counter\(20),
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

-- Location: LABCELL_X37_Y1_N48
\RandomGen|lfsr[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RandomGen|lfsr[2]~9_combout\ = ( \RandomGen|lfsr[2]~9_combout\ & ( (\KEY[2]~input_o\) # (\SW[8]~input_o\) ) ) # ( !\RandomGen|lfsr[2]~9_combout\ & ( (\SW[8]~input_o\ & !\KEY[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_KEY[2]~input_o\,
	dataf => \RandomGen|ALT_INV_lfsr[2]~9_combout\,
	combout => \RandomGen|lfsr[2]~9_combout\);

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

-- Location: LABCELL_X37_Y1_N0
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = LCELL(( !\KEY[0]~input_o\ & ( !\SW[0]~input_o\ $ (!\SW[2]~input_o\ $ (\SW[1]~input_o\)) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \comb~0_combout\);

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

-- Location: LABCELL_X37_Y1_N39
\RandomGen|lfsr[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \RandomGen|lfsr[1]~5_combout\ = ( \RandomGen|lfsr[1]~5_combout\ & ( (\KEY[2]~input_o\) # (\SW[7]~input_o\) ) ) # ( !\RandomGen|lfsr[1]~5_combout\ & ( (\SW[7]~input_o\ & !\KEY[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \ALT_INV_KEY[2]~input_o\,
	dataf => \RandomGen|ALT_INV_lfsr[1]~5_combout\,
	combout => \RandomGen|lfsr[1]~5_combout\);

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

-- Location: LABCELL_X37_Y1_N24
\RandomGen|lfsr[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RandomGen|lfsr[0]~1_combout\ = ( \RandomGen|lfsr[0]~1_combout\ & ( (\KEY[2]~input_o\) # (\SW[6]~input_o\) ) ) # ( !\RandomGen|lfsr[0]~1_combout\ & ( (\SW[6]~input_o\ & !\KEY[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_KEY[2]~input_o\,
	dataf => \RandomGen|ALT_INV_lfsr[0]~1_combout\,
	combout => \RandomGen|lfsr[0]~1_combout\);

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

-- Location: LABCELL_X37_Y1_N21
\RandomGen|lfsr[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \RandomGen|lfsr[3]~13_combout\ = (!\KEY[2]~input_o\ & (\SW[9]~input_o\)) # (\KEY[2]~input_o\ & ((\RandomGen|lfsr[3]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_KEY[2]~input_o\,
	datad => \RandomGen|ALT_INV_lfsr[3]~13_combout\,
	combout => \RandomGen|lfsr[3]~13_combout\);

-- Location: LABCELL_X37_Y1_N9
\RandomGen|lfsr[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \RandomGen|lfsr[3]~15_combout\ = ( \RandomGen|lfsr[3]~13_combout\ & ( !\RandomGen|lfsr[2]~10_combout\ ) ) # ( !\RandomGen|lfsr[3]~13_combout\ & ( \RandomGen|lfsr[2]~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RandomGen|ALT_INV_lfsr[2]~10_combout\,
	dataf => \RandomGen|ALT_INV_lfsr[3]~13_combout\,
	combout => \RandomGen|lfsr[3]~15_combout\);

-- Location: FF_X37_Y1_N11
\RandomGen|lfsr[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0_combout\,
	d => \RandomGen|lfsr[3]~15_combout\,
	clrn => \KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RandomGen|lfsr[3]~_emulated_q\);

-- Location: LABCELL_X37_Y1_N15
\RandomGen|lfsr[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \RandomGen|lfsr[3]~14_combout\ = ( \RandomGen|lfsr[3]~_emulated_q\ & ( (!\KEY[2]~input_o\ & (\SW[9]~input_o\)) # (\KEY[2]~input_o\ & ((!\RandomGen|lfsr[3]~13_combout\))) ) ) # ( !\RandomGen|lfsr[3]~_emulated_q\ & ( (!\KEY[2]~input_o\ & (\SW[9]~input_o\)) 
-- # (\KEY[2]~input_o\ & ((\RandomGen|lfsr[3]~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111101010101111100000101010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \RandomGen|ALT_INV_lfsr[3]~13_combout\,
	datad => \ALT_INV_KEY[2]~input_o\,
	dataf => \RandomGen|ALT_INV_lfsr[3]~_emulated_q\,
	combout => \RandomGen|lfsr[3]~14_combout\);

-- Location: LABCELL_X37_Y1_N12
\RandomGen|lfsr[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RandomGen|lfsr[0]~3_combout\ = ( \RandomGen|lfsr[1]~6_combout\ & ( !\RandomGen|lfsr[3]~14_combout\ $ (\RandomGen|lfsr[0]~1_combout\) ) ) # ( !\RandomGen|lfsr[1]~6_combout\ & ( !\RandomGen|lfsr[3]~14_combout\ $ (!\RandomGen|lfsr[0]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RandomGen|ALT_INV_lfsr[3]~14_combout\,
	datad => \RandomGen|ALT_INV_lfsr[0]~1_combout\,
	dataf => \RandomGen|ALT_INV_lfsr[1]~6_combout\,
	combout => \RandomGen|lfsr[0]~3_combout\);

-- Location: FF_X37_Y1_N14
\RandomGen|lfsr[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0_combout\,
	d => \RandomGen|lfsr[0]~3_combout\,
	clrn => \KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RandomGen|lfsr[0]~_emulated_q\);

-- Location: LABCELL_X37_Y1_N54
\RandomGen|lfsr[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RandomGen|lfsr[0]~2_combout\ = ( \RandomGen|lfsr[0]~_emulated_q\ & ( (!\KEY[2]~input_o\ & ((\SW[6]~input_o\))) # (\KEY[2]~input_o\ & (!\RandomGen|lfsr[0]~1_combout\)) ) ) # ( !\RandomGen|lfsr[0]~_emulated_q\ & ( (!\KEY[2]~input_o\ & ((\SW[6]~input_o\))) 
-- # (\KEY[2]~input_o\ & (\RandomGen|lfsr[0]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111110011000000111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RandomGen|ALT_INV_lfsr[0]~1_combout\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_KEY[2]~input_o\,
	dataf => \RandomGen|ALT_INV_lfsr[0]~_emulated_q\,
	combout => \RandomGen|lfsr[0]~2_combout\);

-- Location: LABCELL_X37_Y1_N51
\RandomGen|lfsr[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \RandomGen|lfsr[1]~7_combout\ = !\RandomGen|lfsr[1]~5_combout\ $ (!\RandomGen|lfsr[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RandomGen|ALT_INV_lfsr[1]~5_combout\,
	datac => \RandomGen|ALT_INV_lfsr[0]~2_combout\,
	combout => \RandomGen|lfsr[1]~7_combout\);

-- Location: FF_X37_Y1_N53
\RandomGen|lfsr[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0_combout\,
	d => \RandomGen|lfsr[1]~7_combout\,
	clrn => \KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RandomGen|lfsr[1]~_emulated_q\);

-- Location: LABCELL_X37_Y1_N30
\RandomGen|lfsr[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \RandomGen|lfsr[1]~6_combout\ = ( \RandomGen|lfsr[1]~_emulated_q\ & ( (!\KEY[2]~input_o\ & (\SW[7]~input_o\)) # (\KEY[2]~input_o\ & ((!\RandomGen|lfsr[1]~5_combout\))) ) ) # ( !\RandomGen|lfsr[1]~_emulated_q\ & ( (!\KEY[2]~input_o\ & (\SW[7]~input_o\)) # 
-- (\KEY[2]~input_o\ & ((\RandomGen|lfsr[1]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011111100000011001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \RandomGen|ALT_INV_lfsr[1]~5_combout\,
	datad => \ALT_INV_KEY[2]~input_o\,
	dataf => \RandomGen|ALT_INV_lfsr[1]~_emulated_q\,
	combout => \RandomGen|lfsr[1]~6_combout\);

-- Location: LABCELL_X37_Y1_N33
\RandomGen|lfsr[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RandomGen|lfsr[2]~11_combout\ = ( \RandomGen|lfsr[1]~6_combout\ & ( !\RandomGen|lfsr[2]~9_combout\ ) ) # ( !\RandomGen|lfsr[1]~6_combout\ & ( \RandomGen|lfsr[2]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RandomGen|ALT_INV_lfsr[2]~9_combout\,
	dataf => \RandomGen|ALT_INV_lfsr[1]~6_combout\,
	combout => \RandomGen|lfsr[2]~11_combout\);

-- Location: FF_X37_Y1_N35
\RandomGen|lfsr[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0_combout\,
	d => \RandomGen|lfsr[2]~11_combout\,
	clrn => \KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RandomGen|lfsr[2]~_emulated_q\);

-- Location: LABCELL_X37_Y1_N42
\RandomGen|lfsr[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RandomGen|lfsr[2]~10_combout\ = ( \RandomGen|lfsr[2]~_emulated_q\ & ( (!\KEY[2]~input_o\ & ((\SW[8]~input_o\))) # (\KEY[2]~input_o\ & (!\RandomGen|lfsr[2]~9_combout\)) ) ) # ( !\RandomGen|lfsr[2]~_emulated_q\ & ( (!\KEY[2]~input_o\ & ((\SW[8]~input_o\))) 
-- # (\KEY[2]~input_o\ & (\RandomGen|lfsr[2]~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111101010100000111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RandomGen|ALT_INV_lfsr[2]~9_combout\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_KEY[2]~input_o\,
	dataf => \RandomGen|ALT_INV_lfsr[2]~_emulated_q\,
	combout => \RandomGen|lfsr[2]~10_combout\);

-- Location: LABCELL_X37_Y1_N18
\seg_decoder0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder0|Mux6~0_combout\ = ( \RandomGen|lfsr[1]~6_combout\ & ( \RandomGen|lfsr[3]~14_combout\ ) ) # ( !\RandomGen|lfsr[1]~6_combout\ & ( !\RandomGen|lfsr[2]~10_combout\ $ (((!\RandomGen|lfsr[0]~2_combout\) # (\RandomGen|lfsr[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111000011001100111100001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RandomGen|ALT_INV_lfsr[2]~10_combout\,
	datac => \RandomGen|ALT_INV_lfsr[3]~14_combout\,
	datad => \RandomGen|ALT_INV_lfsr[0]~2_combout\,
	dataf => \RandomGen|ALT_INV_lfsr[1]~6_combout\,
	combout => \seg_decoder0|Mux6~0_combout\);

-- Location: LABCELL_X37_Y1_N45
\seg_decoder0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder0|Mux5~0_combout\ = ( \RandomGen|lfsr[3]~14_combout\ & ( (\RandomGen|lfsr[2]~10_combout\) # (\RandomGen|lfsr[1]~6_combout\) ) ) # ( !\RandomGen|lfsr[3]~14_combout\ & ( (\RandomGen|lfsr[2]~10_combout\ & (!\RandomGen|lfsr[1]~6_combout\ $ 
-- (!\RandomGen|lfsr[0]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RandomGen|ALT_INV_lfsr[1]~6_combout\,
	datac => \RandomGen|ALT_INV_lfsr[2]~10_combout\,
	datad => \RandomGen|ALT_INV_lfsr[0]~2_combout\,
	dataf => \RandomGen|ALT_INV_lfsr[3]~14_combout\,
	combout => \seg_decoder0|Mux5~0_combout\);

-- Location: LABCELL_X37_Y1_N57
\seg_decoder0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder0|Mux4~0_combout\ = ( \RandomGen|lfsr[2]~10_combout\ & ( \RandomGen|lfsr[3]~14_combout\ ) ) # ( !\RandomGen|lfsr[2]~10_combout\ & ( (\RandomGen|lfsr[1]~6_combout\ & ((!\RandomGen|lfsr[0]~2_combout\) # (\RandomGen|lfsr[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000101010101010000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RandomGen|ALT_INV_lfsr[1]~6_combout\,
	datac => \RandomGen|ALT_INV_lfsr[3]~14_combout\,
	datad => \RandomGen|ALT_INV_lfsr[0]~2_combout\,
	dataf => \RandomGen|ALT_INV_lfsr[2]~10_combout\,
	combout => \seg_decoder0|Mux4~0_combout\);

-- Location: LABCELL_X37_Y1_N36
\seg_decoder0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder0|Mux3~0_combout\ = ( \RandomGen|lfsr[1]~6_combout\ & ( ((\RandomGen|lfsr[2]~10_combout\ & \RandomGen|lfsr[0]~2_combout\)) # (\RandomGen|lfsr[3]~14_combout\) ) ) # ( !\RandomGen|lfsr[1]~6_combout\ & ( (!\RandomGen|lfsr[2]~10_combout\ & 
-- ((\RandomGen|lfsr[0]~2_combout\))) # (\RandomGen|lfsr[2]~10_combout\ & ((!\RandomGen|lfsr[0]~2_combout\) # (\RandomGen|lfsr[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001111001100111100111100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RandomGen|ALT_INV_lfsr[2]~10_combout\,
	datac => \RandomGen|ALT_INV_lfsr[3]~14_combout\,
	datad => \RandomGen|ALT_INV_lfsr[0]~2_combout\,
	dataf => \RandomGen|ALT_INV_lfsr[1]~6_combout\,
	combout => \seg_decoder0|Mux3~0_combout\);

-- Location: LABCELL_X37_Y1_N3
\seg_decoder0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder0|Mux2~0_combout\ = ( \RandomGen|lfsr[2]~10_combout\ & ( (!\RandomGen|lfsr[1]~6_combout\) # ((\RandomGen|lfsr[0]~2_combout\) # (\RandomGen|lfsr[3]~14_combout\)) ) ) # ( !\RandomGen|lfsr[2]~10_combout\ & ( ((\RandomGen|lfsr[1]~6_combout\ & 
-- \RandomGen|lfsr[3]~14_combout\)) # (\RandomGen|lfsr[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111111001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RandomGen|ALT_INV_lfsr[1]~6_combout\,
	datac => \RandomGen|ALT_INV_lfsr[3]~14_combout\,
	datad => \RandomGen|ALT_INV_lfsr[0]~2_combout\,
	dataf => \RandomGen|ALT_INV_lfsr[2]~10_combout\,
	combout => \seg_decoder0|Mux2~0_combout\);

-- Location: LABCELL_X37_Y1_N6
\seg_decoder0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder0|Mux1~0_combout\ = ( \RandomGen|lfsr[3]~14_combout\ & ( (\RandomGen|lfsr[1]~6_combout\) # (\RandomGen|lfsr[2]~10_combout\) ) ) # ( !\RandomGen|lfsr[3]~14_combout\ & ( (!\RandomGen|lfsr[2]~10_combout\ & ((\RandomGen|lfsr[0]~2_combout\) # 
-- (\RandomGen|lfsr[1]~6_combout\))) # (\RandomGen|lfsr[2]~10_combout\ & (\RandomGen|lfsr[1]~6_combout\ & \RandomGen|lfsr[0]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001111000011001100111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RandomGen|ALT_INV_lfsr[2]~10_combout\,
	datac => \RandomGen|ALT_INV_lfsr[1]~6_combout\,
	datad => \RandomGen|ALT_INV_lfsr[0]~2_combout\,
	dataf => \RandomGen|ALT_INV_lfsr[3]~14_combout\,
	combout => \seg_decoder0|Mux1~0_combout\);

-- Location: LABCELL_X37_Y1_N27
\seg_decoder0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder0|Mux0~0_combout\ = ( \RandomGen|lfsr[1]~6_combout\ & ( (!\RandomGen|lfsr[3]~14_combout\ & ((!\RandomGen|lfsr[2]~10_combout\) # (!\RandomGen|lfsr[0]~2_combout\))) ) ) # ( !\RandomGen|lfsr[1]~6_combout\ & ( !\RandomGen|lfsr[2]~10_combout\ $ 
-- (!\RandomGen|lfsr[3]~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011110000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RandomGen|ALT_INV_lfsr[2]~10_combout\,
	datac => \RandomGen|ALT_INV_lfsr[3]~14_combout\,
	datad => \RandomGen|ALT_INV_lfsr[0]~2_combout\,
	dataf => \RandomGen|ALT_INV_lfsr[1]~6_combout\,
	combout => \seg_decoder0|Mux0~0_combout\);

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

-- Location: LABCELL_X51_Y2_N30
\prescaler|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~53_sumout\ = SUM(( \prescaler|counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \prescaler|Add0~54\ = CARRY(( \prescaler|counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \prescaler|Add0~53_sumout\,
	cout => \prescaler|Add0~54\);

-- Location: LABCELL_X50_Y1_N24
\prescaler|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Mux0~0_combout\ = ( \SW[1]~input_o\ & ( (!\SW[2]~input_o\ & !\SW[0]~input_o\) ) ) # ( !\SW[1]~input_o\ & ( (\SW[2]~input_o\ & !\SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \prescaler|Mux0~0_combout\);

-- Location: FF_X50_Y1_N58
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
	ena => \prescaler|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|SW_reg\(0));

-- Location: FF_X50_Y1_N10
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
	ena => \prescaler|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|SW_reg\(1));

-- Location: FF_X50_Y1_N55
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
	ena => \prescaler|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|SW_reg\(2));

-- Location: LABCELL_X50_Y1_N54
\prescaler|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal0~0_combout\ = ( \SW[2]~input_o\ & ( \SW[0]~input_o\ & ( (!\prescaler|SW_reg\(0)) # ((!\prescaler|SW_reg\(2)) # (!\SW[1]~input_o\ $ (!\prescaler|SW_reg\(1)))) ) ) ) # ( !\SW[2]~input_o\ & ( \SW[0]~input_o\ & ( (!\prescaler|SW_reg\(0)) # 
-- ((!\SW[1]~input_o\ $ (!\prescaler|SW_reg\(1))) # (\prescaler|SW_reg\(2))) ) ) ) # ( \SW[2]~input_o\ & ( !\SW[0]~input_o\ & ( ((!\prescaler|SW_reg\(2)) # (!\SW[1]~input_o\ $ (!\prescaler|SW_reg\(1)))) # (\prescaler|SW_reg\(0)) ) ) ) # ( !\SW[2]~input_o\ & 
-- ( !\SW[0]~input_o\ & ( ((!\SW[1]~input_o\ $ (!\prescaler|SW_reg\(1))) # (\prescaler|SW_reg\(2))) # (\prescaler|SW_reg\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111110111111111111111110111110110111110111111111111111110111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_SW_reg\(0),
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \prescaler|ALT_INV_SW_reg\(1),
	datad => \prescaler|ALT_INV_SW_reg\(2),
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \prescaler|Equal0~0_combout\);

-- Location: FF_X50_Y1_N26
\prescaler|N[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Mux0~0_combout\,
	ena => \prescaler|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|N\(18));

-- Location: LABCELL_X50_Y1_N0
\prescaler|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Mux1~0_combout\ = ( \SW[1]~input_o\ ) # ( !\SW[1]~input_o\ & ( !\SW[0]~input_o\ $ (\SW[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \prescaler|Mux1~0_combout\);

-- Location: FF_X50_Y1_N14
\prescaler|N[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \prescaler|Mux1~0_combout\,
	sload => VCC,
	ena => \prescaler|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|N\(17));

-- Location: LABCELL_X51_Y1_N27
\prescaler|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~9_sumout\ = SUM(( \prescaler|counter\(19) ) + ( GND ) + ( \prescaler|Add0~6\ ))
-- \prescaler|Add0~10\ = CARRY(( \prescaler|counter\(19) ) + ( GND ) + ( \prescaler|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \prescaler|ALT_INV_counter\(19),
	cin => \prescaler|Add0~6\,
	sumout => \prescaler|Add0~9_sumout\,
	cout => \prescaler|Add0~10\);

-- Location: LABCELL_X51_Y1_N30
\prescaler|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~13_sumout\ = SUM(( \prescaler|counter\(20) ) + ( GND ) + ( \prescaler|Add0~10\ ))
-- \prescaler|Add0~14\ = CARRY(( \prescaler|counter\(20) ) + ( GND ) + ( \prescaler|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(20),
	cin => \prescaler|Add0~10\,
	sumout => \prescaler|Add0~13_sumout\,
	cout => \prescaler|Add0~14\);

-- Location: FF_X51_Y1_N32
\prescaler|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~13_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(20));

-- Location: LABCELL_X51_Y1_N33
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

-- Location: FF_X51_Y1_N35
\prescaler|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~17_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(21));

-- Location: LABCELL_X51_Y1_N36
\prescaler|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~21_sumout\ = SUM(( \prescaler|counter\(22) ) + ( GND ) + ( \prescaler|Add0~18\ ))
-- \prescaler|Add0~22\ = CARRY(( \prescaler|counter\(22) ) + ( GND ) + ( \prescaler|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter\(22),
	cin => \prescaler|Add0~18\,
	sumout => \prescaler|Add0~21_sumout\,
	cout => \prescaler|Add0~22\);

-- Location: FF_X51_Y1_N38
\prescaler|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~21_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(22));

-- Location: LABCELL_X51_Y1_N39
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

-- Location: FF_X51_Y1_N40
\prescaler|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~25_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(23));

-- Location: LABCELL_X50_Y1_N21
\prescaler|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal1~4_combout\ = ( \prescaler|counter\(23) & ( \prescaler|counter\(18) & ( (\prescaler|N\(18) & (!\prescaler|N\(17) & \prescaler|counter[17]~DUPLICATE_q\)) ) ) ) # ( !\prescaler|counter\(23) & ( \prescaler|counter\(18) & ( (\prescaler|N\(18) 
-- & (\prescaler|N\(17) & !\prescaler|counter[17]~DUPLICATE_q\)) ) ) ) # ( \prescaler|counter\(23) & ( !\prescaler|counter\(18) & ( (!\prescaler|N\(18) & (!\prescaler|N\(17) & \prescaler|counter[17]~DUPLICATE_q\)) ) ) ) # ( !\prescaler|counter\(23) & ( 
-- !\prescaler|counter\(18) & ( (!\prescaler|N\(18) & (\prescaler|N\(17) & !\prescaler|counter[17]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000000001010000000000101000000000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_N\(18),
	datac => \prescaler|ALT_INV_N\(17),
	datad => \prescaler|ALT_INV_counter[17]~DUPLICATE_q\,
	datae => \prescaler|ALT_INV_counter\(23),
	dataf => \prescaler|ALT_INV_counter\(18),
	combout => \prescaler|Equal1~4_combout\);

-- Location: LABCELL_X50_Y1_N45
\prescaler|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Mux4~0_combout\ = ( \SW[1]~input_o\ & ( (\SW[2]~input_o\) # (\SW[0]~input_o\) ) ) # ( !\SW[1]~input_o\ & ( !\SW[0]~input_o\ $ (\SW[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \prescaler|Mux4~0_combout\);

-- Location: FF_X50_Y1_N47
\prescaler|N[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Mux4~0_combout\,
	ena => \prescaler|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|N\(12));

-- Location: LABCELL_X50_Y1_N3
\prescaler|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal1~5_combout\ = ( \prescaler|counter\(20) & ( (\prescaler|counter\(21) & (!\prescaler|N\(12) & (\prescaler|counter\(22) & \prescaler|counter\(19)))) ) ) # ( !\prescaler|counter\(20) & ( (!\prescaler|counter\(21) & (\prescaler|N\(12) & 
-- (!\prescaler|counter\(22) & !\prescaler|counter\(19)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(21),
	datab => \prescaler|ALT_INV_N\(12),
	datac => \prescaler|ALT_INV_counter\(22),
	datad => \prescaler|ALT_INV_counter\(19),
	dataf => \prescaler|ALT_INV_counter\(20),
	combout => \prescaler|Equal1~5_combout\);

-- Location: FF_X51_Y2_N46
\prescaler|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~65_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(5));

-- Location: FF_X51_Y2_N34
\prescaler|counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~73_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter[1]~DUPLICATE_q\);

-- Location: LABCELL_X51_Y1_N51
\prescaler|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal1~1_combout\ = ( \prescaler|counter[1]~DUPLICATE_q\ & ( \prescaler|counter\(3) & ( (\prescaler|counter\(12) & (!\prescaler|N\(12) & (\prescaler|counter\(14) & \prescaler|counter\(5)))) ) ) ) # ( !\prescaler|counter[1]~DUPLICATE_q\ & ( 
-- !\prescaler|counter\(3) & ( (!\prescaler|counter\(12) & (\prescaler|N\(12) & (!\prescaler|counter\(14) & !\prescaler|counter\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(12),
	datab => \prescaler|ALT_INV_N\(12),
	datac => \prescaler|ALT_INV_counter\(14),
	datad => \prescaler|ALT_INV_counter\(5),
	datae => \prescaler|ALT_INV_counter[1]~DUPLICATE_q\,
	dataf => \prescaler|ALT_INV_counter\(3),
	combout => \prescaler|Equal1~1_combout\);

-- Location: LABCELL_X50_Y1_N6
\prescaler|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Mux2~0_combout\ = ( \SW[1]~input_o\ & ( (!\SW[2]~input_o\ & !\SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \prescaler|Mux2~0_combout\);

-- Location: FF_X50_Y1_N8
\prescaler|N[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Mux2~0_combout\,
	ena => \prescaler|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|N\(11));

-- Location: LABCELL_X51_Y1_N42
\prescaler|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~29_sumout\ = SUM(( \prescaler|counter[24]~DUPLICATE_q\ ) + ( GND ) + ( \prescaler|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter[24]~DUPLICATE_q\,
	cin => \prescaler|Add0~26\,
	sumout => \prescaler|Add0~29_sumout\);

-- Location: FF_X51_Y1_N43
\prescaler|counter[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~29_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter[24]~DUPLICATE_q\);

-- Location: LABCELL_X51_Y2_N24
\prescaler|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Mux3~0_combout\ = ( \SW[0]~input_o\ & ( \SW[2]~input_o\ ) ) # ( !\SW[0]~input_o\ & ( \SW[2]~input_o\ ) ) # ( \SW[0]~input_o\ & ( !\SW[2]~input_o\ & ( \SW[1]~input_o\ ) ) ) # ( !\SW[0]~input_o\ & ( !\SW[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \prescaler|Mux3~0_combout\);

-- Location: FF_X51_Y2_N26
\prescaler|N[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Mux3~0_combout\,
	ena => \prescaler|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|N\(15));

-- Location: LABCELL_X50_Y1_N48
\prescaler|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal1~3_combout\ = ( \prescaler|counter\(11) & ( \prescaler|N\(15) & ( (!\prescaler|counter\(15) & (\prescaler|N\(11) & (\prescaler|counter[24]~DUPLICATE_q\ & \prescaler|counter\(16)))) ) ) ) # ( !\prescaler|counter\(11) & ( \prescaler|N\(15) 
-- & ( (!\prescaler|counter\(15) & (!\prescaler|N\(11) & (!\prescaler|counter[24]~DUPLICATE_q\ & !\prescaler|counter\(16)))) ) ) ) # ( \prescaler|counter\(11) & ( !\prescaler|N\(15) & ( (\prescaler|counter\(15) & (\prescaler|N\(11) & 
-- (\prescaler|counter[24]~DUPLICATE_q\ & \prescaler|counter\(16)))) ) ) ) # ( !\prescaler|counter\(11) & ( !\prescaler|N\(15) & ( (\prescaler|counter\(15) & (!\prescaler|N\(11) & (!\prescaler|counter[24]~DUPLICATE_q\ & !\prescaler|counter\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000110000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(15),
	datab => \prescaler|ALT_INV_N\(11),
	datac => \prescaler|ALT_INV_counter[24]~DUPLICATE_q\,
	datad => \prescaler|ALT_INV_counter\(16),
	datae => \prescaler|ALT_INV_counter\(11),
	dataf => \prescaler|ALT_INV_N\(15),
	combout => \prescaler|Equal1~3_combout\);

-- Location: LABCELL_X51_Y2_N12
\prescaler|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Mux5~0_combout\ = ( \SW[0]~input_o\ & ( \SW[2]~input_o\ ) ) # ( !\SW[0]~input_o\ & ( \SW[2]~input_o\ ) ) # ( \SW[0]~input_o\ & ( !\SW[2]~input_o\ & ( \SW[1]~input_o\ ) ) ) # ( !\SW[0]~input_o\ & ( !\SW[2]~input_o\ & ( !\SW[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \prescaler|Mux5~0_combout\);

-- Location: FF_X51_Y2_N14
\prescaler|N[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Mux5~0_combout\,
	ena => \prescaler|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|N\(0));

-- Location: FF_X51_Y1_N10
\prescaler|counter[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~77_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter[13]~DUPLICATE_q\);

-- Location: LABCELL_X51_Y2_N21
\prescaler|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal1~2_combout\ = ( \prescaler|counter\(2) & ( \prescaler|counter[13]~DUPLICATE_q\ & ( (\prescaler|counter\(4) & (!\prescaler|N\(0) & (!\prescaler|N\(15) $ (!\prescaler|counter\(6))))) ) ) ) # ( !\prescaler|counter\(2) & ( 
-- !\prescaler|counter[13]~DUPLICATE_q\ & ( (!\prescaler|counter\(4) & (\prescaler|N\(0) & (!\prescaler|N\(15) $ (!\prescaler|counter\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001000000000000000000000000000000000000001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_N\(15),
	datab => \prescaler|ALT_INV_counter\(4),
	datac => \prescaler|ALT_INV_N\(0),
	datad => \prescaler|ALT_INV_counter\(6),
	datae => \prescaler|ALT_INV_counter\(2),
	dataf => \prescaler|ALT_INV_counter[13]~DUPLICATE_q\,
	combout => \prescaler|Equal1~2_combout\);

-- Location: FF_X51_Y2_N32
\prescaler|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~53_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(0));

-- Location: FF_X51_Y2_N53
\prescaler|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~49_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(7));

-- Location: FF_X51_Y1_N1
\prescaler|counter[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~37_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter[10]~DUPLICATE_q\);

-- Location: LABCELL_X51_Y2_N9
\prescaler|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal1~0_combout\ = ( !\prescaler|counter\(9) & ( !\prescaler|counter[10]~DUPLICATE_q\ & ( (!\prescaler|counter\(8) & (!\prescaler|counter\(7) & (!\prescaler|counter\(0) $ (!\prescaler|N\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(8),
	datab => \prescaler|ALT_INV_counter\(0),
	datac => \prescaler|ALT_INV_N\(0),
	datad => \prescaler|ALT_INV_counter\(7),
	datae => \prescaler|ALT_INV_counter\(9),
	dataf => \prescaler|ALT_INV_counter[10]~DUPLICATE_q\,
	combout => \prescaler|Equal1~0_combout\);

-- Location: LABCELL_X51_Y1_N54
\prescaler|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal1~6_combout\ = ( \prescaler|Equal1~2_combout\ & ( \prescaler|Equal1~0_combout\ & ( (\prescaler|Equal1~4_combout\ & (\prescaler|Equal1~5_combout\ & (\prescaler|Equal1~1_combout\ & \prescaler|Equal1~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_Equal1~4_combout\,
	datab => \prescaler|ALT_INV_Equal1~5_combout\,
	datac => \prescaler|ALT_INV_Equal1~1_combout\,
	datad => \prescaler|ALT_INV_Equal1~3_combout\,
	datae => \prescaler|ALT_INV_Equal1~2_combout\,
	dataf => \prescaler|ALT_INV_Equal1~0_combout\,
	combout => \prescaler|Equal1~6_combout\);

-- Location: FF_X51_Y2_N31
\prescaler|counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~53_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter[0]~DUPLICATE_q\);

-- Location: LABCELL_X51_Y2_N33
\prescaler|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~73_sumout\ = SUM(( \prescaler|counter\(1) ) + ( GND ) + ( \prescaler|Add0~54\ ))
-- \prescaler|Add0~74\ = CARRY(( \prescaler|counter\(1) ) + ( GND ) + ( \prescaler|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(1),
	cin => \prescaler|Add0~54\,
	sumout => \prescaler|Add0~73_sumout\,
	cout => \prescaler|Add0~74\);

-- Location: FF_X51_Y2_N35
\prescaler|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~73_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(1));

-- Location: LABCELL_X51_Y2_N36
\prescaler|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~89_sumout\ = SUM(( \prescaler|counter\(2) ) + ( GND ) + ( \prescaler|Add0~74\ ))
-- \prescaler|Add0~90\ = CARRY(( \prescaler|counter\(2) ) + ( GND ) + ( \prescaler|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \prescaler|ALT_INV_counter\(2),
	cin => \prescaler|Add0~74\,
	sumout => \prescaler|Add0~89_sumout\,
	cout => \prescaler|Add0~90\);

-- Location: FF_X51_Y2_N38
\prescaler|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~89_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(2));

-- Location: LABCELL_X51_Y2_N39
\prescaler|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~69_sumout\ = SUM(( \prescaler|counter\(3) ) + ( GND ) + ( \prescaler|Add0~90\ ))
-- \prescaler|Add0~70\ = CARRY(( \prescaler|counter\(3) ) + ( GND ) + ( \prescaler|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter\(3),
	cin => \prescaler|Add0~90\,
	sumout => \prescaler|Add0~69_sumout\,
	cout => \prescaler|Add0~70\);

-- Location: FF_X51_Y2_N41
\prescaler|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~69_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(3));

-- Location: LABCELL_X51_Y2_N42
\prescaler|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~85_sumout\ = SUM(( \prescaler|counter\(4) ) + ( GND ) + ( \prescaler|Add0~70\ ))
-- \prescaler|Add0~86\ = CARRY(( \prescaler|counter\(4) ) + ( GND ) + ( \prescaler|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(4),
	cin => \prescaler|Add0~70\,
	sumout => \prescaler|Add0~85_sumout\,
	cout => \prescaler|Add0~86\);

-- Location: FF_X51_Y2_N44
\prescaler|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~85_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(4));

-- Location: LABCELL_X51_Y2_N45
\prescaler|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~65_sumout\ = SUM(( \prescaler|counter[5]~DUPLICATE_q\ ) + ( GND ) + ( \prescaler|Add0~86\ ))
-- \prescaler|Add0~66\ = CARRY(( \prescaler|counter[5]~DUPLICATE_q\ ) + ( GND ) + ( \prescaler|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \prescaler|ALT_INV_counter[5]~DUPLICATE_q\,
	cin => \prescaler|Add0~86\,
	sumout => \prescaler|Add0~65_sumout\,
	cout => \prescaler|Add0~66\);

-- Location: FF_X51_Y2_N47
\prescaler|counter[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~65_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter[5]~DUPLICATE_q\);

-- Location: LABCELL_X51_Y2_N48
\prescaler|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~81_sumout\ = SUM(( \prescaler|counter\(6) ) + ( GND ) + ( \prescaler|Add0~66\ ))
-- \prescaler|Add0~82\ = CARRY(( \prescaler|counter\(6) ) + ( GND ) + ( \prescaler|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter\(6),
	cin => \prescaler|Add0~66\,
	sumout => \prescaler|Add0~81_sumout\,
	cout => \prescaler|Add0~82\);

-- Location: FF_X51_Y2_N50
\prescaler|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~81_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(6));

-- Location: LABCELL_X51_Y2_N51
\prescaler|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~49_sumout\ = SUM(( \prescaler|counter[7]~DUPLICATE_q\ ) + ( GND ) + ( \prescaler|Add0~82\ ))
-- \prescaler|Add0~50\ = CARRY(( \prescaler|counter[7]~DUPLICATE_q\ ) + ( GND ) + ( \prescaler|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \prescaler|ALT_INV_counter[7]~DUPLICATE_q\,
	cin => \prescaler|Add0~82\,
	sumout => \prescaler|Add0~49_sumout\,
	cout => \prescaler|Add0~50\);

-- Location: FF_X51_Y2_N52
\prescaler|counter[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~49_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter[7]~DUPLICATE_q\);

-- Location: LABCELL_X51_Y2_N54
\prescaler|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~45_sumout\ = SUM(( \prescaler|counter\(8) ) + ( GND ) + ( \prescaler|Add0~50\ ))
-- \prescaler|Add0~46\ = CARRY(( \prescaler|counter\(8) ) + ( GND ) + ( \prescaler|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \prescaler|ALT_INV_counter\(8),
	cin => \prescaler|Add0~50\,
	sumout => \prescaler|Add0~45_sumout\,
	cout => \prescaler|Add0~46\);

-- Location: FF_X51_Y2_N56
\prescaler|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~45_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(8));

-- Location: LABCELL_X51_Y2_N57
\prescaler|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~41_sumout\ = SUM(( \prescaler|counter\(9) ) + ( GND ) + ( \prescaler|Add0~46\ ))
-- \prescaler|Add0~42\ = CARRY(( \prescaler|counter\(9) ) + ( GND ) + ( \prescaler|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \prescaler|ALT_INV_counter\(9),
	cin => \prescaler|Add0~46\,
	sumout => \prescaler|Add0~41_sumout\,
	cout => \prescaler|Add0~42\);

-- Location: FF_X51_Y2_N59
\prescaler|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~41_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(9));

-- Location: LABCELL_X51_Y1_N0
\prescaler|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~37_sumout\ = SUM(( \prescaler|counter\(10) ) + ( GND ) + ( \prescaler|Add0~42\ ))
-- \prescaler|Add0~38\ = CARRY(( \prescaler|counter\(10) ) + ( GND ) + ( \prescaler|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter\(10),
	cin => \prescaler|Add0~42\,
	sumout => \prescaler|Add0~37_sumout\,
	cout => \prescaler|Add0~38\);

-- Location: FF_X51_Y1_N2
\prescaler|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~37_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(10));

-- Location: LABCELL_X51_Y1_N3
\prescaler|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~97_sumout\ = SUM(( \prescaler|counter\(11) ) + ( GND ) + ( \prescaler|Add0~38\ ))
-- \prescaler|Add0~98\ = CARRY(( \prescaler|counter\(11) ) + ( GND ) + ( \prescaler|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \prescaler|ALT_INV_counter\(11),
	cin => \prescaler|Add0~38\,
	sumout => \prescaler|Add0~97_sumout\,
	cout => \prescaler|Add0~98\);

-- Location: FF_X51_Y1_N5
\prescaler|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~97_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(11));

-- Location: LABCELL_X51_Y1_N6
\prescaler|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~61_sumout\ = SUM(( \prescaler|counter\(12) ) + ( GND ) + ( \prescaler|Add0~98\ ))
-- \prescaler|Add0~62\ = CARRY(( \prescaler|counter\(12) ) + ( GND ) + ( \prescaler|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter\(12),
	cin => \prescaler|Add0~98\,
	sumout => \prescaler|Add0~61_sumout\,
	cout => \prescaler|Add0~62\);

-- Location: FF_X51_Y1_N7
\prescaler|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~61_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(12));

-- Location: LABCELL_X51_Y1_N9
\prescaler|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~77_sumout\ = SUM(( \prescaler|counter\(13) ) + ( GND ) + ( \prescaler|Add0~62\ ))
-- \prescaler|Add0~78\ = CARRY(( \prescaler|counter\(13) ) + ( GND ) + ( \prescaler|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter\(13),
	cin => \prescaler|Add0~62\,
	sumout => \prescaler|Add0~77_sumout\,
	cout => \prescaler|Add0~78\);

-- Location: FF_X51_Y1_N11
\prescaler|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~77_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(13));

-- Location: LABCELL_X51_Y1_N12
\prescaler|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~57_sumout\ = SUM(( \prescaler|counter\(14) ) + ( GND ) + ( \prescaler|Add0~78\ ))
-- \prescaler|Add0~58\ = CARRY(( \prescaler|counter\(14) ) + ( GND ) + ( \prescaler|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(14),
	cin => \prescaler|Add0~78\,
	sumout => \prescaler|Add0~57_sumout\,
	cout => \prescaler|Add0~58\);

-- Location: FF_X51_Y1_N14
\prescaler|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~57_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(14));

-- Location: LABCELL_X51_Y1_N15
\prescaler|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~93_sumout\ = SUM(( \prescaler|counter\(15) ) + ( GND ) + ( \prescaler|Add0~58\ ))
-- \prescaler|Add0~94\ = CARRY(( \prescaler|counter\(15) ) + ( GND ) + ( \prescaler|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter\(15),
	cin => \prescaler|Add0~58\,
	sumout => \prescaler|Add0~93_sumout\,
	cout => \prescaler|Add0~94\);

-- Location: FF_X51_Y1_N17
\prescaler|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~93_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(15));

-- Location: LABCELL_X51_Y1_N18
\prescaler|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~33_sumout\ = SUM(( \prescaler|counter\(16) ) + ( GND ) + ( \prescaler|Add0~94\ ))
-- \prescaler|Add0~34\ = CARRY(( \prescaler|counter\(16) ) + ( GND ) + ( \prescaler|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter\(16),
	cin => \prescaler|Add0~94\,
	sumout => \prescaler|Add0~33_sumout\,
	cout => \prescaler|Add0~34\);

-- Location: FF_X51_Y1_N20
\prescaler|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~33_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(16));

-- Location: LABCELL_X51_Y1_N21
\prescaler|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~1_sumout\ = SUM(( \prescaler|counter[17]~DUPLICATE_q\ ) + ( GND ) + ( \prescaler|Add0~34\ ))
-- \prescaler|Add0~2\ = CARRY(( \prescaler|counter[17]~DUPLICATE_q\ ) + ( GND ) + ( \prescaler|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \prescaler|ALT_INV_counter[17]~DUPLICATE_q\,
	cin => \prescaler|Add0~34\,
	sumout => \prescaler|Add0~1_sumout\,
	cout => \prescaler|Add0~2\);

-- Location: FF_X51_Y1_N23
\prescaler|counter[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~1_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter[17]~DUPLICATE_q\);

-- Location: LABCELL_X51_Y1_N24
\prescaler|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~5_sumout\ = SUM(( \prescaler|counter\(18) ) + ( GND ) + ( \prescaler|Add0~2\ ))
-- \prescaler|Add0~6\ = CARRY(( \prescaler|counter\(18) ) + ( GND ) + ( \prescaler|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter\(18),
	cin => \prescaler|Add0~2\,
	sumout => \prescaler|Add0~5_sumout\,
	cout => \prescaler|Add0~6\);

-- Location: FF_X51_Y1_N26
\prescaler|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~5_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(18));

-- Location: FF_X51_Y1_N29
\prescaler|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~9_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(19));

-- Location: FF_X28_Y1_N5
\latched_clk_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \prescaler|counter\(19),
	sload => VCC,
	ena => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_clk_B(2));

-- Location: FF_X28_Y1_N8
\latched_clk_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \prescaler|counter\(20),
	sload => VCC,
	ena => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_clk_B(3));

-- Location: FF_X28_Y1_N44
\latched_clk_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \prescaler|counter\(18),
	sload => VCC,
	ena => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_clk_B(1));

-- Location: FF_X51_Y1_N22
\prescaler|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~1_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(17));

-- Location: FF_X28_Y1_N38
\latched_clk_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \prescaler|counter\(17),
	sload => VCC,
	ena => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_clk_B(0));

-- Location: MLABCELL_X28_Y1_N9
\seg_decoder2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder2|Mux6~0_combout\ = ( latched_clk_B(0) & ( !latched_clk_B(3) $ (((latched_clk_B(1)) # (latched_clk_B(2)))) ) ) # ( !latched_clk_B(0) & ( (!latched_clk_B(1) & (latched_clk_B(2))) # (latched_clk_B(1) & ((latched_clk_B(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011100100111001001101010011010100111001001110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_latched_clk_B(2),
	datab => ALT_INV_latched_clk_B(3),
	datac => ALT_INV_latched_clk_B(1),
	datae => ALT_INV_latched_clk_B(0),
	combout => \seg_decoder2|Mux6~0_combout\);

-- Location: MLABCELL_X28_Y1_N51
\seg_decoder2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder2|Mux5~0_combout\ = ( latched_clk_B(1) & ( ((!latched_clk_B(0) & latched_clk_B(2))) # (latched_clk_B(3)) ) ) # ( !latched_clk_B(1) & ( (latched_clk_B(2) & ((latched_clk_B(3)) # (latched_clk_B(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100110011101110110011001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_latched_clk_B(0),
	datab => ALT_INV_latched_clk_B(3),
	datad => ALT_INV_latched_clk_B(2),
	dataf => ALT_INV_latched_clk_B(1),
	combout => \seg_decoder2|Mux5~0_combout\);

-- Location: MLABCELL_X28_Y1_N48
\seg_decoder2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder2|Mux4~0_combout\ = ( latched_clk_B(1) & ( ((!latched_clk_B(0) & !latched_clk_B(2))) # (latched_clk_B(3)) ) ) # ( !latched_clk_B(1) & ( (latched_clk_B(3) & latched_clk_B(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001110110011101100111011001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_latched_clk_B(0),
	datab => ALT_INV_latched_clk_B(3),
	datac => ALT_INV_latched_clk_B(2),
	dataf => ALT_INV_latched_clk_B(1),
	combout => \seg_decoder2|Mux4~0_combout\);

-- Location: MLABCELL_X28_Y1_N18
\seg_decoder2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder2|Mux3~0_combout\ = ( latched_clk_B(1) & ( ((latched_clk_B(0) & latched_clk_B(2))) # (latched_clk_B(3)) ) ) # ( !latched_clk_B(1) & ( (!latched_clk_B(0) & ((latched_clk_B(2)))) # (latched_clk_B(0) & ((!latched_clk_B(2)) # (latched_clk_B(3)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101101011011010110110101101100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_latched_clk_B(0),
	datab => ALT_INV_latched_clk_B(3),
	datac => ALT_INV_latched_clk_B(2),
	dataf => ALT_INV_latched_clk_B(1),
	combout => \seg_decoder2|Mux3~0_combout\);

-- Location: MLABCELL_X28_Y1_N21
\seg_decoder2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder2|Mux2~0_combout\ = ( latched_clk_B(1) & ( (latched_clk_B(3)) # (latched_clk_B(0)) ) ) # ( !latched_clk_B(1) & ( (latched_clk_B(2)) # (latched_clk_B(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_latched_clk_B(0),
	datab => ALT_INV_latched_clk_B(3),
	datad => ALT_INV_latched_clk_B(2),
	dataf => ALT_INV_latched_clk_B(1),
	combout => \seg_decoder2|Mux2~0_combout\);

-- Location: MLABCELL_X28_Y1_N27
\seg_decoder2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder2|Mux1~0_combout\ = ( latched_clk_B(3) & ( (latched_clk_B(1)) # (latched_clk_B(2)) ) ) # ( !latched_clk_B(3) & ( (!latched_clk_B(2) & ((latched_clk_B(0)) # (latched_clk_B(1)))) # (latched_clk_B(2) & (latched_clk_B(1) & latched_clk_B(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101111000010101010111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_latched_clk_B(2),
	datac => ALT_INV_latched_clk_B(1),
	datad => ALT_INV_latched_clk_B(0),
	dataf => ALT_INV_latched_clk_B(3),
	combout => \seg_decoder2|Mux1~0_combout\);

-- Location: MLABCELL_X28_Y1_N39
\seg_decoder2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder2|Mux0~0_combout\ = ( latched_clk_B(0) & ( (!latched_clk_B(2) & (!latched_clk_B(3) $ (!latched_clk_B(1)))) # (latched_clk_B(2) & (!latched_clk_B(3) & !latched_clk_B(1))) ) ) # ( !latched_clk_B(0) & ( !latched_clk_B(3) $ (((!latched_clk_B(2) & 
-- !latched_clk_B(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110001101100011010000110100001101100011011000110100001101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_latched_clk_B(2),
	datab => ALT_INV_latched_clk_B(3),
	datac => ALT_INV_latched_clk_B(1),
	datae => ALT_INV_latched_clk_B(0),
	combout => \seg_decoder2|Mux0~0_combout\);

-- Location: FF_X28_Y1_N35
\latched_clk_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \prescaler|counter\(22),
	sload => VCC,
	ena => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_clk_A(1));

-- Location: FF_X28_Y1_N14
\latched_clk_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \prescaler|counter\(23),
	sload => VCC,
	ena => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_clk_A(2));

-- Location: FF_X51_Y1_N34
\prescaler|counter[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~17_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter[21]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y1_N45
\latched_clk_A[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \latched_clk_A[0]~feeder_combout\ = ( \prescaler|counter[21]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \prescaler|ALT_INV_counter[21]~DUPLICATE_q\,
	combout => \latched_clk_A[0]~feeder_combout\);

-- Location: FF_X28_Y1_N47
\latched_clk_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \latched_clk_A[0]~feeder_combout\,
	ena => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_clk_A(0));

-- Location: FF_X51_Y1_N44
\prescaler|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \prescaler|Add0~29_sumout\,
	sclr => \prescaler|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(24));

-- Location: FF_X28_Y1_N17
\latched_clk_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \prescaler|counter\(24),
	sload => VCC,
	ena => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_clk_A(3));

-- Location: MLABCELL_X28_Y1_N54
\seg_decoder3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder3|Mux6~0_combout\ = ( latched_clk_A(3) & ( (latched_clk_A(2)) # (latched_clk_A(1)) ) ) # ( !latched_clk_A(3) & ( (!latched_clk_A(1) & (!latched_clk_A(2) $ (!latched_clk_A(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_latched_clk_A(1),
	datab => ALT_INV_latched_clk_A(2),
	datad => ALT_INV_latched_clk_A(0),
	dataf => ALT_INV_latched_clk_A(3),
	combout => \seg_decoder3|Mux6~0_combout\);

-- Location: MLABCELL_X28_Y1_N57
\seg_decoder3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder3|Mux5~0_combout\ = ( latched_clk_A(3) & ( (latched_clk_A(2)) # (latched_clk_A(1)) ) ) # ( !latched_clk_A(3) & ( (latched_clk_A(2) & (!latched_clk_A(1) $ (!latched_clk_A(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_latched_clk_A(1),
	datac => ALT_INV_latched_clk_A(2),
	datad => ALT_INV_latched_clk_A(0),
	dataf => ALT_INV_latched_clk_A(3),
	combout => \seg_decoder3|Mux5~0_combout\);

-- Location: MLABCELL_X28_Y1_N24
\seg_decoder3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder3|Mux4~0_combout\ = ( latched_clk_A(3) & ( (latched_clk_A(1)) # (latched_clk_A(2)) ) ) # ( !latched_clk_A(3) & ( (!latched_clk_A(2) & (latched_clk_A(1) & !latched_clk_A(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_latched_clk_A(2),
	datac => ALT_INV_latched_clk_A(1),
	datad => ALT_INV_latched_clk_A(0),
	dataf => ALT_INV_latched_clk_A(3),
	combout => \seg_decoder3|Mux4~0_combout\);

-- Location: MLABCELL_X28_Y1_N30
\seg_decoder3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder3|Mux3~0_combout\ = ( latched_clk_A(0) & ( (!latched_clk_A(1) $ (latched_clk_A(2))) # (latched_clk_A(3)) ) ) # ( !latched_clk_A(0) & ( (!latched_clk_A(1) & ((latched_clk_A(2)))) # (latched_clk_A(1) & (latched_clk_A(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011111100110011111100000011111100111111001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_latched_clk_A(3),
	datac => ALT_INV_latched_clk_A(1),
	datad => ALT_INV_latched_clk_A(2),
	datae => ALT_INV_latched_clk_A(0),
	combout => \seg_decoder3|Mux3~0_combout\);

-- Location: MLABCELL_X28_Y1_N0
\seg_decoder3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder3|Mux2~0_combout\ = ( latched_clk_A(0) ) # ( !latched_clk_A(0) & ( (!latched_clk_A(1) & ((latched_clk_A(2)))) # (latched_clk_A(1) & (latched_clk_A(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011111111111111111100000011111100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_latched_clk_A(3),
	datac => ALT_INV_latched_clk_A(1),
	datad => ALT_INV_latched_clk_A(2),
	datae => ALT_INV_latched_clk_A(0),
	combout => \seg_decoder3|Mux2~0_combout\);

-- Location: MLABCELL_X28_Y1_N12
\seg_decoder3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder3|Mux1~0_combout\ = (!latched_clk_A(0) & ((!latched_clk_A(2) & (latched_clk_A(1))) # (latched_clk_A(2) & ((latched_clk_A(3)))))) # (latched_clk_A(0) & ((!latched_clk_A(3) $ (latched_clk_A(2))) # (latched_clk_A(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010100011111011101010001111101110101000111110111010100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_latched_clk_A(1),
	datab => ALT_INV_latched_clk_A(0),
	datac => ALT_INV_latched_clk_A(3),
	datad => ALT_INV_latched_clk_A(2),
	combout => \seg_decoder3|Mux1~0_combout\);

-- Location: MLABCELL_X28_Y1_N15
\seg_decoder3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder3|Mux0~0_combout\ = ( latched_clk_A(2) & ( (!latched_clk_A(3) & ((!latched_clk_A(1)) # (!latched_clk_A(0)))) ) ) # ( !latched_clk_A(2) & ( !latched_clk_A(1) $ (!latched_clk_A(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_latched_clk_A(1),
	datac => ALT_INV_latched_clk_A(0),
	datad => ALT_INV_latched_clk_A(3),
	dataf => ALT_INV_latched_clk_A(2),
	combout => \seg_decoder3|Mux0~0_combout\);

-- Location: LABCELL_X50_Y1_N12
\seg_decoder4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder4|Mux6~0_combout\ = ( \prescaler|counter\(20) & ( (\prescaler|counter\(18)) # (\prescaler|counter\(19)) ) ) # ( !\prescaler|counter\(20) & ( (!\prescaler|counter\(18) & (!\prescaler|counter\(19) $ (!\prescaler|counter[17]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(19),
	datab => \prescaler|ALT_INV_counter\(18),
	datac => \prescaler|ALT_INV_counter[17]~DUPLICATE_q\,
	dataf => \prescaler|ALT_INV_counter\(20),
	combout => \seg_decoder4|Mux6~0_combout\);

-- Location: LABCELL_X50_Y1_N30
\seg_decoder4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder4|Mux5~0_combout\ = ( \prescaler|counter\(20) & ( (\prescaler|counter\(19)) # (\prescaler|counter\(18)) ) ) # ( !\prescaler|counter\(20) & ( (\prescaler|counter\(19) & (!\prescaler|counter\(18) $ (!\prescaler|counter[17]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(18),
	datac => \prescaler|ALT_INV_counter\(19),
	datad => \prescaler|ALT_INV_counter[17]~DUPLICATE_q\,
	dataf => \prescaler|ALT_INV_counter\(20),
	combout => \seg_decoder4|Mux5~0_combout\);

-- Location: LABCELL_X50_Y1_N33
\seg_decoder4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder4|Mux4~0_combout\ = ( \prescaler|counter\(20) & ( (\prescaler|counter\(18)) # (\prescaler|counter\(19)) ) ) # ( !\prescaler|counter\(20) & ( (!\prescaler|counter\(19) & (\prescaler|counter\(18) & !\prescaler|counter[17]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(19),
	datab => \prescaler|ALT_INV_counter\(18),
	datad => \prescaler|ALT_INV_counter[17]~DUPLICATE_q\,
	dataf => \prescaler|ALT_INV_counter\(20),
	combout => \seg_decoder4|Mux4~0_combout\);

-- Location: LABCELL_X50_Y1_N36
\seg_decoder4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder4|Mux3~0_combout\ = ( \prescaler|counter\(20) & ( ((\prescaler|counter[17]~DUPLICATE_q\) # (\prescaler|counter\(18))) # (\prescaler|counter\(19)) ) ) # ( !\prescaler|counter\(20) & ( (!\prescaler|counter\(19) & (!\prescaler|counter\(18) & 
-- \prescaler|counter[17]~DUPLICATE_q\)) # (\prescaler|counter\(19) & (!\prescaler|counter\(18) $ (\prescaler|counter[17]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001010010010100100101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(19),
	datab => \prescaler|ALT_INV_counter\(18),
	datac => \prescaler|ALT_INV_counter[17]~DUPLICATE_q\,
	dataf => \prescaler|ALT_INV_counter\(20),
	combout => \seg_decoder4|Mux3~0_combout\);

-- Location: LABCELL_X50_Y1_N15
\seg_decoder4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder4|Mux2~0_combout\ = ( \prescaler|counter\(20) & ( ((\prescaler|counter[17]~DUPLICATE_q\) # (\prescaler|counter\(18))) # (\prescaler|counter\(19)) ) ) # ( !\prescaler|counter\(20) & ( ((\prescaler|counter\(19) & !\prescaler|counter\(18))) # 
-- (\prescaler|counter[17]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011111111010001001111111101110111111111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(19),
	datab => \prescaler|ALT_INV_counter\(18),
	datad => \prescaler|ALT_INV_counter[17]~DUPLICATE_q\,
	dataf => \prescaler|ALT_INV_counter\(20),
	combout => \seg_decoder4|Mux2~0_combout\);

-- Location: LABCELL_X50_Y1_N39
\seg_decoder4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder4|Mux1~0_combout\ = ( \prescaler|counter\(20) & ( (\prescaler|counter\(18)) # (\prescaler|counter\(19)) ) ) # ( !\prescaler|counter\(20) & ( (!\prescaler|counter\(19) & ((\prescaler|counter[17]~DUPLICATE_q\) # (\prescaler|counter\(18)))) # 
-- (\prescaler|counter\(19) & (\prescaler|counter\(18) & \prescaler|counter[17]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010111011001000101011101101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(19),
	datab => \prescaler|ALT_INV_counter\(18),
	datad => \prescaler|ALT_INV_counter[17]~DUPLICATE_q\,
	dataf => \prescaler|ALT_INV_counter\(20),
	combout => \seg_decoder4|Mux1~0_combout\);

-- Location: LABCELL_X50_Y1_N42
\seg_decoder4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder4|Mux0~0_combout\ = ( \prescaler|counter\(18) & ( (!\prescaler|counter\(20) & ((!\prescaler|counter[17]~DUPLICATE_q\) # (!\prescaler|counter\(19)))) ) ) # ( !\prescaler|counter\(18) & ( !\prescaler|counter\(20) $ (!\prescaler|counter\(19)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010101010101000001010101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(20),
	datac => \prescaler|ALT_INV_counter[17]~DUPLICATE_q\,
	datad => \prescaler|ALT_INV_counter\(19),
	dataf => \prescaler|ALT_INV_counter\(18),
	combout => \seg_decoder4|Mux0~0_combout\);

-- Location: LABCELL_X62_Y1_N51
\seg_decoder5|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder5|Mux6~0_combout\ = ( \prescaler|counter[21]~DUPLICATE_q\ & ( \prescaler|counter\(23) & ( \prescaler|counter[24]~DUPLICATE_q\ ) ) ) # ( !\prescaler|counter[21]~DUPLICATE_q\ & ( \prescaler|counter\(23) & ( (!\prescaler|counter\(22)) # 
-- (\prescaler|counter[24]~DUPLICATE_q\) ) ) ) # ( \prescaler|counter[21]~DUPLICATE_q\ & ( !\prescaler|counter\(23) & ( !\prescaler|counter\(22) $ (\prescaler|counter[24]~DUPLICATE_q\) ) ) ) # ( !\prescaler|counter[21]~DUPLICATE_q\ & ( 
-- !\prescaler|counter\(23) & ( (\prescaler|counter\(22) & \prescaler|counter[24]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101001011010010110101111101011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(22),
	datac => \prescaler|ALT_INV_counter[24]~DUPLICATE_q\,
	datae => \prescaler|ALT_INV_counter[21]~DUPLICATE_q\,
	dataf => \prescaler|ALT_INV_counter\(23),
	combout => \seg_decoder5|Mux6~0_combout\);

-- Location: LABCELL_X50_Y1_N27
\seg_decoder5|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder5|Mux5~0_combout\ = ( \prescaler|counter[24]~DUPLICATE_q\ & ( (\prescaler|counter\(23)) # (\prescaler|counter\(22)) ) ) # ( !\prescaler|counter[24]~DUPLICATE_q\ & ( (\prescaler|counter\(23) & (!\prescaler|counter[21]~DUPLICATE_q\ $ 
-- (!\prescaler|counter\(22)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter[21]~DUPLICATE_q\,
	datac => \prescaler|ALT_INV_counter\(22),
	datad => \prescaler|ALT_INV_counter\(23),
	dataf => \prescaler|ALT_INV_counter[24]~DUPLICATE_q\,
	combout => \seg_decoder5|Mux5~0_combout\);

-- Location: LABCELL_X62_Y1_N6
\seg_decoder5|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder5|Mux4~0_combout\ = ( \prescaler|counter[21]~DUPLICATE_q\ & ( \prescaler|counter\(23) & ( \prescaler|counter[24]~DUPLICATE_q\ ) ) ) # ( !\prescaler|counter[21]~DUPLICATE_q\ & ( \prescaler|counter\(23) & ( \prescaler|counter[24]~DUPLICATE_q\ ) 
-- ) ) # ( \prescaler|counter[21]~DUPLICATE_q\ & ( !\prescaler|counter\(23) & ( (\prescaler|counter[24]~DUPLICATE_q\ & \prescaler|counter\(22)) ) ) ) # ( !\prescaler|counter[21]~DUPLICATE_q\ & ( !\prescaler|counter\(23) & ( \prescaler|counter\(22) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000110000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter[24]~DUPLICATE_q\,
	datac => \prescaler|ALT_INV_counter\(22),
	datae => \prescaler|ALT_INV_counter[21]~DUPLICATE_q\,
	dataf => \prescaler|ALT_INV_counter\(23),
	combout => \seg_decoder5|Mux4~0_combout\);

-- Location: LABCELL_X62_Y1_N3
\seg_decoder5|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder5|Mux3~0_combout\ = ( \prescaler|counter[21]~DUPLICATE_q\ & ( \prescaler|counter\(23) & ( (\prescaler|counter[24]~DUPLICATE_q\) # (\prescaler|counter\(22)) ) ) ) # ( !\prescaler|counter[21]~DUPLICATE_q\ & ( \prescaler|counter\(23) & ( 
-- (!\prescaler|counter\(22)) # (\prescaler|counter[24]~DUPLICATE_q\) ) ) ) # ( \prescaler|counter[21]~DUPLICATE_q\ & ( !\prescaler|counter\(23) & ( (!\prescaler|counter\(22)) # (\prescaler|counter[24]~DUPLICATE_q\) ) ) ) # ( 
-- !\prescaler|counter[21]~DUPLICATE_q\ & ( !\prescaler|counter\(23) & ( (\prescaler|counter\(22) & \prescaler|counter[24]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111110101111101011110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(22),
	datac => \prescaler|ALT_INV_counter[24]~DUPLICATE_q\,
	datae => \prescaler|ALT_INV_counter[21]~DUPLICATE_q\,
	dataf => \prescaler|ALT_INV_counter\(23),
	combout => \seg_decoder5|Mux3~0_combout\);

-- Location: LABCELL_X62_Y1_N42
\seg_decoder5|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder5|Mux2~0_combout\ = ( \prescaler|counter[21]~DUPLICATE_q\ & ( \prescaler|counter\(23) ) ) # ( !\prescaler|counter[21]~DUPLICATE_q\ & ( \prescaler|counter\(23) & ( (!\prescaler|counter\(22)) # (\prescaler|counter[24]~DUPLICATE_q\) ) ) ) # ( 
-- \prescaler|counter[21]~DUPLICATE_q\ & ( !\prescaler|counter\(23) ) ) # ( !\prescaler|counter[21]~DUPLICATE_q\ & ( !\prescaler|counter\(23) & ( (\prescaler|counter[24]~DUPLICATE_q\ & \prescaler|counter\(22)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111111111111111110011111100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter[24]~DUPLICATE_q\,
	datac => \prescaler|ALT_INV_counter\(22),
	datae => \prescaler|ALT_INV_counter[21]~DUPLICATE_q\,
	dataf => \prescaler|ALT_INV_counter\(23),
	combout => \seg_decoder5|Mux2~0_combout\);

-- Location: LABCELL_X62_Y1_N39
\seg_decoder5|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder5|Mux1~0_combout\ = ( \prescaler|counter[21]~DUPLICATE_q\ & ( \prescaler|counter\(23) & ( (\prescaler|counter[24]~DUPLICATE_q\) # (\prescaler|counter\(22)) ) ) ) # ( !\prescaler|counter[21]~DUPLICATE_q\ & ( \prescaler|counter\(23) & ( 
-- \prescaler|counter[24]~DUPLICATE_q\ ) ) ) # ( \prescaler|counter[21]~DUPLICATE_q\ & ( !\prescaler|counter\(23) & ( (!\prescaler|counter[24]~DUPLICATE_q\) # (\prescaler|counter\(22)) ) ) ) # ( !\prescaler|counter[21]~DUPLICATE_q\ & ( 
-- !\prescaler|counter\(23) & ( \prescaler|counter\(22) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111101011111010100001111000011110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(22),
	datac => \prescaler|ALT_INV_counter[24]~DUPLICATE_q\,
	datae => \prescaler|ALT_INV_counter[21]~DUPLICATE_q\,
	dataf => \prescaler|ALT_INV_counter\(23),
	combout => \seg_decoder5|Mux1~0_combout\);

-- Location: LABCELL_X62_Y1_N18
\seg_decoder5|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder5|Mux0~0_combout\ = ( \prescaler|counter[21]~DUPLICATE_q\ & ( \prescaler|counter\(23) & ( (!\prescaler|counter[24]~DUPLICATE_q\ & !\prescaler|counter\(22)) ) ) ) # ( !\prescaler|counter[21]~DUPLICATE_q\ & ( \prescaler|counter\(23) & ( 
-- !\prescaler|counter[24]~DUPLICATE_q\ ) ) ) # ( \prescaler|counter[21]~DUPLICATE_q\ & ( !\prescaler|counter\(23) & ( !\prescaler|counter[24]~DUPLICATE_q\ $ (!\prescaler|counter\(22)) ) ) ) # ( !\prescaler|counter[21]~DUPLICATE_q\ & ( 
-- !\prescaler|counter\(23) & ( !\prescaler|counter[24]~DUPLICATE_q\ $ (!\prescaler|counter\(22)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011001100110011001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter[24]~DUPLICATE_q\,
	datac => \prescaler|ALT_INV_counter\(22),
	datae => \prescaler|ALT_INV_counter[21]~DUPLICATE_q\,
	dataf => \prescaler|ALT_INV_counter\(23),
	combout => \seg_decoder5|Mux0~0_combout\);

-- Location: IOIBUF_X12_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

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

-- Location: LABCELL_X37_Y10_N3
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


