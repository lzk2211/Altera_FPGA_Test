library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity u_addr is
port(clk: in std_logic;
	  out_addr: out std_logic_vector(5 downto 0));
end;

architecture behav of u_addr is
signal count: std_logic_vector(5 downto 0) := "000000";
begin
	process(clk)
	begin
		if clk' event and clk = '1' then
			count <= count + 1;
		end if;
	end process;
	out_addr <= count;
end;