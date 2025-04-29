library ieee;
use ieee.std_logic_1164.all;

entity switch_scoure is
port(sys_clk: in std_logic;
	  test_clk: in std_logic;
	  key: in std_logic;
	  outp: out std_logic);
end;

architecture behav of switch_scoure is
begin
	process(key)
	begin
		if key = '1' then
			outp <= sys_clk;
		else
			outp <= test_clk;
		end if;
	end process;
end;