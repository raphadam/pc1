library ieee;
use ieee.std_logic_1164.all;

entity pc1_not16 is
    port (
        input: in std_logic_vector(15 downto 0);
        output: out std_logic_vector(15 downto 0)
    );
end entity;

architecture pc1_not16_arch of pc1_not16 is

    component pc1_not is
        port(
            input: in std_logic;
            output: out std_logic
        );
    end component;

begin
    not_0: pc1_not port map (input => input(0), output => output(0) );
    not_1: pc1_not port map (input => input(1), output => output(1) );
    not_2: pc1_not port map (input => input(2), output => output(2) );
    not_3: pc1_not port map (input => input(3), output => output(3) );
    not_4: pc1_not port map (input => input(4), output => output(4) );
    not_5: pc1_not port map (input => input(5), output => output(5) );
    not_6: pc1_not port map (input => input(6), output => output(6) );
    not_7: pc1_not port map (input => input(7), output => output(7) );
    not_8: pc1_not port map (input => input(8), output => output(8) );
    not_9: pc1_not port map (input => input(9), output => output(9) );
    not_10: pc1_not port map (input => input(10), output => output(10) );
    not_11: pc1_not port map (input => input(11), output => output(11) );
    not_12: pc1_not port map (input => input(12), output => output(12) );
    not_13: pc1_not port map (input => input(13), output => output(13) );
    not_14: pc1_not port map (input => input(14), output => output(14) );
    not_15: pc1_not port map (input => input(15), output => output(15) );
    
end architecture;