library ieee;
use ieee.std_logic_1164.all;

entity OneShot is
	port (Enable,Clk: in std_logic; QOut: buffer std_logic);
end entity OneShot;

architecture comportamento of OneShot is
	
begin

	process (Enable, Clk)
	
		variable Flag : boolean := true;
		variable Cnt : integer range 0 to 255;
		variable SetCount : integer range 0 to 255;
	begin
	
		SetCount := 2;
		
		if ( rising_edge(Clk) ) then
		
			if Enable = '0' then
				Flag := true;
			end if;
			
			if Enable = '1' and Flag then
				Cnt := 1;
				Flag :=False;
			end if;
			
			if cnt = SetCount then
			
				Qout <= '0';
				Cnt := 0;
				Flag := false;
				
			else 
				if Cnt > 0 then
					
					Cnt := Cnt + 1;
					
					if Cnt > 1 then
						Qout <= '1';
					end if;
					
				end if;
				
			end if;	
			
		end if;
				
	end process;
	
end architecture comportamento;

