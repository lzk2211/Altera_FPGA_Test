library verilog;
use verilog.vl_types.all;
entity tst2_vlg_check_tst is
    port(
        count           : in     vl_logic_vector(3 downto 0);
        LED8s           : in     vl_logic_vector(7 downto 0);
        SEL             : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end tst2_vlg_check_tst;
