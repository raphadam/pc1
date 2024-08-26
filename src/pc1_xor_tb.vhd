library ieee;
use ieee.std_logic_1164.all;

entity pc1_xor_tb is
end pc1_xor_tb;

architecture pc1_xor_tb_arch of pc1_xor_tb is
    -- Signals for testing
    signal a_tb, b_tb, output_tb : std_logic;

    -- Component to test
    component pc1_xor is
        port(
            a: in std_logic;
            b: in std_logic;
            output: out std_logic
        );
    end component;

begin
    dut: pc1_xor port map (
        a => a_tb,
        b => b_tb,
        output => output_tb
    );

    stim: process
    begin
        a_tb <= '0'; b_tb <= '0'; wait for 5 ns;
        assert output_tb = '0';
        -- report ...  

        a_tb <= '1'; b_tb <= '0'; wait for 5 ns;
        assert output_tb = '1';

        a_tb <= '0'; b_tb <= '1'; wait for 5 ns;
        assert output_tb = '1';

        a_tb <= '1'; b_tb <= '1'; wait for 5 ns;
        assert output_tb = '0';
    end process stim;
    
end architecture;