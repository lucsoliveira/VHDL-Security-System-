library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

ENTITY testOneShot IS
END ENTITY;

ARCHITECTURE simulacao OF testOneShot IS

	component OneShot is
		port (Enable, Clk: in std_logic;
			QOut: buffer std_logic);
	end component OneShot;
	
	
	SIGNAL Enable :   std_logic;
	SIGNAL QOut :   std_logic;
	
	--para o clock
	constant period : time := 50 ns;
	SIGNAL Clk :  std_logic;
BEGIN

	expLog: OneShot PORT MAP (Enable, Clk, Qout);
	
	PROCESS
	BEGIN
		Clk <= '0'; wait for 20 ns;
		Clk <= '1'; wait for 20 ns;
	END PROCESS;
		
	PROCESS
	BEGIN
		Enable <= '0'; wait for 100 ns;
		Enable <= '0'; wait for 100 ns;
		Enable <= '1'; wait for 100 ns;
		Enable <= '0'; wait for 100 ns;
		Enable <= '1'; wait for 100 ns;
		Enable <= '0'; wait for 100 ns;
		Enable <= '1'; wait for 100 ns;

	END PROCESS;
	
END ARCHITECTURE;

