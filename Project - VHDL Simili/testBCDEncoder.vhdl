library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY testBCDEncoder IS
END ENTITY;

ARCHITECTURE simulacao OF testBCDEncoder IS

	component BCDEncoder is
		port(D:in std_logic_vector(9 downto 0); Q:out std_logic_vector(3 downto 0));
	end component BCDEncoder;
	
	SIGNAL key:std_logic_vector(9 downto 0);
	SIGNAL Q:std_logic_vector(3 downto 0);

BEGIN

	expLog: BCDEncoder PORT MAP (key, Q);
	PROCESS
	BEGIN
		key <= "0000000000"; WAIT FOR 100 ns; 		
		key <= "0000000001"; WAIT FOR 100 ns;
		key <= "0000000010"; WAIT FOR 100 ns;
		key <= "0000000100"; WAIT FOR 100 ns; 
		key <= "0000001000"; WAIT FOR 100 ns; 
		key <= "0000010000"; WAIT FOR 100 ns;
		key <= "0000100000"; WAIT FOR 100 ns; 
		key <= "0001000000"; WAIT FOR 100 ns; 
		key <= "0010000000"; WAIT FOR 100 ns; 
		key <= "0100000000"; WAIT FOR 100 ns; 
		key <= "1000000000"; WAIT FOR 100 ns; 
		
	END PROCESS;
END ARCHITECTURE;
