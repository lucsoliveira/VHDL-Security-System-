library ieee;
use ieee.std_logic_1164.all;

	port (ShiftIn, Clk: in std_logic; Code1, Code2, Code3, Code4: std_logic_vector(0 to 3);
			Bout: out std_logic_vector(1 to 4));

end entity CodeSelection;

architecture comportamento of CodeSelection is

	component FourBitShiftReg is
		port (R_L, Clk: in std_logic;
				D0,D1,D2,D3: in std_logic;
				Q0,Q1,Q2,Q3: buffer std_logic);
	end component FourBitShiftReg;
	
	
	signal A: std_logic_vector(0 to 3);
	signal B: std_logic_vector(0 to 3);
	signal C: std_logic_vector(0 to 3);
	signal D: std_logic_vector(0 to 3);
	signal Q: std_logic_vector(0 to 3);
	


begin

	
	A(0) <= Q(0) and Code1(0); B(0) <= Q(1) and Code2(0);
	C(0) <= Q(2) and Code3(0); D(0) <= Q(3) and Code4(0);
	
	A(1) <= Q(0) and Code1(1); B(1) <= Q(1) and Code2(1);
	C(1) <= Q(2) and Code3(1); D(1) <= Q(3) and Code4(1);
	
	A(2) <= Q(0) and Code1(2); B(2) <= Q(1) and Code2(2);
	C(2) <= Q(2) and Code3(2); D(2) <= Q(3) and Code4(2);
	
	A(3) <= Q(0) and Code1(3); B(3) <= Q(1) and Code2(3);
	C(3) <= Q(2) and Code3(3); D(3) <= Q(3) and Code4(3);
	
	Bout(1) <= D(0) or C(0) or B(0) or A(0);
	Bout(2) <= D(1) or C(1) or B(0) or A(1);
	Bout(3) <= D(2) or C(2) or B(0) or A(2);
	Bout(4) <= D(3) or C(3) or B(0) or A(3);
	
	ShiftReg: FourBitShiftReg 
				port map (R_L => ShiftIn, Clk => Clk, 
							D0 => '1', D1 => '0', D2 => '0', D3 => '0', 
							Q0 => Q(0), Q1 => Q(1), Q2 => Q(2),Q3 => Q(3));


end architecture comportamento;