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

-- DATE "12/05/2024 14:29:39"

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

ENTITY 	GameFSM IS
    PORT (
	clk_in : IN std_logic;
	reset_game : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	SW : IN std_logic_vector(3 DOWNTO 0);
	rand_num : IN std_logic_vector(3 DOWNTO 0);
	hex_disp : OUT std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	winner_led : OUT std_logic_vector(1 DOWNTO 0)
	);
END GameFSM;

-- Design Ports Information
-- SW[3]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rand_num[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rand_num[1]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rand_num[2]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rand_num[3]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_disp[0]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_disp[1]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_disp[2]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_disp[3]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- winner_led[0]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- winner_led[1]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_game	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF GameFSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_reset_game : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rand_num : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hex_disp : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_winner_led : std_logic_vector(1 DOWNTO 0);
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \rand_num[0]~input_o\ : std_logic;
SIGNAL \rand_num[1]~input_o\ : std_logic;
SIGNAL \rand_num[2]~input_o\ : std_logic;
SIGNAL \rand_num[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \clk_in~inputCLKENA0_outclk\ : std_logic;
SIGNAL \prescaler|Add0~53_sumout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \prescaler|Equal0~4_combout\ : std_logic;
SIGNAL \prescaler|Equal0~2_combout\ : std_logic;
SIGNAL \prescaler|Equal0~0_combout\ : std_logic;
SIGNAL \prescaler|Equal0~3_combout\ : std_logic;
SIGNAL \prescaler|Equal0~1_combout\ : std_logic;
SIGNAL \prescaler|Equal0~5_combout\ : std_logic;
SIGNAL \prescaler|Equal0~6_combout\ : std_logic;
SIGNAL \prescaler|Add0~54\ : std_logic;
SIGNAL \prescaler|Add0~49_sumout\ : std_logic;
SIGNAL \prescaler|Add0~50\ : std_logic;
SIGNAL \prescaler|Add0~45_sumout\ : std_logic;
SIGNAL \prescaler|Add0~46\ : std_logic;
SIGNAL \prescaler|Add0~41_sumout\ : std_logic;
SIGNAL \prescaler|Add0~42\ : std_logic;
SIGNAL \prescaler|Add0~37_sumout\ : std_logic;
SIGNAL \prescaler|Add0~38\ : std_logic;
SIGNAL \prescaler|Add0~81_sumout\ : std_logic;
SIGNAL \prescaler|counter[5]~feeder_combout\ : std_logic;
SIGNAL \prescaler|Add0~82\ : std_logic;
SIGNAL \prescaler|Add0~93_sumout\ : std_logic;
SIGNAL \prescaler|Add0~94\ : std_logic;
SIGNAL \prescaler|Add0~29_sumout\ : std_logic;
SIGNAL \prescaler|Add0~30\ : std_logic;
SIGNAL \prescaler|Add0~25_sumout\ : std_logic;
SIGNAL \prescaler|Add0~26\ : std_logic;
SIGNAL \prescaler|Add0~21_sumout\ : std_logic;
SIGNAL \prescaler|Add0~22\ : std_logic;
SIGNAL \prescaler|Add0~89_sumout\ : std_logic;
SIGNAL \prescaler|Add0~90\ : std_logic;
SIGNAL \prescaler|Add0~77_sumout\ : std_logic;
SIGNAL \prescaler|Add0~78\ : std_logic;
SIGNAL \prescaler|Add0~17_sumout\ : std_logic;
SIGNAL \prescaler|Add0~18\ : std_logic;
SIGNAL \prescaler|Add0~13_sumout\ : std_logic;
SIGNAL \prescaler|Add0~14\ : std_logic;
SIGNAL \prescaler|Add0~85_sumout\ : std_logic;
SIGNAL \prescaler|Add0~86\ : std_logic;
SIGNAL \prescaler|Add0~69_sumout\ : std_logic;
SIGNAL \prescaler|Add0~70\ : std_logic;
SIGNAL \prescaler|Add0~65_sumout\ : std_logic;
SIGNAL \prescaler|Add0~66\ : std_logic;
SIGNAL \prescaler|Add0~61_sumout\ : std_logic;
SIGNAL \prescaler|Add0~62\ : std_logic;
SIGNAL \prescaler|Add0~73_sumout\ : std_logic;
SIGNAL \prescaler|Add0~74\ : std_logic;
SIGNAL \prescaler|Add0~57_sumout\ : std_logic;
SIGNAL \prescaler|Add0~58\ : std_logic;
SIGNAL \prescaler|Add0~9_sumout\ : std_logic;
SIGNAL \prescaler|Add0~10\ : std_logic;
SIGNAL \prescaler|Add0~33_sumout\ : std_logic;
SIGNAL \prescaler|Add0~34\ : std_logic;
SIGNAL \prescaler|Add0~97_sumout\ : std_logic;
SIGNAL \prescaler|Add0~98\ : std_logic;
SIGNAL \prescaler|Add0~5_sumout\ : std_logic;
SIGNAL \prescaler|Add0~6\ : std_logic;
SIGNAL \prescaler|Add0~1_sumout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \next_state.WaitP2_428~combout\ : std_logic;
SIGNAL \reset_game~input_o\ : std_logic;
SIGNAL \current_state.WaitP2~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \next_state.P2Game_418~combout\ : std_logic;
SIGNAL \current_state.P2Game~q\ : std_logic;
SIGNAL \next_state.Compare_408~combout\ : std_logic;
SIGNAL \current_state.Compare~q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \next_state.Winner_398~combout\ : std_logic;
SIGNAL \current_state.Winner~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \next_state.Setup_468~combout\ : std_logic;
SIGNAL \current_state.Setup~0_combout\ : std_logic;
SIGNAL \current_state.Setup~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \next_state.WaitP1_458~combout\ : std_logic;
SIGNAL \current_state.WaitP1~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \next_state.P1Game_448~combout\ : std_logic;
SIGNAL \current_state.P1Game~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \next_state.DisplayP1_438~combout\ : std_logic;
SIGNAL \current_state.DisplayP1~q\ : std_logic;
SIGNAL \RandomGen|lfsr[1]~2_combout\ : std_logic;
SIGNAL \RandomGen|lfsr[1]~DUPLICATE_q\ : std_logic;
SIGNAL \RandomGen|lfsr[2]~3_combout\ : std_logic;
SIGNAL \RandomGen|lfsr[2]~DUPLICATE_q\ : std_logic;
SIGNAL \RandomGen|lfsr[3]~feeder_combout\ : std_logic;
SIGNAL \RandomGen|lfsr[3]~DUPLICATE_q\ : std_logic;
SIGNAL \RandomGen|lfsr~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \hex_disp[0]$latch~combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \hex_disp[1]$latch~combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \hex_disp[2]$latch~combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \hex_disp[3]$latch~combout\ : std_logic;
SIGNAL \seg_decoder0|Mux6~0_combout\ : std_logic;
SIGNAL \seg_decoder0|Mux5~0_combout\ : std_logic;
SIGNAL \seg_decoder0|Mux4~0_combout\ : std_logic;
SIGNAL \seg_decoder0|Mux3~0_combout\ : std_logic;
SIGNAL \seg_decoder0|Mux2~0_combout\ : std_logic;
SIGNAL \seg_decoder0|Mux1~0_combout\ : std_logic;
SIGNAL \seg_decoder0|Mux0~0_combout\ : std_logic;
SIGNAL \prescaler|counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \RandomGen|lfsr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RandomGen|ALT_INV_lfsr[3]~DUPLICATE_q\ : std_logic;
SIGNAL \RandomGen|ALT_INV_lfsr[2]~DUPLICATE_q\ : std_logic;
SIGNAL \RandomGen|ALT_INV_lfsr[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset_game~input_o\ : std_logic;
SIGNAL \ALT_INV_next_state.Compare_408~combout\ : std_logic;
SIGNAL \ALT_INV_next_state.WaitP2_428~combout\ : std_logic;
SIGNAL \ALT_INV_next_state.WaitP1_458~combout\ : std_logic;
SIGNAL \ALT_INV_next_state.Winner_398~combout\ : std_logic;
SIGNAL \ALT_INV_next_state.P2Game_418~combout\ : std_logic;
SIGNAL \ALT_INV_next_state.P1Game_448~combout\ : std_logic;
SIGNAL \ALT_INV_next_state.Setup_468~combout\ : std_logic;
SIGNAL \ALT_INV_next_state.DisplayP1_438~combout\ : std_logic;
SIGNAL \ALT_INV_hex_disp[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_hex_disp[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_hex_disp[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_hex_disp[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.Compare~q\ : std_logic;
SIGNAL \ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.WaitP2~q\ : std_logic;
SIGNAL \ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.WaitP1~q\ : std_logic;
SIGNAL \ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.Winner~q\ : std_logic;
SIGNAL \ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.P2Game~q\ : std_logic;
SIGNAL \ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.P1Game~q\ : std_logic;
SIGNAL \prescaler|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \prescaler|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.Setup~q\ : std_logic;
SIGNAL \ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.DisplayP1~q\ : std_logic;
SIGNAL \seg_decoder0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \RandomGen|ALT_INV_lfsr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \prescaler|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \prescaler|ALT_INV_counter\ : std_logic_vector(24 DOWNTO 0);

BEGIN

ww_clk_in <= clk_in;
ww_reset_game <= reset_game;
ww_KEY <= KEY;
ww_SW <= SW;
ww_rand_num <= rand_num;
hex_disp <= ww_hex_disp;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
winner_led <= ww_winner_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RandomGen|ALT_INV_lfsr[3]~DUPLICATE_q\ <= NOT \RandomGen|lfsr[3]~DUPLICATE_q\;
\RandomGen|ALT_INV_lfsr[2]~DUPLICATE_q\ <= NOT \RandomGen|lfsr[2]~DUPLICATE_q\;
\RandomGen|ALT_INV_lfsr[1]~DUPLICATE_q\ <= NOT \RandomGen|lfsr[1]~DUPLICATE_q\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_reset_game~input_o\ <= NOT \reset_game~input_o\;
\ALT_INV_next_state.Compare_408~combout\ <= NOT \next_state.Compare_408~combout\;
\ALT_INV_next_state.WaitP2_428~combout\ <= NOT \next_state.WaitP2_428~combout\;
\ALT_INV_next_state.WaitP1_458~combout\ <= NOT \next_state.WaitP1_458~combout\;
\ALT_INV_next_state.Winner_398~combout\ <= NOT \next_state.Winner_398~combout\;
\ALT_INV_next_state.P2Game_418~combout\ <= NOT \next_state.P2Game_418~combout\;
\ALT_INV_next_state.P1Game_448~combout\ <= NOT \next_state.P1Game_448~combout\;
\ALT_INV_next_state.Setup_468~combout\ <= NOT \next_state.Setup_468~combout\;
\ALT_INV_next_state.DisplayP1_438~combout\ <= NOT \next_state.DisplayP1_438~combout\;
\ALT_INV_hex_disp[3]$latch~combout\ <= NOT \hex_disp[3]$latch~combout\;
\ALT_INV_hex_disp[2]$latch~combout\ <= NOT \hex_disp[2]$latch~combout\;
\ALT_INV_hex_disp[1]$latch~combout\ <= NOT \hex_disp[1]$latch~combout\;
\ALT_INV_hex_disp[0]$latch~combout\ <= NOT \hex_disp[0]$latch~combout\;
\ALT_INV_Selector9~0_combout\ <= NOT \Selector9~0_combout\;
\ALT_INV_Selector3~0_combout\ <= NOT \Selector3~0_combout\;
\ALT_INV_Selector15~0_combout\ <= NOT \Selector15~0_combout\;
\ALT_INV_current_state.Compare~q\ <= NOT \current_state.Compare~q\;
\ALT_INV_Selector11~0_combout\ <= NOT \Selector11~0_combout\;
\ALT_INV_current_state.WaitP2~q\ <= NOT \current_state.WaitP2~q\;
\ALT_INV_Selector5~0_combout\ <= NOT \Selector5~0_combout\;
\ALT_INV_current_state.WaitP1~q\ <= NOT \current_state.WaitP1~q\;
\ALT_INV_Selector1~0_combout\ <= NOT \Selector1~0_combout\;
\ALT_INV_current_state.Winner~q\ <= NOT \current_state.Winner~q\;
\ALT_INV_Selector6~0_combout\ <= NOT \Selector6~0_combout\;
\ALT_INV_current_state.P2Game~q\ <= NOT \current_state.P2Game~q\;
\ALT_INV_Selector7~0_combout\ <= NOT \Selector7~0_combout\;
\ALT_INV_current_state.P1Game~q\ <= NOT \current_state.P1Game~q\;
\prescaler|ALT_INV_Equal0~5_combout\ <= NOT \prescaler|Equal0~5_combout\;
\prescaler|ALT_INV_Equal0~4_combout\ <= NOT \prescaler|Equal0~4_combout\;
\prescaler|ALT_INV_Equal0~3_combout\ <= NOT \prescaler|Equal0~3_combout\;
\prescaler|ALT_INV_Equal0~2_combout\ <= NOT \prescaler|Equal0~2_combout\;
\prescaler|ALT_INV_Equal0~1_combout\ <= NOT \prescaler|Equal0~1_combout\;
\prescaler|ALT_INV_Equal0~0_combout\ <= NOT \prescaler|Equal0~0_combout\;
\ALT_INV_Selector19~0_combout\ <= NOT \Selector19~0_combout\;
\ALT_INV_Selector18~0_combout\ <= NOT \Selector18~0_combout\;
\ALT_INV_Selector17~0_combout\ <= NOT \Selector17~0_combout\;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
\ALT_INV_current_state.Setup~q\ <= NOT \current_state.Setup~q\;
\ALT_INV_Selector16~0_combout\ <= NOT \Selector16~0_combout\;
\ALT_INV_current_state.DisplayP1~q\ <= NOT \current_state.DisplayP1~q\;
\seg_decoder0|ALT_INV_Mux0~0_combout\ <= NOT \seg_decoder0|Mux0~0_combout\;
\RandomGen|ALT_INV_lfsr\(3) <= NOT \RandomGen|lfsr\(3);
\RandomGen|ALT_INV_lfsr\(2) <= NOT \RandomGen|lfsr\(2);
\RandomGen|ALT_INV_lfsr\(1) <= NOT \RandomGen|lfsr\(1);
\RandomGen|ALT_INV_lfsr\(0) <= NOT \RandomGen|lfsr\(0);
\prescaler|ALT_INV_Add0~81_sumout\ <= NOT \prescaler|Add0~81_sumout\;
\prescaler|ALT_INV_counter\(22) <= NOT \prescaler|counter\(22);
\prescaler|ALT_INV_counter\(23) <= NOT \prescaler|counter\(23);
\prescaler|ALT_INV_counter\(6) <= NOT \prescaler|counter\(6);
\prescaler|ALT_INV_counter\(10) <= NOT \prescaler|counter\(10);
\prescaler|ALT_INV_counter\(14) <= NOT \prescaler|counter\(14);
\prescaler|ALT_INV_counter\(5) <= NOT \prescaler|counter\(5);
\prescaler|ALT_INV_counter\(11) <= NOT \prescaler|counter\(11);
\prescaler|ALT_INV_counter\(18) <= NOT \prescaler|counter\(18);
\prescaler|ALT_INV_counter\(15) <= NOT \prescaler|counter\(15);
\prescaler|ALT_INV_counter\(16) <= NOT \prescaler|counter\(16);
\prescaler|ALT_INV_counter\(17) <= NOT \prescaler|counter\(17);
\prescaler|ALT_INV_counter\(19) <= NOT \prescaler|counter\(19);
\prescaler|ALT_INV_counter\(0) <= NOT \prescaler|counter\(0);
\prescaler|ALT_INV_counter\(1) <= NOT \prescaler|counter\(1);
\prescaler|ALT_INV_counter\(2) <= NOT \prescaler|counter\(2);
\prescaler|ALT_INV_counter\(3) <= NOT \prescaler|counter\(3);
\prescaler|ALT_INV_counter\(4) <= NOT \prescaler|counter\(4);
\prescaler|ALT_INV_counter\(21) <= NOT \prescaler|counter\(21);
\prescaler|ALT_INV_counter\(7) <= NOT \prescaler|counter\(7);
\prescaler|ALT_INV_counter\(8) <= NOT \prescaler|counter\(8);
\prescaler|ALT_INV_counter\(9) <= NOT \prescaler|counter\(9);
\prescaler|ALT_INV_counter\(12) <= NOT \prescaler|counter\(12);
\prescaler|ALT_INV_counter\(13) <= NOT \prescaler|counter\(13);
\prescaler|ALT_INV_counter\(20) <= NOT \prescaler|counter\(20);
\prescaler|ALT_INV_counter\(24) <= NOT \prescaler|counter\(24);

-- Location: IOOBUF_X24_Y0_N36
\hex_disp[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex_disp[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_hex_disp(0));

-- Location: IOOBUF_X24_Y0_N2
\hex_disp[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex_disp[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_hex_disp(1));

-- Location: IOOBUF_X22_Y0_N19
\hex_disp[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex_disp[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_hex_disp(2));

-- Location: IOOBUF_X24_Y0_N53
\hex_disp[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex_disp[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_hex_disp(3));

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
	i => \seg_decoder0|Mux6~0_combout\,
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
	i => \seg_decoder0|Mux5~0_combout\,
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
	i => \seg_decoder0|Mux4~0_combout\,
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
	i => \seg_decoder0|Mux3~0_combout\,
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
	i => \seg_decoder0|Mux2~0_combout\,
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
	i => \seg_decoder0|Mux1~0_combout\,
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
	i => \seg_decoder0|ALT_INV_Mux0~0_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X32_Y0_N2
\winner_led[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_winner_led(0));

-- Location: IOOBUF_X86_Y0_N36
\winner_led[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_winner_led(1));

-- Location: IOIBUF_X89_Y23_N21
\clk_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: CLKCTRL_G10
\clk_in~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk_in~input_o\,
	outclk => \clk_in~inputCLKENA0_outclk\);

-- Location: LABCELL_X31_Y2_N30
\prescaler|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~53_sumout\ = SUM(( \prescaler|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \prescaler|Add0~54\ = CARRY(( \prescaler|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(0),
	cin => GND,
	sumout => \prescaler|Add0~53_sumout\,
	cout => \prescaler|Add0~54\);

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

-- Location: LABCELL_X31_Y1_N51
\prescaler|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal0~4_combout\ = ( !\prescaler|counter\(10) & ( \prescaler|counter\(6) & ( (\prescaler|counter\(14) & (((!\SW[1]~input_o\ & !\SW[2]~input_o\)) # (\SW[0]~input_o\))) ) ) ) # ( \prescaler|counter\(10) & ( !\prescaler|counter\(6) & ( 
-- (!\SW[1]~input_o\ & (!\prescaler|counter\(14) & (!\SW[0]~input_o\ & \SW[2]~input_o\))) ) ) ) # ( !\prescaler|counter\(10) & ( !\prescaler|counter\(6) & ( (\SW[1]~input_o\ & (\prescaler|counter\(14) & !\SW[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000000001000000000100011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \prescaler|ALT_INV_counter\(14),
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \prescaler|ALT_INV_counter\(10),
	dataf => \prescaler|ALT_INV_counter\(6),
	combout => \prescaler|Equal0~4_combout\);

-- Location: LABCELL_X30_Y1_N0
\prescaler|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal0~2_combout\ = ( \prescaler|counter\(17) & ( \prescaler|counter\(19) & ( (\prescaler|counter\(15) & (!\prescaler|counter\(16) & ((!\SW[1]~input_o\) # (\SW[0]~input_o\)))) ) ) ) # ( !\prescaler|counter\(17) & ( \prescaler|counter\(19) & ( 
-- (\SW[1]~input_o\ & (!\SW[0]~input_o\ & (!\prescaler|counter\(15) & \prescaler|counter\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \prescaler|ALT_INV_counter\(15),
	datad => \prescaler|ALT_INV_counter\(16),
	datae => \prescaler|ALT_INV_counter\(17),
	dataf => \prescaler|ALT_INV_counter\(19),
	combout => \prescaler|Equal0~2_combout\);

-- Location: LABCELL_X31_Y2_N24
\prescaler|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal0~0_combout\ = ( \prescaler|counter\(13) & ( \prescaler|counter\(20) & ( (!\prescaler|counter\(7) & (!\prescaler|counter\(9) & (\prescaler|counter\(12) & !\prescaler|counter\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(7),
	datab => \prescaler|ALT_INV_counter\(9),
	datac => \prescaler|ALT_INV_counter\(12),
	datad => \prescaler|ALT_INV_counter\(8),
	datae => \prescaler|ALT_INV_counter\(13),
	dataf => \prescaler|ALT_INV_counter\(20),
	combout => \prescaler|Equal0~0_combout\);

-- Location: LABCELL_X30_Y1_N48
\prescaler|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal0~3_combout\ = ( \prescaler|counter\(11) & ( \prescaler|counter\(5) & ( (\SW[1]~input_o\ & (!\SW[0]~input_o\ & \prescaler|counter\(18))) ) ) ) # ( !\prescaler|counter\(11) & ( \prescaler|counter\(5) & ( (!\prescaler|counter\(18) & 
-- (((!\SW[1]~input_o\ & !\SW[2]~input_o\)) # (\SW[0]~input_o\))) ) ) ) # ( \prescaler|counter\(11) & ( !\prescaler|counter\(5) & ( (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\SW[2]~input_o\ & \prescaler|counter\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100010110011000000000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \prescaler|ALT_INV_counter\(18),
	datae => \prescaler|ALT_INV_counter\(11),
	dataf => \prescaler|ALT_INV_counter\(5),
	combout => \prescaler|Equal0~3_combout\);

-- Location: LABCELL_X31_Y2_N6
\prescaler|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal0~1_combout\ = ( \prescaler|counter\(21) & ( \prescaler|counter\(4) & ( (\prescaler|counter\(1) & (\prescaler|counter\(0) & (\prescaler|counter\(2) & \prescaler|counter\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(1),
	datab => \prescaler|ALT_INV_counter\(0),
	datac => \prescaler|ALT_INV_counter\(2),
	datad => \prescaler|ALT_INV_counter\(3),
	datae => \prescaler|ALT_INV_counter\(21),
	dataf => \prescaler|ALT_INV_counter\(4),
	combout => \prescaler|Equal0~1_combout\);

-- Location: LABCELL_X30_Y1_N36
\prescaler|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal0~5_combout\ = ( \prescaler|counter\(22) & ( \prescaler|counter\(24) & ( (\SW[1]~input_o\ & (!\prescaler|counter\(23) & !\SW[0]~input_o\)) ) ) ) # ( \prescaler|counter\(22) & ( !\prescaler|counter\(24) & ( (\prescaler|counter\(23) & 
-- (((!\SW[1]~input_o\ & !\SW[2]~input_o\)) # (\SW[0]~input_o\))) ) ) ) # ( !\prescaler|counter\(22) & ( !\prescaler|counter\(24) & ( (!\SW[1]~input_o\ & (\SW[2]~input_o\ & (\prescaler|counter\(23) & !\SW[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000010000000111100000000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \prescaler|ALT_INV_counter\(23),
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \prescaler|ALT_INV_counter\(22),
	dataf => \prescaler|ALT_INV_counter\(24),
	combout => \prescaler|Equal0~5_combout\);

-- Location: LABCELL_X31_Y1_N54
\prescaler|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Equal0~6_combout\ = ( \prescaler|Equal0~1_combout\ & ( \prescaler|Equal0~5_combout\ & ( (\prescaler|Equal0~4_combout\ & (\prescaler|Equal0~2_combout\ & (\prescaler|Equal0~0_combout\ & \prescaler|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_Equal0~4_combout\,
	datab => \prescaler|ALT_INV_Equal0~2_combout\,
	datac => \prescaler|ALT_INV_Equal0~0_combout\,
	datad => \prescaler|ALT_INV_Equal0~3_combout\,
	datae => \prescaler|ALT_INV_Equal0~1_combout\,
	dataf => \prescaler|ALT_INV_Equal0~5_combout\,
	combout => \prescaler|Equal0~6_combout\);

-- Location: FF_X31_Y2_N32
\prescaler|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \prescaler|Add0~53_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(0));

-- Location: LABCELL_X31_Y2_N33
\prescaler|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~49_sumout\ = SUM(( \prescaler|counter\(1) ) + ( GND ) + ( \prescaler|Add0~54\ ))
-- \prescaler|Add0~50\ = CARRY(( \prescaler|counter\(1) ) + ( GND ) + ( \prescaler|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(1),
	cin => \prescaler|Add0~54\,
	sumout => \prescaler|Add0~49_sumout\,
	cout => \prescaler|Add0~50\);

-- Location: FF_X31_Y2_N35
\prescaler|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \prescaler|Add0~49_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(1));

-- Location: LABCELL_X31_Y2_N36
\prescaler|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~45_sumout\ = SUM(( \prescaler|counter\(2) ) + ( GND ) + ( \prescaler|Add0~50\ ))
-- \prescaler|Add0~46\ = CARRY(( \prescaler|counter\(2) ) + ( GND ) + ( \prescaler|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(2),
	cin => \prescaler|Add0~50\,
	sumout => \prescaler|Add0~45_sumout\,
	cout => \prescaler|Add0~46\);

-- Location: FF_X31_Y2_N38
\prescaler|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \prescaler|Add0~45_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(2));

-- Location: LABCELL_X31_Y2_N39
\prescaler|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~41_sumout\ = SUM(( \prescaler|counter\(3) ) + ( GND ) + ( \prescaler|Add0~46\ ))
-- \prescaler|Add0~42\ = CARRY(( \prescaler|counter\(3) ) + ( GND ) + ( \prescaler|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \prescaler|ALT_INV_counter\(3),
	cin => \prescaler|Add0~46\,
	sumout => \prescaler|Add0~41_sumout\,
	cout => \prescaler|Add0~42\);

-- Location: FF_X31_Y2_N41
\prescaler|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \prescaler|Add0~41_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(3));

-- Location: LABCELL_X31_Y2_N42
\prescaler|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~37_sumout\ = SUM(( \prescaler|counter\(4) ) + ( GND ) + ( \prescaler|Add0~42\ ))
-- \prescaler|Add0~38\ = CARRY(( \prescaler|counter\(4) ) + ( GND ) + ( \prescaler|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \prescaler|ALT_INV_counter\(4),
	cin => \prescaler|Add0~42\,
	sumout => \prescaler|Add0~37_sumout\,
	cout => \prescaler|Add0~38\);

-- Location: FF_X31_Y2_N44
\prescaler|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \prescaler|Add0~37_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(4));

-- Location: LABCELL_X31_Y2_N45
\prescaler|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~81_sumout\ = SUM(( \prescaler|counter\(5) ) + ( GND ) + ( \prescaler|Add0~38\ ))
-- \prescaler|Add0~82\ = CARRY(( \prescaler|counter\(5) ) + ( GND ) + ( \prescaler|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(5),
	cin => \prescaler|Add0~38\,
	sumout => \prescaler|Add0~81_sumout\,
	cout => \prescaler|Add0~82\);

-- Location: LABCELL_X30_Y1_N42
\prescaler|counter[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|counter[5]~feeder_combout\ = ( \prescaler|Add0~81_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \prescaler|ALT_INV_Add0~81_sumout\,
	combout => \prescaler|counter[5]~feeder_combout\);

-- Location: FF_X30_Y1_N44
\prescaler|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \prescaler|counter[5]~feeder_combout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(5));

-- Location: LABCELL_X31_Y2_N48
\prescaler|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~93_sumout\ = SUM(( \prescaler|counter\(6) ) + ( GND ) + ( \prescaler|Add0~82\ ))
-- \prescaler|Add0~94\ = CARRY(( \prescaler|counter\(6) ) + ( GND ) + ( \prescaler|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter\(6),
	cin => \prescaler|Add0~82\,
	sumout => \prescaler|Add0~93_sumout\,
	cout => \prescaler|Add0~94\);

-- Location: FF_X31_Y1_N50
\prescaler|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	asdata => \prescaler|Add0~93_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(6));

-- Location: LABCELL_X31_Y2_N51
\prescaler|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~29_sumout\ = SUM(( \prescaler|counter\(7) ) + ( GND ) + ( \prescaler|Add0~94\ ))
-- \prescaler|Add0~30\ = CARRY(( \prescaler|counter\(7) ) + ( GND ) + ( \prescaler|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(7),
	cin => \prescaler|Add0~94\,
	sumout => \prescaler|Add0~29_sumout\,
	cout => \prescaler|Add0~30\);

-- Location: FF_X31_Y2_N53
\prescaler|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \prescaler|Add0~29_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(7));

-- Location: LABCELL_X31_Y2_N54
\prescaler|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~25_sumout\ = SUM(( \prescaler|counter\(8) ) + ( GND ) + ( \prescaler|Add0~30\ ))
-- \prescaler|Add0~26\ = CARRY(( \prescaler|counter\(8) ) + ( GND ) + ( \prescaler|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(8),
	cin => \prescaler|Add0~30\,
	sumout => \prescaler|Add0~25_sumout\,
	cout => \prescaler|Add0~26\);

-- Location: FF_X31_Y2_N56
\prescaler|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \prescaler|Add0~25_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(8));

-- Location: LABCELL_X31_Y2_N57
\prescaler|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~21_sumout\ = SUM(( \prescaler|counter\(9) ) + ( GND ) + ( \prescaler|Add0~26\ ))
-- \prescaler|Add0~22\ = CARRY(( \prescaler|counter\(9) ) + ( GND ) + ( \prescaler|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \prescaler|ALT_INV_counter\(9),
	cin => \prescaler|Add0~26\,
	sumout => \prescaler|Add0~21_sumout\,
	cout => \prescaler|Add0~22\);

-- Location: FF_X31_Y2_N59
\prescaler|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \prescaler|Add0~21_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(9));

-- Location: LABCELL_X31_Y1_N0
\prescaler|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~89_sumout\ = SUM(( \prescaler|counter\(10) ) + ( GND ) + ( \prescaler|Add0~22\ ))
-- \prescaler|Add0~90\ = CARRY(( \prescaler|counter\(10) ) + ( GND ) + ( \prescaler|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \prescaler|ALT_INV_counter\(10),
	cin => \prescaler|Add0~22\,
	sumout => \prescaler|Add0~89_sumout\,
	cout => \prescaler|Add0~90\);

-- Location: FF_X31_Y1_N2
\prescaler|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \prescaler|Add0~89_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(10));

-- Location: LABCELL_X31_Y1_N3
\prescaler|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~77_sumout\ = SUM(( \prescaler|counter\(11) ) + ( GND ) + ( \prescaler|Add0~90\ ))
-- \prescaler|Add0~78\ = CARRY(( \prescaler|counter\(11) ) + ( GND ) + ( \prescaler|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(11),
	cin => \prescaler|Add0~90\,
	sumout => \prescaler|Add0~77_sumout\,
	cout => \prescaler|Add0~78\);

-- Location: FF_X31_Y1_N5
\prescaler|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \prescaler|Add0~77_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(11));

-- Location: LABCELL_X31_Y1_N6
\prescaler|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~17_sumout\ = SUM(( \prescaler|counter\(12) ) + ( GND ) + ( \prescaler|Add0~78\ ))
-- \prescaler|Add0~18\ = CARRY(( \prescaler|counter\(12) ) + ( GND ) + ( \prescaler|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(12),
	cin => \prescaler|Add0~78\,
	sumout => \prescaler|Add0~17_sumout\,
	cout => \prescaler|Add0~18\);

-- Location: FF_X31_Y1_N8
\prescaler|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \prescaler|Add0~17_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(12));

-- Location: LABCELL_X31_Y1_N9
\prescaler|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~13_sumout\ = SUM(( \prescaler|counter\(13) ) + ( GND ) + ( \prescaler|Add0~18\ ))
-- \prescaler|Add0~14\ = CARRY(( \prescaler|counter\(13) ) + ( GND ) + ( \prescaler|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(13),
	cin => \prescaler|Add0~18\,
	sumout => \prescaler|Add0~13_sumout\,
	cout => \prescaler|Add0~14\);

-- Location: FF_X31_Y1_N11
\prescaler|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \prescaler|Add0~13_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(13));

-- Location: LABCELL_X31_Y1_N12
\prescaler|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~85_sumout\ = SUM(( \prescaler|counter\(14) ) + ( GND ) + ( \prescaler|Add0~14\ ))
-- \prescaler|Add0~86\ = CARRY(( \prescaler|counter\(14) ) + ( GND ) + ( \prescaler|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(14),
	cin => \prescaler|Add0~14\,
	sumout => \prescaler|Add0~85_sumout\,
	cout => \prescaler|Add0~86\);

-- Location: FF_X31_Y1_N14
\prescaler|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \prescaler|Add0~85_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(14));

-- Location: LABCELL_X31_Y1_N15
\prescaler|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~69_sumout\ = SUM(( \prescaler|counter\(15) ) + ( GND ) + ( \prescaler|Add0~86\ ))
-- \prescaler|Add0~70\ = CARRY(( \prescaler|counter\(15) ) + ( GND ) + ( \prescaler|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(15),
	cin => \prescaler|Add0~86\,
	sumout => \prescaler|Add0~69_sumout\,
	cout => \prescaler|Add0~70\);

-- Location: FF_X31_Y1_N17
\prescaler|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \prescaler|Add0~69_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(15));

-- Location: LABCELL_X31_Y1_N18
\prescaler|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~65_sumout\ = SUM(( \prescaler|counter\(16) ) + ( GND ) + ( \prescaler|Add0~70\ ))
-- \prescaler|Add0~66\ = CARRY(( \prescaler|counter\(16) ) + ( GND ) + ( \prescaler|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter\(16),
	cin => \prescaler|Add0~70\,
	sumout => \prescaler|Add0~65_sumout\,
	cout => \prescaler|Add0~66\);

-- Location: FF_X31_Y1_N20
\prescaler|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \prescaler|Add0~65_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(16));

-- Location: LABCELL_X31_Y1_N21
\prescaler|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~61_sumout\ = SUM(( \prescaler|counter\(17) ) + ( GND ) + ( \prescaler|Add0~66\ ))
-- \prescaler|Add0~62\ = CARRY(( \prescaler|counter\(17) ) + ( GND ) + ( \prescaler|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter\(17),
	cin => \prescaler|Add0~66\,
	sumout => \prescaler|Add0~61_sumout\,
	cout => \prescaler|Add0~62\);

-- Location: FF_X31_Y1_N23
\prescaler|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \prescaler|Add0~61_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(17));

-- Location: LABCELL_X31_Y1_N24
\prescaler|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~73_sumout\ = SUM(( \prescaler|counter\(18) ) + ( GND ) + ( \prescaler|Add0~62\ ))
-- \prescaler|Add0~74\ = CARRY(( \prescaler|counter\(18) ) + ( GND ) + ( \prescaler|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(18),
	cin => \prescaler|Add0~62\,
	sumout => \prescaler|Add0~73_sumout\,
	cout => \prescaler|Add0~74\);

-- Location: FF_X31_Y1_N26
\prescaler|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \prescaler|Add0~73_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(18));

-- Location: LABCELL_X31_Y1_N27
\prescaler|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~57_sumout\ = SUM(( \prescaler|counter\(19) ) + ( GND ) + ( \prescaler|Add0~74\ ))
-- \prescaler|Add0~58\ = CARRY(( \prescaler|counter\(19) ) + ( GND ) + ( \prescaler|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \prescaler|ALT_INV_counter\(19),
	cin => \prescaler|Add0~74\,
	sumout => \prescaler|Add0~57_sumout\,
	cout => \prescaler|Add0~58\);

-- Location: FF_X31_Y1_N29
\prescaler|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \prescaler|Add0~57_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(19));

-- Location: LABCELL_X31_Y1_N30
\prescaler|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~9_sumout\ = SUM(( \prescaler|counter\(20) ) + ( GND ) + ( \prescaler|Add0~58\ ))
-- \prescaler|Add0~10\ = CARRY(( \prescaler|counter\(20) ) + ( GND ) + ( \prescaler|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|ALT_INV_counter\(20),
	cin => \prescaler|Add0~58\,
	sumout => \prescaler|Add0~9_sumout\,
	cout => \prescaler|Add0~10\);

-- Location: FF_X31_Y1_N32
\prescaler|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \prescaler|Add0~9_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(20));

-- Location: LABCELL_X31_Y1_N33
\prescaler|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~33_sumout\ = SUM(( \prescaler|counter\(21) ) + ( GND ) + ( \prescaler|Add0~10\ ))
-- \prescaler|Add0~34\ = CARRY(( \prescaler|counter\(21) ) + ( GND ) + ( \prescaler|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|ALT_INV_counter\(21),
	cin => \prescaler|Add0~10\,
	sumout => \prescaler|Add0~33_sumout\,
	cout => \prescaler|Add0~34\);

-- Location: FF_X31_Y1_N35
\prescaler|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \prescaler|Add0~33_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(21));

-- Location: LABCELL_X31_Y1_N36
\prescaler|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~97_sumout\ = SUM(( \prescaler|counter\(22) ) + ( GND ) + ( \prescaler|Add0~34\ ))
-- \prescaler|Add0~98\ = CARRY(( \prescaler|counter\(22) ) + ( GND ) + ( \prescaler|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(22),
	cin => \prescaler|Add0~34\,
	sumout => \prescaler|Add0~97_sumout\,
	cout => \prescaler|Add0~98\);

-- Location: FF_X31_Y1_N38
\prescaler|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \prescaler|Add0~97_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(22));

-- Location: LABCELL_X31_Y1_N39
\prescaler|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~5_sumout\ = SUM(( \prescaler|counter\(23) ) + ( GND ) + ( \prescaler|Add0~98\ ))
-- \prescaler|Add0~6\ = CARRY(( \prescaler|counter\(23) ) + ( GND ) + ( \prescaler|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \prescaler|ALT_INV_counter\(23),
	cin => \prescaler|Add0~98\,
	sumout => \prescaler|Add0~5_sumout\,
	cout => \prescaler|Add0~6\);

-- Location: FF_X31_Y1_N41
\prescaler|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \prescaler|Add0~5_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(23));

-- Location: LABCELL_X31_Y1_N42
\prescaler|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \prescaler|Add0~1_sumout\ = SUM(( \prescaler|counter\(24) ) + ( GND ) + ( \prescaler|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|ALT_INV_counter\(24),
	cin => \prescaler|Add0~6\,
	sumout => \prescaler|Add0~1_sumout\);

-- Location: FF_X31_Y1_N44
\prescaler|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \prescaler|Add0~1_sumout\,
	sclr => \prescaler|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|counter\(24));

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

-- Location: LABCELL_X22_Y1_N54
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \current_state.DisplayP1~q\ & ( ((\KEY[1]~input_o\ & \current_state.WaitP2~q\)) # (\KEY[0]~input_o\) ) ) # ( !\current_state.DisplayP1~q\ & ( (\KEY[1]~input_o\ & \current_state.WaitP2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_current_state.WaitP2~q\,
	dataf => \ALT_INV_current_state.DisplayP1~q\,
	combout => \Selector9~0_combout\);

-- Location: LABCELL_X22_Y1_N57
\next_state.WaitP2_428\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.WaitP2_428~combout\ = ( \Selector9~0_combout\ & ( (\Selector6~0_combout\) # (\next_state.WaitP2_428~combout\) ) ) # ( !\Selector9~0_combout\ & ( (\next_state.WaitP2_428~combout\ & !\Selector6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_next_state.WaitP2_428~combout\,
	datad => \ALT_INV_Selector6~0_combout\,
	dataf => \ALT_INV_Selector9~0_combout\,
	combout => \next_state.WaitP2_428~combout\);

-- Location: IOIBUF_X22_Y0_N1
\reset_game~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_game,
	o => \reset_game~input_o\);

-- Location: FF_X22_Y1_N59
\current_state.WaitP2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \prescaler|counter\(24),
	d => \next_state.WaitP2_428~combout\,
	clrn => \ALT_INV_reset_game~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.WaitP2~q\);

-- Location: LABCELL_X22_Y1_N24
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( \current_state.WaitP2~q\ & ( !\KEY[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[1]~input_o\,
	dataf => \ALT_INV_current_state.WaitP2~q\,
	combout => \Selector11~0_combout\);

-- Location: LABCELL_X22_Y1_N39
\next_state.P2Game_418\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.P2Game_418~combout\ = ( \Selector11~0_combout\ & ( (\Selector6~0_combout\) # (\next_state.P2Game_418~combout\) ) ) # ( !\Selector11~0_combout\ & ( (\next_state.P2Game_418~combout\ & !\Selector6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_next_state.P2Game_418~combout\,
	datad => \ALT_INV_Selector6~0_combout\,
	dataf => \ALT_INV_Selector11~0_combout\,
	combout => \next_state.P2Game_418~combout\);

-- Location: FF_X22_Y1_N41
\current_state.P2Game\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \prescaler|counter\(24),
	d => \next_state.P2Game_418~combout\,
	clrn => \ALT_INV_reset_game~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.P2Game~q\);

-- Location: LABCELL_X22_Y1_N18
\next_state.Compare_408\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.Compare_408~combout\ = ( \current_state.P2Game~q\ & ( (\Selector6~0_combout\) # (\next_state.Compare_408~combout\) ) ) # ( !\current_state.P2Game~q\ & ( (\next_state.Compare_408~combout\ & !\Selector6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_next_state.Compare_408~combout\,
	datad => \ALT_INV_Selector6~0_combout\,
	dataf => \ALT_INV_current_state.P2Game~q\,
	combout => \next_state.Compare_408~combout\);

-- Location: FF_X22_Y1_N19
\current_state.Compare\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \prescaler|counter\(24),
	d => \next_state.Compare_408~combout\,
	clrn => \ALT_INV_reset_game~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.Compare~q\);

-- Location: LABCELL_X22_Y1_N36
\Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = ( \current_state.Compare~q\ ) # ( !\current_state.Compare~q\ & ( (\current_state.Winner~q\ & !\reset_game~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.Winner~q\,
	datad => \ALT_INV_reset_game~input_o\,
	dataf => \ALT_INV_current_state.Compare~q\,
	combout => \Selector15~0_combout\);

-- Location: LABCELL_X22_Y1_N27
\next_state.Winner_398\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.Winner_398~combout\ = ( \Selector15~0_combout\ & ( (\next_state.Winner_398~combout\) # (\Selector6~0_combout\) ) ) # ( !\Selector15~0_combout\ & ( (!\Selector6~0_combout\ & \next_state.Winner_398~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector6~0_combout\,
	datad => \ALT_INV_next_state.Winner_398~combout\,
	dataf => \ALT_INV_Selector15~0_combout\,
	combout => \next_state.Winner_398~combout\);

-- Location: FF_X22_Y1_N29
\current_state.Winner\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \prescaler|counter\(24),
	d => \next_state.Winner_398~combout\,
	clrn => \ALT_INV_reset_game~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.Winner~q\);

-- Location: LABCELL_X22_Y1_N30
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \current_state.Setup~q\ & ( \current_state.Winner~q\ & ( \reset_game~input_o\ ) ) ) # ( !\current_state.Setup~q\ & ( \current_state.Winner~q\ & ( (!\KEY[0]~input_o\) # (\reset_game~input_o\) ) ) ) # ( !\current_state.Setup~q\ & ( 
-- !\current_state.Winner~q\ & ( (!\KEY[0]~input_o\) # (\reset_game~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111000000000000000011001111110011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_reset_game~input_o\,
	datae => \ALT_INV_current_state.Setup~q\,
	dataf => \ALT_INV_current_state.Winner~q\,
	combout => \Selector1~0_combout\);

-- Location: LABCELL_X22_Y1_N51
\next_state.Setup_468\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.Setup_468~combout\ = ( \Selector6~0_combout\ & ( \Selector1~0_combout\ ) ) # ( !\Selector6~0_combout\ & ( \Selector1~0_combout\ & ( \next_state.Setup_468~combout\ ) ) ) # ( !\Selector6~0_combout\ & ( !\Selector1~0_combout\ & ( 
-- \next_state.Setup_468~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_next_state.Setup_468~combout\,
	datae => \ALT_INV_Selector6~0_combout\,
	dataf => \ALT_INV_Selector1~0_combout\,
	combout => \next_state.Setup_468~combout\);

-- Location: LABCELL_X22_Y1_N42
\current_state.Setup~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_state.Setup~0_combout\ = ( !\next_state.Setup_468~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_next_state.Setup_468~combout\,
	combout => \current_state.Setup~0_combout\);

-- Location: FF_X22_Y1_N44
\current_state.Setup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \prescaler|counter\(24),
	d => \current_state.Setup~0_combout\,
	clrn => \ALT_INV_reset_game~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.Setup~q\);

-- Location: LABCELL_X22_Y1_N0
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \KEY[0]~input_o\ & ( ((!\current_state.Setup~q\ & !\reset_game~input_o\)) # (\current_state.WaitP1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001111000011111100111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_current_state.Setup~q\,
	datac => \ALT_INV_current_state.WaitP1~q\,
	datad => \ALT_INV_reset_game~input_o\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \Selector3~0_combout\);

-- Location: LABCELL_X22_Y1_N3
\next_state.WaitP1_458\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.WaitP1_458~combout\ = ( \Selector3~0_combout\ & ( (\next_state.WaitP1_458~combout\) # (\Selector6~0_combout\) ) ) # ( !\Selector3~0_combout\ & ( (!\Selector6~0_combout\ & \next_state.WaitP1_458~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector6~0_combout\,
	datad => \ALT_INV_next_state.WaitP1_458~combout\,
	dataf => \ALT_INV_Selector3~0_combout\,
	combout => \next_state.WaitP1_458~combout\);

-- Location: FF_X22_Y1_N5
\current_state.WaitP1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \prescaler|counter\(24),
	d => \next_state.WaitP1_458~combout\,
	clrn => \ALT_INV_reset_game~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.WaitP1~q\);

-- Location: LABCELL_X22_Y1_N12
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( !\KEY[0]~input_o\ & ( \current_state.WaitP1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_current_state.WaitP1~q\,
	combout => \Selector5~0_combout\);

-- Location: LABCELL_X22_Y1_N9
\next_state.P1Game_448\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.P1Game_448~combout\ = ( \next_state.P1Game_448~combout\ & ( \Selector5~0_combout\ ) ) # ( !\next_state.P1Game_448~combout\ & ( \Selector5~0_combout\ & ( \Selector6~0_combout\ ) ) ) # ( \next_state.P1Game_448~combout\ & ( !\Selector5~0_combout\ 
-- & ( !\Selector6~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Selector6~0_combout\,
	datae => \ALT_INV_next_state.P1Game_448~combout\,
	dataf => \ALT_INV_Selector5~0_combout\,
	combout => \next_state.P1Game_448~combout\);

-- Location: FF_X22_Y1_N11
\current_state.P1Game\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \prescaler|counter\(24),
	d => \next_state.P1Game_448~combout\,
	clrn => \ALT_INV_reset_game~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.P1Game~q\);

-- Location: LABCELL_X22_Y1_N21
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \current_state.P1Game~q\ & ( (!\KEY[0]~input_o\ & ((!\current_state.P2Game~q\) # (!\KEY[1]~input_o\))) ) ) # ( !\current_state.P1Game~q\ & ( (!\current_state.P2Game~q\) # (!\KEY[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111111111100110011110000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_current_state.P2Game~q\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_KEY[1]~input_o\,
	dataf => \ALT_INV_current_state.P1Game~q\,
	combout => \Selector6~0_combout\);

-- Location: LABCELL_X23_Y1_N54
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \current_state.DisplayP1~q\ & ( (!\KEY[0]~input_o\) # (\current_state.P1Game~q\) ) ) # ( !\current_state.DisplayP1~q\ & ( \current_state.P1Game~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_current_state.P1Game~q\,
	dataf => \ALT_INV_current_state.DisplayP1~q\,
	combout => \Selector7~0_combout\);

-- Location: LABCELL_X23_Y1_N9
\next_state.DisplayP1_438\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.DisplayP1_438~combout\ = ( \next_state.DisplayP1_438~combout\ & ( \Selector7~0_combout\ ) ) # ( !\next_state.DisplayP1_438~combout\ & ( \Selector7~0_combout\ & ( \Selector6~0_combout\ ) ) ) # ( \next_state.DisplayP1_438~combout\ & ( 
-- !\Selector7~0_combout\ & ( !\Selector6~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Selector6~0_combout\,
	datae => \ALT_INV_next_state.DisplayP1_438~combout\,
	dataf => \ALT_INV_Selector7~0_combout\,
	combout => \next_state.DisplayP1_438~combout\);

-- Location: FF_X23_Y1_N11
\current_state.DisplayP1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \prescaler|counter\(24),
	d => \next_state.DisplayP1_438~combout\,
	clrn => \ALT_INV_reset_game~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.DisplayP1~q\);

-- Location: LABCELL_X23_Y1_N30
\RandomGen|lfsr[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RandomGen|lfsr[1]~2_combout\ = ( !\RandomGen|lfsr\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \RandomGen|ALT_INV_lfsr\(0),
	combout => \RandomGen|lfsr[1]~2_combout\);

-- Location: FF_X23_Y1_N31
\RandomGen|lfsr[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \prescaler|counter\(24),
	d => \RandomGen|lfsr[1]~2_combout\,
	clrn => \ALT_INV_reset_game~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RandomGen|lfsr[1]~DUPLICATE_q\);

-- Location: LABCELL_X23_Y1_N48
\RandomGen|lfsr[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RandomGen|lfsr[2]~3_combout\ = ( !\RandomGen|lfsr[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \RandomGen|ALT_INV_lfsr[1]~DUPLICATE_q\,
	combout => \RandomGen|lfsr[2]~3_combout\);

-- Location: FF_X23_Y1_N50
\RandomGen|lfsr[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \prescaler|counter\(24),
	d => \RandomGen|lfsr[2]~3_combout\,
	clrn => \ALT_INV_reset_game~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RandomGen|lfsr[2]~DUPLICATE_q\);

-- Location: FF_X23_Y1_N49
\RandomGen|lfsr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \prescaler|counter\(24),
	d => \RandomGen|lfsr[2]~3_combout\,
	clrn => \ALT_INV_reset_game~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RandomGen|lfsr\(2));

-- Location: LABCELL_X23_Y1_N0
\RandomGen|lfsr[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RandomGen|lfsr[3]~feeder_combout\ = ( \RandomGen|lfsr\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \RandomGen|ALT_INV_lfsr\(2),
	combout => \RandomGen|lfsr[3]~feeder_combout\);

-- Location: FF_X23_Y1_N1
\RandomGen|lfsr[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \prescaler|counter\(24),
	d => \RandomGen|lfsr[3]~feeder_combout\,
	clrn => \ALT_INV_reset_game~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RandomGen|lfsr[3]~DUPLICATE_q\);

-- Location: LABCELL_X23_Y1_N39
\RandomGen|lfsr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RandomGen|lfsr~0_combout\ = ( \RandomGen|lfsr[3]~DUPLICATE_q\ & ( \RandomGen|lfsr[2]~DUPLICATE_q\ ) ) # ( !\RandomGen|lfsr[3]~DUPLICATE_q\ & ( !\RandomGen|lfsr[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RandomGen|ALT_INV_lfsr[2]~DUPLICATE_q\,
	dataf => \RandomGen|ALT_INV_lfsr[3]~DUPLICATE_q\,
	combout => \RandomGen|lfsr~0_combout\);

-- Location: FF_X23_Y1_N41
\RandomGen|lfsr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \prescaler|counter\(24),
	d => \RandomGen|lfsr~0_combout\,
	clrn => \ALT_INV_reset_game~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RandomGen|lfsr\(0));

-- Location: LABCELL_X23_Y1_N45
\Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ( \RandomGen|lfsr\(0) ) # ( !\RandomGen|lfsr\(0) & ( \current_state.DisplayP1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_state.DisplayP1~q\,
	dataf => \RandomGen|ALT_INV_lfsr\(0),
	combout => \Selector16~0_combout\);

-- Location: LABCELL_X23_Y1_N42
\WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = ( \current_state.Setup~q\ & ( \current_state.DisplayP1~q\ ) ) # ( !\current_state.Setup~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_current_state.DisplayP1~q\,
	dataf => \ALT_INV_current_state.Setup~q\,
	combout => \WideOr0~0_combout\);

-- Location: LABCELL_X23_Y1_N36
\hex_disp[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_disp[0]$latch~combout\ = ( \WideOr0~0_combout\ & ( !\Selector16~0_combout\ ) ) # ( !\WideOr0~0_combout\ & ( \hex_disp[0]$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector16~0_combout\,
	datad => \ALT_INV_hex_disp[0]$latch~combout\,
	dataf => \ALT_INV_WideOr0~0_combout\,
	combout => \hex_disp[0]$latch~combout\);

-- Location: FF_X23_Y1_N32
\RandomGen|lfsr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \prescaler|counter\(24),
	d => \RandomGen|lfsr[1]~2_combout\,
	clrn => \ALT_INV_reset_game~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RandomGen|lfsr\(1));

-- Location: LABCELL_X23_Y1_N12
\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ( \RandomGen|lfsr\(1) & ( !\current_state.DisplayP1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_state.DisplayP1~q\,
	dataf => \RandomGen|ALT_INV_lfsr\(1),
	combout => \Selector17~0_combout\);

-- Location: LABCELL_X23_Y1_N15
\hex_disp[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_disp[1]$latch~combout\ = ( \Selector17~0_combout\ & ( (\WideOr0~0_combout\) # (\hex_disp[1]$latch~combout\) ) ) # ( !\Selector17~0_combout\ & ( (\hex_disp[1]$latch~combout\ & !\WideOr0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hex_disp[1]$latch~combout\,
	datad => \ALT_INV_WideOr0~0_combout\,
	dataf => \ALT_INV_Selector17~0_combout\,
	combout => \hex_disp[1]$latch~combout\);

-- Location: LABCELL_X23_Y1_N24
\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( \current_state.DisplayP1~q\ & ( \RandomGen|lfsr[2]~DUPLICATE_q\ ) ) # ( !\current_state.DisplayP1~q\ & ( \RandomGen|lfsr[2]~DUPLICATE_q\ ) ) # ( \current_state.DisplayP1~q\ & ( !\RandomGen|lfsr[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_current_state.DisplayP1~q\,
	dataf => \RandomGen|ALT_INV_lfsr[2]~DUPLICATE_q\,
	combout => \Selector18~0_combout\);

-- Location: LABCELL_X23_Y1_N57
\hex_disp[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_disp[2]$latch~combout\ = ( \Selector18~0_combout\ & ( (!\WideOr0~0_combout\ & \hex_disp[2]$latch~combout\) ) ) # ( !\Selector18~0_combout\ & ( (\hex_disp[2]$latch~combout\) # (\WideOr0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WideOr0~0_combout\,
	datad => \ALT_INV_hex_disp[2]$latch~combout\,
	dataf => \ALT_INV_Selector18~0_combout\,
	combout => \hex_disp[2]$latch~combout\);

-- Location: FF_X23_Y1_N2
\RandomGen|lfsr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \prescaler|counter\(24),
	d => \RandomGen|lfsr[3]~feeder_combout\,
	clrn => \ALT_INV_reset_game~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RandomGen|lfsr\(3));

-- Location: LABCELL_X23_Y1_N21
\Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = ( \RandomGen|lfsr\(3) & ( \current_state.DisplayP1~q\ ) ) # ( !\RandomGen|lfsr\(3) & ( \current_state.DisplayP1~q\ ) ) # ( \RandomGen|lfsr\(3) & ( !\current_state.DisplayP1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RandomGen|ALT_INV_lfsr\(3),
	dataf => \ALT_INV_current_state.DisplayP1~q\,
	combout => \Selector19~0_combout\);

-- Location: LABCELL_X23_Y1_N33
\hex_disp[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex_disp[3]$latch~combout\ = ( \Selector19~0_combout\ & ( (\hex_disp[3]$latch~combout\ & !\WideOr0~0_combout\) ) ) # ( !\Selector19~0_combout\ & ( (\WideOr0~0_combout\) # (\hex_disp[3]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex_disp[3]$latch~combout\,
	datad => \ALT_INV_WideOr0~0_combout\,
	dataf => \ALT_INV_Selector19~0_combout\,
	combout => \hex_disp[3]$latch~combout\);

-- Location: LABCELL_X24_Y1_N12
\seg_decoder0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder0|Mux6~0_combout\ = ( !\RandomGen|lfsr\(0) & ( \RandomGen|lfsr[2]~DUPLICATE_q\ & ( !\RandomGen|lfsr[3]~DUPLICATE_q\ $ (!\RandomGen|lfsr[1]~DUPLICATE_q\) ) ) ) # ( \RandomGen|lfsr\(0) & ( !\RandomGen|lfsr[2]~DUPLICATE_q\ & ( 
-- (!\RandomGen|lfsr[3]~DUPLICATE_q\) # (!\RandomGen|lfsr[1]~DUPLICATE_q\) ) ) ) # ( !\RandomGen|lfsr\(0) & ( !\RandomGen|lfsr[2]~DUPLICATE_q\ & ( !\RandomGen|lfsr[3]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100111111001111110000111100001111000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RandomGen|ALT_INV_lfsr[3]~DUPLICATE_q\,
	datac => \RandomGen|ALT_INV_lfsr[1]~DUPLICATE_q\,
	datae => \RandomGen|ALT_INV_lfsr\(0),
	dataf => \RandomGen|ALT_INV_lfsr[2]~DUPLICATE_q\,
	combout => \seg_decoder0|Mux6~0_combout\);

-- Location: LABCELL_X24_Y1_N33
\seg_decoder0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder0|Mux5~0_combout\ = ( !\RandomGen|lfsr\(0) & ( \RandomGen|lfsr[2]~DUPLICATE_q\ & ( (\RandomGen|lfsr[1]~DUPLICATE_q\ & !\RandomGen|lfsr[3]~DUPLICATE_q\) ) ) ) # ( \RandomGen|lfsr\(0) & ( !\RandomGen|lfsr[2]~DUPLICATE_q\ & ( 
-- (!\RandomGen|lfsr[3]~DUPLICATE_q\) # (\RandomGen|lfsr[1]~DUPLICATE_q\) ) ) ) # ( !\RandomGen|lfsr\(0) & ( !\RandomGen|lfsr[2]~DUPLICATE_q\ & ( (!\RandomGen|lfsr[1]~DUPLICATE_q\) # (!\RandomGen|lfsr[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111101011111010101010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RandomGen|ALT_INV_lfsr[1]~DUPLICATE_q\,
	datac => \RandomGen|ALT_INV_lfsr[3]~DUPLICATE_q\,
	datae => \RandomGen|ALT_INV_lfsr\(0),
	dataf => \RandomGen|ALT_INV_lfsr[2]~DUPLICATE_q\,
	combout => \seg_decoder0|Mux5~0_combout\);

-- Location: LABCELL_X24_Y1_N27
\seg_decoder0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder0|Mux4~0_combout\ = ( \RandomGen|lfsr\(0) & ( \RandomGen|lfsr[2]~DUPLICATE_q\ & ( (\RandomGen|lfsr[1]~DUPLICATE_q\ & \RandomGen|lfsr[3]~DUPLICATE_q\) ) ) ) # ( !\RandomGen|lfsr\(0) & ( \RandomGen|lfsr[2]~DUPLICATE_q\ & ( 
-- (\RandomGen|lfsr[1]~DUPLICATE_q\ & !\RandomGen|lfsr[3]~DUPLICATE_q\) ) ) ) # ( \RandomGen|lfsr\(0) & ( !\RandomGen|lfsr[2]~DUPLICATE_q\ & ( !\RandomGen|lfsr[3]~DUPLICATE_q\ ) ) ) # ( !\RandomGen|lfsr\(0) & ( !\RandomGen|lfsr[2]~DUPLICATE_q\ & ( 
-- !\RandomGen|lfsr[3]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000001010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RandomGen|ALT_INV_lfsr[1]~DUPLICATE_q\,
	datac => \RandomGen|ALT_INV_lfsr[3]~DUPLICATE_q\,
	datae => \RandomGen|ALT_INV_lfsr\(0),
	dataf => \RandomGen|ALT_INV_lfsr[2]~DUPLICATE_q\,
	combout => \seg_decoder0|Mux4~0_combout\);

-- Location: LABCELL_X24_Y1_N42
\seg_decoder0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder0|Mux3~0_combout\ = ( \RandomGen|lfsr\(0) & ( \RandomGen|lfsr[2]~DUPLICATE_q\ & ( (!\RandomGen|lfsr[3]~DUPLICATE_q\ & \RandomGen|lfsr[1]~DUPLICATE_q\) ) ) ) # ( !\RandomGen|lfsr\(0) & ( \RandomGen|lfsr[2]~DUPLICATE_q\ & ( 
-- (!\RandomGen|lfsr[3]~DUPLICATE_q\) # (!\RandomGen|lfsr[1]~DUPLICATE_q\) ) ) ) # ( \RandomGen|lfsr\(0) & ( !\RandomGen|lfsr[2]~DUPLICATE_q\ & ( (!\RandomGen|lfsr[3]~DUPLICATE_q\) # (!\RandomGen|lfsr[1]~DUPLICATE_q\) ) ) ) # ( !\RandomGen|lfsr\(0) & ( 
-- !\RandomGen|lfsr[2]~DUPLICATE_q\ & ( (!\RandomGen|lfsr[3]~DUPLICATE_q\) # (\RandomGen|lfsr[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111111111001111110011111100111111000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RandomGen|ALT_INV_lfsr[3]~DUPLICATE_q\,
	datac => \RandomGen|ALT_INV_lfsr[1]~DUPLICATE_q\,
	datae => \RandomGen|ALT_INV_lfsr\(0),
	dataf => \RandomGen|ALT_INV_lfsr[2]~DUPLICATE_q\,
	combout => \seg_decoder0|Mux3~0_combout\);

-- Location: LABCELL_X24_Y1_N39
\seg_decoder0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder0|Mux2~0_combout\ = ( !\RandomGen|lfsr\(0) & ( \RandomGen|lfsr[2]~DUPLICATE_q\ ) ) # ( \RandomGen|lfsr\(0) & ( !\RandomGen|lfsr[2]~DUPLICATE_q\ & ( (!\RandomGen|lfsr[1]~DUPLICATE_q\) # (!\RandomGen|lfsr[3]~DUPLICATE_q\) ) ) ) # ( 
-- !\RandomGen|lfsr\(0) & ( !\RandomGen|lfsr[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110101111101011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RandomGen|ALT_INV_lfsr[1]~DUPLICATE_q\,
	datac => \RandomGen|ALT_INV_lfsr[3]~DUPLICATE_q\,
	datae => \RandomGen|ALT_INV_lfsr\(0),
	dataf => \RandomGen|ALT_INV_lfsr[2]~DUPLICATE_q\,
	combout => \seg_decoder0|Mux2~0_combout\);

-- Location: LABCELL_X24_Y1_N54
\seg_decoder0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder0|Mux1~0_combout\ = ( \RandomGen|lfsr\(0) & ( \RandomGen|lfsr[2]~DUPLICATE_q\ & ( (\RandomGen|lfsr[3]~DUPLICATE_q\ & \RandomGen|lfsr[1]~DUPLICATE_q\) ) ) ) # ( !\RandomGen|lfsr\(0) & ( \RandomGen|lfsr[2]~DUPLICATE_q\ & ( 
-- (\RandomGen|lfsr[1]~DUPLICATE_q\) # (\RandomGen|lfsr[3]~DUPLICATE_q\) ) ) ) # ( \RandomGen|lfsr\(0) & ( !\RandomGen|lfsr[2]~DUPLICATE_q\ & ( !\RandomGen|lfsr[3]~DUPLICATE_q\ ) ) ) # ( !\RandomGen|lfsr\(0) & ( !\RandomGen|lfsr[2]~DUPLICATE_q\ & ( 
-- (!\RandomGen|lfsr[3]~DUPLICATE_q\) # (\RandomGen|lfsr[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011001100110000111111001111110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RandomGen|ALT_INV_lfsr[3]~DUPLICATE_q\,
	datac => \RandomGen|ALT_INV_lfsr[1]~DUPLICATE_q\,
	datae => \RandomGen|ALT_INV_lfsr\(0),
	dataf => \RandomGen|ALT_INV_lfsr[2]~DUPLICATE_q\,
	combout => \seg_decoder0|Mux1~0_combout\);

-- Location: LABCELL_X24_Y1_N0
\seg_decoder0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg_decoder0|Mux0~0_combout\ = ( \RandomGen|lfsr\(0) & ( \RandomGen|lfsr[2]~DUPLICATE_q\ & ( (!\RandomGen|lfsr[3]~DUPLICATE_q\) # (\RandomGen|lfsr[1]~DUPLICATE_q\) ) ) ) # ( !\RandomGen|lfsr\(0) & ( \RandomGen|lfsr[2]~DUPLICATE_q\ & ( 
-- !\RandomGen|lfsr[3]~DUPLICATE_q\ $ (\RandomGen|lfsr[1]~DUPLICATE_q\) ) ) ) # ( \RandomGen|lfsr\(0) & ( !\RandomGen|lfsr[2]~DUPLICATE_q\ & ( \RandomGen|lfsr[3]~DUPLICATE_q\ ) ) ) # ( !\RandomGen|lfsr\(0) & ( !\RandomGen|lfsr[2]~DUPLICATE_q\ & ( 
-- (\RandomGen|lfsr[3]~DUPLICATE_q\ & !\RandomGen|lfsr[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100110011001111000011110000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RandomGen|ALT_INV_lfsr[3]~DUPLICATE_q\,
	datac => \RandomGen|ALT_INV_lfsr[1]~DUPLICATE_q\,
	datae => \RandomGen|ALT_INV_lfsr\(0),
	dataf => \RandomGen|ALT_INV_lfsr[2]~DUPLICATE_q\,
	combout => \seg_decoder0|Mux0~0_combout\);

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

-- Location: IOIBUF_X34_Y81_N58
\rand_num[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rand_num(0),
	o => \rand_num[0]~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\rand_num[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rand_num(1),
	o => \rand_num[1]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\rand_num[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rand_num(2),
	o => \rand_num[2]~input_o\);

-- Location: IOIBUF_X78_Y0_N35
\rand_num[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rand_num(3),
	o => \rand_num[3]~input_o\);

-- Location: LABCELL_X48_Y8_N3
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


