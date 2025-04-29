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

-- DATE "05/20/2022 20:43:46"

-- 
-- Device: Altera EP4CE40F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	tst2 IS
    PORT (
	count : OUT std_logic_vector(3 DOWNTO 0);
	rst : IN std_logic;
	sys_clk : IN std_logic;
	LED8s : OUT std_logic_vector(7 DOWNTO 0);
	SEL : OUT std_logic_vector(2 DOWNTO 0)
	);
END tst2;

-- Design Ports Information
-- count[3]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[7]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[5]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[4]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[0]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[2]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[1]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_clk	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tst2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_count : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rst : std_logic;
SIGNAL ww_sys_clk : std_logic;
SIGNAL ww_LED8s : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SEL : std_logic_vector(2 DOWNTO 0);
SIGNAL \sys_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[3]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \LED8s[7]~output_o\ : std_logic;
SIGNAL \LED8s[6]~output_o\ : std_logic;
SIGNAL \LED8s[5]~output_o\ : std_logic;
SIGNAL \LED8s[4]~output_o\ : std_logic;
SIGNAL \LED8s[3]~output_o\ : std_logic;
SIGNAL \LED8s[2]~output_o\ : std_logic;
SIGNAL \LED8s[1]~output_o\ : std_logic;
SIGNAL \LED8s[0]~output_o\ : std_logic;
SIGNAL \SEL[2]~output_o\ : std_logic;
SIGNAL \SEL[1]~output_o\ : std_logic;
SIGNAL \SEL[0]~output_o\ : std_logic;
SIGNAL \sys_clk~input_o\ : std_logic;
SIGNAL \sys_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt|count~2_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt|count~1_combout\ : std_logic;
SIGNAL \cnt|count~3_combout\ : std_logic;
SIGNAL \cnt|count~0_combout\ : std_logic;
SIGNAL \cnt|LED8s[6]~0_combout\ : std_logic;
SIGNAL \cnt|LED8s[5]~1_combout\ : std_logic;
SIGNAL \cnt|LED8s[4]~2_combout\ : std_logic;
SIGNAL \cnt|LED8s[3]~3_combout\ : std_logic;
SIGNAL \cnt|LED8s[2]~4_combout\ : std_logic;
SIGNAL \cnt|LED8s[1]~5_combout\ : std_logic;
SIGNAL \cnt|LED8s[0]~6_combout\ : std_logic;
SIGNAL \cnt|SE[0]~2_combout\ : std_logic;
SIGNAL \cnt|SE[1]~1_combout\ : std_logic;
SIGNAL \cnt|SE[2]~0_combout\ : std_logic;
SIGNAL \cnt|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cnt|SE\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cnt|ALT_INV_LED8s[1]~5_combout\ : std_logic;
SIGNAL \cnt|ALT_INV_LED8s[3]~3_combout\ : std_logic;

BEGIN

count <= ww_count;
ww_rst <= rst;
ww_sys_clk <= sys_clk;
LED8s <= ww_LED8s;
SEL <= ww_SEL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sys_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sys_clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\cnt|ALT_INV_LED8s[1]~5_combout\ <= NOT \cnt|LED8s[1]~5_combout\;
\cnt|ALT_INV_LED8s[3]~3_combout\ <= NOT \cnt|LED8s[3]~3_combout\;

-- Location: IOOBUF_X67_Y11_N9
\count[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|count\(3),
	devoe => ww_devoe,
	o => \count[3]~output_o\);

-- Location: IOOBUF_X67_Y12_N23
\count[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|count\(2),
	devoe => ww_devoe,
	o => \count[2]~output_o\);

-- Location: IOOBUF_X67_Y11_N23
\count[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|count\(1),
	devoe => ww_devoe,
	o => \count[1]~output_o\);

-- Location: IOOBUF_X67_Y11_N2
\count[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|count\(0),
	devoe => ww_devoe,
	o => \count[0]~output_o\);

-- Location: IOOBUF_X45_Y0_N2
\LED8s[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED8s[7]~output_o\);

-- Location: IOOBUF_X65_Y0_N30
\LED8s[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|LED8s[6]~0_combout\,
	devoe => ww_devoe,
	o => \LED8s[6]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\LED8s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|LED8s[5]~1_combout\,
	devoe => ww_devoe,
	o => \LED8s[5]~output_o\);

-- Location: IOOBUF_X67_Y9_N9
\LED8s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|LED8s[4]~2_combout\,
	devoe => ww_devoe,
	o => \LED8s[4]~output_o\);

