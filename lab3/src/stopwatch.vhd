library ieee;
use ieee.std_logic_1164.all;

entity stopwatch is
	generic (
		G_CLOCKS_PER_10ms    : integer := 500000
	);
	port (
		CLK             : in    std_logic;  -- system clock
		RSTn            : in    std_logic;  -- asynchronous reset
		SW_START_STOP	: in    std_logic;
		SW_CLEAR		: in    std_logic;
		SW_LAP			: in    std_logic;
		HUND_ONES_7SEG  : out   std_logic_vector(6 downto 0);   -- hund sec unity digit
		HUND_TENS_7SEG  : out   std_logic_vector(6 downto 0);   -- hund sec tens digit
		SEC_ONES_7SEG   : out   std_logic_vector(6 downto 0);   -- sec unity digit
		SEC_TENS_7SEG   : out   std_logic_vector(6 downto 0)    -- sec tens digit
	);
end entity;


architecture behave of stopwatch is

	component sync_diff is
		generic (
			G_DERIVATE_RISING_EDGE  : boolean := true;
			G_SIG_IN_INIT_VALUE     : std_logic := '0';
			G_RESET_ACTIVE_VALUE    : std_logic := '0'
		);
		port (
			CLK             : in    std_logic;  -- system clock
			RST             : in    std_logic;  -- asynchronous reset, polarity is according to G_RESET_ACTIVE_VALUE
			SIG_IN          : in    std_logic;  -- async input signal
			SIG_OUT         : out   std_logic   -- synced & derivative output
		);
	end component;
	
	component controller is
		generic (
			G_RESET_ACTIVE_VALUE    : std_logic := '0'
		);
		port (
			CLK             : in    std_logic;  -- system clock
			RST             : in    std_logic;  -- asynchronous reset, polarity is according to G_RESET_ACTIVE_VALUE
			SW_START_STOP	: in    std_logic;
			SW_CLEAR		: in    std_logic;
			SW_LAP			: in    std_logic;
			COUNT_ENABLE	: out   std_logic;
			COUNT_CLEAR		: out   std_logic;
			COUNT_LAP		: out   std_logic
		);
	end component;
	
	component pulse_generator is
		generic (
			G_RESET_ACTIVE_VALUE   : std_logic := '1';
			G_CLOCKS_PER_PULSES    : integer := 500000 -- 50Mhz/100 
		);
		port (
			CLK             : in    std_logic;  -- system clock
			RST             : in    std_logic;  -- asynchronous reset
			ENA             : in    std_logic;  -- active high enable
			CLEAR           : in    std_logic;  -- active high synchronous clear
			PULSE           : out   std_logic   -- active high 1 CLK duration pulse
		);
	end component;
	
	component counter is
		generic (
			G_RESET_ACTIVE_VALUE   : std_logic := '0'
		);
		port (
			CLK             : in    std_logic;  -- system clock
			RST             : in    std_logic;  -- asynchronous reset, polarity is according to G_RESET_ACTIVE_VALUE
			ENA             : in    std_logic;  -- if high, counetr increments every CLK rising edge
			CLEAR           : in    std_logic;  -- active high synchronous clear
			OEn             : in    std_logic;  -- active low output enable. If high, COUNT_OUT reflects the internal count value. If low, COUNT_OUT reflects the last variable
			HUND_ONES       : out   std_logic_vector(3 downto 0);   -- hund sec unity digit
			HUND_TENS       : out   std_logic_vector(3 downto 0);   -- hund sec tens digit
			SEC_ONES        : out   std_logic_vector(3 downto 0);   -- sec unity digit
			SEC_TENS        : out   std_logic_vector(3 downto 0)    -- sec tens digit
		);
	end component;
	
	component bcd_to_7seg is
		port(
			BCD_IN          : in std_logic_vector(3 downto 0);
			D_OUT           : out std_logic_vector(6 downto 0));
	end component;

