library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Mux8_1 is
    port(
    A2,B2,C2,D2,E2,F2,G2,H2: in STD_LOGIC;
    S1, S2, S3: in STD_LOGIC;
    E: in STD_LOGIC;
    Z: out STD_LOGIC;
    );
end entity Mux8_1;

architecture rtl of Mux8_1 is

    signal z1,z2,z3: STD_LOGIC;
    
    component Mux4_1 is 
        port(
            A1,B1,C1,D1: in STD_LOGIC;
            S1, S2: in STD_LOGIC;
            E: in STD_LOGIC;
            Z: out STD_LOGIC);
    end component Mux4_1;
    
    component Mux2_1 is
        port(A,B : in STD_LOGIC;
        S,E: in STD_LOGIC;
        Z: out STD_LOGIC);
    end component Mux2_1; 

begin
    MUXA: Mux4_1 port map (A2, B2, C2, D2, S1, S2, E, z1);
    MUXB: Mux4_1 port map (E2, F2, G2, H2, S1, S2, E, z2);
    MUXC: Mux2_1 port map (z1, z2, S3, E, Z);
    
    
end architecture rtl;