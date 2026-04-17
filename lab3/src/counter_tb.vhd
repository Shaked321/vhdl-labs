library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_tb is
end entity;

architecture behave of counter_tb is

	constant CLOCK_PERIOD	: time := 20 ns;

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
	
	signal clk_sig	   		 	: std_logic := '1';
	signal rst_sig				: std_logic := '0';
	signal ena_sig				: std_logic := '1';
	signal clr_sig				: std_logic := '1';
	signal oen_sig		        : std_logic := '0';
	signal hund_ones_sig		: std_logic_vector(3 downto 0) ;
	signal hund_tens_sig		: std_logic_vector(3 downto 0) ;
	signal sec_ones_sig			: std_logic_vector(3 downto 0) ;
	signal sec_tens_sig			: std_logic_vector(3 downto 0) ;
	

begin
	
	dut: counter
	generic map (
		G_RESET_ACTIVE_VALUE => '0'
	)
	port map (
		CLK       => clk_sig,
		RST       => rst_sig,
		ENA       => ena_sig,
		CLEAR     => clr_sig,
		OEn       => oen_sig,		
		HUND_ONES => hund_ones_sig,
		HUND_TENS => hund_tens_sig,
		SEC_ONES  => sec_ones_sig,
		SEC_TENS  => sec_tens_sig	
	);
	
		
	clk_sig <= not clk_sig after CLOCK_PERIOD/2;
	rst_sig <= '0', '1' after 340 ns;
	ena_sig <= '0', '1' after 300 ns, '0' after 800 ns , '1' after 1400 ns;
	clr_sig <= '1', '0' after 500 ns;
	oen_sig <= '0', '1' after 600 ns , '0' after 900 ns, '1' after 2000 ns, '0' after 2100 ns;
end architecture;