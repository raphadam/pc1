library ieee;
use ieee.std_logic_1164.all;

entity pc1_mux16_tb is
end pc1_mux16_tb;

architecture pc1_mux16_tb_arch of pc1_mux16_tb is

    -- Signals for testing
    signal a_tb, b_tb, output_tb: std_logic_vector(15 downto 0);
    signal sel_tb: std_logic;

    -- Component to test
    component pc1_mux16 is
        port(
            a: in std_logic_vector(15 downto 0);
            b: in std_logic_vector(15 downto 0);
            sel: in std_logic;
            output: out std_logic_vector(15 downto 0)
        );
    end component;

begin
    dut: pc1_mux16 port map (
        a => a_tb,
        b => b_tb,
        sel => sel_tb,
        output => output_tb
    );

    stim: process
    begin

        -- case A
        a_tb <= "0000000000000000"; b_tb <= "0000000000000000"; sel_tb <= '0'; wait for 5 ns;
        assert output_tb = "0000000000000000";

        a_tb <= "0101010101010111"; b_tb <= "0000000000000000"; sel_tb <= '0'; wait for 5 ns;
        assert output_tb = "0101010101010111";

        a_tb <= "0101010101010111"; b_tb <= "0000000000000000"; sel_tb <= '1'; wait for 5 ns;
        assert output_tb = "0000000000000000";

        a_tb <= "1111111100000000"; b_tb <= "0101010101010111"; sel_tb <= '0'; wait for 5 ns;
        assert output_tb = "1111111100000000";

        -- case B
        a_tb <= "0000000000000000"; b_tb <= "0000000000000000"; sel_tb <= '1'; wait for 5 ns;
        assert output_tb = "0000000000000000";

        a_tb <= "0000000000000000"; b_tb <= "0101010101010111"; sel_tb <= '1'; wait for 5 ns;
        assert output_tb = "0101010101010111";

        a_tb <= "0000000000000000"; b_tb <= "0101010101010111"; sel_tb <= '0'; wait for 5 ns;
        assert output_tb = "0000000000000000";

        a_tb <= "1111111100000000"; b_tb <= "0101010101010111"; sel_tb <= '1'; wait for 5 ns;
        assert output_tb = "0101010101010111";


    end process stim;

end architecture;