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

-- DATE "05/16/2022 15:50:52"

-- 
-- Device: Altera EP4CE40F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	switch_scoure IS
    PORT (
	sys_clk : IN std_logic;
	test_clk : IN std_logic;
	key : IN std_logic;
	output : BUFFER std_logic
	);
END switch_scoure;

-- Design Ports Information
-- output	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_clk	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_clk	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF switch_scoure IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sys_clk : std_logic;
SIGNAL ww_test_clk : std_logic;
SIGNAL ww_key : std_logic;
SIGNAL ww_output : std_logic;
SIGNAL \output~output_o\ : std_logic;
SIGNAL \sys_clk~input_o\ : std_logic;
SIGNAL \test_clk~input_o\ : std_logic;
SIGNAL \key~input_o\ : std_logic;
SIGNAL \output~0_combout\ : std_logic;

BEGIN

ww_sys_clk <= sys_clk;
ww_test_clk <= test_clk;
ww_key <= key;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y7_N9
\output~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~0_combout\,
	devoe => ww_devoe,
	o => \output~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\sys_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_clk,
	o => \sys_clk~input_o\);

-- Location: IOIBUF_X0_Y15_N22
\test_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_test_clk,
	o => \test_clk~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\key~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key,
	o => \key~input_o\);

-- Location: LCCOMB_X1_Y15_N0
\output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~0_combout\ = (\key~input_o\ & (\sys_clk~input_o\)) # (!\key~input_o\ & ((\test_clk~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_clk~input_o\,
	datab => \test_clk~input_o\,
	datac => \key~input_o\,
	combout => \output~0_combout\);

ww_output <= \output~output_o\;
END structure;


