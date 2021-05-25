-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "05/19/2021 20:04:40"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	projetoDigitais IS
    PORT (
	Alarm : OUT std_logic;
	Enter : IN std_logic;
	ClkSystem : IN std_logic;
	D : IN std_logic_vector(0 TO 9)
	);
END projetoDigitais;

-- Design Ports Information
-- Alarm	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[8]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ClkSystem	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enter	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[9]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF projetoDigitais IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Alarm : std_logic;
SIGNAL ww_Enter : std_logic;
SIGNAL ww_ClkSystem : std_logic;
SIGNAL ww_D : std_logic_vector(0 TO 9);
SIGNAL \inst|inst1|ORgateOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst5|QOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst6|QOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ClkSystem~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Alarm~output_o\ : std_logic;
SIGNAL \ClkSystem~input_o\ : std_logic;
SIGNAL \ClkSystem~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|inst6|Add0~1\ : std_logic;
SIGNAL \inst2|inst6|Add0~2_combout\ : std_logic;
SIGNAL \inst2|inst6|Cnt~0_combout\ : std_logic;
SIGNAL \inst2|inst6|Add0~3\ : std_logic;
SIGNAL \inst2|inst6|Add0~4_combout\ : std_logic;
SIGNAL \inst2|inst6|Cnt~3_combout\ : std_logic;
SIGNAL \inst2|inst6|Add0~5\ : std_logic;
SIGNAL \inst2|inst6|Add0~6_combout\ : std_logic;
SIGNAL \inst2|inst6|Cnt~4_combout\ : std_logic;
SIGNAL \inst2|inst6|Add0~7\ : std_logic;
SIGNAL \inst2|inst6|Add0~8_combout\ : std_logic;
SIGNAL \inst2|inst6|Cnt~5_combout\ : std_logic;
SIGNAL \inst2|inst6|Add0~9\ : std_logic;
SIGNAL \inst2|inst6|Add0~10_combout\ : std_logic;
SIGNAL \inst2|inst6|Cnt~6_combout\ : std_logic;
SIGNAL \inst2|inst6|Add0~11\ : std_logic;
SIGNAL \inst2|inst6|Add0~12_combout\ : std_logic;
SIGNAL \inst2|inst6|Cnt~7_combout\ : std_logic;
SIGNAL \inst2|inst6|Add0~13\ : std_logic;
SIGNAL \inst2|inst6|Add0~14_combout\ : std_logic;
SIGNAL \inst2|inst6|Cnt~1_combout\ : std_logic;
SIGNAL \inst2|inst6|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|inst6|Equal0~0_combout\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \Enter~input_o\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \D[7]~input_o\ : std_logic;
SIGNAL \D[9]~input_o\ : std_logic;
SIGNAL \inst|inst1|ORgateOut~0_combout\ : std_logic;
SIGNAL \D[5]~input_o\ : std_logic;
SIGNAL \D[6]~input_o\ : std_logic;
SIGNAL \inst|inst1|ORgateOut~1_combout\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \D[4]~input_o\ : std_logic;
SIGNAL \inst|inst1|ORgateOut~2_combout\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \D[8]~input_o\ : std_logic;
SIGNAL \inst|inst1|ORgateOut~combout\ : std_logic;
SIGNAL \inst2|inst5|Flag~0_combout\ : std_logic;
SIGNAL \inst2|inst5|Flag~q\ : std_logic;
SIGNAL \inst2|inst5|process_0~0_combout\ : std_logic;
SIGNAL \inst2|inst5|Add0~0_combout\ : std_logic;
SIGNAL \inst2|inst5|Cnt~2_combout\ : std_logic;
SIGNAL \inst2|inst5|Add0~1\ : std_logic;
SIGNAL \inst2|inst5|Add0~2_combout\ : std_logic;
SIGNAL \inst2|inst5|Cnt~0_combout\ : std_logic;
SIGNAL \inst2|inst5|Add0~3\ : std_logic;
SIGNAL \inst2|inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst2|inst5|Cnt~3_combout\ : std_logic;
SIGNAL \inst2|inst5|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|inst5|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|inst5|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|inst5|Add0~5\ : std_logic;
SIGNAL \inst2|inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst2|inst5|Cnt~4_combout\ : std_logic;
SIGNAL \inst2|inst5|Add0~7\ : std_logic;
SIGNAL \inst2|inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst2|inst5|Cnt~5_combout\ : std_logic;
SIGNAL \inst2|inst5|Add0~9\ : std_logic;
SIGNAL \inst2|inst5|Add0~10_combout\ : std_logic;
SIGNAL \inst2|inst5|Cnt~6_combout\ : std_logic;
SIGNAL \inst2|inst5|Add0~11\ : std_logic;
SIGNAL \inst2|inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst2|inst5|Cnt~7_combout\ : std_logic;
SIGNAL \inst2|inst5|Add0~13\ : std_logic;
SIGNAL \inst2|inst5|Add0~14_combout\ : std_logic;
SIGNAL \inst2|inst5|Cnt~1_combout\ : std_logic;
SIGNAL \inst2|inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|inst5|QOut~0_combout\ : std_logic;
SIGNAL \inst2|inst5|QOut~1_combout\ : std_logic;
SIGNAL \inst2|inst5|QOut~2_combout\ : std_logic;
SIGNAL \inst2|inst5|QOut~q\ : std_logic;
SIGNAL \inst2|inst6|Flag~0_combout\ : std_logic;
SIGNAL \inst2|inst6|Flag~q\ : std_logic;
SIGNAL \inst2|inst6|process_0~0_combout\ : std_logic;
SIGNAL \inst2|inst6|Add0~0_combout\ : std_logic;
SIGNAL \inst2|inst6|Cnt~2_combout\ : std_logic;
SIGNAL \inst2|inst6|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|inst6|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|inst6|QOut~0_combout\ : std_logic;
SIGNAL \inst2|inst6|QOut~1_combout\ : std_logic;
SIGNAL \inst2|inst6|QOut~2_combout\ : std_logic;
SIGNAL \inst2|inst6|QOut~q\ : std_logic;
SIGNAL \inst2|inst6|QOut~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|inst5|QOut~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst|Q[0]~0_combout\ : std_logic;
SIGNAL \inst|inst|Q[0]~1_combout\ : std_logic;
SIGNAL \inst2|inst|DFF3~q\ : std_logic;
SIGNAL \inst|inst|Q[1]~3_combout\ : std_logic;
SIGNAL \inst2|inst|DFF2~q\ : std_logic;
SIGNAL \inst|inst|Q[2]~2_combout\ : std_logic;
SIGNAL \inst2|inst|DFF1~q\ : std_logic;
SIGNAL \inst2|inst|DFF0~q\ : std_logic;
SIGNAL \inst2|inst2|EQ~1_combout\ : std_logic;
SIGNAL \inst|inst1|ORgateOut~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|inst3|Bout[3]~4_combout\ : std_logic;
SIGNAL \inst2|inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|inst3|Bout[0]~1_combout\ : std_logic;
SIGNAL \inst2|inst3|Bout[0]~2_combout\ : std_logic;
SIGNAL \inst2|inst4|DFF0~feeder_combout\ : std_logic;
SIGNAL \inst2|inst4|DFF0~q\ : std_logic;
SIGNAL \inst2|inst2|EQ~2_combout\ : std_logic;
SIGNAL \inst2|inst3|flag[0]~1_combout\ : std_logic;
SIGNAL \inst2|inst3|flag[2]~2_combout\ : std_logic;
SIGNAL \inst2|inst3|flag[1]~0_combout\ : std_logic;
SIGNAL \inst2|inst3|Bout[2]~0_combout\ : std_logic;
SIGNAL \inst2|inst4|DFF1~feeder_combout\ : std_logic;
SIGNAL \inst2|inst4|DFF1~q\ : std_logic;
SIGNAL \inst2|inst3|Bout[0]~3_combout\ : std_logic;
SIGNAL \inst2|inst4|DFF3~feeder_combout\ : std_logic;
SIGNAL \inst2|inst4|DFF3~q\ : std_logic;
SIGNAL \inst2|inst2|EQ~0_combout\ : std_logic;
SIGNAL \inst5|inst|DFF3~feeder_combout\ : std_logic;
SIGNAL \inst5|inst|DFF3~q\ : std_logic;
SIGNAL \inst5|inst|D3~0_combout\ : std_logic;
SIGNAL \inst5|inst|DFF4~q\ : std_logic;
SIGNAL \inst5|inst|D2~0_combout\ : std_logic;
SIGNAL \inst5|inst|DFF5~q\ : std_logic;
SIGNAL \inst5|inst|D1~0_combout\ : std_logic;
SIGNAL \inst5|inst|DFF6~q\ : std_logic;
SIGNAL \inst5|inst|D0~0_combout\ : std_logic;
SIGNAL \inst5|inst|DFF7~q\ : std_logic;
SIGNAL \inst2|inst5|Cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst3|Bout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst6|Cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst3|flag\ : std_logic_vector(2 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Alarm <= ww_Alarm;
ww_Enter <= Enter;
ww_ClkSystem <= ClkSystem;
ww_D <= D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|inst1|ORgateOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|inst1|ORgateOut~combout\);

