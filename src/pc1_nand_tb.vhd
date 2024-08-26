library ieee;
use ieee.std_logic_1164.all;

entity pc1_nand_tb is
end pc1_nand_tb;

architecture pc1_nand_tb_arch of pc1_nand_tb is
    -- Signals for testing
    signal a_tb, b_tb, c_tb : std_logic;

    -- Component to test
    component pc1_nand is
        port(
            a: in std_logic;
            b: in std_logic;
            output: out std_logic
        );
    end component;

begin
    dut: pc1_nand port map (
        a => a_tb,
        b => b_tb,
        output => c_tb
    );

    stim: process
    begin
        a_tb <= '0'; b_tb <= '0'; wait for 5 ns;
        assert c_tb = '1';

        a_tb <= '1'; b_tb <= '0'; wait for 5 ns;
        assert c_tb = '1';

        a_tb <= '0'; b_tb <= '1'; wait for 5 ns;
        assert c_tb = '1';

        a_tb <= '1'; b_tb <= '1'; wait for 5 ns;
        assert c_tb = '0';
    end process stim;
end architecture;