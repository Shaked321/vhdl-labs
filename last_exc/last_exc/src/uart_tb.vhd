library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_tb is
end entity;

architecture behave of uart_tb is

    component uart is
        generic (
            CLOCKS_PER_BIT : integer := 5208
        );
        port (
            CLK             : in    std_logic;
            RST             : in    std_logic;
            SER_RX          : in    std_logic;
            TX_DATA         : in    std_logic_vector (7 downto 0);
            START_TX        : in    std_logic;
            RX_DATA         : out   std_logic_vector (7 downto 0);
            RX_DATA_VAILD   : out   std_logic;
            SER_TX          : out   std_logic;
            TX_DONE         : out   std_logic
			
        );
    end component;

    component sim_uart_tx is
        generic (
            BAUD_RATE : integer := 9600
        );
        port (
            START_TRANSMIT  : in    boolean;
            SER_OUT         : out   std_logic
        );
    end component;

    component sim_uart_rx is
        generic (
            BAUD_RATE : integer := 9600
        );
        port (
            SER_IN          : in    std_logic;
            PAR_DATA        : out   std_logic_vector(7 downto 0);
            PAR_DATA_VALID  : out   boolean
        );
    end component;
	
	
	
	constant CLOCK_PERIOD : time := 20 ns;
	constant CLOCKS_PER_BIT :integer := 5208;
	constant BAUD_RATE : integer := 9600;
    
    signal clk_sig                  : std_logic := '1';
    signal rstn_sig                 : std_logic := '1';
    signal ser_rx_sig               : std_logic := '1'; 
    signal ser_tx_to_ser_in_sig               : std_logic:= '1'; 
    signal rx_tx_data_sig              : std_logic_vector(7 downto 0):= (others => '0');
	signal start_tx_rx_data_valid_sig        : std_logic:= '0'; 
	signal sim_start_transmit       : boolean := false;
	signal sim_rx_data              : std_logic_vector(7 downto 0) := (others => '0');
	
begin
    u1_sim_rx: sim_uart_rx
        generic map(
            BAUD_RATE => BAUD_RATE
        )
        port map(
            SER_IN          => ser_tx_to_ser_in_sig,
            PAR_DATA        => sim_rx_data,
            PAR_DATA_VALID  =>open
        );

    u2_sim_tx: sim_uart_tx
        generic map(
            BAUD_RATE => BAUD_RATE
        )
        port map(
            START_TRANSMIT  => sim_start_transmit,
            SER_OUT         => ser_rx_sig
        );

	u3: uart
        generic map(
            CLOCKS_PER_BIT => CLOCKS_PER_BIT
        )
        port map(
            CLK             => clk_sig,
            RST             => rstn_sig,
            SER_RX          => ser_rx_sig,
            TX_DATA         => rx_tx_data_sig,
			RX_DATA         => rx_tx_data_sig,
            START_TX        => start_tx_rx_data_valid_sig,
            RX_DATA_VAILD   => start_tx_rx_data_valid_sig,
            SER_TX          => ser_tx_to_ser_in_sig,
            TX_DONE         => open
			
        );
	clk_sig <= not clk_sig after CLOCK_PERIOD/2;
	sim_start_transmit <= true;
	
	
	rstn_sig<= '1' , '0' after 25 ns,'1' after 30 ns;
end architecture;
