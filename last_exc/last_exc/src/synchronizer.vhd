library ieee;
use ieee.std_logic_1164.all;

entity synchronizer is
generic (
    SIG_IN_INIT_VALUE     : std_logic := '1'
);
port (
    CLK             : in    std_logic;  -- system clock
    RST             : in    std_logic;  -- asynchronous reset, polarity is according to G_RESET_ACTIVE_VALUE
    SIG_IN          : in    std_logic;  -- async input signal
    SIG_OUT         : out   std_logic   -- synced & derivative output
);
end entity;

architecture behave of synchronizer is

begin
    process(CLK, RST)
    begin
        if RST = '0' then
            SIG_OUT <= SIG_IN_INIT_VALUE;
        elsif rising_edge(CLK) then
            SIG_OUT <= SIG_IN;
        end if;
    end process;
end architecture;