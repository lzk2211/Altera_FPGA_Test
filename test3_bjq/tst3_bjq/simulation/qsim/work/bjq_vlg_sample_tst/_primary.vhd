library verilog;
use verilog.vl_types.all;
entity bjq_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        key             : in     vl_logic_vector(6 downto 0);
        sampler_tx      : out    vl_logic
    );
end bjq_vlg_sample_tst;
