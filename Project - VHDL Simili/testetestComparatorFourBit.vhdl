library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

ENTITY testComparatorFourBit IS
END ENTITY;

ARCHITECTURE simulacao OF testComparatorFourBit IS

	component ComparatorFourBit is
		port(A,B:in std_logic_vector(3 downto 0); EQ: out std_logic);
	end component ComparatorFourBit;
	
	SIGNAL A:std_logic_vector(3 downto 0);
	SIGNAL B:std_logic_vector(3 downto 0);
	SIGNAL EQ:std_logic;
	
BEGIN

	expLog: ComparatorFourBit PORT MAP (A, B, EQ);
		
	PROCESS
	BEGIN
		A <= "0000"; B <= "0000"; wait for 100 ns;
		A <= "0000"; B <= "1000"; wait for 100 ns;
		A <= "1000"; B <= "0000"; wait for 100 ns; 
		A <= "0101"; B <= "0101"; wait for 100 ns;

	END PROCESS;
	
END ARCHITECTURE;    

