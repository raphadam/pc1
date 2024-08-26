library ieee;
use ieee.std_logic_1164.all;

entity pc1_dmux_tb is
end pc1_dmux_tb;

architecture pc1_dmux_tb_arch of pc1_dmux_tb is
    -- Signals for testing
    signal a_tb, b_tb, sel_tb, input_tb : std_logic;

    -- Component to test
    component pc1_dmux is
        port(
            input: in std_logic;
            sel: in std_logic;
            a: out std_logic;
            b: out std_logic
        );
    end component;

begin

    dut: pc1_dmux port map (
        a => a_tb,
        b => b_tb,
        sel => sel_tb,
        input => input_tb
    );

    stim: process
    begin

        input_tb <= '0'; sel_tb <= '0'; wait for 5 ns;
        assert a_tb = '0';
        assert b_tb = '0';

        input_tb <= '0'; sel_tb <= '1'; wait for 5 ns;
        assert a_tb = '0';
        assert b_tb = '0';

        input_tb <= '1'; sel_tb <= '0'; wait for 5 ns;
        assert a_tb = '1';
        assert b_tb = '0';

        input_tb <= '1'; sel_tb <= '1'; wait for 5 ns;
        assert a_tb = '0';
        assert b_tb = '1';

    end process stim;
    
end architecture;