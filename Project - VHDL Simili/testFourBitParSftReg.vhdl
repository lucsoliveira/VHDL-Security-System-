library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

ENTITY testFourBitParSftReg IS
END ENTITY;

ARCHITECTURE simulacao OF testFourBitParSftReg IS

	component FourBitParSftReg is
	
		port(	D:in std_logic_vector(3 downto 0);
			Clk:in std_logic;
			Q:out std_logic_vector(3 downto 0)
		);
		
	end component FourBitParSftReg;
	
	SIGNAL D:std_logic_vector(3 downto 0);
	SIGNAL Q:std_logic_vector(3 downto 0);
	
	--para o clock
	constant period : time := 50 ns;
	SIGNAL Clk :  std_logic;
BEGIN

	expLog: FourBitParSftReg PORT MAP (D, Clk, Q);
	
	PROCESS
	BEGIN
		Clk <= '0'; wait for 20 ns;
		Clk <= '1'; wait for 20 ns;
		
	END PROCESS;
		
	PROCESS
	BEGIN
	
		D <= "1000"; wait for 100 ns;
		D <= "0000"; wait for 100 ns;
		D <= "1100"; wait for 100 ns;
		
	END PROCESS;

END ARCHITECTURE;
