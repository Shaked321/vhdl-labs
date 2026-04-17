library ieee;
use ieee.std_logic_1164.all;

entity two_flop_synchronizer is
port (
	D_IN	:in std_logic;
	CLK		:in std_logic;
	RST		:in std_logic;
	Q_OUT	:out std_logic:='0' --initilize system output
);
end entity;

architecture behave of two_flop_synchronizer is
	signal Q_D     :std_logic:='0';	--initilize system output
begin
	two_flop_synchronizer: process(CLK,RST)
	begin
		if RST='1' then
			Q_D<='0';
			Q_OUT<='0';
		elsif rising_edge(CLK) then
			Q_D<=D_IN;
			Q_OUT<=Q_D;
		end if;
	end process;
end architecture;
