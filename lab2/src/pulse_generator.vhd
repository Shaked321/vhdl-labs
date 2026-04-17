library ieee;
use ieee.std_logic_1164.all;

entity pulse_generator is
    generic (
        G_CLOCKS_PER_PULSE   : integer := 3
    );
    port (
        CLK            : in    std_logic;
        RST            : in    std_logic;
        RATE           : in    std_logic;
        PULSE          : out   std_logic
    );
end entity;

architecture behave of pulse_generator is
    signal count : integer range 0 to  2 * G_CLOCKS_PER_PULSE := 2 * G_CLOCKS_PER_PULSE;
    signal rate_state : std_logic := '0';
begin
    pulse_generator: process(CLK, RST)
    begin
        if RST = '0' then
            PULSE <= '0';
            count <= 2 * G_CLOCKS_PER_PULSE;

        elsif rising_edge(CLK) then

            if RATE = '1' then
                if rate_state ='0' then
                    PULSE <= '1';
                    count <= 2 * G_CLOCKS_PER_PULSE;
                end if;
                rate_state <= '1';

            else

                if rate_state ='1' then
                    PULSE <= '1';
                    count <= 2 * G_CLOCKS_PER_PULSE;
                end if;
                rate_state <= '0';
            end if;

            if rate_state ='1' then
                count <= count - 1;
            else
                count <= count - 2;
            end if;

            if count = 2 * G_CLOCKS_PER_PULSE then
                PULSE <= '1';
            else
                PULSE <= '0';
            end if;

            if count <= 1 then
                count <= 2 * G_CLOCKS_PER_PULSE;
            end if;

        end if;
    end process;
end architecture;