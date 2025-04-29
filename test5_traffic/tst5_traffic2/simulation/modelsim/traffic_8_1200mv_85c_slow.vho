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

-- DATE "05/16/2022 15:02:32"

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

ENTITY 	traffic IS
    PORT (
	R1 : OUT std_logic;
	clk_1s : IN std_logic;
	clk_2s : IN std_logic;
	RST : IN std_logic;
	R2 : OUT std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic;
	G1 : OUT std_logic;
	G2 : OUT std_logic;
	LED8s : OUT std_logic_vector(7 DOWNTO 0);
	clk_ms : IN std_logic;
	LED_display : OUT std_logic_vector(3 DOWNTO 0);
	SEL : OUT std_logic_vector(2 DOWNTO 0)
	);
END traffic;

-- Design Ports Information
-- R1	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y1	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y2	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G1	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G2	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[7]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[5]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[4]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8s[0]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_display[3]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_display[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_display[1]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_display[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[2]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[1]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[0]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_2s	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_1s	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_ms	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF traffic IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_R1 : std_logic;
SIGNAL ww_clk_1s : std_logic;
SIGNAL ww_clk_2s : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_R2 : std_logic;
SIGNAL ww_Y1 : std_logic;
SIGNAL ww_Y2 : std_logic;
SIGNAL ww_G1 : std_logic;
SIGNAL ww_G2 : std_logic;
SIGNAL ww_LED8s : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk_ms : std_logic;
SIGNAL ww_LED_display : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SEL : std_logic_vector(2 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_1s~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_ms~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R1~output_o\ : std_logic;
SIGNAL \R2~output_o\ : std_logic;
SIGNAL \Y1~output_o\ : std_logic;
SIGNAL \Y2~output_o\ : std_logic;
SIGNAL \G1~output_o\ : std_logic;
SIGNAL \G2~output_o\ : std_logic;
SIGNAL \LED8s[7]~output_o\ : std_logic;
SIGNAL \LED8s[6]~output_o\ : std_logic;
SIGNAL \LED8s[5]~output_o\ : std_logic;
SIGNAL \LED8s[4]~output_o\ : std_logic;
SIGNAL \LED8s[3]~output_o\ : std_logic;
SIGNAL \LED8s[2]~output_o\ : std_logic;
SIGNAL \LED8s[1]~output_o\ : std_logic;
SIGNAL \LED8s[0]~output_o\ : std_logic;
SIGNAL \LED_display[3]~output_o\ : std_logic;
SIGNAL \LED_display[2]~output_o\ : std_logic;
SIGNAL \LED_display[1]~output_o\ : std_logic;
SIGNAL \LED_display[0]~output_o\ : std_logic;
SIGNAL \SEL[2]~output_o\ : std_logic;
SIGNAL \SEL[1]~output_o\ : std_logic;
SIGNAL \SEL[0]~output_o\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \clk_1s~input_o\ : std_logic;
SIGNAL \clk_1s~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst4|SEC_L[0]~5_combout\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst4|Add1~0_combout\ : std_logic;
SIGNAL \inst4|SEC_L~0_combout\ : std_logic;
SIGNAL \inst4|SEC_L~1_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|SEC_H[0]~5_combout\ : std_logic;
SIGNAL \inst4|SEC_H~1_combout\ : std_logic;
SIGNAL \inst4|SEC_H~2_combout\ : std_logic;
SIGNAL \inst4|SEC_H~0_combout\ : std_logic;
SIGNAL \inst4|Equal1~0_combout\ : std_logic;
SIGNAL \inst4|dir~0_combout\ : std_logic;
SIGNAL \inst4|dir~q\ : std_logic;
SIGNAL \inst4|R1~0_combout\ : std_logic;
SIGNAL \inst4|R2~0_combout\ : std_logic;
SIGNAL \inst4|process_1~0_combout\ : std_logic;
SIGNAL \clk_2s~input_o\ : std_logic;
SIGNAL \inst4|Y1~0_combout\ : std_logic;
SIGNAL \inst4|Y2~0_combout\ : std_logic;
SIGNAL \inst4|G1~2_combout\ : std_logic;
SIGNAL \inst4|G2~2_combout\ : std_logic;
SIGNAL \clk_ms~input_o\ : std_logic;
SIGNAL \clk_ms~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|SE[0]~2_combout\ : std_logic;
SIGNAL \inst2|SE[1]~1_combout\ : std_logic;
SIGNAL \inst2|SE[2]~0_combout\ : std_logic;
SIGNAL \inst2|LED8s[2]~0_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|LED8s[6]~1_combout\ : std_logic;
SIGNAL \inst2|LED8s[5]~2_combout\ : std_logic;
SIGNAL \inst2|LED8s[4]~3_combout\ : std_logic;
SIGNAL \inst2|LED8s[4]~4_combout\ : std_logic;
SIGNAL \inst2|LED8s[4]~5_combout\ : std_logic;
SIGNAL \inst2|LED8s[3]~6_combout\ : std_logic;
SIGNAL \inst2|LED8s[2]~8_combout\ : std_logic;
SIGNAL \inst2|LED8s~7_combout\ : std_logic;
SIGNAL \inst2|LED8s[2]~9_combout\ : std_logic;
SIGNAL \inst2|LED8s[2]~10_combout\ : std_logic;
SIGNAL \inst2|LED8s[2]~11_combout\ : std_logic;
SIGNAL \inst2|LED8s[1]~12_combout\ : std_logic;
SIGNAL \inst2|LED8s[0]~13_combout\ : std_logic;
SIGNAL \inst2|LED8s[0]~14_combout\ : std_logic;
SIGNAL \inst2|LED8s[0]~15_combout\ : std_logic;
SIGNAL \inst4|SEC_L\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|SEC_H\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|SE\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LED8s[1]~12_combout\ : std_logic;

BEGIN

R1 <= ww_R1;
ww_clk_1s <= clk_1s;
ww_clk_2s <= clk_2s;
ww_RST <= RST;
R2 <= ww_R2;
Y1 <= ww_Y1;
Y2 <= ww_Y2;
G1 <= ww_G1;
G2 <= ww_G2;
LED8s <= ww_LED8s;
ww_clk_ms <= clk_ms;
LED_display <= ww_LED_display;
SEL <= ww_SEL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\clk_1s~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_1s~input_o\);

\clk_ms~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_ms~input_o\);
\inst2|ALT_INV_Mux2~0_combout\ <= NOT \inst2|Mux2~0_combout\;
\inst2|ALT_INV_Mux1~0_combout\ <= NOT \inst2|Mux1~0_combout\;
\inst2|ALT_INV_Mux0~0_combout\ <= NOT \inst2|Mux0~0_combout\;
\inst2|ALT_INV_LED8s[1]~12_combout\ <= NOT \inst2|LED8s[1]~12_combout\;

-- Location: IOOBUF_X20_Y0_N16
\R1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|R1~0_combout\,
	devoe => ww_devoe,
	o => \R1~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\R2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|R2~0_combout\,
	devoe => ww_devoe,
	o => \R2~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\Y1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Y1~0_combout\,
	devoe => ww_devoe,
	o => \Y1~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\Y2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Y2~0_combout\,
	devoe => ww_devoe,
	o => \Y2~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\G1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|G1~2_combout\,
	devoe => ww_devoe,
	o => \G1~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\G2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|G2~2_combout\,
	devoe => ww_devoe,
	o => \G2~output_o\);

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
	i => \inst2|LED8s[6]~1_combout\,
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
	i => \inst2|LED8s[5]~2_combout\,
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
	i => \inst2|LED8s[4]~5_combout\,
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
	i => \inst2|LED8s[3]~6_combout\,
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
	i => \inst2|LED8s[2]~11_combout\,
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
	i => \inst2|ALT_INV_LED8s[1]~12_combout\,
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
	i => \inst2|LED8s[0]~15_combout\,
	devoe => ww_devoe,
	o => \LED8s[0]~output_o\);

