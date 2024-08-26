library ieee;
use ieee.std_logic_1164.all;

entity pc1_dmux is
    port (
        input: in std_logic;
        sel: in std_logic;
        a: out std_logic;
        b: out std_logic
    );
end entity;

architecture pc1_dmux_arch of pc1_dmux is
    signal not_to_and_a: std_logic;

    -- AND
    component pc1_and is 
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

    not_a: pc1_not port map (
        input => sel,
        output => not_to_and_a
    );

    and_a: pc1_and port map (
        a => not_to_and_a,
        b => input,
        output => a
    );

    and_b: pc1_and port map (
        a => sel,
        b => input,
        output => b
    );

end architecture;