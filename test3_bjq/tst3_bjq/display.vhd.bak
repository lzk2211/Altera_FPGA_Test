library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity display is
port(CLK: in std_logic;
	  count_sec: in std_logic_vector(3 downto 0);
	  LED8s: out std_logic_vector(7 downto 0);
	  SEL: out std_logic_vector(2 downto 0));
end;

architecture behav of display is
signal SE: integer range 0 to 7 := 0;					 --位选变量
begin
	process(CLK)--数码管扫描
	begin
		if CLK' event and CLK = '1' then
			SE <= SE + 1;
		end if;
	end process;
	
	LED8s <= "00111111" when count_sec = "0000" else
				"00000110" when count_sec = "0001" else
				"01011011" when count_sec = "0010" else
				"01001111" when count_sec = "0011" else
				"01100110" when count_sec = "0100" else
				"01101101" when count_sec = "0101" else
				"01111101" when count_sec = "0110" else
				"00000111" when count_sec = "0111" else
				"01111111" when count_sec = "1000" else
				"01101111" when count_sec = "1001" else
				"00000000";
	SEL <= conv_std_logic_vector(SE, 3);

end;