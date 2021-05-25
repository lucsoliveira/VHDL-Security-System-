entity DecBinDecCom0 is
port(	D1, D2, D3, D4, D5, D6, D7, D8, D9: in BIT;
	A, B, C, D: out BIT
);
end DecBinDecCom0;  

----------------------------------------

architecture comportamento of DecBinDecCom0 is 
begin 

    A <= ((not D9) and D8 and (not D7) and (not D6) and (not D5) and (not D3) and (not D2) and (not D1)) or 
	 (D9 and (not D8) and (not D7) and (not D6) and (not D5) and (not D4) and (not D3) and (not D2) and (not D1)); 
	 
    B <= (not D9) and (not D8) and (not D3) and (not D2) and (not D1); 
    C <= (not D9) and (not D8) and (not D5) and (not D4) and (not D1); 
    D <= (not D8) and (not D6) and (not D4) and (not D2); 

end comportamento; 

------------------------------------------