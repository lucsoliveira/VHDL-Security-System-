library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

ENTITY testCodeSelection IS
END ENTITY;

ARCHITECTURE simulacao OF testCodeSelection IS

	component CodeSelection is
		port (ShiftIn,Clk:in std_logic; Bout:out std_logic_vector(3 downto 0));
	end component CodeSelection;	
	
	SIGNAL ShiftIn:std_logic;
	SIGNAL Bout:std_logic_vector(1 to 4);
	
	--para o clock
	constant period : time := 50 ns;
	SIGNAL Clk :  std_logic;
BEGIN

	expLog: CodeSelection PORT MAP (ShiftIn, Clk, Bout);

	PROCESS
	BEGIN
		Clk <= '0'; wait for 50 ns;
		Clk <= '1'; wait for 50 ns;
		
	END PROCESS;
		
	PROCESS
	BEGIN
		ShiftIn <= '0'; wait for 100 ns; -- seta a base
		ShiftIn <= '0'; wait for 100 ns; -- seta o code 1
		ShiftIn <= '1'; wait for 100 ns; -- se shift in = 1 entao deu certo a comparação e seta code 2
		ShiftIn <= '1'; wait for 100 ns; -- shiftin = 1 code 3 
		ShiftIn <= '1'; wait for 100 ns; -- shiftin = 1 code 4
		ShiftIn <= '1'; wait for 100 ns; -- shiftin = 1 code 5

	END PROCESS;

END ARCHITECTURE;
