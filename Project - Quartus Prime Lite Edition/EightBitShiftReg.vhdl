library ieee;
use ieee.std_logic_1164.all;

entity EightBitShiftReg is

	port (	R_L,Clk:in std_logic;
		D:in std_logic_vector(7 downto 0);
		Q:out std_logic
	);

end entity EightBitShiftReg;

architecture comportamento of EightBitShiftReg is

	component dff is
		PORT(D,Clk:in std_logic; Q:out std_logic);
	end component dff;
	
	signal D0, D1, D2, D3, D4, D5, D6, D7: std_logic;
	signal Q1, Q2, Q3, Q4, Q5, Q6, Q7: std_logic;
begin

	D7 <= (not R_L and D(7));
	D6 <= (Q7 and R_L) or (not R_L and D(6));
	D5 <= (Q6 and R_L) or (not R_L and D(5));
	D4 <= (Q5 and R_L) or (not R_L and D(4));
	D3 <= (Q4 and R_L) or (not R_L and D(3));
	D2 <= (Q3 and R_L) or (not R_L and D(2));
	D1 <= (Q2 and R_L) or (not R_L and D(1));
	D0 <= (Q1 and R_L) or (not R_L and D(0));
	
	DFF0: dff port map(D => D7, Clk => Clk, Q => Q7);
	DFF1: dff port map(D => D6, Clk => Clk, Q => Q6);
	DFF2: dff port map(D => D5, Clk => Clk, Q => Q5);
	DFF3: dff port map(D => D4, Clk => Clk, Q => Q4);
	DFF4: dff port map(D => D3, Clk => Clk, Q => Q3);
	DFF5: dff port map(D => D2, Clk => Clk, Q => Q2);
	DFF6: dff port map(D => D1, Clk => Clk, Q => Q1);
	DFF7: dff port map(D => D0, Clk => Clk, Q => Q);

end architecture comportamento;

