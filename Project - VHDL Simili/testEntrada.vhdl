library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

ENTITY testEntrada IS
END ENTITY;

ARCHITECTURE simulacao OF testEntrada IS

	component Entrada is
	
		port (
			Clk:in std_logic;
			key:in std_logic_vector(9 downto 0); 
			Enter:in std_logic;
			BCDout:out std_logic_vector(3 downto 0);
			OrGate:out std_logic;
			ClkSystem:out std_logic
		);
		
	end component Entrada;
		
	signal Clk:std_logic;
	SIGNAL key:std_logic_vector(9 downto 0);
	SIGNAL Enter:std_logic;
	SIGNAL BCDout:std_logic_vector(3 downto 0);
	SIGNAL OrGate:std_logic;
	signal ClkSystem:std_logic;
BEGIN

	expLog:Entrada PORT MAP (Clk,key,Enter,BCDout,OrGate,ClkSystem);
	
	PROCESS
	BEGIN
		Clk <= '0'; wait for 20 ns;
		Clk <= '1'; wait for 20 ns;
		
	END PROCESS;
	
	PROCESS
	BEGIN
		Enter <= '0'; 	
		key <= "0000000000"; WAIT FOR 100 ns; -- nenhuma tecla precionada
		
		Enter <= '1'; 	
		key <= "0000000000"; WAIT FOR 100 ns; -- # precionado
		Enter <= '0'; 		
		key <= "0000000001"; WAIT FOR 100 ns; -- tecla 0 precionada
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

