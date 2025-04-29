library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity count_add is
port(clk_2s: in std_logic;
	  rst: in std_logic;
	  scoure: in std_logic;
	  num: out std_logic_vector(31 downto 0)
	  );
end;

architecture behav of count_add is
signal N, N_lock: integer range 0 to 99999999 := 0;
begin
	process(rst, clk_2s, scoure)
	begin
		if rst = '0' then
			N <= 0;
		elsif clk_2s = '1' then
			if scoure' event and scoure = '1' then
				N <= N + 1;
			end if;
		elsif clk_2s = '0' then
			N <= 0;
		end if;
	end process;
	
	process(rst, clk_2s)
	begin
		if rst = '0' then
			N_lock <= 0;
		elsif clk_2s' event and clk_2s = '0' then
			N_lock <= N;
		end if;
	end process;
	
	num <= conv_std_logic_vector(N_lock, 32);
	
end;