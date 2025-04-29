library verilog;
use verilog.vl_types.all;
entity traffic_vlg_check_tst is
    port(
        G1              : in     vl_logic;
        G2              : in     vl_logic;
        LED8s           : in     vl_logic_vector(7 downto 0);
        LED_display     : in     vl_logic_vector(3 downto 0);
        R1              : in     vl_logic;
        R2              : in     vl_logic;
        SEL             : in     vl_logic_vector(2 downto 0);
        Y1              : in     vl_logic;
        Y2              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end traffic_vlg_check_tst;
