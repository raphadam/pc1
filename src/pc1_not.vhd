library ieee;
use ieee.std_logic_1164.all;

entity pc1_not is
    port (
        input: in std_logic;
        output: out std_logic
    );
end entity;

architecture pc1_not_arch of pc1_not is

    -- NAND
    component pc1_nand is
        port(
            a: in std_logic;
            b: in std_logic;
            output: out std_logic
        );
    end component;

begin
    dut: pc1_nand port map (
        a => input,
        b => input,
        output => output
    );
end architecture;