library verilog;
use verilog.vl_types.all;
entity switch_scoure is
    port(
        sys_clk         : in     vl_logic;
        test_clk        : in     vl_logic;
        key             : in     vl_logic;
        outp            : out    vl_logic
    );
end switch_scoure;
