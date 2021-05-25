library ieee;
use ieee.std_logic_1164.all;


entity ComparatorFourBit is
	port(A, B: in std_logic_vector(0 to 3);
			EQ: out std_logic);
END ENTITY ComparatorFourBit;
		
architecture comportamento of ComparatorFourBit IS

BEGIN

	PROCESS(A, B)
	BEGIN
		IF(A = B) and not(A = "0000") THEN
			EQ <= '1';
		ELSE
			EQ <= '0';
		END IF;
	END PROCESS;
	
END ARCHITECTURE comportamento;