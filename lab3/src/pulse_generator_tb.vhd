library ieee;
use ieee.std_logic_1164.all;

entity pulse_generator_tb is
end entity;

architecture behave of pulse_generator_tb is

	constant CLOCK_PERIOD	: time := 20 ns;

	component pulse_generator is
		generic (
			G_RESET_ACTIVE_VALUE   : std_logic := '1';
			G_CLOCKS_PER_PULSES    : integer := 50000000/100 -- 50Mhz/100 
		);
		port (
			CLK             : in    std_logic;  -- system clock
			RST             : in    std_logic;  -- asynchronous reset
			ENA             : in    std_logic;  -- active high enable
			CLEAR           : in    std_logic;  -- active high synchronous clear
			PULSE           : out   std_logic   -- active high 1 CLK duration pulse
		);
	end component;
	
	signal clk_sig	    : std_logic := '1';
	signal rst_sig		: std_logic := '0';
	signal ena_sig		: std_logic := '1';
	signal clr_sig		: std_logic := '1';
	signal pulse_sig	: std_logic;

begin
	
	dut: pulse_generator
	generic map (
		G_CLOCKS_PER_PULSES => 5,
		G_RESET_ACTIVE_VALUE => '0'
	)
	port map (
		CLK			=> clk_sig,
		RST			=> rst_sig,
		ENA		    => ena_sig,
		CLEAR       => clr_sig,
		PULSE		=> pulse_sig
	);
	
		
	clk_sig <= not clk_sig after CLOCK_PERIOD/2;
	rst_sig <= '0', '1' after 340 ns;
	ena_sig <= '0', '1' after 300 ns, '0' after 800 ns , '1' after 1400 ns;
	clr_sig <= '1', '0' after 500 ns;
end architecture;