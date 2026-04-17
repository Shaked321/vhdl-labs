library ieee;
use ieee.std_logic_1164.all;


entity sync_diff_tb is
end entity;

architecture behave of sync_diff_tb is

	constant CLOCK_PERIOD	: time := 20 ns;

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
	
	signal clk_sig	   		 	: std_logic := '1';
	signal rst_sig				: std_logic := '0';
	signal sig_in_sig		    : std_logic := '0';
	signal sig_out_sig			: std_logic ;
begin
	
	dut: sync_diff
	generic map (
		G_DERIVATE_RISING_EDGE   => true,
		G_SIG_IN_INIT_VALUE      => '0',
		G_RESET_ACTIVE_VALUE     => '0'
	)
	port map (
		CLK      => clk_sig,
		RST      => rst_sig,
		SIG_IN   => sig_in_sig,
		SIG_OUT  => sig_out_sig

	);
	
		
	clk_sig 		<= not clk_sig after CLOCK_PERIOD/2;
	rst_sig 		<= '0', '1' after 340 ns;
	sig_in_sig  <= '0', '1' after 423 ns, '0' after 438 ns , '1' after 623 ns, '0' after 802 ns;
	
end architecture;