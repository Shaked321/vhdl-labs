library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity bcd_to_7seg is
port(
    BCD_IN                      : in    std_logic_vector(3 downto 0);
    SHUTDOWNn                   : in    std_logic;
    D_OUT                       : out   std_logic_vector(6 downto 0));
end entity;
       
architecture behave of bcd_to_7seg is
   
begin 
   
    process(BCD_IN, SHUTDOWNn)
    begin
        if SHUTDOWNn = '0' then
            D_OUT <= (others=>'1');
        else
            case BCD_IN is
                when "0000" =>
                    D_OUT <= "1000000";--40h
                when "0001" =>                  
                    D_OUT <= "1111001";--79h
                when "0010" =>
                    D_OUT <= "0100100";--24h
                when "0011" =>
                    D_OUT <= "0110000";--30h
                when "0100" =>
                    D_OUT <= "0011001";--19h
                when "0101" =>
                    D_OUT <= "0010010";--12h
                when "0110" =>
                    D_OUT <= "0000010";--2h
                when "0111" =>
                    D_OUT <= "1111000";--78h
                when "1000" =>
                    D_OUT <= "0000000";--0h
                when "1001" =>
                    D_OUT <= "0010000";--10h
                when others =>
                    D_OUT <= "1111111";--off
            end case;
        end if;
    end process;
   
end architecture;

