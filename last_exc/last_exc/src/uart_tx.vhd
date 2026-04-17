library ieee;
use ieee.std_logic_1164.all;

entity uart_tx is
generic (
    CLOCKS_PER_BIT : integer := 5208  -- calculated for 50 MHz system clk and 9600 baud rate
									  -- 1 Tbit is 5208 clocks of system clk 
);
port (
    CLK             : in    std_logic;  -- system clock
    RST             : in    std_logic;  -- asynchronous reset, active low
    TX_DATA         : in    std_logic_vector (7 downto 0);  -- input parallel data from memory
	TX_START        : in    std_logic;  -- flag from controller to start transmiting
	SER_TX          : out   std_logic;  -- output serial data to bluetooth
    TX_DONE         : out   std_logic   -- flag to controller transmiting is done
	
);
end entity;

architecture behave of uart_tx is
	constant Tbit :integer := (CLOCKS_PER_BIT - 1);
	constant bit_num :integer := 7;-- Number of bits

	type state is (st_idle, st_start_bit , st_data_bits , st_stop_bit);
	signal current_state : state := st_idle; 
 
	signal clk_cnt :integer range 0 to CLOCKS_PER_BIT := 0;
	signal bit_cnt :integer range 0 to bit_num := 0;-- Bit counter for the 8 data bits
	
begin

    process(CLK, RST)
    begin
        if RST = '0' then
			TX_DONE <= '0';
			SER_TX  <= '1';
            current_state <= st_idle;
        elsif rising_edge(CLK) then
			case current_state is
				when st_idle  		=>  
										-- Idle state: Wait for the start transmission signal (TX_START = '1')
										clk_cnt <= 0;
										bit_cnt <= 0;
										TX_DONE <= '0';
										SER_TX  <= '1';
										if TX_START = '1' then											
											current_state <= st_start_bit;										
										end if;
										
				
				when st_start_bit 	=>  
										-- Start bit state: Transmit the start bit
										SER_TX <= '0';-- start bit
										if clk_cnt < Tbit then     --1Tbit
											clk_cnt <= clk_cnt + 1;
										else											 
											clk_cnt <= 0;
											current_state <= st_data_bits;
										end if;
										
				when st_data_bits   =>  
										-- Data bits state: Transmit the 8 data bits one at a time
										SER_TX <= TX_DATA(bit_cnt);
										if clk_cnt < Tbit then
											clk_cnt <= clk_cnt + 1;
										else                          --8Tbit
											clk_cnt <= 0;
											if bit_cnt < bit_num then
												bit_cnt <= bit_cnt + 1;
											else
												current_state <= st_stop_bit;
												bit_cnt <= 0;
											end if;
											
										end if;
										
								  
				when st_stop_bit 	=>  
										-- Stop bit state: Transmit the stop bit
										SER_TX <= '1'; -- stop bit
										if clk_cnt < Tbit then      --1Tbit
											clk_cnt <= clk_cnt + 1;
										else
											clk_cnt <= 0;
											TX_DONE <= '1';
											current_state <= st_idle;
										end if;
			end case;
        end if;
    end process;

end architecture;