library ieee;
use ieee.std_logic_1164.all;

entity pc1_and16_tb is
end pc1_and16_tb;

architecture pc1_and16_tb_arch of pc1_and16_tb is

    -- Signals for testing
    signal a_tb, b_tb, output_tb : std_logic_vector(15 downto 0);

    -- Component to test
    component pc1_and16 is
        port(
            a: in std_logic_vector(15 downto 0);
            b: in std_logic_vector(15 downto 0);
            output: out std_logic_vector(15 downto 0)
        );
    end component;

begin
    dut: pc1_and16 port map (
        a => a_tb,
        b => b_tb,
        output => output_tb
    );

    stim: process
    begin

        a_tb <= "0000000000000000"; b_tb <= "0000000000000000"; wait for 5 ns;
        assert output_tb = "0000000000000000";

        a_tb <= "1111111111111111"; b_tb <= "0000000000000000"; wait for 5 ns;
        assert output_tb = "0000000000000000";

        a_tb <= "1111111111111111"; b_tb <= "1010101010101011"; wait for 5 ns;
        assert output_tb = "1010101010101011";

    end process stim;

end architecture;