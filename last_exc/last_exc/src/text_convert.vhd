library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity text_convert is
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
end entity;

architecture behave of text_convert is
    component uart is
        generic (
            CLOCKS_PER_BIT : integer := 5208
        );
        port (
            CLK             : in  std_logic;
            RST             : in  std_logic;
            SER_RX          : in  std_logic;
            TX_DATA         : in  std_logic_vector(7 downto 0);
            START_TX        : in  std_logic;
            RX_DATA         : out std_logic_vector(7 downto 0);
            RX_DATA_VAILD   : out std_logic;
            SER_TX          : out std_logic;
            TX_DONE         : out std_logic
        );
    end component;

    component controller is
        port (
            CLK                 : in  std_logic;
            RST                 : in  std_logic;
            SRAM_ADDR           : out std_logic_vector(17 downto 0);
            SRAM_DQ             : inout std_logic_vector(15 downto 0);
            SRAM_WE_N           : out std_logic;
            SRAM_OE_N           : out std_logic;
            SRAM_CE_N           : out std_logic;
            SRAM_UB_N           : out std_logic;
            SRAM_LB_N           : out std_logic;
            DATA_TO_MEM         : in  std_logic_vector(7 downto 0);
            DATA_TO_MEM_WR      : in  std_logic;
            DATA_FROM_MEM       : out std_logic_vector(7 downto 0);
            DATA_FROM_MEM_VALID : out std_logic;
            UART_TX_DONE        : in  std_logic;
            MODE_PRESSED        : in  std_logic;
            DISPLAY_SHUTDOWNn   : out std_logic_vector(3 downto 0);
            ONES                : out std_logic_vector(3 downto 0);
            TENTHS              : out std_logic_vector(3 downto 0);
            HUNDREDTHS          : out std_logic_vector(3 downto 0);
            THOUSANDS           : out std_logic_vector(3 downto 0);
            LED                 : out std_logic_vector(5 downto 1)
        );
    end component;

    component sync_diff is
        generic (
            DERIVATE_RISING_EDGE  : boolean := true;
            SIG_IN_INIT_VALUE     : std_logic := '0'
        );
        port (
            CLK     : in  std_logic;
            RST     : in  std_logic;
            SIG_IN  : in  std_logic;
            SIG_OUT : out std_logic
        );
    end component;

    component bcd_to_7seg is
        port (
            BCD_IN      : in  std_logic_vector(3 downto 0);
            SHUTDOWNn   : in  std_logic;
            D_OUT       : out std_logic_vector(6 downto 0)
        );
    end component;
	
	constant CLOCK_PERIOD : time := 20 ns;
	constant CLOCKS_PER_BIT :integer := 5208;
	constant BAUD_RATE : integer := 9600;
	
	constant DERIVATE_RISING_EDGE : boolean := true;
    constant SIG_IN_INIT_VALUE  : std_logic := '1';

    signal tx_done_to_uart_tx_done : std_logic;
    signal rx_data_to_data_to_mem : std_logic_vector(7 downto 0);
    signal rx_data_vaild_to_data_to_mem_wr : std_logic;
    signal data_from_mem_to_tx_data : std_logic_vector(7 downto 0);
    signal data_from_mem_vaild_to_start_tx : std_logic;
    signal mode_to_sync : std_logic;
    signal shutdown_to_7seg : std_logic_vector(3 downto 0);
    signal ones_to_7seg : std_logic_vector(3 downto 0);
	signal tens_to_7seg  : std_logic_vector(3 downto 0);
	signal hunds_to_7seg : std_logic_vector(3 downto 0);
	signal thousands_to_7seg : std_logic_vector(3 downto 0);
begin
	LED(6)<=not MODE;--Led 6 is on when MODE is pressed
    u1_uart: uart
        generic map (
            CLOCKS_PER_BIT => CLOCKS_PER_BIT
        )
        port map (
            CLK           => CLK,
            RST           => RSTn,
            SER_RX        => SER_RX,
            TX_DATA       => data_from_mem_to_tx_data,
            START_TX      => data_from_mem_vaild_to_start_tx,
            RX_DATA       => rx_data_to_data_to_mem,
            RX_DATA_VAILD => rx_data_vaild_to_data_to_mem_wr,
            SER_TX        => SER_TX,
            TX_DONE       => tx_done_to_uart_tx_done
        );

    u2_controller: controller
        port map (
            CLK                   => CLK,
            RST                   => RSTn,
            SRAM_ADDR             => SRAM_ADDR,
            SRAM_DQ               => SRAM_DQ,
            SRAM_WE_N             => SRAM_WE_N,
            SRAM_OE_N             => SRAM_OE_N,
            SRAM_CE_N             => SRAM_CE_N,
            SRAM_UB_N             => SRAM_UB_N,
            SRAM_LB_N             => SRAM_LB_N,
            DATA_TO_MEM           => rx_data_to_data_to_mem,
            DATA_TO_MEM_WR        => rx_data_vaild_to_data_to_mem_wr,
            DATA_FROM_MEM         => data_from_mem_to_tx_data,
            DATA_FROM_MEM_VALID   => data_from_mem_vaild_to_start_tx,
            UART_TX_DONE          => tx_done_to_uart_tx_done,
            MODE_PRESSED          => mode_to_sync,
            DISPLAY_SHUTDOWNn     => shutdown_to_7seg,
            ONES                  => ones_to_7seg,
            TENTHS                => tens_to_7seg,
            HUNDREDTHS            => hunds_to_7seg,
            THOUSANDS             => thousands_to_7seg,
            LED                   => LED(5 downto 1)
        );

    u3_mode_sync: sync_diff
        generic map (
            DERIVATE_RISING_EDGE => DERIVATE_RISING_EDGE,
            SIG_IN_INIT_VALUE    => SIG_IN_INIT_VALUE
        )
        port map (
            CLK     => CLK,
            RST     => RSTn,
            SIG_IN  => MODE,
            SIG_OUT => mode_to_sync
        );
		
    u5_ones: bcd_to_7seg
        port map (
            BCD_IN      => ones_to_7seg,
            SHUTDOWNn   => shutdown_to_7seg(0),
            D_OUT       => NUM_ONES
        );

    u6_tens: bcd_to_7seg
        port map (
            BCD_IN      => tens_to_7seg,
            SHUTDOWNn   => shutdown_to_7seg(1),
            D_OUT       => NUM_TENS
        );

    u7_hunds: bcd_to_7seg
        port map (
            BCD_IN      => hunds_to_7seg,
            SHUTDOWNn   => shutdown_to_7seg(2),
            D_OUT       => NUM_HUNDS
        );

    u8_thousands: bcd_to_7seg
        port map (
            BCD_IN      => thousands_to_7seg,
            SHUTDOWNn   => shutdown_to_7seg(3),
            D_OUT       => NUM_THOUS
        );

end architecture;
