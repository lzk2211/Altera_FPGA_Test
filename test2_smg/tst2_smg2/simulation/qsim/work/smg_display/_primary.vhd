library verilog;
use verilog.vl_types.all;
entity smg_display is
    port(
        CLK             : in     vl_logic;
        SEL             : out    vl_logic_vector(2 downto 0);
        LED7s           : out    vl_logic_vector(6 downto 0);
        LED_num         : out    vl_logic_vector(3 downto 0);
        CLK_1s          : out    vl_logic
    );
end smg_display;
