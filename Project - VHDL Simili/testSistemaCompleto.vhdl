library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

ENTITY testSistemaCompleto IS
END ENTITY;

ARCHITECTURE simulacao OF testSistemaCompleto IS

	COMPONENT SistemaCompleto IS

		port (	Clk: in std_logic;
			key: in std_logic_vector(9 downto 0); 
			Enter: in std_logic;
			Alarm: out std_logic;
	
			OrGateAux: out std_logic;
			BCDoutAux: out std_logic_vector(3 downto 0);
			IgualdadeAux: out std_logic;
			TimeBAux: out std_logic;
			TimeAAux: out std_logic;
			SAAux: out std_logic_vector(3 downto 0);
			SBAux: out std_logic_vector(3 downto 0)
		);
		
	END COMPONENT;
	
	SIGNAL Clk :  std_logic;
	SIGNAL key :   std_logic_vector(9 downto 0);
	SIGNAL Enter :  std_logic;
	SIGNAL Alarm :  std_logic;
	SIGNAL OrGateAux :  std_logic;
	SIGNAL BCDoutAux :  std_logic_vector(3 downto 0);
	SIGNAL IgualdadeAux : std_logic;
	SIGNAl TimeBAux :  std_logic;
	SIGNAl TimeAAux :  std_logic;
	SIGNAl SAAux :  std_logic_vector(3 downto 0);
	SIGNAl SBAux :  std_logic_vector(3 downto 0);
	
BEGIN

	expLog: SistemaCompleto PORT MAP (Clk, key, Enter, Alarm, OrGateAux, BCDoutAux, IgualdadeAux, TimeBAux, TimeAAux, SAAux, SBAux);
	
	--para o clock
	PROCESS
	BEGIN
	--20 bom numero
		Clk <= '0'; wait for 21 ns;
		Clk <= '1'; wait for 21 ns;
		
	END PROCESS;

	PROCESS
	BEGIN
	
		-- Setup para corrigir o delay
		
		Enter <= '0'; 	
		key <= "0000000000"; WAIT FOR 100 ns; 
		Enter <= '1'; 	
		key <= "0000000000"; WAIT FOR 100 ns; 
		
		Enter <= '0'; 	
		key <= "0000000000"; WAIT FOR 100 ns; 
		Enter <= '1'; 	
		key <= "0000000000"; WAIT FOR 100 ns;
		
		Enter <= '0'; 	
		key <= "0000000000"; WAIT FOR 100 ns; 
		Enter <= '1'; 	
		key <= "0000000000"; WAIT FOR 100 ns;
			
		-- Testando com os 5 digitos corretos
		
		Enter <= '0'; 	
		key <= "0000000000"; WAIT FOR 100 ns; -- nenhuma tecla precionada
		
		Enter <= '1'; 	
		key <= "0000000000"; WAIT FOR 100 ns; -- # precionado
		Enter <= '0';
		key <= "0000000000"; WAIT FOR 100 ns; -- nenhuma tecla precionada
		
		key <= "0000000010"; WAIT FOR 100 ns; -- 1
		key <= "0000000000"; WAIT FOR 100 ns; -- nenhuma tecla precionada
		key <= "0000100000"; WAIT FOR 100 ns; -- 5
		key <= "0000000000"; WAIT FOR 100 ns; -- nenhuma tecla precionada
		key <= "1000000000"; WAIT FOR 100 ns; -- 9
		key <= "0000000000"; WAIT FOR 100 ns; -- nenhuma tecla precionada
		key <= "0000000010"; WAIT FOR 100 ns; -- 1
				
		--Testando com o terceiro digito incorreto
		
		Enter <= '0'; 	
		key <= "0000000000"; WAIT FOR 100 ns; -- nenhuma tecla precionada
		
		Enter <= '1'; 	
		key <= "0000000000"; WAIT FOR 100 ns; -- # precionado
		Enter <= '0';
		key <= "0000000000"; WAIT FOR 100 ns; -- nenhuma tecla precionada
		
		key <= "0000000010"; WAIT FOR 100 ns; -- 1
		key <= "0000000000"; WAIT FOR 100 ns; -- nenhuma tecla precionada
		key <= "0000100000"; WAIT FOR 100 ns; -- 5
		key <= "0000000000"; WAIT FOR 100 ns; -- nenhuma tecla precionada
		key <= "0000010000"; WAIT FOR 100 ns; -- 4
		key <= "0000000000"; WAIT FOR 100 ns; -- nenhuma tecla precionada
		key <= "0000000010"; WAIT FOR 100 ns; -- 1
	
	END PROCESS;
	
END ARCHITECTURE;
