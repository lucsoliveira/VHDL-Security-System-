library ieee;
use ieee.std_logic_1164.all;

entity Saida is

	port (	Igualdade:in std_logic;
		TimeB:in std_logic;
		Alarm:out std_logic
	);
			
end entity Saida;

architecture comportamento of Saida is

	component EightBitShiftReg is

		port (	R_L,Clk:in std_logic;
			D:in std_logic_vector(7 downto 0);
			Q:out std_logic
		);

	end component EightBitShiftReg;

	constant D:std_logic_vector(7 downto 0) := "00010000";
	
begin
	ShiftRegisterC:EightBitShiftReg port map(Igualdade,TimeB,D,Alarm);

end architecture comportamento;
