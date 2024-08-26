library ieee;
use ieee.std_logic_1164.all;

entity pc1_xor is
    port (
        a: in std_logic;
        b: in std_logic;
        output: out std_logic
    );
end entity;

architecture pc1_xor_arch of pc1_xor is
    signal and_top_to_or: std_logic;
    signal and_bottom_to_or: std_logic;

    signal a_to_and_top: std_logic;
    signal b_to_and_bottom: std_logic;

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
        input => a,
        output => a_to_and_top
    );

    not_b: pc1_not port map (
        input => b,
        output => b_to_and_bottom
    );

    and_top: pc1_and port map (
        a => a_to_and_top,
        b => b,
        output => and_top_to_or
    );

    and_bottom: pc1_and port map (
        a => a,
        b => b_to_and_bottom,
        output => and_bottom_to_or
    );

    or_last: pc1_or port map (
        a => and_top_to_or,
        b => and_bottom_to_or,
        output => output
    );

end architecture;