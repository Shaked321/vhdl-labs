library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity sim_sram_tb is
end entity;

architecture sim of sim_sram_tb is


    signal sram_addr       	: std_logic_vector(17 downto 0) := (others=>'0');
    signal sram_dq      	: std_logic_vector(15 downto 0) := (others=>'Z');
	signal sram_we_n      	: std_logic := '1';
	signal sram_oe_n      	: std_logic := '0';
	signal sram_ub_n      	: std_logic := '0';
	signal sram_lb_n      	: std_logic := '0';
	signal sram_ce_n      	: std_logic := '0';
    

begin

	dut: entity work.sim_sram
	generic map (
		ini_file_name		=> "..\matlab\sec_cols_fixed_lines_mem.bin"
	)
	port map (
		SRAM_ADDR       	=> sram_addr,
		SRAM_DQ         	=> sram_dq  ,
		SRAM_WE_N       	=> sram_we_n,
		SRAM_OE_N       	=> sram_oe_n,
		SRAM_UB_N       	=> sram_ub_n, 
		SRAM_LB_N       	=> sram_lb_n,
		SRAM_CE_N       	=> sram_ce_n
	);

	process
	begin
	
		sram_addr <= (others=>'0');
		
		for i in 0 to 2**18-1 loop
			wait for 100 ns;
			sram_addr <= sram_addr + 1;
		end loop;
		
		report "End of Simulation" & LF
		severity failure;
		
		wait;
	
	end process;
    
             
end architecture;
