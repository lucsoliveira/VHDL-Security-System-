library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

ENTITY testEightBitShiftReg IS
END ENTITY;

ARCHITECTURE simulacao OF testEightBitShiftReg IS

	component EightBitShiftReg is

		port (	R_L,Clk:in std_logic;
			D:in std_logic_vector(7 downto 0);
			Q:out std_logic
		);

	end component;
	
	SIGNAL D:std_logic_vector(7 downto 0);
	SIGNAL Q,R_L:std_logic;
	
	--para o clock
	constant period : time := 50 ns;
	SIGNAL Clk :  std_logic;
BEGIN

	expLog: EightBitShiftReg PORT MAP (R_L, Clk, D, Q);
	
	--Clock
	PROCESS
	BEGIN
		Clk <= '0'; wait for 20 ns;
		Clk <= '1'; wait for 20 ns;
	END PROCESS;

		D <= "00010000";
		
	PROCESS
	BEGIN
		R_L <= '0'; wait for 100 ns;
		
		R_L <= '1'; wait for 300 ns;
		
	END PROCESS;

END ARCHITECTURE;    


