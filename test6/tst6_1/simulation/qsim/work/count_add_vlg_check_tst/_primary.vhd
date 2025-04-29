library verilog;
use verilog.vl_types.all;
entity count_add_vlg_check_tst is
    port(
        num             : in     vl_logic_vector(27 downto 0);
        sampler_rx      : in     vl_logic
    );
end count_add_vlg_check_tst;
