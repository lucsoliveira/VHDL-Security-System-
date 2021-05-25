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
-- Generated on "05/13/2021 09:29:18"
                                                             
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
SIGNAL Bout : STD_LOGIC_VECTOR(1 TO 4);
SIGNAL Clk : STD_LOGIC;
SIGNAL ShiftIn : STD_LOGIC;
COMPONENT testes2
	PORT (
	Bout : OUT STD_LOGIC_VECTOR(1 TO 4);
	Clk : IN STD_LOGIC;
	ShiftIn : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : testes2
	PORT MAP (
-- list connections between master ports and signals
	Bout => Bout,
	Clk => Clk,
	ShiftIn => ShiftIn
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 25000 ps;
	Clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;

-- ShiftIn
t_prcs_ShiftIn: PROCESS
BEGIN
	ShiftIn <= '0';
	WAIT FOR 160000 ps;
	ShiftIn <= '1';
	WAIT FOR 20000 ps;
	ShiftIn <= '0';
WAIT;
END PROCESS t_prcs_ShiftIn;
END testes2_arch;
