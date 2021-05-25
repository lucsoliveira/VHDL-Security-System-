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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/13/2021 09:51:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          testes2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY testes2_vhd_vec_tst IS
END testes2_vhd_vec_tst;
ARCHITECTURE testes2_arch OF testes2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Alarm : STD_LOGIC;
SIGNAL Clk : STD_LOGIC;
SIGNAL CodeSelectionOut : STD_LOGIC_VECTOR(0 TO 3);
SIGNAL Enter : STD_LOGIC;
SIGNAL key : STD_LOGIC_VECTOR(0 TO 9);
SIGNAL MagnitudeOut : STD_LOGIC;
SIGNAL SaidaBCDEncoder : STD_LOGIC_VECTOR(0 TO 3);
SIGNAL SAOut : STD_LOGIC_VECTOR(0 TO 3);
SIGNAL SBOut : STD_LOGIC_VECTOR(0 TO 3);
COMPONENT testes2
	PORT (
	Alarm : OUT STD_LOGIC;
	Clk : IN STD_LOGIC;
	CodeSelectionOut : OUT STD_LOGIC_VECTOR(0 TO 3);
	Enter : IN STD_LOGIC;
	key : IN STD_LOGIC_VECTOR(0 TO 9);
	MagnitudeOut : OUT STD_LOGIC;
	SaidaBCDEncoder : OUT STD_LOGIC_VECTOR(0 TO 3);
	SAOut : OUT STD_LOGIC_VECTOR(0 TO 3);
	SBOut : OUT STD_LOGIC_VECTOR(0 TO 3)
	);
END COMPONENT;
BEGIN
	i1 : testes2
	PORT MAP (
-- list connections between master ports and signals
	Alarm => Alarm,
	Clk => Clk,
	CodeSelectionOut => CodeSelectionOut,
	Enter => Enter,
	key => key,
	MagnitudeOut => MagnitudeOut,
	SaidaBCDEncoder => SaidaBCDEncoder,
	SAOut => SAOut,
	SBOut => SBOut
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 50000 ps;
	Clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;
-- key[9]
t_prcs_key_9: PROCESS
BEGIN
	key(9) <= '0';
	WAIT FOR 150000 ps;
	key(9) <= '1';
	WAIT FOR 80000 ps;
	key(9) <= '0';
WAIT;
END PROCESS t_prcs_key_9;
-- key[8]
t_prcs_key_8: PROCESS
BEGIN
	key(8) <= '0';
WAIT;
END PROCESS t_prcs_key_8;
-- key[7]
t_prcs_key_7: PROCESS
BEGIN
	key(7) <= '0';
WAIT;
END PROCESS t_prcs_key_7;
-- key[6]
t_prcs_key_6: PROCESS
BEGIN
	key(6) <= '0';
WAIT;
END PROCESS t_prcs_key_6;
-- key[5]
t_prcs_key_5: PROCESS
BEGIN
	key(5) <= '0';
	WAIT FOR 90000 ps;
	key(5) <= '1';
	WAIT FOR 60000 ps;
	key(5) <= '0';
WAIT;
END PROCESS t_prcs_key_5;
-- key[4]
t_prcs_key_4: PROCESS
BEGIN
	key(4) <= '0';
WAIT;
END PROCESS t_prcs_key_4;
-- key[3]
t_prcs_key_3: PROCESS
BEGIN
	key(3) <= '0';
WAIT;
END PROCESS t_prcs_key_3;
-- key[2]
t_prcs_key_2: PROCESS
BEGIN
	key(2) <= '0';
WAIT;
END PROCESS t_prcs_key_2;
-- key[1]
t_prcs_key_1: PROCESS
BEGIN
	key(1) <= '0';
	WAIT FOR 50000 ps;
	key(1) <= '1';
	WAIT FOR 40000 ps;
	key(1) <= '0';
	WAIT FOR 140000 ps;
	key(1) <= '1';
	WAIT FOR 60000 ps;
	key(1) <= '0';
WAIT;
END PROCESS t_prcs_key_1;
-- key[0]
t_prcs_key_0: PROCESS
BEGIN
	key(0) <= '0';
WAIT;
END PROCESS t_prcs_key_0;

-- Enter
t_prcs_Enter: PROCESS
BEGIN
	Enter <= '1';
	WAIT FOR 60000 ps;
	Enter <= '0';
WAIT;
END PROCESS t_prcs_Enter;
END testes2_arch;
