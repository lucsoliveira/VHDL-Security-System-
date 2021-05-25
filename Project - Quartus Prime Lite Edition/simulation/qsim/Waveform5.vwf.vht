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
-- Generated on "05/11/2021 19:41:41"
                                                             
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
SIGNAL Clk : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(0 TO 3);
SIGNAL Q : STD_LOGIC_VECTOR(0 TO 3);
COMPONENT testes2
	PORT (
	Clk : IN STD_LOGIC;
	D : IN STD_LOGIC_VECTOR(0 TO 3);
	Q : OUT STD_LOGIC_VECTOR(0 TO 3)
	);
END COMPONENT;
BEGIN
	i1 : testes2
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	D => D,
	Q => Q
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 10000 ps;
	Clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;
-- D[3]
t_prcs_D_3: PROCESS
BEGIN
	D(3) <= '1';
	WAIT FOR 350000 ps;
	D(3) <= '0';
	WAIT FOR 240000 ps;
	D(3) <= '1';
WAIT;
END PROCESS t_prcs_D_3;
-- D[2]
t_prcs_D_2: PROCESS
BEGIN
	D(2) <= '0';
WAIT;
END PROCESS t_prcs_D_2;
-- D[1]
t_prcs_D_1: PROCESS
BEGIN
	D(1) <= '0';
WAIT;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
	D(0) <= '1';
	WAIT FOR 50000 ps;
	FOR i IN 1 TO 9
	LOOP
		D(0) <= '0';
		WAIT FOR 50000 ps;
		D(0) <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	D(0) <= '0';
WAIT;
END PROCESS t_prcs_D_0;
END testes2_arch;
