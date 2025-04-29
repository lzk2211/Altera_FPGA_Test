library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity smg_display is
port(clk: in std_logic;
	  num: in std_logic_vector(31 downto 0);
	  LED_disp: out std_logic_vector(3 downto 0); 
	  LED8s: out std_logic_vector(7 downto 0);
	  SEL: out std_logic_vector(2 downto 0)
	  );
end;

architecture behav of smg_display is
type matrix_index is array (7 downto 0) of integer range 0 to 15;
signal display_num: matrix_index;
signal SE: integer range 0 to 7;
begin
	process(num)
	begin
		display_num(0) <= conv_integer(unsigned(num)) rem 10;
		display_num(1) <= conv_integer(unsigned(num)) /10 rem 10;
		display_num(2) <= conv_integer(unsigned(num)) /100 rem 10;
		display_num(3) <= conv_integer(unsigned(num)) /1000 rem 10;
		display_num(4) <= conv_integer(unsigned(num)) /10000 rem 10;
		display_num(5) <= conv_integer(unsigned(num)) /100000 rem 10;
		display_num(6) <= conv_integer(unsigned(num)) /1000000 rem 10;
		display_num(7) <= conv_integer(unsigned(num)) /10000000 rem 10;
	end process;
	
	process(clk)
	begin
		if clk' event and clk = '1' then
			SE <= SE + 1;
		end if;
	end process;
	
	LED_disp <= conv_std_logic_vector(display_num(SE), 4);
	
	LED8s <= "00111111" when display_num(7-SE) = 0 else
				"00000110" when display_num(7-SE) = 1 else
				"01011011" when display_num(7-SE) = 2 else
				"01001111" when display_num(7-SE) = 3 else
				"01100110" when display_num(7-SE) = 4 else
				"01101101" when display_num(7-SE) = 5 else
				"01111101" when display_num(7-SE) = 6 else
				"00000111" when display_num(7-SE) = 7 else
				"01111111" when display_num(7-SE) = 8 else
				"01101111" when display_num(7-SE) = 9 else
				"00000000";
				
	SEL <= conv_std_logic_vector(SE, 3);
end;