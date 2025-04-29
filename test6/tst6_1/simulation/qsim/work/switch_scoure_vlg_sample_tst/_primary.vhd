library verilog;
use verilog.vl_types.all;
entity switch_scoure_vlg_sample_tst is
    port(
        key             : in     vl_logic;
        sys_clk         : in     vl_logic;
        test_clk        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end switch_scoure_vlg_sample_tst;
