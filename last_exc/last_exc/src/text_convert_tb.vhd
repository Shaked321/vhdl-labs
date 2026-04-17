library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity text_convert_tb is
end entity;

architecture behave of text_convert_tb is

	component text_convert is
    port (
        CLK       : in  std_logic;  -- System clock
        RSTn      : in  std_logic;  -- Active low system reset
        SER_RX    : in  std_logic;  -- Serial data input
        SER_TX    : out std_logic;  -- Serial data output
        SRAM_ADDR : out std_logic_vector(17 downto 0);  -- SRAM address lines
        SRAM_DQ   : inout std_logic_vector(15 downto 0); -- SRAM data bus
        SRAM_WE_N : out std_logic;  -- SRAM write enable (active low)
        SRAM_OE_N : out std_logic;  -- SRAM output enable (active low)
        SRAM_CE_N : out std_logic;  -- SRAM chip enable (active low)
        SRAM_UB_N : out std_logic;  -- SRAM upper byte enable (active low)
        SRAM_LB_N : out std_logic;  -- SRAM lower byte enable (active low)
        MODE      : in  std_logic;  -- Mode key (active low when KEY3 is pressed)
        LED       : out std_logic_vector(6 downto 1);  -- Status LEDs
        NUM_ONES  : out std_logic_vector(6 downto 0);  -- Ones digit
        NUM_TENS  : out std_logic_vector(6 downto 0);  -- Tens digit
        NUM_HUNDS : out std_logic_vector(6 downto 0);  -- Hundreds digit
        NUM_THOUS : out std_logic_vector(6 downto 0)   -- Thousands digit
    );
	end component;
	   
	component sim_sram is
	generic (
		ini_file_name		: string := "UNUSED"
	);
	port (
		SRAM_ADDR       : in    std_logic_vector(17 downto 0) := (others=>'0');  -- sram address
		SRAM_DQ         : inout std_logic_vector(15 downto 0);  -- sram data
		SRAM_WE_N       : in    std_logic;                      -- sram write enable 
		SRAM_OE_N       : in    std_logic;                      -- sram output enable
		SRAM_UB_N       : in    std_logic;                      -- sram upper byte enable 
		SRAM_LB_N       : in    std_logic;                      -- sram lower byte enable
		SRAM_CE_N       : in    std_logic                       -- sram chip enable
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
	---------------------------------------------------
	--key3 input-------
	signal key3_sig				: std_logic := '1'; 
	---------------------------------------------------
	--uart-------
    signal ser_rx_sig               : std_logic := '1'; 
	signal ser_tx_sig               : std_logic := '1'; 
	---------------------------------------------------
	--sram-------
	signal sram_addr_sig      : std_logic_vector(17 downto 0) := (others=>'0');  -- sram address
    signal sram_dq_sig        : std_logic_vector(15 downto 0);  -- sram data
    signal sram_we_n_sig      : std_logic := '1';                      -- sram write enable 
	signal sram_oe_n_sig      : std_logic := '1';                      -- sram output enable
    signal sram_ub_n_sig      : std_logic := '1';                      -- sram upper byte enable 
    signal sram_lb_n_sig      : std_logic := '1';                      -- sram lower byte enable
	signal sram_ce_n_sig      : std_logic := '1';                       -- sram chip enable
	---------------------------------------------------
	--sim uart-------
	signal sim_start_transmit       : boolean := false;
	signal sim_rx_data              : std_logic_vector(7 downto 0) := (others => '0');
	signal sim_rx_data_valid_sig    : boolean := false; 
	---------------------------------------------------
	--led-------
	signal led_sig                  : std_logic_vector(6 downto 1):= (others => '0');
	---------------------------------------------------
	--bcd to 7 seg-------
	signal bcd_out_ones_sig  		   : std_logic_vector(6 downto 0);
	signal bcd_out_tens_sig  		   : std_logic_vector(6 downto 0);
	signal bcd_out_hunds_sig		   : std_logic_vector(6 downto 0);
	signal bcd_out_thous_sig		   : std_logic_vector(6 downto 0);
	
	
begin
		u1_sim_rx: sim_uart_rx
        generic map(
            BAUD_RATE => BAUD_RATE
        )
        port map(
            SER_IN          => ser_tx_sig,
            PAR_DATA        => sim_rx_data,
            PAR_DATA_VALID  =>sim_rx_data_valid_sig
        );

		u2_sim_tx: sim_uart_tx
        generic map(
            BAUD_RATE => BAUD_RATE
        )
        port map(
            START_TRANSMIT  => sim_start_transmit,
            SER_OUT         => ser_rx_sig
        );

		u3_text_convert: text_convert
        port map(
            CLK         => clk_sig,
            RSTn        => rstn_sig,
            SER_RX      => ser_rx_sig,
            SER_TX      => ser_tx_sig,
			SRAM_ADDR   => sram_addr_sig,
            SRAM_DQ     => sram_dq_sig,  
            SRAM_WE_N   => sram_we_n_sig,
            SRAM_OE_N   => sram_oe_n_sig,
            SRAM_CE_N   => sram_ce_n_sig,
			SRAM_UB_N 	=> sram_ub_n_sig,
			SRAM_LB_N 	=> sram_lb_n_sig,
			MODE      	=> key3_sig,
			LED      	=> led_sig,
			NUM_ONES 	=> bcd_out_ones_sig, 
			NUM_TENS 	=> bcd_out_tens_sig,
			NUM_HUNDS	=> bcd_out_hunds_sig,
			NUM_THOUS	=> bcd_out_thous_sig
        );

		u10_sim_sram: sim_sram
		generic map(
			ini_file_name	=> "UNUSED"
		)
		port map(
			SRAM_ADDR      =>  sram_addr_sig,
			SRAM_DQ        =>  sram_dq_sig,  
			SRAM_WE_N      =>  sram_we_n_sig,
			SRAM_OE_N      =>  sram_oe_n_sig,
			SRAM_UB_N      =>  sram_ub_n_sig,
			SRAM_LB_N      =>  sram_lb_n_sig,
			SRAM_CE_N      =>  sram_ce_n_sig
		);					   

		clk_sig <= not clk_sig after CLOCK_PERIOD/2;
		sim_start_transmit <= true,false after 15 ms,true after 20 ms;
		rstn_sig <= '0' , '1' after CLOCK_PERIOD;
		key3_sig <= '1', '0' after 195 ns, '1' after 234 ns, '0' after 12000653 ns, '1' after 12001556 ns,'0' after 35 ms , '1' after 36 ms;
		
end architecture;
