library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity controller is
    port (
        CLK                 : in  std_logic;  -- system clock
        RST                 : in  std_logic;  -- asynchronous reset, active low 
        SRAM_ADDR           : out std_logic_vector(17 downto 0);  -- SRAM address lines
        SRAM_DQ             : inout std_logic_vector(15 downto 0); -- SRAM data bus
        SRAM_WE_N           : out std_logic;  -- SRAM write enable (active low)
        SRAM_OE_N           : out std_logic;  -- SRAM output enable (active low)
        SRAM_CE_N           : out std_logic;  -- SRAM chip enable (active low)
        SRAM_UB_N           : out std_logic;  -- SRAM upper byte enable (active low)
        SRAM_LB_N           : out std_logic;  -- SRAM lower byte enable (active low)     
        DATA_TO_MEM         : in  std_logic_vector(7 downto 0);  -- data to write into SRAM
        DATA_TO_MEM_WR      : in  std_logic;  -- write enable signal for SRAM
        DATA_FROM_MEM       : out std_logic_vector(7 downto 0);  -- data read from SRAM
        DATA_FROM_MEM_VALID : out std_logic;  -- data valid signal for SRAM read
        UART_TX_DONE        : in  std_logic;  -- UART transmission done flag
        MODE_PRESSED        : in  std_logic;  -- mode button press flag
        DISPLAY_SHUTDOWNn   : out std_logic_vector(3 downto 0);  -- display digit shutdown control
        ONES                : out std_logic_vector(3 downto 0);  -- ONES digit in BCD
        TENTHS              : out std_logic_vector(3 downto 0);  -- TENTHS digit in BCD
        HUNDREDTHS          : out std_logic_vector(3 downto 0);  -- HUNDREDTHS digit in BCD
        THOUSANDS           : out std_logic_vector(3 downto 0);  -- THOUSANDS digit in BCD
        LED                 : out std_logic_vector(5 downto 1)   -- LEDs for system status
    );
end entity;

architecture behave of controller is

	component bin2bcd_12bit_sync is
		port ( 
			binIN       			: in    std_logic_vector(15 downto 0);     -- binary input number
			ones        			: out   std_logic_vector(3 downto 0);      -- unity digit
			tenths      			: out   std_logic_vector(3 downto 0);      -- tens digit
			hundredths   			: out   std_logic_vector(3 downto 0);      -- hundreds digit
			thousands   			: out   std_logic_vector(3 downto 0);      -- thousands digit 
			tensofthousands			: out   std_logic_vector(3 downto 0);      -- tens of thousands digit
			CLK         			: in    std_logic                           -- clock input
		);
	end component;
	
	constant MAX_CHAR : integer := 9999; --Maximum chars count
	constant MAX_ADDR : integer := 4999; --Maximum SRAM address range
	
    type state is (st_idle, st_receive , st_transmit); -- State machine states
    signal current_state : state := st_idle; -- Current state signal
    
	signal chars_cnt : integer range 0 to (MAX_CHAR+1) := 0; 
    signal address_cnt : integer range 0 to MAX_ADDR := 0;
	
	signal bin_in_char_cnt :std_logic_vector (15 downto 0):=(others => '0');
	signal data_from_mem_valid_sig :std_logic;--signal for data valid
	signal data_from_mem_valid_sig_not :std_logic;--NOT version of data valid signal
	

