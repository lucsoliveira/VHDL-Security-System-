library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

ENTITY testSistemaSeguranca IS
END ENTITY;

ARCHITECTURE simulacao OF testSistemaSeguranca IS

	COMPONENT SistemaSeguranca IS
	
	port (key: in std_logic_vector(0 to 9); 
			Enter: in std_logic;
			Clk: in std_logic; Alarm: out std_logic;
			SaidaBCDEncoder: out std_logic_vector(0 to 3);
			SAOut: out std_logic_vector(0 to 3);
			SBOut: out std_logic_vector(0 to 3);
			CodeSelectionOut: out std_logic_vector(0 to 3);
			MagnitudeOut: out std_logic
			
			);
	   	END COMPONENT;
	
	
	
	--SIGNAL A, B, C, D, E, S9: bit;
	
	
	SIGNAL key :   std_logic_vector(0 to 9);
	SIGNAL Enter :  std_logic;
	SIGNAL Clk :  std_logic;
	SIGNAL Alarm :  std_logic;
	SIGNAL SaidaBCDEncoder :  std_logic_vector(0 to 3);
	SIGNAL SAOut :  std_logic_vector(0 to 3);
	SIGNAL SBOut :  std_logic_vector(0 to 3);
	SIGNAL CodeSelectionOut :  std_logic_vector(0 to 3);
	SIGNAL MagnitudeOut :  std_logic;

BEGIN

	expLog: SistemaSeguranca PORT MAP (key, Enter, Clk, Alarm, SaidaBCDEncoder, SAOut, SBOut, CodeSelectionOut, MagnitudeOut);
	
	--para o clock
	PROCESS
	BEGIN
	--12 bom numero
		Clk <= '0'; wait for 50 ns;
		Clk <= '1'; wait for 50 ns;
	END PROCESS;
	
	PROCESS
	BEGIN
	
	--81= 1010001
	--
		Enter <= '0';
		key <= "0000000000"; 
		WAIT FOR 50 ns; 
		
		Enter <= '1'; WAIT FOR 100 ns; 
		key <= "0100000000"; Enter <= '0'; WAIT FOR 100 ns; 
		key <= "0000010000"; WAIT FOR 100 ns; 
		key <= "0000000001"; WAIT FOR 100 ns; 
		key <= "0100000000"; WAIT FOR 100 ns;
		
		Enter <= '0';
		key <= "0000000000"; 
		WAIT FOR 1000 ns; 
		
		
	END PROCESS;
	
	
END ARCHITECTURE;             









