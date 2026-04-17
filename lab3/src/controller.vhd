library ieee;
use ieee.std_logic_1164.all;

entity controller is
	generic (
		G_RESET_ACTIVE_VALUE    : std_logic := '0'
	);
	port (
		CLK             : in    std_logic;  -- system clock
		RST             : in    std_logic;  -- asynchronous reset, polarity is according to G_RESET_ACTIVE_VALUE
		SW_START_STOP	: in    std_logic;
		SW_CLEAR		: in    std_logic;
		SW_LAP			: in    std_logic;
		COUNT_ENABLE	: out   std_logic;
		COUNT_CLEAR		: out   std_logic;
		COUNT_LAP		: out   std_logic
	);
end entity;

architecture behave of controller is
	type state is (st_idle, st_stop , st_count , st_lap);
    signal pr_state : state;
	signal nx_state	: state;
	signal cnt_lap :std_logic := '0';

begin
	process(CLK, RST)
    begin
        if RST = G_RESET_ACTIVE_VALUE then
            pr_state <= st_idle;
        elsif rising_edge(CLK) then
            pr_state <= nx_state;
			if pr_state = st_lap then
				cnt_lap<=not cnt_lap;
			end if;
        end if;
    end process;


    process(pr_state, SW_START_STOP,SW_CLEAR,SW_LAP)
    begin
        case pr_state is
		when st_idle  => COUNT_ENABLE <= '0';
		                 COUNT_CLEAR  <= '1';
						 COUNT_LAP <= '0';
						 
						 if SW_START_STOP = '1' then
							nx_state <= st_count;
						 else
							nx_state <= st_idle;
						 end if;
		
		when st_stop  => COUNT_ENABLE <= '0';
		                 if SW_START_STOP = '1' then
		                 	nx_state <= st_count;
		                 elsif SW_CLEAR = '1' then
		                 	nx_state <= st_idle;
						 else
							nx_state <= st_stop;
		                 end if;
		
		when st_count =>  COUNT_ENABLE <= '1';
						  COUNT_CLEAR  <= '0';
						  if SW_LAP = '1' then
                          	nx_state <= st_lap;
                          elsif SW_CLEAR = '1' then
                          	nx_state <= st_idle;
						  elsif SW_START_STOP = '1' then
                          	nx_state <= st_stop;
                          else
                         	nx_state <= st_count;
                          end if;
						  
		when st_lap   =>  COUNT_LAP <= cnt_lap;
                          if SW_CLEAR = '1' then
                          	nx_state <= st_idle;
                          else
                         	nx_state <= st_count;
                          end if;
		end case;
    end process;
	
end architecture;

-- library ieee;
-- use ieee.std_logic_1164.all;
-- use ieee.numeric_std.all;

-- entity controller is
-- generic (
    -- G_RESET_ACTIVE_VALUE : std_logic := '0'
-- );
-- port (
    -- CLK             : in std_logic;
    -- RST             : in std_logic;
    -- SW_START_STOP     : in std_logic; -- Active high, 1 CLK duration, stopwatch start/stop
    -- SW_CLEAR         : in std_logic; -- Active high, 1 CLK duration, stopwatch clear
    -- SW_LAP             : in std_logic; -- Active high, 1 CLK duration, stopwatch lap
    -- COUNT_ENABLE     : out std_logic; 
    -- COUNT_CLEAR     : out std_logic;
    -- COUNT_LAP         : out std_logic
-- );
-- end entity;

-- architecture behave of controller is
    -- type state_type is (st_idle, st_count, st_stop, st_lap); -- FSM states
    -- signal current_state : state_type := st_idle;
    -- signal lap_toggle : std_logic := '0'; -- Internal signal for lap toggling

-- begin 
    -- fsm_process : process(CLK,RST)
    -- begin 
        -- if RST = G_RESET_ACTIVE_VALUE then 
            -- COUNT_ENABLE <= '0';
            -- COUNT_CLEAR <= '1';
            -- current_state <= st_idle;
            -- lap_toggle <= '0';
        -- elsif rising_edge(CLK) then 
            -- case current_state is 
                -- when st_idle =>                 -- Bubble st_idle
                    -- lap_toggle <= '0';
                    -- COUNT_CLEAR <= '1';
                    -- COUNT_ENABLE <= '0';
                    -- if SW_START_STOP = '1' then 
                        -- current_state <= st_count;
                    -- else 
                        -- current_state <= st_idle;
                    -- end if;
-- when st_count =>                -- Bubble st_count
                    -- COUNT_ENABLE <= '1';
                    -- COUNT_CLEAR <= '0';
                    -- if SW_CLEAR = '1' then
                        -- current_state <= st_idle;
                    -- elsif SW_LAP = '1' then 
                        -- current_state <= st_lap;
                    -- elsif SW_START_STOP = '1' then 
                        -- current_state <= st_stop;
                    -- else 
                        -- current_state <= st_count;
                    -- end if;

                -- when st_stop =>                 -- Bubble st_stop
                    -- COUNT_ENABLE <= '0';
                    -- if SW_CLEAR = '1' then 
                        -- current_state <= st_idle;
                    -- elsif SW_START_STOP = '1' then 
                        -- current_state <= st_count;
                    -- else 
                        -- current_state <= st_stop;
                    -- end if;

                -- when st_lap =>                   --Bubble st_lap
                    -- lap_toggle <= not lap_toggle;
                    -- if SW_CLEAR = '1' then 
                        -- current_state <= st_idle;
                    -- else 
                        -- current_state <= st_count;
                    -- end if;
            -- end case;
        -- end if;
    -- end process;

    -- COUNT_LAP <= lap_toggle;
-- end architecture;