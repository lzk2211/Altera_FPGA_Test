library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity smg_display4 is
port(CLK: in std_logic;
	  SEL: out std_logic_vector(2 downto 0);
	  LED8s: out std_logic_vector(7 downto 0);
	  LED_num: out std_logic_vector(3 downto 0);
	  CLK_ms: buffer std_logic;
	  CLK_1s: buffer std_logic
	  );
end;

architecture behav of smg_display4 is

type matrix_index is array (7 downto 0) of integer range 0 to 9;
signal display_num : matrix_index;															 --获得每位数字
signal tmp: std_logic_vector(30 downto 0) := "0000000000000000000000000000000";--准备1kHz分频
signal SE: integer range 0 to 7 := 0;														 --位选变量
signal num: integer range 0 to 65535 := 0;												 --要显示的数字

begin
	process(CLK)--分频器
	begin
		if CLK' event and CLK = '1' then
			tmp <= tmp + 1;
		end if;
		CLK_ms <= not tmp(5);		--数码管依次扫描的CLK	快速扫描
		CLK_1s <= tmp(25);			--数字num加一的CLK		预计大概1s
	end process;
	
	process(num)--分数字位
	begin
		display_num(0) <= num rem 10;
		display_num(1) <= num / 10 rem 10;
		display_num(2) <= num / 100 rem 10;
		display_num(3) <= num / 1000 rem 10;
		display_num(4) <= num / 10000 rem 10;
		display_num(5) <= num / 100000 rem 10;
		display_num(6) <= num / 1000000 rem 10;
		display_num(7) <= num / 10000000 rem 10;
	end process;
	
	process(CLK_1s)--数字num近1s加一
	begin
		if CLK_1s' event and CLK_1s = '1' then
			num <= num + 1;
		end if;
	end process;
	
	process(CLK_ms)--数码管扫描
	begin
		if CLK_ms' event and CLK_ms = '1' then
			SE <= SE + 1;
		end if;
	end process;
	
	process(SE)
	begin
		LED_num <= conv_std_logic_vector(display_num(SE), 4);
		case display_num(SE) is
			when 0 => LED8s <= "00111111";--0
			when 1 => LED8s <= "00000110";--1
			when 2 => LED8s <= "01011011";--2
			when 3 => LED8s <= "01001111";--3
			when 4 => LED8s <= "01100110";--4
			when 5 => LED8s <= "01101101";--5
			when 6 => LED8s <= "01111101";--6
			when 7 => LED8s <= "00000111";--7
			when 8 => LED8s <= "01111111";--8
			when 9 => LED8s <= "01101111";--9
			when others => LED8s <= "00000000";--灭
		end case;
		SEL <= conv_std_logic_vector(SE, 3);
	end process;
end;