library ieee;
use ieee.std_logic_1164.all;

entity System2 is

	port (key: in std_logic_vector(0 to 9); 
			Enter: in std_logic;
			Clk: in std_logic; Alarm: out std_logic;
			SaidaBCDEncoder: out std_logic_vector(0 to 3);
			SAOut: out std_logic_vector(0 to 3);
			SBOut: out std_logic_vector(0 to 3);
			CodeSelectionOut: out std_logic_vector(0 to 3);
			MagnitudeOut: out std_logic
			
			);
			
end entity System2;

architecture comportamento of System2 is

	
	component BCDEncoder is
		port(D: in std_logic_vector(0 to 9);
		 Q: out std_logic_vector(0 to 3));
	end component BCDEncoder;
	
	
	component FourBitParSftReg is
		port(D: in std_logic_vector(0 to 3);
		 Clk: in std_logic;
		 Q: out std_logic_vector(0 to 3));
	end component FourBitParSftReg;
	
		
	component ComparatorFourBit is
		port(A, B: in std_logic_vector(0 to 3);
		 EQ: out std_logic);
	end component ComparatorFourBit;
	
	component OneShot is
		port(Enable, Clk: in std_logic;
		 QOut: buffer std_logic);
	end component OneShot;
	
	component EightBitShiftReg is
		port(R_L, Clk: in std_logic;
		 D: in std_logic_vector(0 to 7);
		 Q: out std_logic);
	end component EightBitShiftReg;
	
	
	component CodeSelection is
		port(ShiftIn, Clk: in std_logic;
		 Bout: out std_logic_vector(1 to 4));
	end component CodeSelection;

	signal ORgate: std_logic;
	signal BCDout: std_logic_vector(0 to 3);
	signal SftAout: std_logic_vector(0 to 3);
	signal SftBout: std_logic_vector(0 to 3);
	signal MCodein: std_logic_vector(0 to 3);
	signal MagCompare: std_logic;
	

	signal TimeoutA, TimeoutB: std_logic;


begin

	ORgate <= (Key(0) or Key(1) or Key(2) or Key(3) or Key(4) or key(5) or Key(6) or Key(7) or Key(8) or Key(9));


	BCD: BCDEncoder port map(D(0)=>Key(0), D(1)=>Key(1), D(2)=>Key(2), D(3)=>Key(3),
	 			D(4)=>Key(4),D(5)=>Key(5),D(6)=>Key(6),D(7)=>Key(7),
	 			D(8)=>Key(8),D(9)=>Key(9), Q(0)=>BCDout(0),Q(1)=>BCDout(1),
	 			Q(2)=>BCDout(2),Q(3)=>BCDout(3));
	 
	 
	ShiftRegisterA: FourBitParSftReg port map (D(0)=>BCDout(0),D(1)=>BCDout(1),D(2)=>BCDout(2),
						D(3)=>BCDout(3), Clk=>not TimeoutA,Q(0)=>SftAout(0),
						Q(1)=>SftAout(1),Q(2)=>SftAout(2),Q(3)=>SftAout(3));
						
	ShiftRegisterB: FourBitParSftReg port map (D(0)=>MCodein(0),D(1)=>MCodein(1),D(2)=>MCodein(2),
						D(3)=>MCodein(3), Clk=>not TimeoutA,Q(0)=>SftBout(0),
						Q(1)=>SftBout(1),Q(2)=>SftBout(2),Q(3)=>SftBout(3));
	
	MagnitudeComparator: ComparatorFourBit port map(A=>SftAout,B=>SftBout,EQ=>MagCompare);
	

	OSA:OneShot port map(Enable=>Enter or ORGate,Clk=>Clk,QOut=>TimeoutA);
	OSB:OneShot port map(Enable=>not TimeoutA,Clk=>Clk,QOut=>TimeoutB);
	
	ShiftRegisterC:EightBitShiftReg port map(R_L=>MagCompare,Clk=> TimeoutB,
						D(0)=>'0',D(1)=>'0', D(2)=>'0',D(3)=>'1',
						D(4)=>'0',D(5)=>'0',D(6)=>'0',D(7)=>'0',Q=>Alarm);
	
	
	CodeSelectionA: CodeSelection port map(ShiftIn=>MagCompare,Clk=> Enter or ORGate,Bout=>MCodein);
	
	
	SaidaBCDEncoder <= BCDout(0 to 3);
	SAOut <= SftAout(0 to 3);
	SBOut <= SftBout(0 to 3);
	CodeSelectionOut <= MCodein(0 to 3);
	MagnitudeOut <= MagCompare;

end architecture comportamento;
