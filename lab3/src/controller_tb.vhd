library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller_tb is
end entity;

architecture behave of controller_tb is

	constant CLOCK_PERIOD	: time := 20 ns;

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
	
	signal clk_sig	   		 	: std_logic :='0' ;
	signal rst_sig				: std_logic ;
	signal start_stop_sig		: std_logic ;
	signal clr_sig				: std_logic ;
	signal lap_sig				: std_logic ;
	signal cnt_ena_sig			: std_logic ;
	signal cnt_clr_sig			: std_logic ;
	signal cnt_lap_sig		    : std_logic ;
	
	

begin
	
	dut: controller
	generic map (
		G_RESET_ACTIVE_VALUE => '0'
	)
	port map (
		CLK              => clk_sig,
		RST              => rst_sig,
		SW_START_STOP	 => start_stop_sig,	
		SW_CLEAR		 => clr_sig,	
		SW_LAP			 => lap_sig,					
		COUNT_ENABLE	 => cnt_ena_sig,
		COUNT_CLEAR		 => cnt_clr_sig,
		COUNT_LAP		 => cnt_lap_sig
		
	);
	
		
	clk_sig 		<= not clk_sig after CLOCK_PERIOD/2;
	rst_sig 		<= '1', '0' after 340 ns , '1' after 540 ns;
	start_stop_sig  <= '0', '1' after 300 ns, '0' after 800 ns , '1' after 1400 ns;
	clr_sig 		<= '1', '0' after 500 ns;
	lap_sig 		<= '0', '1' after 600 ns , '0' after 900 ns, '1' after 2000 ns, '0' after 2500 ns;
end architecture;