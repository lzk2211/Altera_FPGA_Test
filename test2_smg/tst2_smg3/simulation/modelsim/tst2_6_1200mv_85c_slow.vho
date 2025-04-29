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

-- DATE "05/20/2022 20:35:07"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cnt_time IS
    PORT (
	nreset : IN std_logic;
	clk : IN std_logic;
	count_sec : BUFFER std_logic_vector(3 DOWNTO 0);
	LED8s : BUFFER std_logic_vector(7 DOWNTO 0);
	SEL : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END cnt_time;

-- Design Ports Information
-- count_sec[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_sec[1]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_sec[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_sec[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[1]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[3]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[4]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[7]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nreset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cnt_time IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_nreset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_count_sec : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LED8s : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SEL : std_logic_vector(2 DOWNTO 0);
SIGNAL \nreset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count_sec[0]~output_o\ : std_logic;
SIGNAL \count_sec[1]~output_o\ : std_logic;
SIGNAL \count_sec[2]~output_o\ : std_logic;
SIGNAL \count_sec[3]~output_o\ : std_logic;
SIGNAL \LED8s[0]~output_o\ : std_logic;
SIGNAL \LED8s[1]~output_o\ : std_logic;
SIGNAL \LED8s[2]~output_o\ : std_logic;
SIGNAL \LED8s[3]~output_o\ : std_logic;
SIGNAL \LED8s[4]~output_o\ : std_logic;
SIGNAL \LED8s[5]~output_o\ : std_logic;
SIGNAL \LED8s[6]~output_o\ : std_logic;
SIGNAL \LED8s[7]~output_o\ : std_logic;
SIGNAL \SEL[0]~output_o\ : std_logic;
SIGNAL \SEL[1]~output_o\ : std_logic;
SIGNAL \SEL[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \nreset~input_o\ : std_logic;
SIGNAL \nreset~inputclkctrl_outclk\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \LED8s~0_combout\ : std_logic;
SIGNAL \LED8s~1_combout\ : std_logic;
SIGNAL \LED8s~2_combout\ : std_logic;
SIGNAL \LED8s~3_combout\ : std_logic;
SIGNAL \LED8s~4_combout\ : std_logic;
SIGNAL \LED8s~5_combout\ : std_logic;
SIGNAL \LED8s~6_combout\ : std_logic;
SIGNAL \SE[0]~2_combout\ : std_logic;
SIGNAL \SE[1]~0_combout\ : std_logic;
SIGNAL \SE[2]~1_combout\ : std_logic;
SIGNAL count : std_logic_vector(3 DOWNTO 0);
SIGNAL SE : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_LED8s~3_combout\ : std_logic;
SIGNAL \ALT_INV_LED8s~1_combout\ : std_logic;

BEGIN

ww_nreset <= nreset;
ww_clk <= clk;
count_sec <= ww_count_sec;
LED8s <= ww_LED8s;
SEL <= ww_SEL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\nreset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \nreset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_LED8s~3_combout\ <= NOT \LED8s~3_combout\;
\ALT_INV_LED8s~1_combout\ <= NOT \LED8s~1_combout\;

-- Location: IOOBUF_X24_Y0_N2
\count_sec[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(0),
	devoe => ww_devoe,
	o => \count_sec[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\count_sec[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(1),
	devoe => ww_devoe,
	o => \count_sec[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\count_sec[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(2),
	devoe => ww_devoe,
	o => \count_sec[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\count_sec[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(3),
	devoe => ww_devoe,
	o => \count_sec[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\LED8s[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED8s~0_combout\,
	devoe => ww_devoe,
	o => \LED8s[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\LED8s[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LED8s~1_combout\,
	devoe => ww_devoe,
	o => \LED8s[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\LED8s[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED8s~2_combout\,
	devoe => ww_devoe,
	o => \LED8s[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\LED8s[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LED8s~3_combout\,
	devoe => ww_devoe,
	o => \LED8s[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\LED8s[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED8s~4_combout\,
	devoe => ww_devoe,
	o => \LED8s[4]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\LED8s[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED8s~5_combout\,
	devoe => ww_devoe,
	o => \LED8s[5]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\LED8s[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED8s~6_combout\,
	devoe => ww_devoe,
	o => \LED8s[6]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\LED8s[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED8s[7]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\SEL[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => SE(0),
	devoe => ww_devoe,
	o => \SEL[0]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\SEL[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => SE(1),
	devoe => ww_devoe,
	o => \SEL[1]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\SEL[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => SE(2),
	devoe => ww_devoe,
	o => \SEL[2]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X23_Y1_N18
\count~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (!count(3) & (count(1) $ (count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datac => count(1),
	datad => count(0),
	combout => \count~1_combout\);

-- Location: IOIBUF_X16_Y0_N22
\nreset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nreset,
	o => \nreset~input_o\);

-- Location: CLKCTRL_G19
\nreset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \nreset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \nreset~inputclkctrl_outclk\);

-- Location: FF_X23_Y1_N19
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~1_combout\,
	clrn => \nreset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X23_Y1_N12
\count~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (!count(3) & (count(2) $ (((count(0) & count(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(0),
	datac => count(2),
	datad => count(1),
	combout => \count~2_combout\);

-- Location: FF_X23_Y1_N13
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~2_combout\,
	clrn => \nreset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X23_Y1_N26
\count~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count~3_combout\ = (count(2) & (count(0) & (!count(3) & count(1)))) # (!count(2) & (!count(0) & (count(3) & !count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datac => count(3),
	datad => count(1),
	combout => \count~3_combout\);

-- Location: FF_X23_Y1_N27
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~3_combout\,
	clrn => \nreset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X23_Y1_N16
\count~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (!count(0) & (((!count(1) & !count(2))) # (!count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(1),
	datac => count(0),
	datad => count(2),
	combout => \count~0_combout\);

-- Location: FF_X23_Y1_N17
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~0_combout\,
	clrn => \nreset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X23_Y1_N20
\LED8s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LED8s~0_combout\ = (count(1) & (((!count(3))))) # (!count(1) & (count(2) $ (((count(3)) # (!count(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datac => count(3),
	datad => count(1),
	combout => \LED8s~0_combout\);

-- Location: LCCOMB_X23_Y1_N6
\LED8s~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LED8s~1_combout\ = (count(2) & ((count(3)) # (count(0) $ (count(1))))) # (!count(2) & (((count(3) & count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datac => count(3),
	datad => count(1),
	combout => \LED8s~1_combout\);

-- Location: LCCOMB_X23_Y1_N8
\LED8s~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LED8s~2_combout\ = (count(2) & (((!count(3))))) # (!count(2) & (((count(0) & !count(3))) # (!count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datac => count(3),
	datad => count(1),
	combout => \LED8s~2_combout\);

-- Location: LCCOMB_X23_Y1_N30
\LED8s~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LED8s~3_combout\ = (count(1) & ((count(3)) # ((count(2) & count(0))))) # (!count(1) & (count(2) $ (((count(0) & !count(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datac => count(3),
	datad => count(1),
	combout => \LED8s~3_combout\);

-- Location: LCCOMB_X23_Y1_N24
\LED8s~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LED8s~4_combout\ = (!count(0) & ((count(1) & ((!count(3)))) # (!count(1) & (!count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datac => count(3),
	datad => count(1),
	combout => \LED8s~4_combout\);

-- Location: LCCOMB_X23_Y1_N14
\LED8s~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LED8s~5_combout\ = (count(2) & (!count(3) & ((!count(1)) # (!count(0))))) # (!count(2) & (!count(1) & ((count(3)) # (!count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datac => count(3),
	datad => count(1),
	combout => \LED8s~5_combout\);

-- Location: LCCOMB_X23_Y1_N28
\LED8s~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LED8s~6_combout\ = (count(2) & (!count(3) & ((!count(1)) # (!count(0))))) # (!count(2) & ((count(3) $ (count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datac => count(3),
	datad => count(1),
	combout => \LED8s~6_combout\);

-- Location: LCCOMB_X12_Y30_N0
\SE[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SE[0]~2_combout\ = !SE(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SE(0),
	combout => \SE[0]~2_combout\);

-- Location: FF_X12_Y30_N1
\SE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SE[0]~2_combout\,
	clrn => \nreset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SE(0));

-- Location: LCCOMB_X12_Y30_N6
\SE[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SE[1]~0_combout\ = SE(1) $ (SE(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SE(1),
	datad => SE(0),
	combout => \SE[1]~0_combout\);

-- Location: FF_X12_Y30_N7
\SE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SE[1]~0_combout\,
	clrn => \nreset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SE(1));

-- Location: LCCOMB_X12_Y30_N12
\SE[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SE[2]~1_combout\ = SE(2) $ (((SE(1) & SE(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SE(1),
	datac => SE(2),
	datad => SE(0),
	combout => \SE[2]~1_combout\);

-- Location: FF_X12_Y30_N13
\SE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SE[2]~1_combout\,
	clrn => \nreset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SE(2));

ww_count_sec(0) <= \count_sec[0]~output_o\;

ww_count_sec(1) <= \count_sec[1]~output_o\;

ww_count_sec(2) <= \count_sec[2]~output_o\;

ww_count_sec(3) <= \count_sec[3]~output_o\;

ww_LED8s(0) <= \LED8s[0]~output_o\;

ww_LED8s(1) <= \LED8s[1]~output_o\;

ww_LED8s(2) <= \LED8s[2]~output_o\;

ww_LED8s(3) <= \LED8s[3]~output_o\;

ww_LED8s(4) <= \LED8s[4]~output_o\;

ww_LED8s(5) <= \LED8s[5]~output_o\;

ww_LED8s(6) <= \LED8s[6]~output_o\;

ww_LED8s(7) <= \LED8s[7]~output_o\;

ww_SEL(0) <= \SEL[0]~output_o\;

ww_SEL(1) <= \SEL[1]~output_o\;

ww_SEL(2) <= \SEL[2]~output_o\;
END structure;


