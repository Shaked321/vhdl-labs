library ieee;
use ieee.std_logic_1164.all;

entity and2_gate is
port (
	A		:in std_logic;
	B		:in std_logic;
	C		:out std_logic
);
end entity;

architecture behave of and2_gate is

begin

	C <= A xor B after 5 ns;
	
end architecture;
-- architecture behave of and2_gate is

-- begin

	-- C <= A and B;
	
-- end architecture;

-- architecture behave of and2_gate is

-- begin

	-- C <= A xor B;
	
-- end architecture;












