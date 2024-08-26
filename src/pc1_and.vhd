library ieee;
use ieee.std_logic_1164.all;

entity pc1_and is
    port (
        a: in std_logic;
        b: in std_logic;
        output: out std_logic
);
end entity;

architecture pc1_and_arc of pc1_and is

    signal inter: std_logic;

    -- NAND
    component pc1_nand is
        port(
            a: in std_logic;
            b: in std_logic;
            output: out std_logic
        );
    end component;

    -- NOT
    component pc1_not is
        port(
            input: in std_logic;
            output: out std_logic
        );
    end component;

begin

    dut: pc1_nand port map (
        a => a,
        b => b,
        output => inter
    );

    dut2: pc1_not port map (
        input => inter,
        output => output
    );

end architecture;