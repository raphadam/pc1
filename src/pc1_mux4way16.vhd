library ieee;
use ieee.std_logic_1164.all;

entity pc1_mux4way16 is
    port (
        a: in std_logic_vector(15 downto 0);
        b: in std_logic_vector(15 downto 0);
        c: in std_logic_vector(15 downto 0);
        d: in std_logic_vector(15 downto 0);
        sel: in std_logic_vector(1 downto 0);
        output: out std_logic_vector(15 downto 0)
    );
end entity;

architecture pc1_mux4way16_arch of pc1_mux4way16 is
begin
end architecture;