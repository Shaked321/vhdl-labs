library ieee;
use ieee.std_logic_1164.all;

entity Register_8bit is
port (
	D_IN	:in std_logic_vector (7 downto 0);
	CLK		:in std_logic;
	ENA		:in std_logic;
	RST		:in std_logic;
	Q_OUT	:out std_logic_vector (7 downto 0):="00000000"
);
end entity;

architecture behave of Register_8bit is

begin
	Register_8bit_process: process(CLK,RST)
	begin
		if(RST='1') then
			Q_OUT<="00000000";
		elsif(rising_edge(CLK)) then
			if(ENA='1') then
				Q_OUT<=D_IN;	
			end if;
		end if;
	end process;
end architecture;
