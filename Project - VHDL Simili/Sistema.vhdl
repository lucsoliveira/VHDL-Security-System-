library ieee;
use ieee.std_logic_1164.all;

entity Sistema is

	port (	Clk:in std_logic;
		BCDout:in std_logic_vector(3 downto 0);
		OrGate:in std_logic;
		Igualdade:out std_logic;
		TimeB:out std_logic;
		TimeA:out std_logic;
		SA:out std_logic_vector(3 downto 0);
		SB:out std_logic_vector(3 downto 0)
	);
			
end entity Sistema;

architecture comportamento of Sistema is

	component FourBitParSftReg IS

		port(	D:in std_logic_vector(3 downto 0);
			Clk:in std_logic;
			Q:out std_logic_vector(3 downto 0)
		);
		
	end component FourBitParSftReg; 
	
	component ComparatorFourBit is
		port(A,B:in std_logic_vector(3 downto 0); EQ: out std_logic);
	end component ComparatorFourBit;
	
	component OneShot is
		port (Enable,Clk: in std_logic; QOut: buffer std_logic);
	end component OneShot;
	
	component EightBitShiftReg is

		port (	R_L,Clk:in std_logic;
			D:in std_logic_vector(7 downto 0);
			Q:out std_logic
		);

	end component EightBitShiftReg;
	
	component CodeSelection is
		port (ShiftIn,Clk:in std_logic; Bout:out std_logic_vector(3 downto 0));
	end component CodeSelection;

	signal SftAout:std_logic_vector(3 downto 0) := (others => '0');
	signal SftBout:std_logic_vector(3 downto 0) := "1000";
	signal MCodein:std_logic_vector(3 downto 0) := "1000";

	signal TimeoutA,TimeoutB:std_logic := '0';
	signal MagCompare:std_logic := '0';
		
begin
	
	OSA:OneShot port map(OrGate,Clk,TimeoutA);
	
	OSB:OneShot port map(not TimeoutA,Clk,TimeoutB);
	
	CodeSelectionA:CodeSelection port map(MagCompare,OrGate,MCodein);
	
	ShiftRegisterA:FourBitParSftReg port map(BCDout,not TimeoutA,SftAout);
						
	ShiftRegisterB:FourBitParSftReg port map(MCodein,not TimeoutA,SftBout);
	
	MagnitudeComparator:ComparatorFourBit port map(SftAout,SftBout,MagCompare);
			
	Igualdade <= MagCompare;
	
	TimeB <= TimeoutB;
	TimeA <= TimeoutA;
	SA <= SftAout;
	SB <= SftBout;

end architecture comportamento;
