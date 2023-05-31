library IEEE;
use IEEE.std_logic_1164.all;

entity Demux1_4 is
    port(
        A: in std_logic;
        sel: in std_logic_vector(1 downto 0);
        sal: out std_logic_vector(3 downto 0)
        );
    end Demux1_4;


architecture flujo of Demux1_4 is
    signal aux: std_logic_vector(3 downto 0);
begin
with sel select
    aux <= "0001" when "00",
    "0010" when "01",
    "0100" when "10",
    "1000" when others;
    sal <= aux and A & A & A & A;
end flujo;