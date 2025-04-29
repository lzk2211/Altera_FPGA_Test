library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity cnt_time is
port(nreset: in std_logic;
	  clk: in std_logic;
	  count_sec: out std_logic_vector(3 downto 0));
end;

architecture behav of cnt_time is
signal count: std_logic_vector(3 downto 0) := "0000";
begin
	process(nreset, clk)
	begin
		if nreset = '0' then
			count <= "0000";
			
		elsif clk' event and clk = '1' then
			if count >= "1001" then
				count <= "0000";
			else
				count <= count + 1;
			end if;
		end if;
	end process;
	
	count_sec <= count;
	
end;