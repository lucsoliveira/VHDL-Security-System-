library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cons is
	port(
		cons:out std_logic_vector(7 downto 0)
		);
			
	

end entity;

architecture comportamento of cons is

	constant D:std_logic_vector(7 downto 0) := "00010000";
	
begin

	cons <= D;

end architecture;

