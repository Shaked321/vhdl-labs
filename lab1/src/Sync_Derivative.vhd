library ieee;
use ieee.std_logic_1164.all;

entity Sync_Derivative is
port (
	D_IN	:in std_logic;
	CLK		:in std_logic;
	RST		:in std_logic;
	S_OUT	:out std_logic
);
end entity;

architecture Sync_Derivative_updown of Sync_Derivative is
	signal Q1_D    :std_logic :='0';
	signal Q2_D    :std_logic :='0';
begin
	Sync_Derivative_up: process(CLK,RST)
	begin
		if RST='1' then
			Q2_D<='1';
		elsif rising_edge(CLK) then
			Q2_D<=Q1_D;
			Q1_D<=D_IN;	
		end if;
	end process;
	S_OUT <=  D_IN  xor  Q2_D;
end architecture;


-- architecture Sync_Derivative_down of Sync_Derivative is
	-- signal Q1_D    :std_logic :='0';
	-- signal Q2_D    :std_logic :='0';
-- begin
	-- Sync_Derivative_up: process(CLK,RST)
	-- begin
		-- if RST='1' then
			-- Q2_D<='1';
		-- elsif rising_edge(CLK) then
			-- Q2_D<=Q1_D;
			-- Q1_D<=D_IN;
		-- end if;
	-- end process;
	-- S_OUT <= (not D_IN) and  Q2_D;
-- end architecture;

-- architecture Sync_Derivative_up of Sync_Derivative is
		
	-- signal Q1_D    :std_logic :='0';
	-- signal Q2_D    :std_logic :='0';
-- begin
	-- Sync_Derivative_up: process(CLK,RST)
	-- begin
		-- if RST='1' then
			-- Q2_D<='1';
		-- elsif rising_edge(CLK) then
			-- Q2_D<=Q1_D;
			-- Q1_D<=D_IN;
		-- end if;
	-- end process;
	-- S_OUT <= D_IN and (not Q2_D);
-- end architecture;







