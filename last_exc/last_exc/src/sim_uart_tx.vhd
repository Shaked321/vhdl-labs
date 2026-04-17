library ieee;
use ieee.std_logic_1164.all;

entity sim_uart_tx is
generic (
    BAUD_RATE       : integer := 9600
);
port (
	START_TRANSMIT	: in	boolean;
	SER_OUT			: out   std_logic
);
end entity;

architecture behave of sim_uart_tx is

	constant T_BIT					: time := (1e9/BAUD_RATE) * 1 ns;
--	constant TX_DELAY_FROM_START	: time := 100 us;
	constant NUM_OF_TX_BYTES		: integer := 10;
	type data_array_type is array (integer range <>) of std_logic_vector(7 downto 0);
	
	constant TX_DATA_ARRAY			: data_array_type(0 to 9) := (X"61", X"62", X"63", X"64", X"65", X"66", X"67", X"68", X"69", X"6A");

begin

	process
	begin
		SER_OUT <= '1';
		
		wait until START_TRANSMIT;
		
		chars_loop: for char_num in 0 to NUM_OF_TX_BYTES-1 loop
	
			SER_OUT <= '0';		-- this is the start bit
			wait for T_BIT;
			bits_loop: for bit_num in 0 to 7 loop
				SER_OUT <= TX_DATA_ARRAY(char_num)(bit_num);
				wait for T_BIT;
			end loop;
			SER_OUT <= '1';		-- this is the stop bit
			wait for T_BIT;

		
		end loop;
	
	end process;




end architecture;
