library ieee;
use ieee.std_logic_1164.all;

entity pc1_or16 is
    port (
        a: in std_logic_vector(15 downto 0);
        b: in std_logic_vector(15 downto 0);
        output: out std_logic_vector(15 downto 0)
    );
end entity;

architecture pc1_or16_arch of pc1_or16 is

    component pc1_or is
        port (
            a: in std_logic;
            b: in std_logic;
            output: out std_logic
        );
    end component;

begin

    or_0: pc1_or port map (a => a(0), b => b(0), output => output(0) );
    or_1: pc1_or port map (a => a(1), b => b(1), output => output(1) );
    or_2: pc1_or port map (a => a(2), b => b(2), output => output(2) );
    or_3: pc1_or port map (a => a(3), b => b(3), output => output(3) );
    or_4: pc1_or port map (a => a(4), b => b(4), output => output(4) );
    or_5: pc1_or port map (a => a(5), b => b(5), output => output(5) );
    or_6: pc1_or port map (a => a(6), b => b(6), output => output(6) );
    or_7: pc1_or port map (a => a(7), b => b(7), output => output(7) );
    or_8: pc1_or port map (a => a(8), b => b(8), output => output(8) );
    or_9: pc1_or port map (a => a(9), b => b(9), output => output(9) );
    or_10: pc1_or port map (a => a(10), b => b(10), output => output(10) );
    or_11: pc1_or port map (a => a(11), b => b(11), output => output(11) );
    or_12: pc1_or port map (a => a(12), b => b(12), output => output(12) );
    or_13: pc1_or port map (a => a(13), b => b(13), output => output(13) );
    or_14: pc1_or port map (a => a(14), b => b(14), output => output(14) );
    or_15: pc1_or port map (a => a(15), b => b(15), output => output(15) );

end architecture;