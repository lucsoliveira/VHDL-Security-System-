library ieee;

use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;
 
entity dff is

	PORT( D, Clk: in std_logic;
			Q: out std_logic);
	
end dff;
 
architecture comportamento of dff is

begin
	process(D, Clk)
	
		begin
		
		if(Clk='1' and Clk'EVENT) then
		Q <= D;
		end if;
	end process;
	
end comportamento;

