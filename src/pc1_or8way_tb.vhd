library ieee;
use ieee.std_logic_1164.all;

entity pc1_or8way_tb is
end pc1_or8way_tb;

architecture pc1_or8way_tb_arch of pc1_or8way_tb is

    -- Signals for testing
    signal input_tb: std_logic_vector(7 downto 0);
    signal output_tb: std_logic;

    -- Component to test
    component pc1_or8way is
        port (
            input: in std_logic_vector(7 downto 0);
            output: out std_logic
        );
    end component;

begin
    dut: pc1_or8way port map (
        input => input_tb,
        output => output_tb
    );

    stim: process
    begin

        input_tb <= "00000000"; wait for 5 ns;
        assert output_tb = '0';

        input_tb <= "10000000"; wait for 5 ns;
        assert output_tb = '1';

        input_tb <= "00000001"; wait for 5 ns;
        assert output_tb = '1';

    end process stim;

end architecture;