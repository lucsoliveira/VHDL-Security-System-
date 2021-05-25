library ieee;
use ieee.std_logic_1164.all;

entity OrGate is

	port (key: in std_logic_vector(0 to 9); Enter:in std_logic; ORgateOut: out std_logic);
			
end entity OrGate;

architecture comportamento of OrGate is



begin

	ORgateOut <= (Key(9) or Key(8) or Key(7) or Key(6) or Key(5) or key(4) or Key(3) or Key(2) or Key(1) or Key(0) or Enter);



end architecture comportamento;