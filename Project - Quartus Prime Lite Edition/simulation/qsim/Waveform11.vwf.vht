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
-- Generated on "05/12/2021 11:02:22"
                                                             
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
SIGNAL D : STD_LOGIC_VECTOR(0 TO 7);
SIGNAL ORGate : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
SIGNAL Q0 : STD_LOGIC;
SIGNAL Q1 : STD_LOGIC;
SIGNAL Q2 : STD_LOGIC;
SIGNAL Q3 : STD_LOGIC;
SIGNAL ShiftA : STD_LOGIC_VECTOR(0 TO 3);
SIGNAL ShiftB : STD_LOGIC_VECTOR(0 TO 3);
COMPONENT testes2
	PORT (
	Clk : IN STD_LOGIC;
	D : IN STD_LOGIC_VECTOR(0 TO 7);
	ORGate : IN STD_LOGIC;
	Q : OUT STD_LOGIC;
	Q0 : IN STD_LOGIC;
	Q1 : IN STD_LOGIC;
	Q2 : IN STD_LOGIC;
	Q3 : IN STD_LOGIC;
	ShiftA : OUT STD_LOGIC_VECTOR(0 TO 3);
	ShiftB : OUT STD_LOGIC_VECTOR(0 TO 3)
	);
END COMPONENT;
BEGIN
	i1 : testes2
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	D => D,
	ORGate => ORGate,
	Q => Q,
	Q0 => Q0,
	Q1 => Q1,
	Q2 => Q2,
	Q3 => Q3,
	ShiftA => ShiftA,
	ShiftB => ShiftB
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
WAIT;
END PROCESS t_prcs_D_4;
-- D[3]
t_prcs_D_3: PROCESS
BEGIN
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
	D(0) <= '0';
WAIT;
END PROCESS t_prcs_D_0;

-- ORGate
t_prcs_ORGate: PROCESS
BEGIN
	ORGate <= '0';
WAIT;
END PROCESS t_prcs_ORGate;

-- Q0
t_prcs_Q0: PROCESS
BEGIN
	Q0 <= '1';
	WAIT FOR 100000 ps;
	Q0 <= '0';
WAIT;
END PROCESS t_prcs_Q0;

-- Q1
t_prcs_Q1: PROCESS
BEGIN
	Q1 <= '0';
	WAIT FOR 100000 ps;
	Q1 <= '1';
	WAIT FOR 90000 ps;
	Q1 <= '0';
WAIT;
END PROCESS t_prcs_Q1;

-- Q2
t_prcs_Q2: PROCESS
BEGIN
	Q2 <= '0';
WAIT;
END PROCESS t_prcs_Q2;

-- Q3
t_prcs_Q3: PROCESS
BEGIN
	Q3 <= '0';
WAIT;
END PROCESS t_prcs_Q3;
END testes2_arch;
