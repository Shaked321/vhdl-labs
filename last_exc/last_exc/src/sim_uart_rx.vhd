library ieee;
use ieee.std_logic_1164.all;

entity sim_uart_rx is
generic (
    BAUD_RATE       : integer := 9600
);
port (
	SER_IN			: in    std_logic;
	PAR_DATA		: out   std_logic_vector(7 downto 0);
	PAR_DATA_VALID	: out	boolean
);
end entity;

architecture behave of sim_uart_rx is

	constant T_BIT					: time := (1e9/BAUD_RATE) * 1 ns;

	signal par_data_sig				: std_logic_vector(7 downto 0);

begin

	process
	begin

		wait until falling_edge(SER_IN);
		wait for T_BIT / 2;
		if SER_IN = '0' then
			for bit_num in 0 to 7 loop
				wait for T_BIT;
				par_data_sig(bit_num) <= SER_IN;
			end loop;
			wait for T_BIT;
			if SER_IN = '1' then
				PAR_DATA_VALID <= true;
				PAR_DATA <= par_data_sig;
			else
				report "Stop bit error";
			end if;
		else
			report "Start bit error";
		end if;
		wait for 1 ns;
		PAR_DATA_VALID <= false;
	end process;

	


end architecture;