-- Location: IOOBUF_X67_Y13_N16
\LED8s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|ALT_INV_LED8s[3]~3_combout\,
	devoe => ww_devoe,
	o => \LED8s[3]~output_o\);

-- Location: IOOBUF_X67_Y36_N16
\LED8s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|LED8s[2]~4_combout\,
	devoe => ww_devoe,
	o => \LED8s[2]~output_o\);

-- Location: IOOBUF_X61_Y43_N9
\LED8s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|ALT_INV_LED8s[1]~5_combout\,
	devoe => ww_devoe,
	o => \LED8s[1]~output_o\);

-- Location: IOOBUF_X61_Y43_N2
\LED8s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|LED8s[0]~6_combout\,
	devoe => ww_devoe,
	o => \LED8s[0]~output_o\);

-- Location: IOOBUF_X67_Y17_N23
\SEL[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|SE\(2),
	devoe => ww_devoe,
	o => \SEL[2]~output_o\);

-- Location: IOOBUF_X67_Y10_N16
\SEL[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|SE\(1),
	devoe => ww_devoe,
	o => \SEL[1]~output_o\);

-- Location: IOOBUF_X63_Y0_N2
\SEL[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|SE\(0),
	devoe => ww_devoe,
	o => \SEL[0]~output_o\);

-- Location: IOIBUF_X0_Y21_N8
\sys_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_clk,
	o => \sys_clk~input_o\);