\inst2|inst5|QOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|inst5|QOut~q\);

\inst2|inst6|QOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|inst6|QOut~q\);

\ClkSystem~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ClkSystem~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X52_Y0_N9
\Alarm~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst|DFF7~q\,
	devoe => ww_devoe,
	o => \Alarm~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\ClkSystem~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ClkSystem,
	o => \ClkSystem~input_o\);

-- Location: CLKCTRL_G2
\ClkSystem~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ClkSystem~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ClkSystem~inputclkctrl_outclk\);

-- Location: LCCOMB_X57_Y4_N8
\inst2|inst6|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|Add0~0_combout\ = (((\inst2|inst6|Cnt\(0)) # (\inst2|inst6|process_0~0_combout\)))
-- \inst2|inst6|Add0~1\ = CARRY((\inst2|inst6|Cnt\(0)) # (\inst2|inst6|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|Cnt\(0),
	datab => \inst2|inst6|process_0~0_combout\,
	datad => VCC,
	combout => \inst2|inst6|Add0~0_combout\,
	cout => \inst2|inst6|Add0~1\);

-- Location: LCCOMB_X57_Y4_N10
\inst2|inst6|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|Add0~2_combout\ = (\inst2|inst6|Add0~1\ & (((\inst2|inst6|process_0~0_combout\)) # (!\inst2|inst6|Cnt\(1)))) # (!\inst2|inst6|Add0~1\ & (((\inst2|inst6|Cnt\(1) & !\inst2|inst6|process_0~0_combout\)) # (GND)))
-- \inst2|inst6|Add0~3\ = CARRY(((\inst2|inst6|process_0~0_combout\) # (!\inst2|inst6|Add0~1\)) # (!\inst2|inst6|Cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|Cnt\(1),
	datab => \inst2|inst6|process_0~0_combout\,
	datad => VCC,
	cin => \inst2|inst6|Add0~1\,
	combout => \inst2|inst6|Add0~2_combout\,
	cout => \inst2|inst6|Add0~3\);

-- Location: LCCOMB_X57_Y4_N26
\inst2|inst6|Cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|Cnt~0_combout\ = (!\inst2|inst6|Equal0~0_combout\ & \inst2|inst6|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|Equal0~0_combout\,
	datad => \inst2|inst6|Add0~2_combout\,
	combout => \inst2|inst6|Cnt~0_combout\);

-- Location: FF_X57_Y4_N27
\inst2|inst6|Cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkSystem~inputclkctrl_outclk\,
	d => \inst2|inst6|Cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|Cnt\(1));

-- Location: LCCOMB_X57_Y4_N12
\inst2|inst6|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|Add0~4_combout\ = (\inst2|inst6|Add0~3\ & (!\inst2|inst6|process_0~0_combout\ & (\inst2|inst6|Cnt\(2) & VCC))) # (!\inst2|inst6|Add0~3\ & ((((!\inst2|inst6|process_0~0_combout\ & \inst2|inst6|Cnt\(2))))))
-- \inst2|inst6|Add0~5\ = CARRY((!\inst2|inst6|process_0~0_combout\ & (\inst2|inst6|Cnt\(2) & !\inst2|inst6|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|process_0~0_combout\,
	datab => \inst2|inst6|Cnt\(2),
	datad => VCC,
	cin => \inst2|inst6|Add0~3\,
	combout => \inst2|inst6|Add0~4_combout\,
	cout => \inst2|inst6|Add0~5\);

-- Location: LCCOMB_X58_Y4_N20
\inst2|inst6|Cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|Cnt~3_combout\ = (\inst2|inst6|LessThan0~2_combout\ & \inst2|inst6|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|LessThan0~2_combout\,
	datad => \inst2|inst6|Add0~4_combout\,
	combout => \inst2|inst6|Cnt~3_combout\);

-- Location: FF_X58_Y4_N21
\inst2|inst6|Cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkSystem~inputclkctrl_outclk\,
	d => \inst2|inst6|Cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|Cnt\(2));

-- Location: LCCOMB_X57_Y4_N14
\inst2|inst6|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|Add0~6_combout\ = (\inst2|inst6|Add0~5\ & ((\inst2|inst6|process_0~0_combout\) # ((!\inst2|inst6|Cnt\(3))))) # (!\inst2|inst6|Add0~5\ & (((!\inst2|inst6|process_0~0_combout\ & \inst2|inst6|Cnt\(3))) # (GND)))
-- \inst2|inst6|Add0~7\ = CARRY((\inst2|inst6|process_0~0_combout\) # ((!\inst2|inst6|Add0~5\) # (!\inst2|inst6|Cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|process_0~0_combout\,
	datab => \inst2|inst6|Cnt\(3),
	datad => VCC,
	cin => \inst2|inst6|Add0~5\,
	combout => \inst2|inst6|Add0~6_combout\,
	cout => \inst2|inst6|Add0~7\);

-- Location: LCCOMB_X58_Y4_N8
\inst2|inst6|Cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|Cnt~4_combout\ = (\inst2|inst6|Add0~6_combout\ & \inst2|inst6|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst6|Add0~6_combout\,
	datac => \inst2|inst6|LessThan0~2_combout\,
	combout => \inst2|inst6|Cnt~4_combout\);

-- Location: FF_X58_Y4_N9
\inst2|inst6|Cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkSystem~inputclkctrl_outclk\,
	d => \inst2|inst6|Cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|Cnt\(3));

-- Location: LCCOMB_X57_Y4_N16
\inst2|inst6|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|Add0~8_combout\ = (\inst2|inst6|Add0~7\ & (!\inst2|inst6|process_0~0_combout\ & (\inst2|inst6|Cnt\(4) & VCC))) # (!\inst2|inst6|Add0~7\ & ((((!\inst2|inst6|process_0~0_combout\ & \inst2|inst6|Cnt\(4))))))
-- \inst2|inst6|Add0~9\ = CARRY((!\inst2|inst6|process_0~0_combout\ & (\inst2|inst6|Cnt\(4) & !\inst2|inst6|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|process_0~0_combout\,
	datab => \inst2|inst6|Cnt\(4),
	datad => VCC,
	cin => \inst2|inst6|Add0~7\,
	combout => \inst2|inst6|Add0~8_combout\,
	cout => \inst2|inst6|Add0~9\);

-- Location: LCCOMB_X58_Y4_N14
\inst2|inst6|Cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|Cnt~5_combout\ = (\inst2|inst6|LessThan0~2_combout\ & \inst2|inst6|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|LessThan0~2_combout\,
	datad => \inst2|inst6|Add0~8_combout\,
	combout => \inst2|inst6|Cnt~5_combout\);

-- Location: FF_X58_Y4_N15
\inst2|inst6|Cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkSystem~inputclkctrl_outclk\,
	d => \inst2|inst6|Cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|Cnt\(4));

-- Location: LCCOMB_X57_Y4_N18
\inst2|inst6|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|Add0~10_combout\ = (\inst2|inst6|Add0~9\ & ((\inst2|inst6|process_0~0_combout\) # ((!\inst2|inst6|Cnt\(5))))) # (!\inst2|inst6|Add0~9\ & (((!\inst2|inst6|process_0~0_combout\ & \inst2|inst6|Cnt\(5))) # (GND)))
-- \inst2|inst6|Add0~11\ = CARRY((\inst2|inst6|process_0~0_combout\) # ((!\inst2|inst6|Add0~9\) # (!\inst2|inst6|Cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|process_0~0_combout\,
	datab => \inst2|inst6|Cnt\(5),
	datad => VCC,
	cin => \inst2|inst6|Add0~9\,
	combout => \inst2|inst6|Add0~10_combout\,
	cout => \inst2|inst6|Add0~11\);

-- Location: LCCOMB_X58_Y4_N12
\inst2|inst6|Cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|Cnt~6_combout\ = (\inst2|inst6|LessThan0~2_combout\ & \inst2|inst6|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|LessThan0~2_combout\,
	datad => \inst2|inst6|Add0~10_combout\,
	combout => \inst2|inst6|Cnt~6_combout\);

-- Location: FF_X58_Y4_N13
\inst2|inst6|Cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkSystem~inputclkctrl_outclk\,
	d => \inst2|inst6|Cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|Cnt\(5));

-- Location: LCCOMB_X57_Y4_N20
\inst2|inst6|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|Add0~12_combout\ = (\inst2|inst6|Add0~11\ & (!\inst2|inst6|process_0~0_combout\ & (\inst2|inst6|Cnt\(6) & VCC))) # (!\inst2|inst6|Add0~11\ & ((((!\inst2|inst6|process_0~0_combout\ & \inst2|inst6|Cnt\(6))))))
-- \inst2|inst6|Add0~13\ = CARRY((!\inst2|inst6|process_0~0_combout\ & (\inst2|inst6|Cnt\(6) & !\inst2|inst6|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|process_0~0_combout\,
	datab => \inst2|inst6|Cnt\(6),
	datad => VCC,
	cin => \inst2|inst6|Add0~11\,
	combout => \inst2|inst6|Add0~12_combout\,
	cout => \inst2|inst6|Add0~13\);

-- Location: LCCOMB_X58_Y4_N26
\inst2|inst6|Cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|Cnt~7_combout\ = (\inst2|inst6|LessThan0~2_combout\ & \inst2|inst6|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|LessThan0~2_combout\,
	datad => \inst2|inst6|Add0~12_combout\,
	combout => \inst2|inst6|Cnt~7_combout\);

-- Location: FF_X58_Y4_N27
\inst2|inst6|Cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkSystem~inputclkctrl_outclk\,
	d => \inst2|inst6|Cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|Cnt\(6));

-- Location: LCCOMB_X57_Y4_N22
\inst2|inst6|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|Add0~14_combout\ = \inst2|inst6|Add0~13\ $ (((!\inst2|inst6|process_0~0_combout\ & \inst2|inst6|Cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst6|process_0~0_combout\,
	datad => \inst2|inst6|Cnt\(7),
	cin => \inst2|inst6|Add0~13\,
	combout => \inst2|inst6|Add0~14_combout\);

-- Location: LCCOMB_X58_Y4_N28
\inst2|inst6|Cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|Cnt~1_combout\ = (\inst2|inst6|Add0~14_combout\ & \inst2|inst6|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|Add0~14_combout\,
	datac => \inst2|inst6|LessThan0~2_combout\,
	combout => \inst2|inst6|Cnt~1_combout\);

-- Location: FF_X58_Y4_N29
\inst2|inst6|Cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkSystem~inputclkctrl_outclk\,
	d => \inst2|inst6|Cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|Cnt\(7));

-- Location: LCCOMB_X58_Y4_N24
\inst2|inst6|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|LessThan0~1_combout\ = (!\inst2|inst6|Cnt\(4) & (!\inst2|inst6|Cnt\(3) & (!\inst2|inst6|Cnt\(6) & !\inst2|inst6|Cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|Cnt\(4),
	datab => \inst2|inst6|Cnt\(3),
	datac => \inst2|inst6|Cnt\(6),
	datad => \inst2|inst6|Cnt\(5),
	combout => \inst2|inst6|LessThan0~1_combout\);

-- Location: LCCOMB_X58_Y4_N4
\inst2|inst6|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|Equal0~0_combout\ = (\inst2|inst6|Cnt\(1) & (!\inst2|inst6|Cnt\(7) & (\inst2|inst6|LessThan0~0_combout\ & \inst2|inst6|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|Cnt\(1),
	datab => \inst2|inst6|Cnt\(7),
	datac => \inst2|inst6|LessThan0~0_combout\,
	datad => \inst2|inst6|LessThan0~1_combout\,
	combout => \inst2|inst6|Equal0~0_combout\);

-- Location: IOIBUF_X54_Y0_N8
\D[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\Enter~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enter,
	o => \Enter~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\D[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\D[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(7),
	o => \D[7]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\D[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(9),
	o => \D[9]~input_o\);

-- Location: LCCOMB_X55_Y3_N28
\inst|inst1|ORgateOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|ORgateOut~0_combout\ = (\Enter~input_o\) # ((\D[1]~input_o\) # ((\D[7]~input_o\) # (\D[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enter~input_o\,
	datab => \D[1]~input_o\,
	datac => \D[7]~input_o\,
	datad => \D[9]~input_o\,
	combout => \inst|inst1|ORgateOut~0_combout\);

-- Location: IOIBUF_X54_Y0_N22
\D[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(5),
	o => \D[5]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\D[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(6),
	o => \D[6]~input_o\);

-- Location: LCCOMB_X54_Y3_N2
\inst|inst1|ORgateOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|ORgateOut~1_combout\ = (\D[3]~input_o\) # ((\inst|inst1|ORgateOut~0_combout\) # ((\D[5]~input_o\) # (\D[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datab => \inst|inst1|ORgateOut~0_combout\,
	datac => \D[5]~input_o\,
	datad => \D[6]~input_o\,
	combout => \inst|inst1|ORgateOut~1_combout\);

-- Location: IOIBUF_X52_Y0_N22
\D[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\D[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(4),
	o => \D[4]~input_o\);

-- Location: LCCOMB_X54_Y3_N30
\inst|inst1|ORgateOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|ORgateOut~2_combout\ = (\D[2]~input_o\) # (\D[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[2]~input_o\,
	datad => \D[4]~input_o\,
	combout => \inst|inst1|ORgateOut~2_combout\);

-- Location: IOIBUF_X56_Y0_N1
\D[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\D[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(8),
	o => \D[8]~input_o\);

-- Location: LCCOMB_X55_Y4_N16
\inst|inst1|ORgateOut\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|ORgateOut~combout\ = LCELL((\inst|inst1|ORgateOut~1_combout\) # ((\inst|inst1|ORgateOut~2_combout\) # ((\D[0]~input_o\) # (\D[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|ORgateOut~1_combout\,
	datab => \inst|inst1|ORgateOut~2_combout\,
	datac => \D[0]~input_o\,
	datad => \D[8]~input_o\,
	combout => \inst|inst1|ORgateOut~combout\);

-- Location: LCCOMB_X56_Y4_N0
\inst2|inst5|Flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|Flag~0_combout\ = (\inst2|inst5|Equal0~0_combout\) # (\inst|inst1|ORgateOut~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|Equal0~0_combout\,
	datac => \inst|inst1|ORgateOut~combout\,
	combout => \inst2|inst5|Flag~0_combout\);

-- Location: FF_X56_Y4_N1
\inst2|inst5|Flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkSystem~inputclkctrl_outclk\,
	d => \inst2|inst5|Flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst5|Flag~q\);

-- Location: LCCOMB_X56_Y4_N2
\inst2|inst5|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|process_0~0_combout\ = (\inst|inst1|ORgateOut~combout\ & !\inst2|inst5|Flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|ORgateOut~combout\,
	datad => \inst2|inst5|Flag~q\,
	combout => \inst2|inst5|process_0~0_combout\);

-- Location: LCCOMB_X56_Y4_N10
\inst2|inst5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|Add0~0_combout\ = (((\inst2|inst5|Cnt\(0)) # (\inst2|inst5|process_0~0_combout\)))
-- \inst2|inst5|Add0~1\ = CARRY((\inst2|inst5|Cnt\(0)) # (\inst2|inst5|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|Cnt\(0),
	datab => \inst2|inst5|process_0~0_combout\,
	datad => VCC,
	combout => \inst2|inst5|Add0~0_combout\,
	cout => \inst2|inst5|Add0~1\);

-- Location: LCCOMB_X56_Y4_N30
\inst2|inst5|Cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|Cnt~2_combout\ = (!\inst2|inst5|Equal0~0_combout\ & (\inst2|inst5|Add0~0_combout\ & \inst2|inst5|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|Equal0~0_combout\,
	datac => \inst2|inst5|Add0~0_combout\,
	datad => \inst2|inst5|LessThan0~2_combout\,
	combout => \inst2|inst5|Cnt~2_combout\);

-- Location: FF_X56_Y4_N31
\inst2|inst5|Cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkSystem~inputclkctrl_outclk\,
	d => \inst2|inst5|Cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst5|Cnt\(0));

-- Location: LCCOMB_X56_Y4_N12
\inst2|inst5|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|Add0~2_combout\ = (\inst2|inst5|Add0~1\ & (((\inst2|inst5|process_0~0_combout\)) # (!\inst2|inst5|Cnt\(1)))) # (!\inst2|inst5|Add0~1\ & (((\inst2|inst5|Cnt\(1) & !\inst2|inst5|process_0~0_combout\)) # (GND)))
-- \inst2|inst5|Add0~3\ = CARRY(((\inst2|inst5|process_0~0_combout\) # (!\inst2|inst5|Add0~1\)) # (!\inst2|inst5|Cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|Cnt\(1),
	datab => \inst2|inst5|process_0~0_combout\,
	datad => VCC,
	cin => \inst2|inst5|Add0~1\,
	combout => \inst2|inst5|Add0~2_combout\,
	cout => \inst2|inst5|Add0~3\);

-- Location: LCCOMB_X55_Y4_N14
\inst2|inst5|Cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|Cnt~0_combout\ = (!\inst2|inst5|Equal0~0_combout\ & \inst2|inst5|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst5|Equal0~0_combout\,
	datad => \inst2|inst5|Add0~2_combout\,
	combout => \inst2|inst5|Cnt~0_combout\);

-- Location: FF_X55_Y4_N15
\inst2|inst5|Cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkSystem~inputclkctrl_outclk\,
	d => \inst2|inst5|Cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst5|Cnt\(1));

-- Location: LCCOMB_X56_Y4_N14
\inst2|inst5|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|Add0~4_combout\ = (\inst2|inst5|Add0~3\ & (\inst2|inst5|Cnt\(2) & (!\inst2|inst5|process_0~0_combout\ & VCC))) # (!\inst2|inst5|Add0~3\ & ((((\inst2|inst5|Cnt\(2) & !\inst2|inst5|process_0~0_combout\)))))
-- \inst2|inst5|Add0~5\ = CARRY((\inst2|inst5|Cnt\(2) & (!\inst2|inst5|process_0~0_combout\ & !\inst2|inst5|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|Cnt\(2),
	datab => \inst2|inst5|process_0~0_combout\,
	datad => VCC,
	cin => \inst2|inst5|Add0~3\,
	combout => \inst2|inst5|Add0~4_combout\,
	cout => \inst2|inst5|Add0~5\);

-- Location: LCCOMB_X56_Y4_N4
\inst2|inst5|Cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|Cnt~3_combout\ = (\inst2|inst5|LessThan0~2_combout\ & \inst2|inst5|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst5|LessThan0~2_combout\,
	datad => \inst2|inst5|Add0~4_combout\,
	combout => \inst2|inst5|Cnt~3_combout\);

-- Location: FF_X56_Y4_N5
\inst2|inst5|Cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkSystem~inputclkctrl_outclk\,
	d => \inst2|inst5|Cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst5|Cnt\(2));

-- Location: LCCOMB_X55_Y4_N26
\inst2|inst5|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|LessThan0~0_combout\ = (!\inst2|inst5|Cnt\(2) & (!\inst2|inst5|Cnt\(0) & ((\inst2|inst5|Flag~q\) # (!\inst|inst1|ORgateOut~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|Cnt\(2),
	datab => \inst2|inst5|Cnt\(0),
	datac => \inst2|inst5|Flag~q\,
	datad => \inst|inst1|ORgateOut~combout\,
	combout => \inst2|inst5|LessThan0~0_combout\);

-- Location: LCCOMB_X55_Y4_N28
\inst2|inst5|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|LessThan0~1_combout\ = (!\inst2|inst5|Cnt\(3) & (!\inst2|inst5|Cnt\(6) & (!\inst2|inst5|Cnt\(4) & !\inst2|inst5|Cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|Cnt\(3),
	datab => \inst2|inst5|Cnt\(6),
	datac => \inst2|inst5|Cnt\(4),
	datad => \inst2|inst5|Cnt\(5),
	combout => \inst2|inst5|LessThan0~1_combout\);

-- Location: LCCOMB_X55_Y4_N20
\inst2|inst5|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|LessThan0~2_combout\ = (\inst2|inst5|Cnt\(7)) # ((\inst2|inst5|Cnt\(1)) # ((!\inst2|inst5|LessThan0~1_combout\) # (!\inst2|inst5|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|Cnt\(7),
	datab => \inst2|inst5|Cnt\(1),
	datac => \inst2|inst5|LessThan0~0_combout\,
	datad => \inst2|inst5|LessThan0~1_combout\,
	combout => \inst2|inst5|LessThan0~2_combout\);

-- Location: LCCOMB_X56_Y4_N16
\inst2|inst5|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|Add0~6_combout\ = (\inst2|inst5|Add0~5\ & ((\inst2|inst5|process_0~0_combout\) # ((!\inst2|inst5|Cnt\(3))))) # (!\inst2|inst5|Add0~5\ & (((!\inst2|inst5|process_0~0_combout\ & \inst2|inst5|Cnt\(3))) # (GND)))
-- \inst2|inst5|Add0~7\ = CARRY((\inst2|inst5|process_0~0_combout\) # ((!\inst2|inst5|Add0~5\) # (!\inst2|inst5|Cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|process_0~0_combout\,
	datab => \inst2|inst5|Cnt\(3),
	datad => VCC,
	cin => \inst2|inst5|Add0~5\,
	combout => \inst2|inst5|Add0~6_combout\,
	cout => \inst2|inst5|Add0~7\);

-- Location: LCCOMB_X56_Y4_N6
\inst2|inst5|Cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|Cnt~4_combout\ = (\inst2|inst5|LessThan0~2_combout\ & \inst2|inst5|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst5|LessThan0~2_combout\,
	datad => \inst2|inst5|Add0~6_combout\,
	combout => \inst2|inst5|Cnt~4_combout\);

-- Location: FF_X56_Y4_N7
\inst2|inst5|Cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkSystem~inputclkctrl_outclk\,
	d => \inst2|inst5|Cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst5|Cnt\(3));

-- Location: LCCOMB_X56_Y4_N18
\inst2|inst5|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|Add0~8_combout\ = (\inst2|inst5|Add0~7\ & (!\inst2|inst5|process_0~0_combout\ & (\inst2|inst5|Cnt\(4) & VCC))) # (!\inst2|inst5|Add0~7\ & ((((!\inst2|inst5|process_0~0_combout\ & \inst2|inst5|Cnt\(4))))))
-- \inst2|inst5|Add0~9\ = CARRY((!\inst2|inst5|process_0~0_combout\ & (\inst2|inst5|Cnt\(4) & !\inst2|inst5|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|process_0~0_combout\,
	datab => \inst2|inst5|Cnt\(4),
	datad => VCC,
	cin => \inst2|inst5|Add0~7\,
	combout => \inst2|inst5|Add0~8_combout\,
	cout => \inst2|inst5|Add0~9\);

-- Location: LCCOMB_X56_Y4_N8
\inst2|inst5|Cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|Cnt~5_combout\ = (\inst2|inst5|Add0~8_combout\ & \inst2|inst5|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|Add0~8_combout\,
	datac => \inst2|inst5|LessThan0~2_combout\,
	combout => \inst2|inst5|Cnt~5_combout\);

-- Location: FF_X56_Y4_N9
\inst2|inst5|Cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkSystem~inputclkctrl_outclk\,
	d => \inst2|inst5|Cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst5|Cnt\(4));

-- Location: LCCOMB_X56_Y4_N20
\inst2|inst5|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|Add0~10_combout\ = (\inst2|inst5|Add0~9\ & (((\inst2|inst5|process_0~0_combout\)) # (!\inst2|inst5|Cnt\(5)))) # (!\inst2|inst5|Add0~9\ & (((\inst2|inst5|Cnt\(5) & !\inst2|inst5|process_0~0_combout\)) # (GND)))
-- \inst2|inst5|Add0~11\ = CARRY(((\inst2|inst5|process_0~0_combout\) # (!\inst2|inst5|Add0~9\)) # (!\inst2|inst5|Cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|Cnt\(5),
	datab => \inst2|inst5|process_0~0_combout\,
	datad => VCC,
	cin => \inst2|inst5|Add0~9\,
	combout => \inst2|inst5|Add0~10_combout\,
	cout => \inst2|inst5|Add0~11\);

-- Location: LCCOMB_X56_Y4_N26
\inst2|inst5|Cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|Cnt~6_combout\ = (\inst2|inst5|Add0~10_combout\ & \inst2|inst5|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|Add0~10_combout\,
	datac => \inst2|inst5|LessThan0~2_combout\,
	combout => \inst2|inst5|Cnt~6_combout\);

-- Location: FF_X56_Y4_N27
\inst2|inst5|Cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkSystem~inputclkctrl_outclk\,
	d => \inst2|inst5|Cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst5|Cnt\(5));

-- Location: LCCOMB_X56_Y4_N22
\inst2|inst5|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|Add0~12_combout\ = (\inst2|inst5|Add0~11\ & (\inst2|inst5|Cnt\(6) & (!\inst2|inst5|process_0~0_combout\ & VCC))) # (!\inst2|inst5|Add0~11\ & ((((\inst2|inst5|Cnt\(6) & !\inst2|inst5|process_0~0_combout\)))))
-- \inst2|inst5|Add0~13\ = CARRY((\inst2|inst5|Cnt\(6) & (!\inst2|inst5|process_0~0_combout\ & !\inst2|inst5|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|Cnt\(6),
	datab => \inst2|inst5|process_0~0_combout\,
	datad => VCC,
	cin => \inst2|inst5|Add0~11\,
	combout => \inst2|inst5|Add0~12_combout\,
	cout => \inst2|inst5|Add0~13\);

-- Location: LCCOMB_X56_Y4_N28
\inst2|inst5|Cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|Cnt~7_combout\ = (\inst2|inst5|Add0~12_combout\ & \inst2|inst5|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst5|Add0~12_combout\,
	datad => \inst2|inst5|LessThan0~2_combout\,
	combout => \inst2|inst5|Cnt~7_combout\);

-- Location: FF_X56_Y4_N29
\inst2|inst5|Cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkSystem~inputclkctrl_outclk\,
	d => \inst2|inst5|Cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst5|Cnt\(6));

-- Location: LCCOMB_X56_Y4_N24
\inst2|inst5|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|Add0~14_combout\ = \inst2|inst5|Add0~13\ $ (((\inst2|inst5|Cnt\(7) & !\inst2|inst5|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst5|Cnt\(7),
	datad => \inst2|inst5|process_0~0_combout\,
	cin => \inst2|inst5|Add0~13\,
	combout => \inst2|inst5|Add0~14_combout\);

-- Location: LCCOMB_X55_Y4_N30
\inst2|inst5|Cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|Cnt~1_combout\ = (\inst2|inst5|Add0~14_combout\ & \inst2|inst5|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst5|Add0~14_combout\,
	datad => \inst2|inst5|LessThan0~2_combout\,
	combout => \inst2|inst5|Cnt~1_combout\);

-- Location: FF_X55_Y4_N31
\inst2|inst5|Cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkSystem~inputclkctrl_outclk\,
	d => \inst2|inst5|Cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst5|Cnt\(7));

-- Location: LCCOMB_X55_Y4_N4
\inst2|inst5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|Equal0~0_combout\ = (!\inst2|inst5|Cnt\(7) & (\inst2|inst5|Cnt\(1) & (\inst2|inst5|LessThan0~0_combout\ & \inst2|inst5|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|Cnt\(7),
	datab => \inst2|inst5|Cnt\(1),
	datac => \inst2|inst5|LessThan0~0_combout\,
	datad => \inst2|inst5|LessThan0~1_combout\,
	combout => \inst2|inst5|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y4_N28
\inst2|inst5|QOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|QOut~0_combout\ = (\inst2|inst5|Add0~4_combout\) # ((\inst2|inst5|Add0~2_combout\) # ((\inst2|inst5|Add0~6_combout\) # (\inst2|inst5|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|Add0~4_combout\,
	datab => \inst2|inst5|Add0~2_combout\,
	datac => \inst2|inst5|Add0~6_combout\,
	datad => \inst2|inst5|Add0~10_combout\,
	combout => \inst2|inst5|QOut~0_combout\);

-- Location: LCCOMB_X57_Y4_N24
\inst2|inst5|QOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|QOut~1_combout\ = (\inst2|inst5|Add0~8_combout\) # ((\inst2|inst5|Add0~12_combout\) # ((\inst2|inst5|Add0~14_combout\) # (\inst2|inst5|QOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|Add0~8_combout\,
	datab => \inst2|inst5|Add0~12_combout\,
	datac => \inst2|inst5|Add0~14_combout\,
	datad => \inst2|inst5|QOut~0_combout\,
	combout => \inst2|inst5|QOut~1_combout\);

-- Location: LCCOMB_X57_Y4_N6
\inst2|inst5|QOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|QOut~2_combout\ = (!\inst2|inst5|Equal0~0_combout\ & ((\inst2|inst5|QOut~q\) # ((\inst2|inst5|LessThan0~2_combout\ & \inst2|inst5|QOut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|Equal0~0_combout\,
	datab => \inst2|inst5|LessThan0~2_combout\,
	datac => \inst2|inst5|QOut~q\,
	datad => \inst2|inst5|QOut~1_combout\,
	combout => \inst2|inst5|QOut~2_combout\);

-- Location: FF_X57_Y4_N31
\inst2|inst5|QOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkSystem~inputclkctrl_outclk\,
	asdata => \inst2|inst5|QOut~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst5|QOut~q\);

-- Location: LCCOMB_X58_Y4_N22
\inst2|inst6|Flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|Flag~0_combout\ = (\inst2|inst6|Equal0~0_combout\) # (\inst2|inst5|QOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|Equal0~0_combout\,
	datad => \inst2|inst5|QOut~q\,
	combout => \inst2|inst6|Flag~0_combout\);

-- Location: FF_X57_Y4_N23
\inst2|inst6|Flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkSystem~inputclkctrl_outclk\,
	asdata => \inst2|inst6|Flag~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|Flag~q\);

-- Location: LCCOMB_X57_Y4_N30
\inst2|inst6|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|process_0~0_combout\ = (!\inst2|inst6|Flag~q\ & \inst2|inst5|QOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|Flag~q\,
	datac => \inst2|inst5|QOut~q\,
	combout => \inst2|inst6|process_0~0_combout\);

-- Location: LCCOMB_X58_Y4_N6
\inst2|inst6|Cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|Cnt~2_combout\ = (\inst2|inst6|Add0~0_combout\ & (!\inst2|inst6|Equal0~0_combout\ & \inst2|inst6|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|Add0~0_combout\,
	datab => \inst2|inst6|Equal0~0_combout\,
	datac => \inst2|inst6|LessThan0~2_combout\,
	combout => \inst2|inst6|Cnt~2_combout\);

-- Location: FF_X58_Y4_N7
\inst2|inst6|Cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkSystem~inputclkctrl_outclk\,
	d => \inst2|inst6|Cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|Cnt\(0));

-- Location: LCCOMB_X58_Y4_N10
\inst2|inst6|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|LessThan0~0_combout\ = (!\inst2|inst6|Cnt\(0) & (!\inst2|inst6|Cnt\(2) & ((\inst2|inst6|Flag~q\) # (!\inst2|inst5|QOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|Cnt\(0),
	datab => \inst2|inst5|QOut~q\,
	datac => \inst2|inst6|Flag~q\,
	datad => \inst2|inst6|Cnt\(2),
	combout => \inst2|inst6|LessThan0~0_combout\);

-- Location: LCCOMB_X58_Y4_N2
\inst2|inst6|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|LessThan0~2_combout\ = ((\inst2|inst6|Cnt\(7)) # ((\inst2|inst6|Cnt\(1)) # (!\inst2|inst6|LessThan0~1_combout\))) # (!\inst2|inst6|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|LessThan0~0_combout\,
	datab => \inst2|inst6|Cnt\(7),
	datac => \inst2|inst6|Cnt\(1),
	datad => \inst2|inst6|LessThan0~1_combout\,
	combout => \inst2|inst6|LessThan0~2_combout\);

-- Location: LCCOMB_X57_Y4_N4
\inst2|inst6|QOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|QOut~0_combout\ = (\inst2|inst6|Add0~8_combout\) # ((\inst2|inst6|Add0~6_combout\) # ((\inst2|inst6|Add0~2_combout\) # (\inst2|inst6|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|Add0~8_combout\,
	datab => \inst2|inst6|Add0~6_combout\,
	datac => \inst2|inst6|Add0~2_combout\,
	datad => \inst2|inst6|Add0~4_combout\,
	combout => \inst2|inst6|QOut~0_combout\);

-- Location: LCCOMB_X57_Y4_N2
\inst2|inst6|QOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|QOut~1_combout\ = (\inst2|inst6|Add0~10_combout\) # ((\inst2|inst6|Add0~12_combout\) # ((\inst2|inst6|QOut~0_combout\) # (\inst2|inst6|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|Add0~10_combout\,
	datab => \inst2|inst6|Add0~12_combout\,
	datac => \inst2|inst6|QOut~0_combout\,
	datad => \inst2|inst6|Add0~14_combout\,
	combout => \inst2|inst6|QOut~1_combout\);

-- Location: LCCOMB_X57_Y4_N0
\inst2|inst6|QOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|QOut~2_combout\ = (!\inst2|inst6|Equal0~0_combout\ & ((\inst2|inst6|QOut~q\) # ((\inst2|inst6|LessThan0~2_combout\ & \inst2|inst6|QOut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|LessThan0~2_combout\,
	datab => \inst2|inst6|Equal0~0_combout\,
	datac => \inst2|inst6|QOut~q\,
	datad => \inst2|inst6|QOut~1_combout\,
	combout => \inst2|inst6|QOut~2_combout\);

-- Location: FF_X57_Y4_N15
\inst2|inst6|QOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkSystem~inputclkctrl_outclk\,
	asdata => \inst2|inst6|QOut~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|QOut~q\);

-- Location: CLKCTRL_G18
\inst2|inst6|QOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|inst6|QOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|inst6|QOut~clkctrl_outclk\);

-- Location: CLKCTRL_G17
\inst2|inst5|QOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|inst5|QOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|inst5|QOut~clkctrl_outclk\);

-- Location: LCCOMB_X54_Y3_N12
\inst|inst|Q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Q[0]~0_combout\ = (!\D[6]~input_o\ & !\D[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[6]~input_o\,
	datad => \D[4]~input_o\,
	combout => \inst|inst|Q[0]~0_combout\);

-- Location: LCCOMB_X55_Y3_N20
\inst|inst|Q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Q[0]~1_combout\ = ((\D[2]~input_o\) # ((\D[0]~input_o\) # (\D[8]~input_o\))) # (!\inst|inst|Q[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Q[0]~0_combout\,
	datab => \D[2]~input_o\,
	datac => \D[0]~input_o\,
	datad => \D[8]~input_o\,
	combout => \inst|inst|Q[0]~1_combout\);

-- Location: FF_X54_Y3_N13
\inst2|inst|DFF3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst5|QOut~clkctrl_outclk\,
	asdata => \inst|inst|Q[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|DFF3~q\);

-- Location: LCCOMB_X54_Y3_N28
\inst|inst|Q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Q[1]~3_combout\ = (\D[6]~input_o\) # ((\D[2]~input_o\) # ((\D[7]~input_o\) # (\D[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[6]~input_o\,
	datab => \D[2]~input_o\,
	datac => \D[7]~input_o\,
	datad => \D[3]~input_o\,
	combout => \inst|inst|Q[1]~3_combout\);

-- Location: FF_X54_Y3_N29
\inst2|inst|DFF2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst5|QOut~clkctrl_outclk\,
	d => \inst|inst|Q[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|DFF2~q\);

-- Location: LCCOMB_X54_Y3_N6
\inst|inst|Q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Q[2]~2_combout\ = (\D[3]~input_o\) # ((\D[4]~input_o\) # ((\D[5]~input_o\) # (\D[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datab => \D[4]~input_o\,
	datac => \D[5]~input_o\,
	datad => \D[2]~input_o\,
	combout => \inst|inst|Q[2]~2_combout\);

-- Location: FF_X54_Y3_N7
\inst2|inst|DFF1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst5|QOut~clkctrl_outclk\,
	d => \inst|inst|Q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|DFF1~q\);

-- Location: LCCOMB_X55_Y3_N30
\inst|inst|Q[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Q\(3) = (\D[0]~input_o\) # (\D[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D[0]~input_o\,
	datad => \D[1]~input_o\,
	combout => \inst|inst|Q\(3));

-- Location: FF_X54_Y3_N31
\inst2|inst|DFF0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst5|QOut~clkctrl_outclk\,
	asdata => \inst|inst|Q\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|DFF0~q\);

-- Location: LCCOMB_X54_Y3_N14
\inst2|inst2|EQ~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|EQ~1_combout\ = (!\inst2|inst|DFF2~q\ & ((\inst2|inst|DFF3~q\) # ((\inst2|inst|DFF1~q\) # (\inst2|inst|DFF0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|DFF3~q\,
	datab => \inst2|inst|DFF2~q\,
	datac => \inst2|inst|DFF1~q\,
	datad => \inst2|inst|DFF0~q\,
	combout => \inst2|inst2|EQ~1_combout\);

-- Location: CLKCTRL_G19
\inst|inst1|ORgateOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inst1|ORgateOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inst1|ORgateOut~clkctrl_outclk\);

-- Location: LCCOMB_X54_Y3_N24
\inst2|inst3|Bout[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst3|Bout[3]~4_combout\ = (\inst2|inst2|EQ~2_combout\ & ((\inst2|inst3|flag\(1)) # ((\inst2|inst3|flag\(2)) # (!\inst2|inst3|flag\(0))))) # (!\inst2|inst2|EQ~2_combout\ & ((\inst2|inst3|flag\(0)) # (\inst2|inst3|flag\(1) $ 
-- (!\inst2|inst3|flag\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|flag\(1),
	datab => \inst2|inst2|EQ~2_combout\,
	datac => \inst2|inst3|flag\(2),
	datad => \inst2|inst3|flag\(0),
	combout => \inst2|inst3|Bout[3]~4_combout\);

-- Location: LCCOMB_X54_Y3_N10
\inst2|inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|Equal0~0_combout\ = \inst2|inst|DFF0~q\ $ (\inst2|inst4|DFF0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|DFF0~q\,
	datab => \inst2|inst4|DFF0~q\,
	combout => \inst2|inst2|Equal0~0_combout\);

-- Location: LCCOMB_X55_Y3_N26
\inst2|inst3|Bout[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst3|Bout[0]~1_combout\ = (\inst2|inst3|flag\(1) & (\inst2|inst3|flag\(2))) # (!\inst2|inst3|flag\(1) & ((\inst2|inst3|flag\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|flag\(2),
	datac => \inst2|inst3|flag\(1),
	datad => \inst2|inst3|flag\(0),
	combout => \inst2|inst3|Bout[0]~1_combout\);

-- Location: LCCOMB_X54_Y3_N4
\inst2|inst3|Bout[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst3|Bout[0]~2_combout\ = (\inst2|inst2|Equal0~0_combout\) # (((!\inst2|inst3|Bout[0]~1_combout\) # (!\inst2|inst2|EQ~0_combout\)) # (!\inst2|inst2|EQ~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|Equal0~0_combout\,
	datab => \inst2|inst2|EQ~1_combout\,
	datac => \inst2|inst2|EQ~0_combout\,
	datad => \inst2|inst3|Bout[0]~1_combout\,
	combout => \inst2|inst3|Bout[0]~2_combout\);

-- Location: FF_X54_Y3_N25
\inst2|inst3|Bout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|ORgateOut~clkctrl_outclk\,
	d => \inst2|inst3|Bout[3]~4_combout\,
	ena => \inst2|inst3|Bout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3|Bout\(3));

-- Location: LCCOMB_X54_Y3_N20
\inst2|inst4|DFF0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst4|DFF0~feeder_combout\ = \inst2|inst3|Bout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst3|Bout\(3),
	combout => \inst2|inst4|DFF0~feeder_combout\);

-- Location: FF_X54_Y3_N21
\inst2|inst4|DFF0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst5|QOut~clkctrl_outclk\,
	d => \inst2|inst4|DFF0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst4|DFF0~q\);

-- Location: LCCOMB_X54_Y3_N26
\inst2|inst2|EQ~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|EQ~2_combout\ = ((\inst2|inst4|DFF0~q\ $ (\inst2|inst|DFF0~q\)) # (!\inst2|inst2|EQ~0_combout\)) # (!\inst2|inst2|EQ~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst4|DFF0~q\,
	datab => \inst2|inst2|EQ~1_combout\,
	datac => \inst2|inst2|EQ~0_combout\,
	datad => \inst2|inst|DFF0~q\,
	combout => \inst2|inst2|EQ~2_combout\);

-- Location: LCCOMB_X55_Y3_N18
\inst2|inst3|flag[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst3|flag[0]~1_combout\ = (\inst2|inst3|flag\(1) & (!\inst2|inst2|EQ~2_combout\ & (\inst2|inst3|flag\(2) $ (!\inst2|inst3|flag\(0))))) # (!\inst2|inst3|flag\(1) & ((\inst2|inst3|flag\(0) & ((!\inst2|inst2|EQ~2_combout\))) # (!\inst2|inst3|flag\(0) 
-- & (!\inst2|inst3|flag\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|flag\(1),
	datab => \inst2|inst3|flag\(2),
	datac => \inst2|inst3|flag\(0),
	datad => \inst2|inst2|EQ~2_combout\,
	combout => \inst2|inst3|flag[0]~1_combout\);

-- Location: FF_X55_Y3_N19
\inst2|inst3|flag[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|ORgateOut~clkctrl_outclk\,
	d => \inst2|inst3|flag[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3|flag\(0));

-- Location: LCCOMB_X55_Y3_N12
\inst2|inst3|flag[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst3|flag[2]~2_combout\ = (!\inst2|inst2|EQ~2_combout\ & ((\inst2|inst3|flag\(1) & ((\inst2|inst3|flag\(0)) # (\inst2|inst3|flag\(2)))) # (!\inst2|inst3|flag\(1) & (\inst2|inst3|flag\(0) & \inst2|inst3|flag\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|flag\(1),
	datab => \inst2|inst3|flag\(0),
	datac => \inst2|inst3|flag\(2),
	datad => \inst2|inst2|EQ~2_combout\,
	combout => \inst2|inst3|flag[2]~2_combout\);

-- Location: FF_X55_Y3_N13
\inst2|inst3|flag[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|ORgateOut~clkctrl_outclk\,
	d => \inst2|inst3|flag[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3|flag\(2));

-- Location: LCCOMB_X55_Y3_N8
\inst2|inst3|flag[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst3|flag[1]~0_combout\ = (\inst2|inst3|flag\(1) & (!\inst2|inst2|EQ~2_combout\ & ((\inst2|inst3|flag\(2)) # (!\inst2|inst3|flag\(0))))) # (!\inst2|inst3|flag\(1) & (!\inst2|inst3|flag\(2) & (\inst2|inst3|flag\(0) & \inst2|inst2|EQ~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|flag\(2),
	datab => \inst2|inst3|flag\(0),
	datac => \inst2|inst3|flag\(1),
	datad => \inst2|inst2|EQ~2_combout\,
	combout => \inst2|inst3|flag[1]~0_combout\);

-- Location: FF_X55_Y3_N9
\inst2|inst3|flag[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|ORgateOut~clkctrl_outclk\,
	d => \inst2|inst3|flag[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3|flag\(1));

-- Location: LCCOMB_X54_Y3_N16
\inst2|inst3|Bout[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst3|Bout[2]~0_combout\ = (\inst2|inst3|flag\(1) & (!\inst2|inst2|EQ~2_combout\ & (!\inst2|inst3|flag\(2) & !\inst2|inst3|flag\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|flag\(1),
	datab => \inst2|inst2|EQ~2_combout\,
	datac => \inst2|inst3|flag\(2),
	datad => \inst2|inst3|flag\(0),
	combout => \inst2|inst3|Bout[2]~0_combout\);

-- Location: FF_X54_Y3_N17
\inst2|inst3|Bout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|ORgateOut~clkctrl_outclk\,
	d => \inst2|inst3|Bout[2]~0_combout\,
	ena => \inst2|inst3|Bout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3|Bout\(2));

-- Location: LCCOMB_X54_Y3_N8
\inst2|inst4|DFF1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst4|DFF1~feeder_combout\ = \inst2|inst3|Bout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst3|Bout\(2),
	combout => \inst2|inst4|DFF1~feeder_combout\);

-- Location: FF_X54_Y3_N9
\inst2|inst4|DFF1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst5|QOut~clkctrl_outclk\,
	d => \inst2|inst4|DFF1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst4|DFF1~q\);

-- Location: LCCOMB_X54_Y3_N18
\inst2|inst3|Bout[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst3|Bout[0]~3_combout\ = (\inst2|inst3|flag\(0) & (!\inst2|inst3|flag\(2) & (\inst2|inst3|flag\(1) $ (\inst2|inst2|EQ~2_combout\)))) # (!\inst2|inst3|flag\(0) & (!\inst2|inst2|EQ~2_combout\ & (\inst2|inst3|flag\(1) $ (\inst2|inst3|flag\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|flag\(1),
	datab => \inst2|inst2|EQ~2_combout\,
	datac => \inst2|inst3|flag\(2),
	datad => \inst2|inst3|flag\(0),
	combout => \inst2|inst3|Bout[0]~3_combout\);

-- Location: FF_X54_Y3_N19
\inst2|inst3|Bout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|ORgateOut~clkctrl_outclk\,
	d => \inst2|inst3|Bout[0]~3_combout\,
	ena => \inst2|inst3|Bout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3|Bout\(0));

-- Location: LCCOMB_X54_Y3_N22
\inst2|inst4|DFF3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst4|DFF3~feeder_combout\ = \inst2|inst3|Bout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst3|Bout\(0),
	combout => \inst2|inst4|DFF3~feeder_combout\);

-- Location: FF_X54_Y3_N23
\inst2|inst4|DFF3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst5|QOut~clkctrl_outclk\,
	d => \inst2|inst4|DFF3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst4|DFF3~q\);

-- Location: LCCOMB_X54_Y3_N0
\inst2|inst2|EQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|EQ~0_combout\ = (\inst2|inst|DFF3~q\ & (\inst2|inst4|DFF3~q\ & (\inst2|inst4|DFF1~q\ $ (!\inst2|inst|DFF1~q\)))) # (!\inst2|inst|DFF3~q\ & (!\inst2|inst4|DFF3~q\ & (\inst2|inst4|DFF1~q\ $ (!\inst2|inst|DFF1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|DFF3~q\,
	datab => \inst2|inst4|DFF1~q\,
	datac => \inst2|inst|DFF1~q\,
	datad => \inst2|inst4|DFF3~q\,
	combout => \inst2|inst2|EQ~0_combout\);

-- Location: LCCOMB_X53_Y3_N12
\inst5|inst|DFF3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|DFF3~feeder_combout\ = \inst2|inst2|EQ~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst2|EQ~2_combout\,
	combout => \inst5|inst|DFF3~feeder_combout\);

-- Location: FF_X53_Y3_N13
\inst5|inst|DFF3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst6|QOut~clkctrl_outclk\,
	d => \inst5|inst|DFF3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|DFF3~q\);

-- Location: LCCOMB_X53_Y3_N10
\inst5|inst|D3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|D3~0_combout\ = (\inst2|inst2|EQ~1_combout\ & (\inst2|inst2|EQ~0_combout\ & (!\inst2|inst2|Equal0~0_combout\ & \inst5|inst|DFF3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|EQ~1_combout\,
	datab => \inst2|inst2|EQ~0_combout\,
	datac => \inst2|inst2|Equal0~0_combout\,
	datad => \inst5|inst|DFF3~q\,
	combout => \inst5|inst|D3~0_combout\);

-- Location: FF_X53_Y3_N11
\inst5|inst|DFF4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst6|QOut~clkctrl_outclk\,
	d => \inst5|inst|D3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|DFF4~q\);

-- Location: LCCOMB_X53_Y3_N28
\inst5|inst|D2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|D2~0_combout\ = (\inst2|inst2|EQ~1_combout\ & (\inst2|inst2|EQ~0_combout\ & (!\inst2|inst2|Equal0~0_combout\ & \inst5|inst|DFF4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|EQ~1_combout\,
	datab => \inst2|inst2|EQ~0_combout\,
	datac => \inst2|inst2|Equal0~0_combout\,
	datad => \inst5|inst|DFF4~q\,
	combout => \inst5|inst|D2~0_combout\);

-- Location: FF_X53_Y3_N29
\inst5|inst|DFF5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst6|QOut~clkctrl_outclk\,
	d => \inst5|inst|D2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|DFF5~q\);

-- Location: LCCOMB_X53_Y3_N18
\inst5|inst|D1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|D1~0_combout\ = (\inst2|inst2|EQ~1_combout\ & (\inst2|inst2|EQ~0_combout\ & (!\inst2|inst2|Equal0~0_combout\ & \inst5|inst|DFF5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|EQ~1_combout\,
	datab => \inst2|inst2|EQ~0_combout\,
	datac => \inst2|inst2|Equal0~0_combout\,
	datad => \inst5|inst|DFF5~q\,
	combout => \inst5|inst|D1~0_combout\);

-- Location: FF_X53_Y3_N19
\inst5|inst|DFF6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst6|QOut~clkctrl_outclk\,
	d => \inst5|inst|D1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|DFF6~q\);

-- Location: LCCOMB_X53_Y3_N4
\inst5|inst|D0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|D0~0_combout\ = (\inst2|inst2|EQ~1_combout\ & (\inst2|inst2|EQ~0_combout\ & (!\inst2|inst2|Equal0~0_combout\ & \inst5|inst|DFF6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|EQ~1_combout\,
	datab => \inst2|inst2|EQ~0_combout\,
	datac => \inst2|inst2|Equal0~0_combout\,
	datad => \inst5|inst|DFF6~q\,
	combout => \inst5|inst|D0~0_combout\);

-- Location: FF_X53_Y3_N5
\inst5|inst|DFF7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst6|QOut~clkctrl_outclk\,
	d => \inst5|inst|D0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|DFF7~q\);

ww_Alarm <= \Alarm~output_o\;
END structure;


