library verilog;
use verilog.vl_types.all;
entity smg_display1 is
    port(
        CLK             : in     vl_logic;
        SEL             : out    vl_logic_vector(2 downto 0);
        LED8s           : out    vl_logic_vector(7 downto 0);
        LED_num         : out    vl_logic_vector(3 downto 0);
        CLK_ms          : out    vl_logic;
        CLK_1s          : out    vl_logic
    );
end smg_display1;
