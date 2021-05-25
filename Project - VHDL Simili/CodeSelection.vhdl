library ieee;
use ieee.std_logic_1164.all;

entity CodeSelection is
	port (ShiftIn,Clk:in std_logic; Bout:out std_logic_vector(3 downto 0));
end entity CodeSelection;

architecture comportamento of CodeSelection is
	
	constant Base:std_logic_vector(3 downto 0)  := "1000";	
	constant Code1:std_logic_vector(3 downto 0) := "0001";
	constant Code2:std_logic_vector(3 downto 0) := "0101";
	constant Code3:std_logic_vector(3 downto 0) := "1001";
	constant Code4:std_logic_vector(3 downto 0) := "0001";

begin
	
	process(Clk)
		variable flag:integer range 0 to 4 := 0;
	begin
		
		if (rising_edge(Clk) and flag = 0) then
		
			Bout <=  Base;
			flag := 1;
				
		elsif (ShiftIn = '0' and rising_edge(Clk) and flag = 1) then
		
			Bout <=  Code1;
			flag := 2;
			
		elsif (ShiftIn = '1' and rising_edge(Clk) and flag = 2) then
		
			Bout <=  Code2;
			flag := 3;
		
		elsif (ShiftIn = '1' and rising_edge(Clk) and flag = 3) then

			Bout <=  Code3;
			flag := 4;
		
		elsif (ShiftIn = '1' and rising_edge(Clk) and flag = 4) then

			Bout <=  Code4;
			flag := 0;
			
		elsif (ShiftIn = '0' and rising_edge(Clk)) then

			Bout <=  Base;
			flag := 0;
			
		end if;
					
	end process;

end architecture comportamento;
