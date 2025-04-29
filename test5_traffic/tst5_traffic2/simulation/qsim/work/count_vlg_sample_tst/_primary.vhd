library verilog;
use verilog.vl_types.all;
entity count_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clk_2s          : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end count_vlg_sample_tst;