signal sig_out_start_stop 	:std_logic;
signal sig_out_clear 		:std_logic;
signal sig_out_lap 			:std_logic;
signal sig_lap_oen 			:std_logic;
signal sig_clear_clear 		:std_logic;
signal sig_enable_ena 		:std_logic;
signal sig_pulse_ena 		:std_logic;
signal sig_hund_ones_bcd_in :std_logic_vector(3 downto 0);
signal sig_hund_tens_bcd_in :std_logic_vector(3 downto 0);
signal sig_ones_bcd_in 		:std_logic_vector(3 downto 0);
signal sig_tens_bcd_in 		:std_logic_vector(3 downto 0);

begin
	
	u1_SW_START_STOP: sync_diff
	generic map(
		G_DERIVATE_RISING_EDGE => false,
		G_SIG_IN_INIT_VALUE    => '0',
	    G_RESET_ACTIVE_VALUE   => '0'
	)
	port map(
		CLK     => CLK,
		RST     => RSTn,
		SIG_IN  => SW_START_STOP,
		SIG_OUT => sig_out_start_stop
	);
	
	u1_SW_CLEAR: sync_diff
	generic map(
		G_DERIVATE_RISING_EDGE => false,
		G_SIG_IN_INIT_VALUE    => '0',
	    G_RESET_ACTIVE_VALUE   => '0'
	)
	port map(
		CLK     => CLK,
		RST     => RSTn,
		SIG_IN  => SW_CLEAR,
		SIG_OUT => sig_out_clear
	);
	
	u1_SW_LAP: sync_diff
	generic map(
		G_DERIVATE_RISING_EDGE => false,
		G_SIG_IN_INIT_VALUE    => '0',
	    G_RESET_ACTIVE_VALUE   => '0'
	)
	port map(
		CLK     => CLK,
		RST     => RSTn,
		SIG_IN  => SW_LAP,
		SIG_OUT => sig_out_lap
	);
	
	u2: controller
	generic map(
		G_RESET_ACTIVE_VALUE => '0'
	)
	port map(
		CLK             => CLK,
		RST             => RSTn,
		SW_START_STOP	=> sig_out_start_stop,
		SW_CLEAR		=> sig_out_clear,
		SW_LAP			=> sig_out_lap,
		COUNT_ENABLE	=> sig_enable_ena,
		COUNT_CLEAR		=> sig_clear_clear,
		COUNT_LAP		=> sig_lap_oen
	);
	
	u3: pulse_generator
	generic map(
		G_RESET_ACTIVE_VALUE  => '0',
		G_CLOCKS_PER_PULSES   => G_CLOCKS_PER_10ms

	)
	port map(
		CLK    => CLK,
		RST    => RSTn,
		ENA    => sig_enable_ena,
		CLEAR  => sig_clear_clear,
		PULSE  => sig_pulse_ena
	);
	
	u4: counter
	generic map(
		G_RESET_ACTIVE_VALUE => '0'
	)
	port map(
		CLK       => CLK,
		RST       => RSTn,
		ENA       => sig_pulse_ena,
		CLEAR     => sig_clear_clear,
		OEn       => sig_lap_oen,
		HUND_ONES => sig_hund_ones_bcd_in, 
		HUND_TENS => sig_hund_tens_bcd_in, 
		SEC_ONES  => sig_ones_bcd_in, 		
		SEC_TENS  => sig_tens_bcd_in 		
		
	);
	
	u5_HUND_ONES_7SEG: bcd_to_7seg
	port map(
		BCD_IN => sig_hund_ones_bcd_in,
		D_OUT  => HUND_ONES_7SEG 
	);
	
	u5_HUND_TENS_7SEG: bcd_to_7seg
	port map(
		BCD_IN => sig_hund_tens_bcd_in,
		D_OUT  => HUND_TENS_7SEG 
	);
	
	u5_SEC_ONES_7SEG: bcd_to_7seg
	port map(
		BCD_IN => sig_ones_bcd_in,
		D_OUT  => SEC_ONES_7SEG  
	);
	
	u5_SEC_TENS_7SEG: bcd_to_7seg
	port map(
		BCD_IN => sig_tens_bcd_in,
		D_OUT  => SEC_TENS_7SEG  
	);

end architecture;