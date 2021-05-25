library ieee;
use ieee.std_logic_1164.all;

entity BCDEncoder is
		port(D:in std_logic_vector(9 downto 0); Q:out std_logic_vector(3 downto 0));
end BCDEncoder;  

architecture comportamento of BCDEncoder is 
begin 

	Q(3) <= D(9) or D(8);
	Q(2) <= D(7) or D(6) or D(5) or D(4);
	Q(1) <= D(7) or D(6) or D(3) or D(2);
	Q(0) <= D(9) or D(7) or D(5) or D(3) or D(1);

end comportamento;
