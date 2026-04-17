library ieee;
use ieee.std_logic_1164.all;

entity light_organ_tb is
end entity;

architecture behave of light_organ_tb is

	constant CLOCK_PERIOD	    : time := 20 ns;
	constant G_CLOCKS_PER_PULSE	: integer := 40 / 4;
	constant G_NUM_OF_LEDS   	: integer := 8;

component light_organ is
    generic (
        G_CLOCKS_PER_PULSE   : integer := 50000000 / 4;
		G_NUM_OF_LEDS        : integer := 8
    );
    port (
        CLK          : in    std_logic;
        RST          : in    std_logic;
        RATE         : in    std_logic;
        LEDs         : out   std_logic_vector(G_NUM_OF_LEDS-1 downto 0)
    );
end component;
	signal clk_sig 		:std_logic:= '0';
	signal rst_sig 		:std_logic;
	signal rate_sig 	:std_logic:= '0';
	signal leds_sig 	:std_logic_vector(G_NUM_OF_LEDS-1 downto 0);

begin
	dut: light_organ
	generic map (
		
		G_CLOCKS_PER_PULSE => G_CLOCKS_PER_PULSE,
		G_NUM_OF_LEDS	   => G_NUM_OF_LEDS
	)
	port map (
		CLK		=> clk_sig,
		RST		=> rst_sig,
		RATE	=> rate_sig,
		LEDs    => leds_sig
	);
   
	clk_sig <= not clk_sig after CLOCK_PERIOD/2;
	rst_sig <= '0', '1' after 34 ns;
	
    rate_sig <= not rate_sig after 2000 ns;
end architecture;
