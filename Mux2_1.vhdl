library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity Mux2_1 is
port(
    A,B : in STD_LOGIC;
    S,E: in STD_LOGIC;
    Z: out STD_LOGIC);
end Mux2_1;
 
architecture rtl of Mux2_1 is
    
begin
    
    Z <= A when (S='0') and (E= '1') else
         B when (S='1') and (E= '1') else 
            unaffected;
    
end architecture rtl;