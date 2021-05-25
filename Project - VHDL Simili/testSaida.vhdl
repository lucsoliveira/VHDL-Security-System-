library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

ENTITY testSaida IS
END ENTITY;

ARCHITECTURE simulacao OF testSaida IS

	component Saida is

		port (	Igualdade:in std_logic;
			TimeB:in std_logic;
			Alarm:out std_logic
		);
			
	end component Saida;
		
	SIGNAL Igualdade,TimeB,Alarm:std_logic;
BEGIN

	expLog:Saida PORT MAP(Igualdade,TimeB,Alarm);
	
	PROCESS
	BEGIN
		TimeB <= '0'; wait for 50 ns;
		
		TimeB <= '1'; wait for 50 ns;
		
	END PROCESS;
	
	PROCESS
	BEGIN
		Igualdade <= '0'; wait for 100 ns;
		Igualdade <= '1'; wait for 100 ns;
		Igualdade <= '1'; wait for 100 ns;
		Igualdade <= '1'; wait for 100 ns;
		Igualdade <= '1'; wait for 100 ns;
		Igualdade <= '0'; wait for 100 ns;
		Igualdade <= '1'; wait for 100 ns;
		Igualdade <= '1'; wait for 100 ns;
		Igualdade <= '0'; wait for 100 ns;
			
	END PROCESS;
	
END ARCHITECTURE;