begin

    process(CLK, RST)
    begin
        if RST = '0' then
		 -- Reset all outputs and internal signals
            current_state      <= st_idle; 
			LED                <= "00001";
            SRAM_ADDR          <= (others => '0');
            SRAM_WE_N          <= '1';
            SRAM_OE_N          <= '1';
            SRAM_CE_N          <= '1';
            SRAM_UB_N          <= '1';
            SRAM_LB_N          <= '1';
            DISPLAY_SHUTDOWNn  <= "0001"; 
            chars_cnt          <= 0;
            address_cnt        <= 0;
            data_from_mem_valid_sig <= '0';
            SRAM_DQ               <= (others => 'Z');
            DATA_FROM_MEM         <= (others => '0');
            DATA_FROM_MEM_VALID <= '0';
            bin_in_char_cnt <= (others => '0');

			
        elsif rising_edge(CLK) then
            case current_state is
                when st_idle =>
				-- Idle state: Initialize values and wait for mode press
								bin_in_char_cnt <= (others => '0');
                                LED                <= "00011";
                                SRAM_ADDR          <= (others => '0');
                                SRAM_WE_N          <= '1';
                                SRAM_OE_N          <= '1';
                                SRAM_CE_N          <= '1';
                                SRAM_UB_N          <= '1';
                                SRAM_LB_N          <= '1';
                                DISPLAY_SHUTDOWNn  <= "0001"; 
                                chars_cnt          <= 0;
                                address_cnt        <= 0;
                                data_from_mem_valid_sig <= '0';
                                SRAM_DQ               <= (others => 'Z');
                                DATA_FROM_MEM         <= (others => '0');
                                DATA_FROM_MEM_VALID <= '0';

								if MODE_PRESSED = '1' then    
									current_state <= st_receive;
									LED           <= "00101";
								end if;
                                        
                when st_receive =>
				-- Receive state: Handle data write operations to SRAM
								LED(1) <= '1';
								LED(3) <= '1';
								bin_in_char_cnt <= std_logic_vector(to_unsigned(chars_cnt, 16));
								if DATA_TO_MEM_WR = '1'  then
									if chars_cnt < MAX_CHAR then
									-- Write data to SRAM
										SRAM_CE_N <= '0'; 
										SRAM_WE_N <= '0'; 
										SRAM_OE_N <= '1';
										SRAM_ADDR <= std_logic_vector(to_unsigned(address_cnt, SRAM_ADDR'length));
										
										if bin_in_char_cnt(0) = '0' then
											-- Write lower byte
											SRAM_UB_N <= '1';
											SRAM_LB_N <= '0';
											SRAM_DQ(7 downto 0) <= DATA_TO_MEM; -- write lower byte
										else
											-- Write upper byte and increment address
											SRAM_UB_N <= '0';
											SRAM_LB_N <= '1';
											SRAM_DQ(15 downto 8) <= DATA_TO_MEM; -- write upper byte
											address_cnt <= address_cnt + 1;
										end if;
									end if;
										chars_cnt <= chars_cnt + 1;
								end if;    
								
							
								if chars_cnt > MAX_CHAR then
									chars_cnt <= MAX_CHAR;
									LED(5) <= '1'; --Led5 is on when overflow
									SRAM_CE_N <= '1';--unable access to sram
									SRAM_WE_N <= '1';
									SRAM_OE_N <= '1';
									
								end if;
								
								-- Transition to transmit state when mode is pressed again
								if MODE_PRESSED = '1' and chars_cnt > 0 then
									
									if bin_in_char_cnt(0) = '0' then
										address_cnt <= address_cnt - 1;
									end if;
									current_state <= st_transmit;
									data_from_mem_valid_sig <= '0';
								
								
								end if;

                when st_transmit =>
								-- Transmit state: Handle data read operations from SRAM
								bin_in_char_cnt <= std_logic_vector(to_unsigned(chars_cnt, 16));
								SRAM_CE_N <= '0';
								SRAM_WE_N <= '1';
								SRAM_OE_N <= '0';
								SRAM_DQ <= (others => 'Z');
								LED <= "01001";
								
									if chars_cnt > 0 then
									-- Read data from SRAM
										SRAM_ADDR <= std_logic_vector(to_unsigned(address_cnt, SRAM_ADDR'length));
										
										if bin_in_char_cnt(0) = '1' then
										-- Read lower byte
											SRAM_UB_N <= '1';
											SRAM_LB_N <= '0';
											DATA_FROM_MEM <= SRAM_DQ(7 downto 0); -- read lower byte
											data_from_mem_valid_sig <= '1';
										else
										 -- Read upper byte
											SRAM_UB_N <= '0';
											SRAM_LB_N <= '1';
											DATA_FROM_MEM <= SRAM_DQ(15 downto 8); -- read upper byte
											data_from_mem_valid_sig <= '1';
										end if;			
										
										if UART_TX_DONE = '1' then
											
											if bin_in_char_cnt(0) = '1' and address_cnt > 0 then
												address_cnt <= address_cnt - 1;
											end if;
											data_from_mem_valid_sig <= '0';
											chars_cnt <= chars_cnt - 1;
										end if;
										
									else                                           
									-- Return to receive state when all data is transmitted
										LED <= "00101";
										current_state <= st_receive; 
										chars_cnt <= 0; 
										address_cnt <= 0; 
									end if;
									
			end case;
--limits counters
			if chars_cnt < 0 then
				chars_cnt <= 0;
			end if;

			if address_cnt > MAX_ADDR then
				address_cnt <= MAX_ADDR;
				
			elsif address_cnt < 0 then
				address_cnt <= 0;
			end if;
--digit display           
			
			if chars_cnt >= 1000 then
				DISPLAY_SHUTDOWNn <= "1111";
			end if;

			if chars_cnt < 1000 then
				DISPLAY_SHUTDOWNn <= "0111";
			end if;
			
			if chars_cnt < 100 then
				DISPLAY_SHUTDOWNn <= "0011";
			end if;
			
			if chars_cnt < 10 then
				DISPLAY_SHUTDOWNn <= "0001";
			end if;
			
			
			--to synchronize DATA_FROM_MEM_VALID with clock
			data_from_mem_valid_sig_not <= not data_from_mem_valid_sig;
			DATA_FROM_MEM_VALID <= data_from_mem_valid_sig and data_from_mem_valid_sig_not;
			
        end if;	
		
    end process;

	
u1: bin2bcd_12bit_sync
	port map( 
		
		binIN       	  => bin_in_char_cnt,
		ones        	  => ONES,       
		tenths      	  => TENTHS,
		hundredths   	  => HUNDREDTHS, 
		thousands   	  => THOUSANDS,  
		tensofthousands	  => open,
		CLK         	  => CLK
	);
	
end architecture;

