library ieee;
use ieee.std_logic_1164.all;

entity pc1_mux_tb is
end pc1_mux_tb;

architecture pc1_mux_tb_arch of pc1_mux_tb is
    -- Signals for testing
    signal a_tb, b_tb, sel_tb, t_tb : std_logic;

    -- Component to test
    component pc1_mux is
        port(
            a: in std_logic;
            b: in std_logic;
            sel: in std_logic;
            t: out std_logic
        );
    end component;

begin

    dut: pc1_mux port map (
        a => a_tb,
        b => b_tb,
        sel => sel_tb,
        t => t_tb
    );

    stim: process
    begin
        -- case A 
        a_tb <= '0'; b_tb <= '0'; sel_tb <= '0'; wait for 5 ns;
        assert t_tb = '0';

        a_tb <= '0'; b_tb <= '1'; sel_tb <= '0'; wait for 5 ns;
        assert t_tb = '0';

        a_tb <= '1'; b_tb <= '0'; sel_tb <= '0'; wait for 5 ns;
        assert t_tb = '1';

        a_tb <= '1'; b_tb <= '1'; sel_tb <= '0'; wait for 5 ns;
        assert t_tb = '1';

        -- case B
        a_tb <= '0'; b_tb <= '0'; sel_tb <= '1'; wait for 5 ns;
        assert t_tb = '0';

        a_tb <= '0'; b_tb <= '1'; sel_tb <= '1'; wait for 5 ns;
        assert t_tb = '1';

        a_tb <= '1'; b_tb <= '0'; sel_tb <= '1'; wait for 5 ns;
        assert t_tb = '0';

        a_tb <= '1'; b_tb <= '1'; sel_tb <= '1'; wait for 5 ns;
        assert t_tb = '1';
        
    end process stim;
    
end architecture;