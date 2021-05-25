library ieee;
use ieee.std_logic_1164.all;

entity Entrada is

	port (
		Clk:in std_logic;
		key:in std_logic_vector(9 downto 0); 
		Enter:in std_logic;
		BCDout:out std_logic_vector(3 downto 0);
		OrGate:out std_logic;
		ClkSystem:out std_logic
	);
			
end entity Entrada;

architecture comportamento of Entrada is

	component BCDEncoder is
		port(D:in std_logic_vector(9 downto 0); Q:out std_logic_vector(3 downto 0));
	end component BCDEncoder;

begin

	ORgate <= (Key(9) or Key(8) or Key(7) or Key(6) or Key(5) or key(4) or Key(3) or Key(2) or Key(1) or Key(0) or Enter);

	BCD:BCDEncoder port map(key,BCDout);
	 			
	ClkSystem <= Clk;

end architecture comportamento;
