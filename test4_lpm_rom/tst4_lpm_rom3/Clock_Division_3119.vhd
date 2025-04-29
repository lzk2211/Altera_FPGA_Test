library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Clock_Division_3119 is
port(CLK_3119: in std_logic;
	  CLK_1s_3119: buffer std_logic
	  );
end;

architecture behav of Clock_Division_3119 is
begin
	process(CLK_3119)--分频器
	variable tmp1: integer range 0 to 50000000 := 0;
	begin
		if CLK_3119' event and CLK_3119 = '1' then
			tmp1 := tmp1 + 1;
			if tmp1 = 50000000 then
				tmp1 := 0;
			end if;
			
			if tmp1 rem 12500000 = 0 then
				CLK_1s_3119 <= not CLK_1s_3119;
			end if;
		end if;
	end process;
end;