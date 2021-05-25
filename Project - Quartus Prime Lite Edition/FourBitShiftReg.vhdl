library ieee;
use ieee.std_logic_1164.all;

entity FourBitShiftReg is

	port (R_L, Clk: in std_logic;
	D0,D1,D2,D3: in std_logic;
	Q0,Q1,Q2,Q3: buffer std_logic);

end entity FourBitShiftReg;


architecture comportamento of FourBitShiftReg is

	component dff is
		PORT(D,Clk: in std_logic;
				Q: out std_logic);
	end component dff;
	
	signal D: std_logic_vector(0 to 3);
	signal Q: std_logic_vector(0 to 2);


begin

	D(0) <= (not R_L and D0);
	D(1) <= (Q(0) and R_L) or (not R_L and D1);
	D(2) <= (Q(1) and R_L) or (not R_L and D2);
	D(3) <= (Q(2) and R_L) or (not R_L and D3);
	
/*
DFF0: dff port map(D => D(0), Clk => Clk, Q => Q(0));
DFF1: dff port map(D => D(1), Clk => Clk, Q => Q(1));
DFF2: dff port map(D => D(2), Clk => Clk, Q => Q(2));
DFF3: dff port map(D => D(3), Clk => Clk, Q => Q3);

*/
	
DFF0: dff port map(D => D(0), Clk => Clk, Q => Q0);
DFF1: dff port map(D => D(1), Clk => Clk, Q => Q1);
DFF2: dff port map(D => D(2), Clk => Clk, Q => Q2);
DFF3: dff port map(D => D(3), Clk => Clk, Q => Q3);
	
end architecture comportamento;