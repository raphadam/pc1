library ieee;
use ieee.std_logic_1164.all;

entity pc1_not_tb is
end pc1_not_tb;

architecture pc1_not_tb_arch of pc1_not_tb is

    -- Signals for testing
    signal input_tb, output_tb : std_logic;

    -- Component to test
    component pc1_not is
        port(
            input: in std_logic;
            output: out std_logic
        );
    end component;

begin
    dut: pc1_not port map (
        input => input_tb,
        output => output_tb
    );

    stim: process
    begin
        input_tb <= '0'; wait for 5 ns;
        assert output_tb = '1';

        input_tb <= '1'; wait for 5 ns;
        assert output_tb = '0';
    end process stim;

end architecture;