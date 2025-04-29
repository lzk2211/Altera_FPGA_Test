library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity count is
port(clk: in std_logic;
	  clk_2s: in std_logic;
	  rst: in std_logic;
	  R1, R2, Y1, Y2, G1, G2: out std_logic;
	  SEC_H, SEC_L: buffer std_logic_vector(3 downto 0));
end;

architecture behav of count is
signal dir: std_logic := '0';
begin
	
	process(rst, clk)								-- 倒计时
	begin
		if rst = '0' then
			SEC_H <= "0010";
			SEC_L <= "0000";
		elsif clk' event and clk = '1' then
			if SEC_L = "0000" then
				SEC_L <= "1001";
				if SEC_H = "0000" then
					SEC_H <= "0001";
					dir <= not dir;
				else
					SEC_H <= SEC_H - 1;
				end if;
			else
				SEC_L <= SEC_L - 1;
			end if;
		end if;
	end process;
	
	process(rst, clk)
	begin
		if rst = '0' then
			R1 <= '0';
			R2 <= '0';
			G1 <= '1';
			G2 <= '1';
			Y1 <= '1';
			Y2 <= '1';
		else
			if SEC_H = "0000" and SEC_L < "0011" then
				if dir = '0' then			-- 1方向通车
					R1 <= '1';
					R2 <= '0';
					G1 <= '1';
					G2 <= '1';
					Y1 <= clk_2s;
					Y2 <= '1';
				else							-- 2方向通车
					R1 <= '0';
					R2 <= '1';
					G1 <= '1';
					G2 <= '1';
					Y1 <= '1';
					Y2 <= clk_2s;
				end if;
			else
				if dir = '0' then			-- 1方向通车
					R1 <= '1';
					R2 <= '0';
					G1 <= '0';
					G2 <= '1';
				else							-- 2方向通车
					R1 <= '0';
					R2 <= '1';
					G1 <= '1';
					G2 <= '0';
				end if;
				Y1 <= '1';
				Y2 <= '1';
			end if;
		end if;
	end process;
end;