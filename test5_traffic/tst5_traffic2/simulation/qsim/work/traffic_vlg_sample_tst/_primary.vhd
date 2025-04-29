library verilog;
use verilog.vl_types.all;
entity traffic_vlg_sample_tst is
    port(
        clk_1s          : in     vl_logic;
        clk_2s          : in     vl_logic;
        clk_ms          : in     vl_logic;
        RST             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end traffic_vlg_sample_tst;