-- Location: IOOBUF_X61_Y0_N23
\LED_display[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \LED_display[3]~output_o\);

-- Location: IOOBUF_X61_Y0_N9
\LED_display[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \LED_display[2]~output_o\);

-- Location: IOOBUF_X61_Y0_N2
\LED_display[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \LED_display[1]~output_o\);

-- Location: IOOBUF_X61_Y0_N30
\LED_display[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \LED_display[0]~output_o\);

-- Location: IOOBUF_X63_Y0_N2
\SEL[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|SE\(2),
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
	i => \inst2|SE\(1),
	devoe => ww_devoe,
	o => \SEL[1]~output_o\);

-- Location: IOOBUF_X67_Y17_N23
\SEL[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|SE\(0),
	devoe => ww_devoe,
	o => \SEL[0]~output_o\);

-- Location: IOIBUF_X34_Y43_N8
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: IOIBUF_X36_Y0_N15
\clk_1s~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_1s,
	o => \clk_1s~input_o\);

-- Location: CLKCTRL_G19
\clk_1s~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_1s~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_1s~inputclkctrl_outclk\);

-- Location: LCCOMB_X61_Y1_N28
\inst4|SEC_L[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|SEC_L[0]~5_combout\ = !\inst4|SEC_L\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SEC_L\(0),
	combout => \inst4|SEC_L[0]~5_combout\);

