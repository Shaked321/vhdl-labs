library ieee;
use ieee.std_logic_1164.all;

entity pulse_generator_tb is
end entity;

architecture behave of pulse_generator_tb is

	constant CLOCK_PERIOD	: time := 20 ns;

	component pulse_generator is
	generic (
		G_CLOCKS_PER_PULSE   : integer := 3
	);
	port (
		CLK			: in    std_logic;
		RST			: in    std_logic;
		RATE		: in    std_logic;
		PULSE		: out   std_logic
	);
	end component;
	signal clk_sig	    : std_logic := '1';
	signal rst_sig		: std_logic := '0';
	signal rate_sig		: std_logic := '1';
	signal pulse_sig	: std_logic;

begin
	
	dut: pulse_generator
	generic map (
		G_CLOCKS_PER_PULSE => 5
	)
	port map (
		CLK			=> clk_sig,
		RST			=> rst_sig,
		RATE		=> rate_sig,
		PULSE		=> pulse_sig
	);
	
		
	clk_sig <= not clk_sig after CLOCK_PERIOD/2;
	rst_sig <= '0', '1' after 34 ns;
	rate_sig <= '0', '1' after 343 ns, '0' after 843 ns , '1' after 1403 ns;
end architecture;