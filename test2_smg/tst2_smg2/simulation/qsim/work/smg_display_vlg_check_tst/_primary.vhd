library verilog;
use verilog.vl_types.all;
entity smg_display_vlg_check_tst is
    port(
        CLK_1s          : in     vl_logic;
        LED7s           : in     vl_logic_vector(6 downto 0);
        LED_num         : in     vl_logic_vector(3 downto 0);
        SEL             : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end smg_display_vlg_check_tst;
