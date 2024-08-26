library ieee;
use ieee.std_logic_1164.all;

entity pc1_or8way is
    port (
        input: in std_logic_vector(7 downto 0);
        output: out std_logic
    );
end entity;

architecture pc1_or8way_arch of pc1_or8way is
    
    signal or1_s: std_logic;
    signal or2_s: std_logic;
    signal or3_s: std_logic;
    signal or4_s: std_logic;
    signal or12_s: std_logic;
    signal or34_s: std_logic;

    component pc1_or is
        port (
            a: in std_logic;
            b: in std_logic;
            output: out std_logic
        );
    end component;

begin

    or1: pc1_or port map (
        a => input(0),
        b => input(1),
        output => or1_s
    );

    or2: pc1_or port map (
        a => input(2),
        b => input(3),
        output => or2_s
    );

    or12: pc1_or port map (
        a => or1_s,
        b => or2_s,
        output => or12_s
    );

    or3: pc1_or port map (
        a => input(4),
        b => input(5),
        output => or3_s
    );

    or4: pc1_or port map (
        a => input(6),
        b => input(7),
        output => or4_s
    );

    or34: pc1_or port map (
        a => or3_s,
        b => or4_s,
        output => or34_s
    );

    or1234: pc1_or port map (
        a => or12_s,
        b => or34_s,
        output => output
    );

end architecture;