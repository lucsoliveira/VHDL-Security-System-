library ieee;
use ieee.std_logic_1164.all;

entity SistemaCompleto is

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
			
end entity SistemaCompleto;

architecture comportamento of SistemaCompleto is

	component Entrada is

		port (	Clk:in std_logic;
			key:in std_logic_vector(9 downto 0); 
			Enter:in std_logic;
			BCDout:out std_logic_vector(3 downto 0);
			OrGate:out std_logic;
			ClkSystem:out std_logic
		);
			
	end component Entrada;
	
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
	
	component Saida is

		port (	Igualdade:in std_logic;
			TimeB:in std_logic;
			Alarm:out std_logic
		);
			
	end component Saida;
	
	signal BCDout,SA,SB: std_logic_vector(3 downto 0) := (others => '0');
	signal OrGate,ClkSystem: std_logic := '0';
	signal Igualdade,TimeA,TimeB: std_logic := '0';
	
begin

	Ent: Entrada port map(Clk, key, Enter, BCDout, OrGate, ClkSystem);
	Sys: Sistema port map(Clk, BCDout, OrGate, Igualdade, TimeB, TimeA, SA, SB);	
	Sai: Saida port map(Igualdade, TimeB, Alarm);	
	
	BCDOutAux <= BCDOut;
	OrGateAux <= OrGate;
	IgualdadeAux <= Igualdade;
	TimeBAux <= TimeB;
	TimeAAux <= TimeA;
	SAAux <= SA;
	SBAux <= SB;

end architecture comportamento;
