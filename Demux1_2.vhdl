library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Demux_1_2 is
    port(
    X : in std_logic; -- Entrada
    S : in std_logic; -- Seleccion
    Y : out std_logic_vector(1 downto 0) -- Salida
    );
    end Demux_1_2;

architecture rtl of Demux1_2 is
    
begin
    
    Y(0) <= X when (S='0') else unaffected;
    Y(1) <= X when (S='1') else unaffected;
    
end architecture rtl;