-- Location: CLKCTRL_G12
\RST~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: FF_X61_Y1_N29
\inst4|SEC_L[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~inputclkctrl_outclk\,
	d => \inst4|SEC_L[0]~5_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SEC_L\(0));

-- Location: LCCOMB_X61_Y1_N26
\inst4|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~0_combout\ = \inst4|SEC_L\(3) $ (((!\inst4|SEC_L\(1) & (!\inst4|SEC_L\(2) & !\inst4|SEC_L\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SEC_L\(1),
	datab => \inst4|SEC_L\(2),
	datac => \inst4|SEC_L\(3),
	datad => \inst4|SEC_L\(0),
	combout => \inst4|Add1~0_combout\);

-- Location: FF_X61_Y1_N27
\inst4|SEC_L[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~inputclkctrl_outclk\,
	d => \inst4|Add1~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SEC_L\(3));

-- Location: LCCOMB_X61_Y1_N20
\inst4|SEC_L~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|SEC_L~0_combout\ = (\inst4|SEC_L\(1) & (((\inst4|SEC_L\(2))))) # (!\inst4|SEC_L\(1) & ((\inst4|SEC_L\(0) & (\inst4|SEC_L\(2))) # (!\inst4|SEC_L\(0) & (!\inst4|SEC_L\(2) & \inst4|SEC_L\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SEC_L\(1),
	datab => \inst4|SEC_L\(0),
	datac => \inst4|SEC_L\(2),
	datad => \inst4|SEC_L\(3),
	combout => \inst4|SEC_L~0_combout\);

-- Location: FF_X61_Y1_N21
\inst4|SEC_L[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~inputclkctrl_outclk\,
	d => \inst4|SEC_L~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SEC_L\(2));

-- Location: LCCOMB_X61_Y1_N22
\inst4|SEC_L~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|SEC_L~1_combout\ = (\inst4|SEC_L\(0) & (((\inst4|SEC_L\(1))))) # (!\inst4|SEC_L\(0) & (!\inst4|SEC_L\(1) & ((\inst4|SEC_L\(2)) # (\inst4|SEC_L\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SEC_L\(2),
	datab => \inst4|SEC_L\(0),
	datac => \inst4|SEC_L\(1),
	datad => \inst4|SEC_L\(3),
	combout => \inst4|SEC_L~1_combout\);

-- Location: FF_X61_Y1_N23
\inst4|SEC_L[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~inputclkctrl_outclk\,
	d => \inst4|SEC_L~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SEC_L\(1));

-- Location: LCCOMB_X61_Y1_N4
\inst4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = (!\inst4|SEC_L\(1) & (!\inst4|SEC_L\(0) & (!\inst4|SEC_L\(3) & !\inst4|SEC_L\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SEC_L\(1),
	datab => \inst4|SEC_L\(0),
	datac => \inst4|SEC_L\(3),
	datad => \inst4|SEC_L\(2),
	combout => \inst4|Equal0~0_combout\);

-- Location: LCCOMB_X61_Y1_N14
\inst4|SEC_H[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|SEC_H[0]~5_combout\ = !\inst4|SEC_H\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SEC_H\(0),
	combout => \inst4|SEC_H[0]~5_combout\);

-- Location: FF_X61_Y1_N15
\inst4|SEC_H[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~inputclkctrl_outclk\,
	d => \inst4|SEC_H[0]~5_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \inst4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SEC_H\(0));

-- Location: LCCOMB_X61_Y1_N10
\inst4|SEC_H~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|SEC_H~1_combout\ = (\inst4|SEC_H\(3) & ((\inst4|SEC_H\(0)) # ((\inst4|SEC_H\(2)) # (!\inst4|SEC_H\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SEC_H\(0),
	datab => \inst4|SEC_H\(2),
	datac => \inst4|SEC_H\(3),
	datad => \inst4|SEC_H\(1),
	combout => \inst4|SEC_H~1_combout\);

-- Location: FF_X61_Y1_N11
\inst4|SEC_H[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~inputclkctrl_outclk\,
	d => \inst4|SEC_H~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \inst4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SEC_H\(3));

-- Location: LCCOMB_X61_Y1_N0
\inst4|SEC_H~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|SEC_H~2_combout\ = (\inst4|SEC_H\(0) & (((\inst4|SEC_H\(2))))) # (!\inst4|SEC_H\(0) & ((\inst4|SEC_H\(1) & (!\inst4|SEC_H\(2) & \inst4|SEC_H\(3))) # (!\inst4|SEC_H\(1) & (\inst4|SEC_H\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SEC_H\(0),
	datab => \inst4|SEC_H\(1),
	datac => \inst4|SEC_H\(2),
	datad => \inst4|SEC_H\(3),
	combout => \inst4|SEC_H~2_combout\);

-- Location: FF_X61_Y1_N1
\inst4|SEC_H[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~inputclkctrl_outclk\,
	d => \inst4|SEC_H~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \inst4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SEC_H\(2));

-- Location: LCCOMB_X61_Y1_N12
\inst4|SEC_H~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|SEC_H~0_combout\ = (\inst4|SEC_H\(0) & (((\inst4|SEC_H\(1))))) # (!\inst4|SEC_H\(0) & (((!\inst4|SEC_H\(2) & !\inst4|SEC_H\(3))) # (!\inst4|SEC_H\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SEC_H\(0),
	datab => \inst4|SEC_H\(2),
	datac => \inst4|SEC_H\(1),
	datad => \inst4|SEC_H\(3),
	combout => \inst4|SEC_H~0_combout\);

-- Location: FF_X61_Y1_N13
\inst4|SEC_H[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~inputclkctrl_outclk\,
	d => \inst4|SEC_H~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \inst4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SEC_H\(1));

-- Location: LCCOMB_X61_Y1_N16
\inst4|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal1~0_combout\ = (\inst4|SEC_H\(1) & (!\inst4|SEC_H\(2) & (!\inst4|SEC_H\(0) & !\inst4|SEC_H\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SEC_H\(1),
	datab => \inst4|SEC_H\(2),
	datac => \inst4|SEC_H\(0),
	datad => \inst4|SEC_H\(3),
	combout => \inst4|Equal1~0_combout\);

-- Location: LCCOMB_X61_Y1_N24
\inst4|dir~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|dir~0_combout\ = \inst4|dir~q\ $ (((\RST~input_o\ & (\inst4|Equal0~0_combout\ & \inst4|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \inst4|Equal0~0_combout\,
	datac => \inst4|dir~q\,
	datad => \inst4|Equal1~0_combout\,
	combout => \inst4|dir~0_combout\);

-- Location: FF_X61_Y1_N25
\inst4|dir\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~inputclkctrl_outclk\,
	d => \inst4|dir~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|dir~q\);

-- Location: LCCOMB_X22_Y1_N28
\inst4|R1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|R1~0_combout\ = (\RST~input_o\ & !\inst4|dir~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datad => \inst4|dir~q\,
	combout => \inst4|R1~0_combout\);

-- Location: LCCOMB_X22_Y1_N26
\inst4|R2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|R2~0_combout\ = (\RST~input_o\ & \inst4|dir~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datad => \inst4|dir~q\,
	combout => \inst4|R2~0_combout\);

-- Location: LCCOMB_X61_Y1_N6
\inst4|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_1~0_combout\ = (\inst4|SEC_L\(2)) # ((\inst4|SEC_L\(3)) # ((\inst4|SEC_L\(1) & \inst4|SEC_L\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SEC_L\(2),
	datab => \inst4|SEC_L\(1),
	datac => \inst4|SEC_L\(3),
	datad => \inst4|SEC_L\(0),
	combout => \inst4|process_1~0_combout\);

-- Location: IOIBUF_X22_Y0_N8
\clk_2s~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_2s,
	o => \clk_2s~input_o\);

-- Location: LCCOMB_X22_Y1_N4
\inst4|Y1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Y1~0_combout\ = (\inst4|process_1~0_combout\) # ((\clk_2s~input_o\) # ((!\inst4|R1~0_combout\) # (!\inst4|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_1~0_combout\,
	datab => \clk_2s~input_o\,
	datac => \inst4|Equal1~0_combout\,
	datad => \inst4|R1~0_combout\,
	combout => \inst4|Y1~0_combout\);

-- Location: LCCOMB_X22_Y1_N10
\inst4|Y2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Y2~0_combout\ = ((\clk_2s~input_o\) # ((\inst4|process_1~0_combout\) # (!\inst4|R2~0_combout\))) # (!\inst4|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal1~0_combout\,
	datab => \clk_2s~input_o\,
	datac => \inst4|process_1~0_combout\,
	datad => \inst4|R2~0_combout\,
	combout => \inst4|Y2~0_combout\);

-- Location: LCCOMB_X22_Y1_N24
\inst4|G1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|G1~2_combout\ = ((\inst4|dir~q\) # ((\inst4|Equal1~0_combout\ & !\inst4|process_1~0_combout\))) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal1~0_combout\,
	datab => \RST~input_o\,
	datac => \inst4|process_1~0_combout\,
	datad => \inst4|dir~q\,
	combout => \inst4|G1~2_combout\);

-- Location: LCCOMB_X22_Y1_N6
\inst4|G2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|G2~2_combout\ = (((\inst4|Equal1~0_combout\ & !\inst4|process_1~0_combout\)) # (!\inst4|dir~q\)) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal1~0_combout\,
	datab => \RST~input_o\,
	datac => \inst4|process_1~0_combout\,
	datad => \inst4|dir~q\,
	combout => \inst4|G2~2_combout\);

-- Location: IOIBUF_X36_Y0_N22
\clk_ms~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_ms,
	o => \clk_ms~input_o\);

-- Location: CLKCTRL_G18
\clk_ms~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_ms~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_ms~inputclkctrl_outclk\);

-- Location: LCCOMB_X64_Y1_N18
\inst2|SE[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|SE[0]~2_combout\ = !\inst2|SE\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|SE\(0),
	combout => \inst2|SE[0]~2_combout\);

-- Location: FF_X64_Y1_N19
\inst2|SE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ms~inputclkctrl_outclk\,
	d => \inst2|SE[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SE\(0));

-- Location: LCCOMB_X64_Y1_N10
\inst2|SE[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|SE[1]~1_combout\ = \inst2|SE\(1) $ (\inst2|SE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|SE\(1),
	datad => \inst2|SE\(0),
	combout => \inst2|SE[1]~1_combout\);

-- Location: FF_X64_Y1_N11
\inst2|SE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ms~inputclkctrl_outclk\,
	d => \inst2|SE[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SE\(1));

-- Location: LCCOMB_X64_Y1_N28
\inst2|SE[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|SE[2]~0_combout\ = \inst2|SE\(2) $ (((\inst2|SE\(1) & \inst2|SE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SE\(1),
	datac => \inst2|SE\(2),
	datad => \inst2|SE\(0),
	combout => \inst2|SE[2]~0_combout\);

-- Location: FF_X64_Y1_N29
\inst2|SE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_ms~inputclkctrl_outclk\,
	d => \inst2|SE[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SE\(2));

-- Location: LCCOMB_X64_Y1_N8
\inst2|LED8s[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LED8s[2]~0_combout\ = (!\inst2|SE\(1) & !\inst2|SE\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|SE\(1),
	datad => \inst2|SE\(2),
	combout => \inst2|LED8s[2]~0_combout\);

-- Location: LCCOMB_X62_Y1_N10
\inst2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\inst2|LED8s[2]~0_combout\ & ((\inst2|SE\(0) & ((\inst4|SEC_H\(1)))) # (!\inst2|SE\(0) & (!\inst4|SEC_L\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SEC_L\(1),
	datab => \inst2|SE\(0),
	datac => \inst2|LED8s[2]~0_combout\,
	datad => \inst4|SEC_H\(1),
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X62_Y1_N28
\inst2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = ((\inst2|SE\(0) & ((!\inst4|SEC_H\(2)))) # (!\inst2|SE\(0) & (!\inst4|SEC_L\(2)))) # (!\inst2|LED8s[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SEC_L\(2),
	datab => \inst2|SE\(0),
	datac => \inst2|LED8s[2]~0_combout\,
	datad => \inst4|SEC_H\(2),
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X61_Y1_N18
\inst2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\inst2|LED8s[2]~0_combout\ & ((\inst2|SE\(0) & (\inst4|SEC_H\(0))) # (!\inst2|SE\(0) & ((\inst4|SEC_L\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LED8s[2]~0_combout\,
	datab => \inst2|SE\(0),
	datac => \inst4|SEC_H\(0),
	datad => \inst4|SEC_L\(0),
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X61_Y1_N8
\inst2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst2|LED8s[2]~0_combout\ & ((\inst2|SE\(0) & ((!\inst4|SEC_H\(3)))) # (!\inst2|SE\(0) & (!\inst4|SEC_L\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LED8s[2]~0_combout\,
	datab => \inst2|SE\(0),
	datac => \inst4|SEC_L\(3),
	datad => \inst4|SEC_H\(3),
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y1_N4
\inst2|LED8s[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LED8s[6]~1_combout\ = (\inst2|Mux2~0_combout\ & (\inst2|Mux1~0_combout\ $ (((\inst2|Mux0~0_combout\))))) # (!\inst2|Mux2~0_combout\ & (\inst2|Mux0~0_combout\ & ((\inst2|Mux1~0_combout\) # (!\inst2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~0_combout\,
	datab => \inst2|Mux1~0_combout\,
	datac => \inst2|Mux3~0_combout\,
	datad => \inst2|Mux0~0_combout\,
	combout => \inst2|LED8s[6]~1_combout\);

-- Location: LCCOMB_X62_Y1_N2
\inst2|LED8s[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LED8s[5]~2_combout\ = (\inst2|Mux1~0_combout\ & (\inst2|Mux2~0_combout\ & ((!\inst2|Mux0~0_combout\) # (!\inst2|Mux3~0_combout\)))) # (!\inst2|Mux1~0_combout\ & (\inst2|Mux0~0_combout\ & ((\inst2|Mux2~0_combout\) # (!\inst2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~0_combout\,
	datab => \inst2|Mux1~0_combout\,
	datac => \inst2|Mux3~0_combout\,
	datad => \inst2|Mux0~0_combout\,
	combout => \inst2|LED8s[5]~2_combout\);

-- Location: LCCOMB_X62_Y1_N16
\inst2|LED8s[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LED8s[4]~3_combout\ = (\inst2|Mux2~0_combout\ & (\inst2|Mux1~0_combout\ & (!\inst2|Mux3~0_combout\ & !\inst2|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~0_combout\,
	datab => \inst2|Mux1~0_combout\,
	datac => \inst2|Mux3~0_combout\,
	datad => \inst2|Mux0~0_combout\,
	combout => \inst2|LED8s[4]~3_combout\);

-- Location: LCCOMB_X62_Y1_N18
\inst2|LED8s[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LED8s[4]~4_combout\ = ((\inst2|SE\(0) & ((!\inst4|SEC_H\(2)))) # (!\inst2|SE\(0) & (!\inst4|SEC_L\(2)))) # (!\inst2|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~0_combout\,
	datab => \inst2|SE\(0),
	datac => \inst4|SEC_L\(2),
	datad => \inst4|SEC_H\(2),
	combout => \inst2|LED8s[4]~4_combout\);

-- Location: LCCOMB_X62_Y1_N24
\inst2|LED8s[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LED8s[4]~5_combout\ = (\inst2|LED8s[4]~3_combout\) # ((\inst2|LED8s[4]~4_combout\ & (!\inst2|Mux3~0_combout\ & \inst2|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LED8s[4]~3_combout\,
	datab => \inst2|LED8s[4]~4_combout\,
	datac => \inst2|Mux3~0_combout\,
	datad => \inst2|Mux0~0_combout\,
	combout => \inst2|LED8s[4]~5_combout\);

-- Location: LCCOMB_X62_Y1_N14
\inst2|LED8s[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LED8s[3]~6_combout\ = (\inst2|Mux2~0_combout\ & (\inst2|Mux1~0_combout\ $ (((\inst2|Mux3~0_combout\ & \inst2|Mux0~0_combout\))))) # (!\inst2|Mux2~0_combout\ & (\inst2|Mux0~0_combout\ & ((\inst2|Mux1~0_combout\) # (!\inst2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~0_combout\,
	datab => \inst2|Mux1~0_combout\,
	datac => \inst2|Mux3~0_combout\,
	datad => \inst2|Mux0~0_combout\,
	combout => \inst2|LED8s[3]~6_combout\);

-- Location: LCCOMB_X61_Y1_N30
\inst2|LED8s[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LED8s[2]~8_combout\ = (\inst2|Mux0~0_combout\ & ((\inst2|SE\(0) & ((!\inst4|SEC_H\(2)))) # (!\inst2|SE\(0) & (!\inst4|SEC_L\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~0_combout\,
	datab => \inst2|SE\(0),
	datac => \inst4|SEC_L\(2),
	datad => \inst4|SEC_H\(2),
	combout => \inst2|LED8s[2]~8_combout\);

-- Location: LCCOMB_X62_Y1_N20
\inst2|LED8s~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LED8s~7_combout\ = (\inst2|Mux1~0_combout\ & (\inst2|Mux2~0_combout\ & ((!\inst2|Mux0~0_combout\)))) # (!\inst2|Mux1~0_combout\ & (\inst2|Mux0~0_combout\ & ((\inst2|Mux3~0_combout\) # (!\inst2|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~0_combout\,
	datab => \inst2|Mux1~0_combout\,
	datac => \inst2|Mux3~0_combout\,
	datad => \inst2|Mux0~0_combout\,
	combout => \inst2|LED8s~7_combout\);

-- Location: LCCOMB_X62_Y1_N22
\inst2|LED8s[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LED8s[2]~9_combout\ = (!\inst2|Mux2~0_combout\ & (!\inst2|LED8s[2]~8_combout\ & (!\inst2|Mux3~0_combout\ & \inst2|LED8s~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~0_combout\,
	datab => \inst2|LED8s[2]~8_combout\,
	datac => \inst2|Mux3~0_combout\,
	datad => \inst2|LED8s~7_combout\,
	combout => \inst2|LED8s[2]~9_combout\);

-- Location: LCCOMB_X62_Y1_N12
\inst2|LED8s[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LED8s[2]~10_combout\ = (\inst2|Mux0~0_combout\ & ((\inst2|Mux3~0_combout\ & ((!\inst2|Mux1~0_combout\))) # (!\inst2|Mux3~0_combout\ & (\inst2|Mux2~0_combout\)))) # (!\inst2|Mux0~0_combout\ & (\inst2|Mux2~0_combout\ & (\inst2|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~0_combout\,
	datab => \inst2|Mux1~0_combout\,
	datac => \inst2|Mux3~0_combout\,
	datad => \inst2|Mux0~0_combout\,
	combout => \inst2|LED8s[2]~10_combout\);

-- Location: LCCOMB_X62_Y1_N26
\inst2|LED8s[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LED8s[2]~11_combout\ = (\inst2|LED8s[2]~9_combout\) # ((\inst2|LED8s[2]~10_combout\) # ((\inst2|Mux3~0_combout\ & \inst2|LED8s[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux3~0_combout\,
	datab => \inst2|LED8s[2]~8_combout\,
	datac => \inst2|LED8s[2]~9_combout\,
	datad => \inst2|LED8s[2]~10_combout\,
	combout => \inst2|LED8s[2]~11_combout\);

-- Location: LCCOMB_X62_Y1_N0
\inst2|LED8s[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LED8s[1]~12_combout\ = (\inst2|Mux1~0_combout\ & (!\inst2|Mux2~0_combout\ & ((!\inst2|Mux0~0_combout\)))) # (!\inst2|Mux1~0_combout\ & ((\inst2|Mux2~0_combout\ $ (!\inst2|Mux3~0_combout\)) # (!\inst2|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~0_combout\,
	datab => \inst2|Mux1~0_combout\,
	datac => \inst2|Mux3~0_combout\,
	datad => \inst2|Mux0~0_combout\,
	combout => \inst2|LED8s[1]~12_combout\);

-- Location: LCCOMB_X62_Y1_N6
\inst2|LED8s[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LED8s[0]~13_combout\ = (\inst2|Mux2~0_combout\ & (!\inst2|LED8s[2]~8_combout\ & (\inst2|Mux3~0_combout\ & \inst2|LED8s~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~0_combout\,
	datab => \inst2|LED8s[2]~8_combout\,
	datac => \inst2|Mux3~0_combout\,
	datad => \inst2|LED8s~7_combout\,
	combout => \inst2|LED8s[0]~13_combout\);

-- Location: LCCOMB_X62_Y1_N8
\inst2|LED8s[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LED8s[0]~14_combout\ = (\inst2|Mux2~0_combout\ & (\inst2|Mux1~0_combout\ & (!\inst2|Mux3~0_combout\))) # (!\inst2|Mux2~0_combout\ & (!\inst2|Mux1~0_combout\ & ((\inst2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~0_combout\,
	datab => \inst2|Mux1~0_combout\,
	datac => \inst2|Mux3~0_combout\,
	datad => \inst2|Mux0~0_combout\,
	combout => \inst2|LED8s[0]~14_combout\);

-- Location: LCCOMB_X62_Y1_N30
\inst2|LED8s[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LED8s[0]~15_combout\ = (\inst2|LED8s[0]~13_combout\) # ((\inst2|LED8s[0]~14_combout\) # ((\inst2|LED8s[2]~8_combout\ & !\inst2|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LED8s[0]~13_combout\,
	datab => \inst2|LED8s[2]~8_combout\,
	datac => \inst2|LED8s[0]~14_combout\,
	datad => \inst2|Mux2~0_combout\,
	combout => \inst2|LED8s[0]~15_combout\);

ww_R1 <= \R1~output_o\;

ww_R2 <= \R2~output_o\;

ww_Y1 <= \Y1~output_o\;

ww_Y2 <= \Y2~output_o\;

ww_G1 <= \G1~output_o\;

ww_G2 <= \G2~output_o\;

ww_LED8s(7) <= \LED8s[7]~output_o\;

ww_LED8s(6) <= \LED8s[6]~output_o\;

ww_LED8s(5) <= \LED8s[5]~output_o\;

ww_LED8s(4) <= \LED8s[4]~output_o\;

ww_LED8s(3) <= \LED8s[3]~output_o\;

ww_LED8s(2) <= \LED8s[2]~output_o\;

ww_LED8s(1) <= \LED8s[1]~output_o\;

ww_LED8s(0) <= \LED8s[0]~output_o\;

ww_LED_display(3) <= \LED_display[3]~output_o\;

ww_LED_display(2) <= \LED_display[2]~output_o\;

ww_LED_display(1) <= \LED_display[1]~output_o\;

ww_LED_display(0) <= \LED_display[0]~output_o\;

ww_SEL(2) <= \SEL[2]~output_o\;

ww_SEL(1) <= \SEL[1]~output_o\;

ww_SEL(0) <= \SEL[0]~output_o\;
END structure;


