library ieee;
use ieee.std_logic_1164.all;

entity pc1_mux16 is
    port (
        a: in std_logic_vector(15 downto 0);
        b: in std_logic_vector(15 downto 0);
        sel: in std_logic;
        output: out std_logic_vector(15 downto 0)
    );
end entity;

architecture pc1_mux16_arch of pc1_mux16 is

    component pc1_mux is
        port (
            a: in std_logic;
            b: in std_logic;
            sel: in std_logic;
            t: out std_logic
        );
    end component;

begin

    mux_0: pc1_mux port map  (a => a(0),  b => b(0),  sel => sel, t => output(0) );
    mux_1: pc1_mux port map  (a => a(1),  b => b(1),  sel => sel, t => output(1) );
    mux_2: pc1_mux port map  (a => a(2),  b => b(2),  sel => sel, t => output(2) );
    mux_3: pc1_mux port map  (a => a(3),  b => b(3),  sel => sel, t => output(3) );
    mux_4: pc1_mux port map  (a => a(4),  b => b(4),  sel => sel, t => output(4) );
    mux_5: pc1_mux port map  (a => a(5),  b => b(5),  sel => sel, t => output(5) );
    mux_6: pc1_mux port map  (a => a(6),  b => b(6),  sel => sel, t => output(6) );
    mux_7: pc1_mux port map  (a => a(7),  b => b(7),  sel => sel, t => output(7) );
    mux_8: pc1_mux port map  (a => a(8),  b => b(8),  sel => sel, t => output(8) );
    mux_9: pc1_mux port map  (a => a(9),  b => b(9),  sel => sel, t => output(9) );
    mux_10: pc1_mux port map (a => a(10), b => b(10), sel => sel, t => output(10) );
    mux_11: pc1_mux port map (a => a(11), b => b(11), sel => sel, t => output(11) );
    mux_12: pc1_mux port map (a => a(12), b => b(12), sel => sel, t => output(12) );
    mux_13: pc1_mux port map (a => a(13), b => b(13), sel => sel, t => output(13) );
    mux_14: pc1_mux port map (a => a(14), b => b(14), sel => sel, t => output(14) );
    mux_15: pc1_mux port map (a => a(15), b => b(15), sel => sel, t => output(15) );

end architecture;