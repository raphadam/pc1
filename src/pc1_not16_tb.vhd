library ieee;
use ieee.std_logic_1164.all;

entity pc1_not16_tb is
end pc1_not16_tb;

architecture pc1_not16_tb_arch of pc1_not16_tb is

    -- Signals for testing
    signal input_tb, output_tb : std_logic_vector(15 downto 0);

    -- Component to test
    component pc1_not16 is
        port(
            input: in std_logic_vector(15 downto 0);
            output: out std_logic_vector(15 downto 0)
        );
    end component;

begin
    dut: pc1_not16 port map (
        input => input_tb,
        output => output_tb
    );

    stim: process
    begin

        input_tb <= "0000000000000000"; wait for 5 ns;
        assert output_tb = "1111111111111111";

        input_tb <= "0101010101010101"; wait for 5 ns;
        assert output_tb = "1010101010101010";

    end process stim;

end architecture;