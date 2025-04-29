-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "05/05/2022 07:22:31"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	tst1_38 IS
    PORT (
	Y1 : OUT std_logic;
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	Y2 : OUT std_logic;
	Y4 : OUT std_logic;
	Y3 : OUT std_logic;
	Y5 : OUT std_logic;
	Y6 : OUT std_logic;
	Y7 : OUT std_logic;
	Y0 : OUT std_logic
	);
END tst1_38;

-- Design Ports Information
-- Y1	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y2	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y4	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y3	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y5	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y6	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y7	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y0	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tst1_38 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Y1 : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_Y2 : std_logic;
SIGNAL ww_Y4 : std_logic;
SIGNAL ww_Y3 : std_logic;
SIGNAL ww_Y5 : std_logic;
SIGNAL ww_Y6 : std_logic;
SIGNAL ww_Y7 : std_logic;
SIGNAL ww_Y0 : std_logic;
SIGNAL \Y1~output_o\ : std_logic;
SIGNAL \Y2~output_o\ : std_logic;
SIGNAL \Y4~output_o\ : std_logic;
SIGNAL \Y3~output_o\ : std_logic;
SIGNAL \Y5~output_o\ : std_logic;
SIGNAL \Y6~output_o\ : std_logic;
SIGNAL \Y7~output_o\ : std_logic;
SIGNAL \Y0~output_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \inst|15~0_combout\ : std_logic;
SIGNAL \inst|15~1_combout\ : std_logic;
SIGNAL \inst|15~2_combout\ : std_logic;
SIGNAL \inst|15~3_combout\ : std_logic;
SIGNAL \inst|15~4_combout\ : std_logic;
SIGNAL \inst|15~5_combout\ : std_logic;
SIGNAL \inst|15~6_combout\ : std_logic;
SIGNAL \inst|15~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~0_combout\ : std_logic;

BEGIN

Y1 <= ww_Y1;
ww_a <= a;
ww_b <= b;
ww_c <= c;
Y2 <= ww_Y2;
Y4 <= ww_Y4;
Y3 <= ww_Y3;
Y5 <= ww_Y5;
Y6 <= ww_Y6;
Y7 <= ww_Y7;
Y0 <= ww_Y0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_15~7_combout\ <= NOT \inst|15~7_combout\;
\inst|ALT_INV_15~6_combout\ <= NOT \inst|15~6_combout\;
\inst|ALT_INV_15~5_combout\ <= NOT \inst|15~5_combout\;
\inst|ALT_INV_15~4_combout\ <= NOT \inst|15~4_combout\;
\inst|ALT_INV_15~3_combout\ <= NOT \inst|15~3_combout\;
\inst|ALT_INV_15~2_combout\ <= NOT \inst|15~2_combout\;
\inst|ALT_INV_15~1_combout\ <= NOT \inst|15~1_combout\;
\inst|ALT_INV_15~0_combout\ <= NOT \inst|15~0_combout\;

-- Location: IOOBUF_X14_Y0_N2
\Y1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~0_combout\,
	devoe => ww_devoe,
	o => \Y1~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\Y2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~1_combout\,
	devoe => ww_devoe,
	o => \Y2~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\Y4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~2_combout\,
	devoe => ww_devoe,
	o => \Y4~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\Y3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~3_combout\,
	devoe => ww_devoe,
	o => \Y3~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\Y5~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~4_combout\,
	devoe => ww_devoe,
	o => \Y5~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\Y6~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~5_combout\,
	devoe => ww_devoe,
	o => \Y6~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\Y7~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~6_combout\,
	devoe => ww_devoe,
	o => \Y7~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\Y0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~7_combout\,
	devoe => ww_devoe,
	o => \Y0~output_o\);

-- Location: IOIBUF_X33_Y14_N1
\a~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: IOIBUF_X33_Y16_N15
\b~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\c~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: LCCOMB_X15_Y3_N16
\inst|15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|15~0_combout\ = (\a~input_o\ & (!\b~input_o\ & !\c~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datac => \b~input_o\,
	datad => \c~input_o\,
	combout => \inst|15~0_combout\);

-- Location: LCCOMB_X15_Y3_N2
\inst|15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|15~1_combout\ = (!\a~input_o\ & (\b~input_o\ & !\c~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datac => \b~input_o\,
	datad => \c~input_o\,
	combout => \inst|15~1_combout\);

-- Location: LCCOMB_X15_Y3_N4
\inst|15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|15~2_combout\ = (!\a~input_o\ & (!\b~input_o\ & \c~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datac => \b~input_o\,
	datad => \c~input_o\,
	combout => \inst|15~2_combout\);

-- Location: LCCOMB_X15_Y3_N30
\inst|15~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|15~3_combout\ = (\a~input_o\ & (\b~input_o\ & !\c~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datac => \b~input_o\,
	datad => \c~input_o\,
	combout => \inst|15~3_combout\);

-- Location: LCCOMB_X15_Y3_N24
\inst|15~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|15~4_combout\ = (\a~input_o\ & (!\b~input_o\ & \c~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datac => \b~input_o\,
	datad => \c~input_o\,
	combout => \inst|15~4_combout\);

-- Location: LCCOMB_X15_Y3_N26
\inst|15~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|15~5_combout\ = (!\a~input_o\ & (\b~input_o\ & \c~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datac => \b~input_o\,
	datad => \c~input_o\,
	combout => \inst|15~5_combout\);

-- Location: LCCOMB_X15_Y3_N28
\inst|15~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|15~6_combout\ = (\a~input_o\ & (\b~input_o\ & \c~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datac => \b~input_o\,
	datad => \c~input_o\,
	combout => \inst|15~6_combout\);

-- Location: LCCOMB_X15_Y3_N22
\inst|15~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|15~7_combout\ = (!\a~input_o\ & (!\b~input_o\ & !\c~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datac => \b~input_o\,
	datad => \c~input_o\,
	combout => \inst|15~7_combout\);

ww_Y1 <= \Y1~output_o\;

ww_Y2 <= \Y2~output_o\;

ww_Y4 <= \Y4~output_o\;

ww_Y3 <= \Y3~output_o\;

ww_Y5 <= \Y5~output_o\;

ww_Y6 <= \Y6~output_o\;

ww_Y7 <= \Y7~output_o\;

ww_Y0 <= \Y0~output_o\;
END structure;


