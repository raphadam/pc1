library ieee;
use ieee.std_logic_1164.all;

entity pc1_or is
    port (
        a: in std_logic;
        b: in std_logic;
        output: out std_logic
    );
end entity;

architecture pc1_or_arch of pc1_or is
    signal a_to_nand: std_logic;
    signal b_to_nand: std_logic;

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

    pc1_not_instance1: pc1_not port map (
        input => a,
        output => a_to_nand
    );

    pc1_not_instance2: pc1_not port map (
        input => b,
        output => b_to_nand
    );

    pc1_nand_instance: pc1_nand port map (
        a => a_to_nand,
        b => b_to_nand,
        output => output
    );

end architecture;