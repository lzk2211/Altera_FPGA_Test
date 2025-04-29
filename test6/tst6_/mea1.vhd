library ieee;
use ieee.std_logic_1164.all;

entity mea1 is
port(switch: in std_logic;
	  clk: in std_logic;
	  test: in std_logic;
	  RST: in std_logic;
	  LED8s: out std_logic_vector(7 downto 0);
	  SEL: out std_logic_vector(2 downto 0)
	  );
end;

architecture behav of mea1 is

	component Clock_Division is
	port(CLK: in std_logic;
		  test_clk: buffer std_logic;
		  CLK_ms: buffer std_logic;
		  CLK_2s: buffer std_logic);
	end component;
	
	component switch_scoure is
	port(sys_clk: in std_logic;
		  test_clk: in std_logic;
		  key: in std_logic;
		  output: out std_logic);
	end component;
	
	component count_add is
	port(clk_2s: in std_logic;
		  rst: in std_logic;
		  scoure: in std_logic;
		  num: out std_logic_vector(31 downto 0)
		  );
	end component;
	
	component smg_display is
	port(clk: in std_logic;
		  num: in std_logic_vector(31 downto 0);
		  LED_disp: out std_logic_vector(3 downto 0); 
		  LED8s: out std_logic_vector(7 downto 0);
		  SEL: out std_logic_vector(2 downto 0)
		  );
	end component;
	
	signal CLK_ms, CLK_2s, sco: std_logic;
	signal num: std_logic_vector(31 downto 0);
	
begin
	
	div: Clock_Division port map(CLK => clk, CLK_ms => CLK_ms, CLK_2s => CLK_2s);
	sw: switch_scoure port map(clk, test, switch, sco);
	add: count_add port map(CLK_2s, RST, sco, num);
	disp: smg_display port map(CLK_ms, num, LED8s => LED8s, SEL => SEL);
	
end;