-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/19/2021 22:43:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          projetoDigitais
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY projetoDigitais_vhd_vec_tst IS
END projetoDigitais_vhd_vec_tst;
ARCHITECTURE projetoDigitais_arch OF projetoDigitais_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Alarm : STD_LOGIC;
SIGNAL ClkSystem : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(0 TO 9);
SIGNAL Enter : STD_LOGIC;
COMPONENT projetoDigitais
	PORT (
	Alarm : OUT STD_LOGIC;
	ClkSystem : IN STD_LOGIC;
	D : IN STD_LOGIC_VECTOR(0 TO 9);
	Enter : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : projetoDigitais
	PORT MAP (
-- list connections between master ports and signals
	Alarm => Alarm,
	ClkSystem => ClkSystem,
	D => D,
	Enter => Enter
	);

-- ClkSystem
t_prcs_ClkSystem: PROCESS
BEGIN
	FOR i IN 1 TO 71
	LOOP
		ClkSystem <= '0';
		WAIT FOR 21000 ps;
		ClkSystem <= '1';
		WAIT FOR 21000 ps;
	END LOOP;
	ClkSystem <= '0';
WAIT;
END PROCESS t_prcs_ClkSystem;
-- D[9]
t_prcs_D_9: PROCESS
BEGIN
	D(9) <= '0';
WAIT;
END PROCESS t_prcs_D_9;
-- D[8]
t_prcs_D_8: PROCESS
BEGIN
	D(8) <= '0';
	WAIT FOR 900000 ps;
	D(8) <= '1';
	WAIT FOR 100000 ps;
	D(8) <= '0';
	WAIT FOR 500000 ps;
	D(8) <= '1';
	WAIT FOR 100000 ps;
	D(8) <= '0';
WAIT;
END PROCESS t_prcs_D_8;
-- D[7]
t_prcs_D_7: PROCESS
BEGIN
	D(7) <= '0';
WAIT;
END PROCESS t_prcs_D_7;
-- D[6]
t_prcs_D_6: PROCESS
BEGIN
	D(6) <= '0';
WAIT;
END PROCESS t_prcs_D_6;
-- D[5]
t_prcs_D_5: PROCESS
BEGIN
	D(5) <= '0';
WAIT;
END PROCESS t_prcs_D_5;
-- D[4]
t_prcs_D_4: PROCESS
BEGIN
	D(4) <= '0';
	WAIT FOR 1100000 ps;
	D(4) <= '1';
	WAIT FOR 100000 ps;
	D(4) <= '0';
WAIT;
END PROCESS t_prcs_D_4;
-- D[3]
t_prcs_D_3: PROCESS
BEGIN
	D(3) <= '0';
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
	D(0) <= '0';
	WAIT FOR 1300000 ps;
	D(0) <= '1';
	WAIT FOR 100000 ps;
	D(0) <= '0';
WAIT;
END PROCESS t_prcs_D_0;

-- Enter
t_prcs_Enter: PROCESS
BEGIN
	Enter <= '0';
	WAIT FOR 700000 ps;
	Enter <= '1';
	WAIT FOR 100000 ps;
	Enter <= '0';
WAIT;
END PROCESS t_prcs_Enter;
END projetoDigitais_arch;
