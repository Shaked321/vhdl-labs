library ieee;
use ieee.std_logic_1164.all;

entity my_counter_tb is
end entity;

architecture behave of my_counter_tb is

    component my_counter is
        port (
			U_D : in std_logic;
            CLK : in std_logic;
            RST : in std_logic;
			ENA : in std_logic;
            Q   : out integer range 0 to 15
        );
    end component;
	
	signal u_d_sig : std_logic;
    signal clk_sig : std_logic := '0';
    signal rst_sig : std_logic ;
	signal ena_sig : std_logic ;
    signal q_sig   : integer range 0 to 15;

begin

    dut: my_counter
        port map (
			U_D => u_d_sig,
            CLK => clk_sig,
            RST => rst_sig,
			ENA => ena_sig,
            Q   => q_sig
        );
	u_d_sig <= '1', '0' after 500 ns;
    clk_sig <= not clk_sig after 10 ns;
    rst_sig <= '1', '0' after 180 ns;
	ena_sig <= '1', '0' after 320 ns, '1' after 350 ns ;

end architecture;
