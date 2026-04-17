library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

       
entity bcd_to_7seg_tb is
end entity;

architecture behave of bcd_to_7seg_tb is

	

	component bcd_to_7seg is
		port(
			BCD_IN          : in std_logic_vector(3 downto 0);
			D_OUT           : out std_logic_vector(6 downto 0));
	end component;
	
	signal bcd_in_sig	   		:std_logic_vector(3 downto 0):= (others=>'0');
	signal d_out_sig			: std_logic_vector(6 downto 0);

begin
	
	dut: bcd_to_7seg
	port map (
		BCD_IN => bcd_in_sig,	
        D_OUT  => d_out_sig	
	);
	
		
	
	bcd_in_sig  <= "0001", "1000" after 423 ns, "1001" after 456 ns , "0011" after 623 ns;
	
end architecture;