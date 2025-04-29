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

-- DATE "04/01/2022 17:15:46"

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

ENTITY 	smg_display IS
    PORT (
	CLK : IN std_logic;
	SEL : OUT std_logic_vector(2 DOWNTO 0);
	LED7s : OUT std_logic_vector(6 DOWNTO 0)
	);
END smg_display;

-- Design Ports Information
-- SEL[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[1]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7s[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7s[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7s[2]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7s[3]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7s[4]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7s[5]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7s[6]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF smg_display IS
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
SIGNAL ww_SEL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LED7s : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SEL[0]~output_o\ : std_logic;
SIGNAL \SEL[1]~output_o\ : std_logic;
SIGNAL \SEL[2]~output_o\ : std_logic;
SIGNAL \LED7s[0]~output_o\ : std_logic;
SIGNAL \LED7s[1]~output_o\ : std_logic;
SIGNAL \LED7s[2]~output_o\ : std_logic;
SIGNAL \LED7s[3]~output_o\ : std_logic;
SIGNAL \LED7s[4]~output_o\ : std_logic;
SIGNAL \LED7s[5]~output_o\ : std_logic;
SIGNAL \LED7s[6]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \num[0]~3_combout\ : std_logic;
SIGNAL \num[1]~0_combout\ : std_logic;
SIGNAL \num[2]~1_combout\ : std_logic;
SIGNAL \num[3]~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL num : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
SEL <= ww_SEL;
LED7s <= ww_LED7s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X0_Y3_N2
\SEL[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => num(0),
	devoe => ww_devoe,
	o => \SEL[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\SEL[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => num(1),
	devoe => ww_devoe,
	o => \SEL[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\SEL[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => num(2),
	devoe => ww_devoe,
	o => \SEL[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\LED7s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \LED7s[0]~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\LED7s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \LED7s[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\LED7s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \LED7s[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\LED7s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \LED7s[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\LED7s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \LED7s[4]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\LED7s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \LED7s[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\LED7s[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \LED7s[6]~output_o\);

-- Location: IOIBUF_X0_Y21_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y4_N28
\num[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \num[0]~3_combout\ = !num(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => num(0),
	combout => \num[0]~3_combout\);

-- Location: FF_X1_Y4_N29
\num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \num[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num(0));

-- Location: LCCOMB_X1_Y4_N10
\num[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \num[1]~0_combout\ = num(1) $ (num(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => num(1),
	datad => num(0),
	combout => \num[1]~0_combout\);

-- Location: FF_X1_Y4_N11
\num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \num[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num(1));

-- Location: LCCOMB_X1_Y4_N12
\num[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \num[2]~1_combout\ = num(2) $ (((num(1) & num(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(1),
	datac => num(2),
	datad => num(0),
	combout => \num[2]~1_combout\);

-- Location: FF_X1_Y4_N13
\num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \num[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num(2));

-- Location: LCCOMB_X1_Y4_N26
\num[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \num[3]~2_combout\ = num(3) $ (((num(1) & (num(0) & num(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(1),
	datab => num(0),
	datac => num(3),
	datad => num(2),
	combout => \num[3]~2_combout\);

-- Location: FF_X1_Y4_N27
\num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \num[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num(3));

-- Location: LCCOMB_X1_Y4_N0
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (num(1) & (((num(3))))) # (!num(1) & (num(2) $ (((num(0) & !num(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(2),
	datab => num(1),
	datac => num(0),
	datad => num(3),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y4_N30
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (num(2) & ((num(3)) # (num(1) $ (num(0))))) # (!num(2) & (num(1) & ((num(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(2),
	datab => num(1),
	datac => num(0),
	datad => num(3),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y4_N24
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (num(2) & (((num(3))))) # (!num(2) & (num(1) & ((num(3)) # (!num(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(2),
	datab => num(1),
	datac => num(0),
	datad => num(3),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y4_N14
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (num(1) & ((num(3)) # ((num(2) & num(0))))) # (!num(1) & (num(2) $ (((num(0) & !num(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(2),
	datab => num(1),
	datac => num(0),
	datad => num(3),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y4_N20
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (num(0)) # ((num(1) & ((num(3)))) # (!num(1) & (num(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(2),
	datab => num(1),
	datac => num(0),
	datad => num(3),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y4_N18
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (num(2) & ((num(3)) # ((num(1) & num(0))))) # (!num(2) & ((num(1)) # ((num(0) & !num(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(2),
	datab => num(1),
	datac => num(0),
	datad => num(3),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y4_N16
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (num(2) & (!num(3) & ((!num(0)) # (!num(1))))) # (!num(2) & (num(1) $ (((num(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(2),
	datab => num(1),
	datac => num(0),
	datad => num(3),
	combout => \Mux0~0_combout\);

ww_SEL(0) <= \SEL[0]~output_o\;

ww_SEL(1) <= \SEL[1]~output_o\;

ww_SEL(2) <= \SEL[2]~output_o\;

ww_LED7s(0) <= \LED7s[0]~output_o\;

ww_LED7s(1) <= \LED7s[1]~output_o\;

ww_LED7s(2) <= \LED7s[2]~output_o\;

ww_LED7s(3) <= \LED7s[3]~output_o\;

ww_LED7s(4) <= \LED7s[4]~output_o\;

ww_LED7s(5) <= \LED7s[5]~output_o\;

ww_LED7s(6) <= \LED7s[6]~output_o\;
END structure;


