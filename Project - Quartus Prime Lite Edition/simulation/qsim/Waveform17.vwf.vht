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
-- Generated on "05/12/2021 22:07:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          testes
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY testes_vhd_vec_tst IS
END testes_vhd_vec_tst;
ARCHITECTURE testes_arch OF testes_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(0 TO 7);
SIGNAL Clk : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(0 TO 9);
SIGNAL Enter : STD_LOGIC;
SIGNAL ORGate : STD_LOGIC;
SIGNAL OutOrGate : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
SIGNAL ShiftA : STD_LOGIC_VECTOR(0 TO 3);
SIGNAL ShiftB : STD_LOGIC_VECTOR(0 TO 3);
COMPONENT testes
	PORT (
	A : IN STD_LOGIC_VECTOR(0 TO 7);
	Clk : IN STD_LOGIC;
	D : IN STD_LOGIC_VECTOR(0 TO 9);
	Enter : IN STD_LOGIC;
	ORGate : IN STD_LOGIC;
	OutOrGate : OUT STD_LOGIC;
	Q : OUT STD_LOGIC;
	ShiftA : OUT STD_LOGIC_VECTOR(0 TO 3);
	ShiftB : OUT STD_LOGIC_VECTOR(0 TO 3)
	);
END COMPONENT;
BEGIN
	i1 : testes
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	Clk => Clk,
	D => D,
	Enter => Enter,
	ORGate => ORGate,
	OutOrGate => OutOrGate,
	Q => Q,
	ShiftA => ShiftA,
	ShiftB => ShiftB
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
	FOR i IN 1 TO 14
	LOOP
		Clk <= '0';
		WAIT FOR 35000 ps;
		Clk <= '1';
		WAIT FOR 35000 ps;
	END LOOP;
	Clk <= '0';
WAIT;
END PROCESS t_prcs_Clk;
-- A[7]
t_prcs_A_7: PROCESS
BEGIN
	A(7) <= '0';
WAIT;
END PROCESS t_prcs_A_7;
-- A[6]
t_prcs_A_6: PROCESS
BEGIN
	A(6) <= '0';
WAIT;
END PROCESS t_prcs_A_6;
-- A[5]
t_prcs_A_5: PROCESS
BEGIN
	A(5) <= '0';
WAIT;
END PROCESS t_prcs_A_5;
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	A(4) <= '0';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '1';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;
-- D[9]
t_prcs_D_9: PROCESS
BEGIN
	D(9) <= '0';
	WAIT FOR 210000 ps;
	D(9) <= '1';
	WAIT FOR 90000 ps;
	D(9) <= '0';
WAIT;
END PROCESS t_prcs_D_9;
-- D[8]
t_prcs_D_8: PROCESS
BEGIN
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
	WAIT FOR 130000 ps;
	D(5) <= '1';
	WAIT FOR 80000 ps;
	D(5) <= '0';
WAIT;
END PROCESS t_prcs_D_5;
-- D[4]
t_prcs_D_4: PROCESS
BEGIN
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
	WAIT FOR 50000 ps;
	D(1) <= '1';
	WAIT FOR 80000 ps;
	D(1) <= '0';
	WAIT FOR 170000 ps;
	D(1) <= '1';
	WAIT FOR 70000 ps;
	D(1) <= '0';
WAIT;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
	D(0) <= '0';
WAIT;
END PROCESS t_prcs_D_0;

-- Enter
t_prcs_Enter: PROCESS
BEGIN
	Enter <= '1';
	WAIT FOR 50000 ps;
	Enter <= '0';
WAIT;
END PROCESS t_prcs_Enter;

-- ORGate
t_prcs_ORGate: PROCESS
BEGIN
	ORGate <= '1';
	WAIT FOR 50000 ps;
	ORGate <= '0';
WAIT;
END PROCESS t_prcs_ORGate;
END testes_arch;
