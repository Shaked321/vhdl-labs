LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY To_7seg_Converter IS
PORT (BCD_IN : IN INTEGER RANGE 0 TO 10;
      D_OUT : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END To_7seg_Converter;

ARCHITECTURE behave OF To_7seg_Converter IS
BEGIN
    D_OUT <= "1000000" WHEN BCD_IN=0 ELSE
             "1111001" WHEN BCD_IN=1 ELSE
             "0100100" WHEN BCD_IN=2 ELSE
             "0110000" WHEN BCD_IN=3 ELSE
             "0011001" WHEN BCD_IN=4 ELSE
             "0010010" WHEN BCD_IN=5 ELSE
             "0000010" WHEN BCD_IN=6 ELSE
             "1111000" WHEN BCD_IN=7 ELSE
             "0000000" WHEN BCD_IN=8 ELSE
             "0010000" WHEN BCD_IN=9 ELSE
			 -- "0001000" WHEN BCD_IN=10 ELSE   --oren request us to show 'A'  
             "1111111";
			 
END behave;