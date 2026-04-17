library ieee;
use ieee.std_logic_1164.all;

entity light_organ is
    generic (
        G_CLOCKS_PER_PULSE   : integer := 50000000 / 4;
		G_NUM_OF_LEDS       : integer := 8
    );
    port (
        CLK         : in    std_logic;
        RST         : in    std_logic;
        RATE        : in    std_logic;
        LEDs        : out   std_logic_vector(G_NUM_OF_LEDS-1 downto 0)
    );
end entity;

architecture behave of light_organ is
	
	component pulse_generator is
		generic (
			G_CLOCKS_PER_PULSE   : integer := 3
		);
		port (
			CLK            : in    std_logic;
			RST            : in    std_logic;
			RATE           : in    std_logic;
			PULSE          : out   std_logic
		);
	end component;


	component direction is
	generic(
		G_N_BITS		: integer := 4
	);
	port (
		RST    			: in 	std_logic;
		CLK     		: in 	std_logic;
		Q    			: in 	std_logic_vector(G_N_BITS-1 downto 0);
		L_Rn    		: out   std_logic
	);
	end component;


	component shift_register is
	generic (
		G_N_BITS	: integer := 8
	);
	port (
		CLK			: in    std_logic;
		RST			: in    std_logic;
		ENA			: in    std_logic;
		L_Rn		: in    std_logic;
		Q			: out   std_logic_vector(G_N_BITS-1 downto 0)
	);
	end component;

signal pulse_ena :std_logic;
signal dir_lr    :std_logic;
signal qs_qd     :std_logic_vector(G_NUM_OF_LEDS-1 downto 0);

begin

	u1: pulse_generator
	generic map (
		G_CLOCKS_PER_PULSE => G_CLOCKS_PER_PULSE
	)
	port map (
		CLK			=> CLK,
		RST			=> RST,
		RATE		=> RATE,
		PULSE       => pulse_ena
	);

	u2: direction
	generic map (
		G_N_BITS => G_NUM_OF_LEDS
	)
	port map (
		CLK			=> CLK,
		RST			=> RST,
		L_Rn		=> dir_lr,
		Q			=> qs_qd
	);
   
	u3: shift_register
	generic map (
		G_N_BITS => G_NUM_OF_LEDS
	)
	port map (
		CLK			=> CLK,
		RST			=> RST,
		ENA			=> pulse_ena,
		L_Rn		=> dir_lr,
		Q           => qs_qd
	);
   
   LEDs<=qs_qd;
   
end architecture;
