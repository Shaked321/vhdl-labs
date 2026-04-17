library ieee;
use ieee.std_logic_1164.all;

entity half_adder_process is
port (
	A		:in std_logic;
	B		:in std_logic;
	SUM		:out std_logic;
	CARRY	:out std_logic
);
end entity;

architecture behave of half_adder_process is

begin
	half_adder_process: process(A,B)
	begin

		SUM <= A xor B;
		CARRY <= A and B;
	end process;
end architecture;
