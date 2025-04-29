library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Clock_Division is
port(CLK: in std_logic;
	  test_clk: buffer std_logic;
	  CLK_ms: buffer std_logic;
	  CLK_2s: buffer std_logic);
end;

architecture behav of Clock_Division is
begin
	process(CLK)--分频器
	variable tmp: integer range 0 to 50000000 := 0;
	begin
		if CLK' event and CLK = '1' then
			tmp := tmp + 1;
			if tmp = 50000000 then
				tmp := 0;
			end if;
			
			if tmp = 0 then
				CLK_2s <= not CLK_2s;
			end if;
			
			if tmp rem 100 = 0 then
				CLK_ms <= not CLK_ms;
			end if;
			
			if tmp rem 250 = 0 then
				test_clk <= not test_clk;
			end if;
			
		end if;
	end process;
end;