-- Location: CLKCTRL_G2
\sys_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sys_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sys_clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X66_Y11_N0
\cnt|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt|count~2_combout\ = (!\cnt|count\(3) & (\cnt|count\(1) $ (\cnt|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt|count\(3),
	datac => \cnt|count\(1),
	datad => \cnt|count\(0),
	combout => \cnt|count~2_combout\);

-- Location: IOIBUF_X34_Y43_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G12
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X66_Y11_N1
\cnt|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt|count~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|count\(1));

-- Location: LCCOMB_X66_Y11_N18
\cnt|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt|count~1_combout\ = (!\cnt|count\(3) & (\cnt|count\(2) $ (((\cnt|count\(0) & \cnt|count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|count\(0),
	datab => \cnt|count\(3),
	datac => \cnt|count\(2),
	datad => \cnt|count\(1),
	combout => \cnt|count~1_combout\);

-- Location: FF_X66_Y11_N19
\cnt|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt|count~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|count\(2));

-- Location: LCCOMB_X66_Y11_N6
\cnt|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt|count~3_combout\ = (!\cnt|count\(0) & (((!\cnt|count\(2) & !\cnt|count\(1))) # (!\cnt|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|count\(3),
	datab => \cnt|count\(2),
	datac => \cnt|count\(0),
	datad => \cnt|count\(1),
	combout => \cnt|count~3_combout\);

-- Location: FF_X66_Y11_N7
\cnt|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt|count~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|count\(0));

-- Location: LCCOMB_X66_Y11_N28
\cnt|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt|count~0_combout\ = (\cnt|count\(0) & (\cnt|count\(1) & (!\cnt|count\(3) & \cnt|count\(2)))) # (!\cnt|count\(0) & (!\cnt|count\(1) & (\cnt|count\(3) & !\cnt|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|count\(0),
	datab => \cnt|count\(1),
	datac => \cnt|count\(3),
	datad => \cnt|count\(2),
	combout => \cnt|count~0_combout\);

-- Location: FF_X66_Y11_N29
\cnt|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt|count~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|count\(3));

-- Location: LCCOMB_X66_Y11_N24
\cnt|LED8s[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt|LED8s[6]~0_combout\ = (\cnt|count\(2) & (!\cnt|count\(3) & ((!\cnt|count\(0)) # (!\cnt|count\(1))))) # (!\cnt|count\(2) & (\cnt|count\(3) $ ((\cnt|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|count\(2),
	datab => \cnt|count\(3),
	datac => \cnt|count\(1),
	datad => \cnt|count\(0),
	combout => \cnt|LED8s[6]~0_combout\);

-- Location: LCCOMB_X66_Y11_N30
\cnt|LED8s[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt|LED8s[5]~1_combout\ = (\cnt|count\(2) & (!\cnt|count\(3) & ((!\cnt|count\(0)) # (!\cnt|count\(1))))) # (!\cnt|count\(2) & (!\cnt|count\(1) & ((\cnt|count\(3)) # (!\cnt|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|count\(2),
	datab => \cnt|count\(3),
	datac => \cnt|count\(1),
	datad => \cnt|count\(0),
	combout => \cnt|LED8s[5]~1_combout\);

-- Location: LCCOMB_X66_Y11_N16
\cnt|LED8s[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt|LED8s[4]~2_combout\ = (!\cnt|count\(0) & ((\cnt|count\(1) & ((!\cnt|count\(3)))) # (!\cnt|count\(1) & (!\cnt|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|count\(2),
	datab => \cnt|count\(3),
	datac => \cnt|count\(1),
	datad => \cnt|count\(0),
	combout => \cnt|LED8s[4]~2_combout\);

-- Location: LCCOMB_X66_Y11_N26
\cnt|LED8s[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt|LED8s[3]~3_combout\ = (\cnt|count\(1) & ((\cnt|count\(3)) # ((\cnt|count\(2) & \cnt|count\(0))))) # (!\cnt|count\(1) & (\cnt|count\(2) $ (((!\cnt|count\(3) & \cnt|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|count\(2),
	datab => \cnt|count\(3),
	datac => \cnt|count\(1),
	datad => \cnt|count\(0),
	combout => \cnt|LED8s[3]~3_combout\);

-- Location: LCCOMB_X66_Y11_N12
\cnt|LED8s[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt|LED8s[2]~4_combout\ = (\cnt|count\(2) & (!\cnt|count\(3))) # (!\cnt|count\(2) & (((!\cnt|count\(3) & \cnt|count\(0))) # (!\cnt|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|count\(2),
	datab => \cnt|count\(3),
	datac => \cnt|count\(1),
	datad => \cnt|count\(0),
	combout => \cnt|LED8s[2]~4_combout\);

-- Location: LCCOMB_X66_Y11_N10
\cnt|LED8s[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt|LED8s[1]~5_combout\ = (\cnt|count\(2) & ((\cnt|count\(3)) # (\cnt|count\(1) $ (\cnt|count\(0))))) # (!\cnt|count\(2) & (\cnt|count\(3) & (\cnt|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|count\(2),
	datab => \cnt|count\(3),
	datac => \cnt|count\(1),
	datad => \cnt|count\(0),
	combout => \cnt|LED8s[1]~5_combout\);

-- Location: LCCOMB_X66_Y11_N20
\cnt|LED8s[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt|LED8s[0]~6_combout\ = (\cnt|count\(1) & (((!\cnt|count\(3))))) # (!\cnt|count\(1) & (\cnt|count\(2) $ (((\cnt|count\(3)) # (!\cnt|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|count\(2),
	datab => \cnt|count\(3),
	datac => \cnt|count\(1),
	datad => \cnt|count\(0),
	combout => \cnt|LED8s[0]~6_combout\);

-- Location: LCCOMB_X64_Y11_N0
\cnt|SE[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt|SE[0]~2_combout\ = !\cnt|SE\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt|SE\(0),
	combout => \cnt|SE[0]~2_combout\);

-- Location: FF_X64_Y11_N1
\cnt|SE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt|SE[0]~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|SE\(0));

-- Location: LCCOMB_X64_Y11_N2
\cnt|SE[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt|SE[1]~1_combout\ = \cnt|SE\(1) $ (\cnt|SE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt|SE\(1),
	datad => \cnt|SE\(0),
	combout => \cnt|SE[1]~1_combout\);

-- Location: FF_X64_Y11_N3
\cnt|SE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt|SE[1]~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|SE\(1));

-- Location: LCCOMB_X64_Y11_N28
\cnt|SE[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt|SE[2]~0_combout\ = \cnt|SE\(2) $ (((\cnt|SE\(1) & \cnt|SE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt|SE\(1),
	datac => \cnt|SE\(2),
	datad => \cnt|SE\(0),
	combout => \cnt|SE[2]~0_combout\);

-- Location: FF_X64_Y11_N29
\cnt|SE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt|SE[2]~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|SE\(2));

ww_count(3) <= \count[3]~output_o\;

ww_count(2) <= \count[2]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(0) <= \count[0]~output_o\;

ww_LED8s(7) <= \LED8s[7]~output_o\;

ww_LED8s(6) <= \LED8s[6]~output_o\;

ww_LED8s(5) <= \LED8s[5]~output_o\;

ww_LED8s(4) <= \LED8s[4]~output_o\;

ww_LED8s(3) <= \LED8s[3]~output_o\;

ww_LED8s(2) <= \LED8s[2]~output_o\;

ww_LED8s(1) <= \LED8s[1]~output_o\;

ww_LED8s(0) <= \LED8s[0]~output_o\;

ww_SEL(2) <= \SEL[2]~output_o\;

ww_SEL(1) <= \SEL[1]~output_o\;

ww_SEL(0) <= \SEL[0]~output_o\;
END structure;


