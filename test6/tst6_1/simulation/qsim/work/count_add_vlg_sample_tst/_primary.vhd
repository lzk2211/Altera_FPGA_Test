library verilog;
use verilog.vl_types.all;
entity count_add_vlg_sample_tst is
    port(
        clk_2s          : in     vl_logic;
        rst             : in     vl_logic;
        scoure          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end count_add_vlg_sample_tst;
