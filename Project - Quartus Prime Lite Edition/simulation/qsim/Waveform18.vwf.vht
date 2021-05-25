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
-- Generated on "05/13/2021 09:21:19"
                                                             
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
SIGNAL D0 : STD_LOGIC;
SIGNAL D1 : STD_LOGIC;
SIGNAL D2 : STD_LOGIC;
SIGNAL D3 : STD_LOGIC;
SIGNAL Q0 : STD_LOGIC;
SIGNAL Q1 : STD_LOGIC;
SIGNAL Q2 : STD_LOGIC;
SIGNAL Q3 : STD_LOGIC;
SIGNAL R_L : STD_LOGIC;
COMPONENT testes2
	PORT (
	Clk : IN STD_LOGIC;
	D0 : IN STD_LOGIC;
	D1 : IN STD_LOGIC;
	D2 : IN STD_LOGIC;
	D3 : IN STD_LOGIC;
	Q0 : OUT STD_LOGIC;
	Q1 : OUT STD_LOGIC;
	Q2 : OUT STD_LOGIC;
	Q3 : OUT STD_LOGIC;
	R_L : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : testes2
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	D0 => D0,
	D1 => D1,
	D2 => D2,
	D3 => D3,
	Q0 => Q0,
	Q1 => Q1,
	Q2 => Q2,
	Q3 => Q3,
	R_L => R_L
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 20000 ps;
	Clk <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;

-- R_L
t_prcs_R_L: PROCESS
BEGIN
LOOP
	R_L <= '0';
	WAIT FOR 100000 ps;
	R_L <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_R_L;

-- D0
t_prcs_D0: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		D0 <= '0';
		WAIT FOR 15000 ps;
		D0 <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	D0 <= '0';
WAIT;
END PROCESS t_prcs_D0;

-- D1
t_prcs_D1: PROCESS
BEGIN
LOOP
	D1 <= '0';
	WAIT FOR 50000 ps;
	D1 <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_D1;

-- D2
t_prcs_D2: PROCESS
BEGIN
	FOR i IN 1 TO 14
	LOOP
		D2 <= '0';
		WAIT FOR 35000 ps;
		D2 <= '1';
		WAIT FOR 35000 ps;
	END LOOP;
	D2 <= '0';
WAIT;
END PROCESS t_prcs_D2;

-- D3
t_prcs_D3: PROCESS
BEGIN
	FOR i IN 1 TO 11
	LOOP
		D3 <= '0';
		WAIT FOR 45000 ps;
		D3 <= '1';
		WAIT FOR 45000 ps;
	END LOOP;
	D3 <= '0';
WAIT;
END PROCESS t_prcs_D3;
END testes2_arch;
