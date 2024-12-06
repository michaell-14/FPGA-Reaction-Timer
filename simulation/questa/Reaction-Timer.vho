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

-- DATE "12/06/2024 03:42:45"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SegDecoder IS
    PORT (
	D : IN std_logic_vector(3 DOWNTO 0);
	Y : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END SegDecoder;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SegDecoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_D[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[3]~input_o\ : std_logic;

BEGIN

ww_D <= D;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_D[0]~input_o\ <= NOT \D[0]~input_o\;
\ALT_INV_D[1]~input_o\ <= NOT \D[1]~input_o\;
\ALT_INV_D[2]~input_o\ <= NOT \D[2]~input_o\;
\ALT_INV_D[3]~input_o\ <= NOT \D[3]~input_o\;

-- Location: IOOBUF_X89_Y25_N39
\Y[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(0));

-- Location: IOOBUF_X89_Y23_N39
\Y[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(1));

-- Location: IOOBUF_X89_Y21_N39
\Y[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(2));

-- Location: IOOBUF_X89_Y25_N22
\Y[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(3));

-- Location: IOOBUF_X89_Y25_N56
\Y[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(4));

-- Location: IOOBUF_X89_Y23_N56
\Y[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(5));

-- Location: IOOBUF_X89_Y23_N5
\Y[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(6));

-- Location: IOIBUF_X89_Y21_N4
\D[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: IOIBUF_X89_Y21_N21
\D[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\D[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: IOIBUF_X89_Y23_N21
\D[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: LABCELL_X88_Y23_N0
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \D[0]~input_o\ & ( \D[2]~input_o\ & ( \D[3]~input_o\ ) ) ) # ( !\D[0]~input_o\ & ( \D[2]~input_o\ & ( (!\D[1]~input_o\) # (\D[3]~input_o\) ) ) ) # ( \D[0]~input_o\ & ( !\D[2]~input_o\ & ( !\D[1]~input_o\ $ (\D[3]~input_o\) ) ) ) # ( 
-- !\D[0]~input_o\ & ( !\D[2]~input_o\ & ( (\D[1]~input_o\ & \D[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110000111100001111001111110011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D[1]~input_o\,
	datac => \ALT_INV_D[3]~input_o\,
	datae => \ALT_INV_D[0]~input_o\,
	dataf => \ALT_INV_D[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X88_Y23_N9
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \D[0]~input_o\ & ( \D[2]~input_o\ & ( (!\D[1]~input_o\) # (\D[3]~input_o\) ) ) ) # ( !\D[0]~input_o\ & ( \D[2]~input_o\ & ( (\D[1]~input_o\) # (\D[3]~input_o\) ) ) ) # ( \D[0]~input_o\ & ( !\D[2]~input_o\ & ( (\D[3]~input_o\ & 
-- \D[1]~input_o\) ) ) ) # ( !\D[0]~input_o\ & ( !\D[2]~input_o\ & ( (\D[3]~input_o\ & \D[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101011111010111111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D[3]~input_o\,
	datac => \ALT_INV_D[1]~input_o\,
	datae => \ALT_INV_D[0]~input_o\,
	dataf => \ALT_INV_D[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X88_Y23_N42
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \D[0]~input_o\ & ( \D[2]~input_o\ & ( \D[3]~input_o\ ) ) ) # ( !\D[0]~input_o\ & ( \D[2]~input_o\ & ( \D[3]~input_o\ ) ) ) # ( \D[0]~input_o\ & ( !\D[2]~input_o\ & ( (\D[1]~input_o\ & \D[3]~input_o\) ) ) ) # ( !\D[0]~input_o\ & ( 
-- !\D[2]~input_o\ & ( \D[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000110000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D[1]~input_o\,
	datac => \ALT_INV_D[3]~input_o\,
	datae => \ALT_INV_D[0]~input_o\,
	dataf => \ALT_INV_D[2]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X88_Y23_N51
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \D[0]~input_o\ & ( \D[2]~input_o\ & ( (\D[1]~input_o\) # (\D[3]~input_o\) ) ) ) # ( !\D[0]~input_o\ & ( \D[2]~input_o\ & ( (!\D[1]~input_o\) # (\D[3]~input_o\) ) ) ) # ( \D[0]~input_o\ & ( !\D[2]~input_o\ & ( (!\D[1]~input_o\) # 
-- (\D[3]~input_o\) ) ) ) # ( !\D[0]~input_o\ & ( !\D[2]~input_o\ & ( (\D[3]~input_o\ & \D[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010111110101111101010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D[3]~input_o\,
	datac => \ALT_INV_D[1]~input_o\,
	datae => \ALT_INV_D[0]~input_o\,
	dataf => \ALT_INV_D[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X88_Y23_N54
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \D[0]~input_o\ & ( \D[2]~input_o\ ) ) # ( !\D[0]~input_o\ & ( \D[2]~input_o\ & ( (!\D[1]~input_o\) # (\D[3]~input_o\) ) ) ) # ( \D[0]~input_o\ & ( !\D[2]~input_o\ ) ) # ( !\D[0]~input_o\ & ( !\D[2]~input_o\ & ( (\D[1]~input_o\ & 
-- \D[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111111111111111001111110011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D[1]~input_o\,
	datac => \ALT_INV_D[3]~input_o\,
	datae => \ALT_INV_D[0]~input_o\,
	dataf => \ALT_INV_D[2]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X88_Y23_N33
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \D[0]~input_o\ & ( \D[2]~input_o\ & ( (\D[1]~input_o\) # (\D[3]~input_o\) ) ) ) # ( !\D[0]~input_o\ & ( \D[2]~input_o\ & ( \D[3]~input_o\ ) ) ) # ( \D[0]~input_o\ & ( !\D[2]~input_o\ & ( (!\D[3]~input_o\) # (\D[1]~input_o\) ) ) ) # ( 
-- !\D[0]~input_o\ & ( !\D[2]~input_o\ & ( \D[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101011111010111101010101010101010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D[3]~input_o\,
	datac => \ALT_INV_D[1]~input_o\,
	datae => \ALT_INV_D[0]~input_o\,
	dataf => \ALT_INV_D[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X88_Y23_N36
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \D[0]~input_o\ & ( \D[2]~input_o\ & ( (!\D[1]~input_o\ & !\D[3]~input_o\) ) ) ) # ( !\D[0]~input_o\ & ( \D[2]~input_o\ & ( !\D[3]~input_o\ ) ) ) # ( \D[0]~input_o\ & ( !\D[2]~input_o\ & ( !\D[1]~input_o\ $ (!\D[3]~input_o\) ) ) ) # ( 
-- !\D[0]~input_o\ & ( !\D[2]~input_o\ & ( !\D[1]~input_o\ $ (!\D[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011110000111100001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D[1]~input_o\,
	datac => \ALT_INV_D[3]~input_o\,
	datae => \ALT_INV_D[0]~input_o\,
	dataf => \ALT_INV_D[2]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X35_Y27_N0
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


