library ieee;
use ieee.std_logic_1164.all;


entity my_counter is
    port (
		U_D : in std_logic;
        CLK : in std_logic;
        RST : in std_logic;
		ENA : in std_logic;
        Q   : out integer range 0 to 15
    );
end entity;

architecture behave of my_counter is
	constant COUNT_LIMIT : integer := 15;
    signal q_sig : integer range 0 to COUNT_LIMIT;
begin
							
    process (CLK, RST)      
    begin                   
        if RST = '1' then   
            q_sig <= 0;
        elsif rising_edge(CLK) then
			if ENA = '1' then
				if U_D = '1' then
					if q_sig = COUNT_LIMIT then
						q_sig <= 0;
					else
					q_sig <= q_sig + 1; 
					end if;
				end if;
				if U_D = '0' then
					if q_sig = 0 then
						q_sig <= COUNT_LIMIT;
					else	
						q_sig <= q_sig - 1;
					
					end if;
				end if;
            end if;
        end if;
    end process;

    Q <= q_sig;

end architecture;
