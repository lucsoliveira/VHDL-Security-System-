library ieee;
use ieee.std_logic_1164.all;

entity FourBitParSftReg IS

	port(	D:in std_logic_vector(3 downto 0);
		Clk:in std_logic;
		Q:out std_logic_vector(3 downto 0)
	);
		
end entity FourBitParSftReg;  

architecture comportamento of FourBitParSftReg is 

	component dff is
		port(D,Clk:in std_logic; Q:out std_logic);
	end component dff;

begin 

	DFF0: dff port map(D => D(3), Clk => Clk, Q => Q(3));
	DFF1: dff port map(D => D(2), Clk => Clk, Q => Q(2));
	DFF2: dff port map(D => D(1), Clk => Clk, Q => Q(1));
	DFF3: dff port map(D => D(0), Clk => Clk, Q => Q(0));
		
end comportamento;
