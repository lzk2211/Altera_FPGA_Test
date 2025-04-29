library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Clock_Division is
port(CLK: in std_logic;
	  CLK_1s: buffer std_logic
	  );
end;

architecture behav of Clock_Division is
begin
	process(CLK)--分频器
	variable tmp1: integer range 0 to 50000000 := 0;
	begin
		if CLK' event and CLK = '1' then
			tmp1 := tmp1 + 1;
			if tmp1 = 50000000 then
				tmp1 := 0;
			end if;
			
			if tmp1 rem 25000000 = 0 then
				CLK_1s <= not CLK_1s;
			end if;
			
		end if;
		
	end process;
end;