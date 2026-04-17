library ieee;
use ieee.std_logic_1164.all;

entity uart is
generic (
    CLOCKS_PER_BIT : integer := 5208  -- calculated for 50 MHz system clk and 9600 baud rate
									  -- 1 Tbit is 5208 clocks of system clk 
);
port (
    CLK             : in    std_logic;  -- system clock
    RST             : in    std_logic;  -- asynchronous reset, active low
	SER_RX          : in    std_logic;  -- output serial data to bluetooth
	TX_DATA         : in    std_logic_vector (7 downto 0);  -- input parallel data from memory
	START_TX        : in    std_logic;  -- flag from controller to start transmiting
	RX_DATA         : out    std_logic_vector (7 downto 0);  -- output parallel data to memory
    RX_DATA_VAILD   : out   std_logic;   -- flag to controller reception is done
	SER_TX          : out   std_logic;  -- output serial data to bluetooth
	TX_DONE         : out   std_logic -- flag to controller transmiting is done
	
);
end entity;

architecture behave of uart is
	component uart_rx is
	generic (
		CLOCKS_PER_BIT : integer := 5208  -- calculated for 50 MHz system clk and 9600 baud rate
										  -- 1 Tbit is 5208 clocks of system clk 
	);
	port (
		CLK             : in    std_logic;  -- system clock
		RST             : in    std_logic;  -- asynchronous reset, active low
		SER_RX          : in    std_logic;  -- output serial data to bluetooth
		RX_DATA         : out   std_logic_vector (7 downto 0);  -- output parallel data to memory
		RX_DATA_VAILD   : out   std_logic   -- flag to controller transmiting is done
	);
	end component;
	
	component uart_tx is
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
	end component;
	
	component synchronizer is
		generic (
			SIG_IN_INIT_VALUE     : std_logic := '1'
		);
		port (
			CLK             : in    std_logic;  -- system clock
			RST             : in    std_logic;  -- asynchronous reset, polarity is according to G_RESET_ACTIVE_VALUE
			SIG_IN          : in    std_logic;  -- async input signal
			SIG_OUT         : out   std_logic   -- synced & derivative output
		);
	end component;
	
	signal ser_rx_sync :std_logic;
	
begin

u1_tx: uart_tx
	generic map(
		CLOCKS_PER_BIT => CLOCKS_PER_BIT
	)
	port map(
		CLK     		=> CLK,
		RST     		=> RST,
		TX_DATA 		=> TX_DATA,
		TX_START		=> START_TX,
		SER_TX  		=> SER_TX,
		TX_DONE 		=> TX_DONE
		
	);

u2_rx: uart_rx
	generic map(
		CLOCKS_PER_BIT  => CLOCKS_PER_BIT
	)
	port map(
		CLK             => CLK,
		RST             => RST,
		SER_RX          => ser_rx_sync,
		RX_DATA         => RX_DATA,
		RX_DATA_VAILD   => RX_DATA_VAILD
	);
	
u3_rx_sync: synchronizer
	generic map(
		SIG_IN_INIT_VALUE  => '1'
	)
	port map(
		CLK           => CLK,
		RST           => RST,
		SIG_IN        => SER_RX,
		SIG_OUT       => ser_rx_sync
		
	);

end architecture;
