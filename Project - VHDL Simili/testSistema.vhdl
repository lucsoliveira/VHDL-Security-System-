library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

ENTITY testSistema IS
END ENTITY;

ARCHITECTURE simulacao OF testSistema IS

	component Sistema is

		port (	Clk:in std_logic;
			BCDout:in std_logic_vector(3 downto 0);
			OrGate:in std_logic;
			Igualdade:out std_logic;
			TimeB:out std_logic;
			TimeA:out std_logic;
			SA:out std_logic_vector(3 downto 0);
			SB:out std_logic_vector(3 downto 0)	
		);
			
	end component Sistema;
	
	SIGNAL Clk:std_logic;
	SIGNAL BCDout:std_logic_vector(3 downto 0);
	SIGNAL OrGate:std_logic;
	SIGNAL Igualdade:std_logic;
	signal TimeB:std_logic;
	signal TimeA:std_logic;
	signal SA,SB:std_logic_vector(3 downto 0);

BEGIN

	expLog: Sistema PORT MAP (Clk,BCDout,OrGate,Igualdade,TimeB,TimeA,SA,SB);
	
	PROCESS
	BEGIN
		Clk <= '0'; wait for 20 ns;
		Clk <= '1'; wait for 20 ns;
		
	END PROCESS;
	
	PROCESS
	BEGIN

		OrGate <= '0'; BCDout <= "0000"; WAIT FOR 100 ns;	
		OrGate <= '1'; BCDout <= "0000"; WAIT FOR 100 ns; -- enter
		OrGate <= '0'; WAIT FOR 100 ns;	
		OrGate <= '1'; BCDout <= "0001"; WAIT FOR 100 ns; -- 1
		OrGate <= '0'; WAIT FOR 100 ns;
		OrGate <= '1'; BCDout <= "0101"; WAIT FOR 100 ns; -- 5
		OrGate <= '0'; WAIT FOR 100 ns;
		OrGate <= '1'; BCDout <= "1001"; WAIT FOR 100 ns; -- 9
		OrGate <= '0'; WAIT FOR 100 ns;	
		OrGate <= '1'; BCDout <= "0001"; WAIT FOR 100 ns; -- 1
		OrGate <= '0'; WAIT FOR 100 ns;
		
		OrGate <= '0'; BCDout <= "0000"; WAIT FOR 100 ns;	
		OrGate <= '1'; BCDout <= "0000"; WAIT FOR 100 ns; -- enter
		OrGate <= '0'; WAIT FOR 100 ns;	
		OrGate <= '1'; BCDout <= "0001"; WAIT FOR 100 ns; -- 1
		OrGate <= '0'; WAIT FOR 100 ns;
		OrGate <= '1'; BCDout <= "0101"; WAIT FOR 100 ns; -- 5
		OrGate <= '0'; WAIT FOR 100 ns;
		OrGate <= '1'; BCDout <= "0100"; WAIT FOR 100 ns; -- 4
		OrGate <= '0'; WAIT FOR 100 ns;	
		OrGate <= '1'; BCDout <= "0001"; WAIT FOR 100 ns; -- 1
		OrGate <= '0'; WAIT FOR 100 ns;

	END PROCESS;
	
END ARCHITECTURE;    

