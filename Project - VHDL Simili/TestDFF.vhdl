library ieee;
use ieee.std_logic_1164.all;

entity TestDFF is
end entity;

architecture simulacao of TestDFF is

	component dff is
		PORT(D,Clk:in std_logic; Q:out std_logic);
	end component dff;
	
	signal D,Clk,Q: std_logic;
begin

	TD: dff port map(D,Clk,Q);
	
	process
	begin
	
		Clk <= '0'; wait for 20 ns;
		Clk <= '1'; wait for 20 ns;
	
	end process;

	process
	begin
	
		D <= '1'; wait for 100 ns;
		D <= '0'; wait for 100 ns;
		D <= '1'; wait for 100 ns;
		D <= '1'; wait for 100 ns;
		D <= '0'; wait for 100 ns;
	
	end process;

end architecture;
