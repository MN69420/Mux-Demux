library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Mux4_1 is
    port(
        A1,B1,C1,D1: in STD_LOGIC;
        S1, S2: in STD_LOGIC;
        E: in STD_LOGIC;
        Z: out STD_LOGIC);
        
end entity Mux4_1;

architecture rtl of Mux4_1 is
 
    signal z1, z2: STD_LOGIC;
 
    component Mux2_1 is
        port(A,B : in STD_LOGIC;
        S,E: in STD_LOGIC;
        Z: out STD_LOGIC);
    end component Mux2_1;   

begin
    
    MUX1: Mux2_1 port map(A1, B1, S1, E, z1);
    MUX2: Mux2_1 port map(C1, D1, S1, E, z2);
    MUX3: Mux2_1 port map(z1, z2, S2, E, Z );
    
end architecture rtl;