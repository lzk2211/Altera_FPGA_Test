library verilog;
use verilog.vl_types.all;
entity tst2_vlg_sample_tst is
    port(
        rst             : in     vl_logic;
        sys_clk         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end tst2_vlg_sample_tst;
