library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity stopwatch_tb is
end entity;

architecture behave of stopwatch_tb is

	constant CLOCK_PERIOD	: time := 20 ns;

	component stopwatch is
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
	end component;
	
	signal clk_sig	   		 	: std_logic := '1';
	signal rstn_sig				: std_logic := '1';
	signal start_stop_sig		: std_logic := '0';
	signal clr_sig				: std_logic := '0';
	signal lap_sig				: std_logic := '0';
	signal hund_ones_sig		: std_logic_vector(6 downto 0) ;
	signal hund_tens_sig		: std_logic_vector(6 downto 0) ;
	signal sec_ones_sig			: std_logic_vector(6 downto 0) ;
	signal sec_tens_sig			: std_logic_vector(6 downto 0) ;
	
	

begin
	
	dut: stopwatch
	generic map (
		G_CLOCKS_PER_10ms => 5
	)
	port map (
		CLK              => clk_sig,	   		
		RSTn             => rstn_sig,			
		SW_START_STOP	 => start_stop_sig,		
		SW_CLEAR		 => clr_sig,			
		SW_LAP			 => lap_sig,					
		HUND_ONES_7SEG	 => hund_ones_sig,	
		HUND_TENS_7SEG 	 => hund_tens_sig,	
		SEC_ONES_7SEG  	 => sec_ones_sig,		
		SEC_TENS_7SEG	 => sec_tens_sig		
	);
	
		
	clk_sig 		<= not clk_sig after CLOCK_PERIOD/2;
	-- rstn_sig 		<= '1', '0' after 2095 ns, '1' after 2125 ns;
	start_stop_sig  <= '0', '1' after 295 ns,'0' after 325 ns, '1' after 795 ns , '0' after 825 ns ,'1' after 895 ns,'0' after 925 ns;
	-- clr_sig 		<= '0', '1' after 500 ns, '0' after 525 ns;
	lap_sig 		<= '0', '1' after 595 ns , '0' after 625 ns, '1' after 1995 ns, '0' after 2025 ns;
	
end architecture;