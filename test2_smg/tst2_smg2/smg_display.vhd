library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity smg_display is
port(CLK: in std_logic;
	  SEL: out std_logic_vector(2 downto 0);
	  LED7s: out std_logic_vector(6 downto 0);
	  LED_num: out std_logic_vector(3 downto 0);
	  CLK_1s: buffer std_logic
	  );
end;

architecture behav of smg_display is
type matrix_index is array (7 downto 0) of integer range 0 to 9;

signal tmp: std_logic_vector(10 downto 0) := "00000000000";--准备1kHz分频
--signal CLK_1s: std_logic;
begin
	process(CLK)
	variable num: integer range 0 to 7 := 0;--段选变量
	variable se: std_logic_vector(2 downto 0) := "000";--位选变量
	variable shuzi: integer range 0 to 65535 := 12345;
	variable display_num : matrix_index;
	begin
		if CLK_1s' event and CLK_1s = '1' then
			shuzi := shuzi + 1;
		end if;
		
		if CLK' event and CLK = '1' then
			tmp <= tmp + 1;
			CLK_1s <= tmp(4);--大概就1s
			
			display_num(0) := shuzi rem 10;
			display_num(1) := shuzi / 10 rem 10;
			display_num(2) := shuzi / 100 rem 10;
			display_num(3) := shuzi / 1000 rem 10;
			display_num(4) := shuzi / 10000 rem 10;
			display_num(5) := shuzi / 100000 rem 10;
			display_num(6) := shuzi / 1000000 rem 10;
			display_num(7) := shuzi / 10000000 rem 10;
			
			SEL <= se;
			LED_num <= conv_std_logic_vector(display_num(num), 4);
			case display_num(num) is
				when 0 => LED7s <= "0111111";--0
				when 1 => LED7s <= "0000110";--1
				when 2 => LED7s <= "1011011";--2
				when 3 => LED7s <= "1001111";--3
				when 4 => LED7s <= "1100110";--4
				when 5 => LED7s <= "1101101";--5
				when 6 => LED7s <= "1111101";--6
				when 7 => LED7s <= "0000111";--7
				when 8 => LED7s <= "1111111";--8
				when 9 => LED7s <= "1101111";--9
				when others => LED7s <= "0000000";--灭
			end case;
			
			se := se + 1;
			num := num + 1;
			
		end if;
	end process;
end;