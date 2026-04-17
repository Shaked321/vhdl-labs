library ieee;
use ieee.std_logic_1164.all;

entity mux_4to1 is
port (
	D_IN1   :in std_logic_vector(7 downto 0);
	D_IN2   :in std_logic_vector(7 downto 0);
	D_IN3   :in std_logic_vector(7 downto 0);
	D_IN4   :in std_logic_vector(7 downto 0);
	SEL     :in std_logic_vector(1 downto 0);
	Q_OUT   :out std_logic_vector(7 downto 0)
);
end entity;

architecture behave of mux_4to1 is

begin
	with SEL select
	Q_OUT<= D_IN1 when "00",
			D_IN2 when "01",
            D_IN3 when "10",
            D_IN4 when "11",
            (others=>'Z') when others;	
end architecture;
