library ieee;
use ieee.std_logic_1164.all;

entity pc1_mux is
    port (
        a: in std_logic;
        b: in std_logic;
        sel: in std_logic;
        t: out std_logic
    );
end entity;

architecture pc1_mux_arch of pc1_mux is
    signal not_to_and_a: std_logic;
    signal a_to_or: std_logic;
    signal b_to_or: std_logic;

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


    -- OR
    component pc1_or is
        port(
            a: in std_logic;
            b: in std_logic;
            output: out std_logic
        );
    end component;

begin

    not_a: pc1_not port map (
        input => sel,
        output => not_to_and_a
    );

    and_a: pc1_and port map (
        a => a,
        b => not_to_and_a,
        output => a_to_or
    );

    and_b: pc1_and port map (
        a => sel,
        b => b,
        output => b_to_or
    );

    or_last: pc1_or port map (
        a => a_to_or,
        b => b_to_or,
        output => t
    );

end architecture;