library ieee;
use ieee. std_logic_1164.all;

entity dff is
	PORT(D,Clk:in std_logic; Q:out std_logic);
end entity dff;
 
architecture comportamento of dff is
	
begin
	process(D, Clk)
	begin
		if(rising_edge(Clk)) then

			Q <= D;
			
		end if;
		
	end process;
	
end comportamento;
