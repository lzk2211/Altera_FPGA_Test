library verilog;
use verilog.vl_types.all;
entity smg_display1_vlg_check_tst is
    port(
        CLK_1s          : in     vl_logic;
        CLK_ms          : in     vl_logic;
        LED8s           : in     vl_logic_vector(7 downto 0);
        LED_num         : in     vl_logic_vector(3 downto 0);
        SEL             : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end smg_display1_vlg_check_tst;
