library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity smg_display is
port(CLK: in std_logic;
	  SEC_H: in std_logic_vector(3 downto 0);
	  SEC_L: in std_logic_vector(3 downto 0);
	  
	  LED_disp: out std_logic_vector(3 downto 0);
	  LED8s: out std_logic_vector(7 downto 0);
	  SEL: out std_logic_vector(2 downto 0));
end;

architecture behav of smg_display is

type matrix_index is array (7 downto 0) of std_logic_vector(3 downto 0);
signal display_num : matrix_index;													 --获得每位数字
signal SE: integer range 0 to 7 := 0;												 --位选变量

begin
	process(SEC_L, SEC_H)
	begin
		display_num(0) <= "1010";
		display_num(1) <= "1010";
		display_num(2) <= "1010";
		display_num(3) <= "1010";
		display_num(4) <= "1010";
		display_num(5) <= "1010";
		display_num(6) <= SEC_H;
		display_num(7) <= SEC_L;
	end process;
	
	process(CLK)--数码管扫描
	begin
		if CLK' event and CLK = '1' then
			SE <= SE + 1;
		end if;
	end process;
	
	LED_disp <= display_num(SE);
					
	LED8s <= "00111111" when display_num(SE) = "0000" else
				"00000110" when display_num(SE) = "0001" else
				"01011011" when display_num(SE) = "0010" else
				"01001111" when display_num(SE) = "0011" else
				"01100110" when display_num(SE) = "0100" else
				"01101101" when display_num(SE) = "0101" else
				"01111101" when display_num(SE) = "0110" else
				"00000111" when display_num(SE) = "0111" else
				"01111111" when display_num(SE) = "1000" else
				"01101111" when display_num(SE) = "1001" else
				"00000000";
	SEL <= conv_std_logic_vector(SE, 3);
end;