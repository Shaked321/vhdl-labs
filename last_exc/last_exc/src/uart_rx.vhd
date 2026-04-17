library ieee;
use ieee.std_logic_1164.all;

entity uart_rx is
generic (
    CLOCKS_PER_BIT : integer := 5208  -- calculated for 50 MHz system clk and 9600 baud rate
									  -- 1 Tbit is 5208 clocks of system clk 
);
port (
    CLK             : in    std_logic;  -- system clock
    RST             : in    std_logic;  -- asynchronous reset, active low
	SER_RX          : in    std_logic;  -- output serial data to bluetooth
	RX_DATA         : out   std_logic_vector (7 downto 0);  -- output parallel data to memory
    RX_DATA_VAILD   : out   std_logic   -- flag to controller reception is done
);
end entity;

architecture behave of uart_rx is
	constant Tbit :integer := (CLOCKS_PER_BIT - 1);--0-5207 including this is 5208 total
	constant bit_num :integer := 7;-- Number of bits
	
	type state is (st_idle, st_start_bit , st_data_bits , st_stop_bit);-- FSM states
	signal current_state : state := st_idle; 
	signal register_sig  : std_logic_vector (bit_num downto 0)  := (others => '0') ;-- Temporary storage for received data bits 	
	signal clk_cnt :integer range 0 to CLOCKS_PER_BIT := 0;
	signal bit_cnt :integer range 0 to bit_num := 0;-- Bit counter for the 8 data bits
	
begin
    process(CLK, RST)
    begin
        if RST = '0' then
		-- Reset the entire system
			RX_DATA <=(others => '0');-- Clear the received data
			RX_DATA_VAILD <= '0';-- Clear the valid flag
            current_state <= st_idle;-- Return to idle state
        elsif rising_edge(CLK) then
			case current_state is
				when st_idle  		=>  
										-- Idle state: Wait for the start bit
										--Initialize values
										register_sig <= (others => '0');
										clk_cnt <= 0;
										bit_cnt <= 0;
										RX_DATA_VAILD <= '0';
										if SER_RX = '0' then
											current_state <= st_start_bit;
										end if;
										
				
				when st_start_bit 	=>  
										--sample information in half the cycle Tbit for accuracy, every Tbit
										if clk_cnt < Tbit/2 then 				
											clk_cnt <= clk_cnt + 1;              
										else
											if SER_RX = '0' then
												clk_cnt <= 0;
												current_state <= st_data_bits;
												bit_cnt <= 0;
											else
												clk_cnt <= 0;
												current_state <= st_idle;
											end if;
										end if;
										
				when st_data_bits	=>  
										-- Data bits state: Receive and store 8 data bits
										if clk_cnt < Tbit then
											clk_cnt <= clk_cnt + 1;
										else
											register_sig(bit_cnt) <= SER_RX;
											if bit_cnt < bit_num then
												bit_cnt <= bit_cnt + 1;
												clk_cnt <= 0;
											else
												clk_cnt <= 0;
												bit_cnt <= 0;
												current_state <= st_stop_bit;
											end if;
										end if;
										

                when st_stop_bit => 	
										-- Stop bit state: Validate the stop bit
										if clk_cnt < Tbit then
											clk_cnt <= clk_cnt + 1;
										else
											if SER_RX = '1' then
												clk_cnt <= 0;
												RX_DATA_VAILD <= '1';
												RX_DATA <= register_sig;
												current_state <= st_idle;
											else
												RX_DATA_VAILD <= '0';
												clk_cnt <= 0;
												current_state <= st_idle;
											end if;
										end if;
			end case;
        end if;
    end process;
end architecture;

