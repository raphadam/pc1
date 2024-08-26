library ieee;
use ieee.std_logic_1164.all;

entity pc1_and16 is
    port (
        a: in std_logic_vector(15 downto 0);
        b: in std_logic_vector(15 downto 0);
        output: out std_logic_vector(15 downto 0)
    );
end entity;

architecture pc1_and16_arch of pc1_and16 is

    component pc1_and is
        port (
            a: in std_logic;
            b: in std_logic;
            output: out std_logic
        );
    end component;

begin

    and_0: pc1_and port map (a => a(0), b => b(0), output => output(0) );
    and_1: pc1_and port map (a => a(1), b => b(1), output => output(1) );
    and_2: pc1_and port map (a => a(2), b => b(2), output => output(2) );
    and_3: pc1_and port map (a => a(3), b => b(3), output => output(3) );
    and_4: pc1_and port map (a => a(4), b => b(4), output => output(4) );
    and_5: pc1_and port map (a => a(5), b => b(5), output => output(5) );
    and_6: pc1_and port map (a => a(6), b => b(6), output => output(6) );
    and_7: pc1_and port map (a => a(7), b => b(7), output => output(7) );
    and_8: pc1_and port map (a => a(8), b => b(8), output => output(8) );
    and_9: pc1_and port map (a => a(9), b => b(9), output => output(9) );
    and_10: pc1_and port map (a => a(10), b => b(10), output => output(10) );
    and_11: pc1_and port map (a => a(11), b => b(11), output => output(11) );
    and_12: pc1_and port map (a => a(12), b => b(12), output => output(12) );
    and_13: pc1_and port map (a => a(13), b => b(13), output => output(13) );
    and_14: pc1_and port map (a => a(14), b => b(14), output => output(14) );
    and_15: pc1_and port map (a => a(15), b => b(15), output => output(15) );

end architecture;