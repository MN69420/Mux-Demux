library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Mux1_8 is
    port (
        A: in std_logic;
        sel1: in std_logic;
        sel2: in std_logic_vector(3 downto 0);
        sal: out std_logic_vector(7 downto 0)
        );
    );
end entity Mux1_8;

architecture rtl of Mux1_8 is
  signal sal1: std_logic;

  component Demux1_2 is
    port(
      X : in std_logic; -- Entrada
      S : in std_logic; -- Seleccion
      Y : out std_logic_vector(1 downto 0) -- Salida
      );
      end Demux_1_2;

  component Demux1_4 is
    port(
      A: in std_logic;
      sel: in std_logic_vector(1 downto 0);
      sal: out std_logic_vector(3 downto 0)
      );
  end component Demux1_4;
   
begin
  Demux1: Demux1_2 port map (A, sel1, sal1);
  Demux2: Demux1_4 port map (sal1(0), sel2(3 downto 2), sal(7 downto 4));
  Demux3: Demux1_4 port map (sal1(1),sel2(1 downto 0),sal(3 downto 0));
  
end architecture rtl;