library ieee;
use ieee.std_logic_1164.all;

entity pc1_nand is
    port (
        a: in std_logic;
        b: in std_logic;
        output: out std_logic
    );
end entity;

architecture behaviour of pc1_nand is
begin
    output <= '0' when a='1' and b='1'
    else '1';
end architecture;