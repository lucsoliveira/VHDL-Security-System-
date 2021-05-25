library ieee;
use ieee.std_logic_1164.all;

entity dffl is
	port (D, Clock, Pre, Clr: in std_logic; Q: inout std_logic);
end entity dffl;

architecture comportamento of dffl is
begin

	process
	begin
		 wait until rising_edge (Clock);
		 if Clr = '1' then
		 if Pre = '1' then
		 if D = '1' then
		 Q <= '1';
		 else
		 Q <= '0';
		 end if;
		 else
		 Q <= '1';
		 end if;
		 else
		 Q <= '0';
		 end if;
	end process;

end architecture comportamento;
