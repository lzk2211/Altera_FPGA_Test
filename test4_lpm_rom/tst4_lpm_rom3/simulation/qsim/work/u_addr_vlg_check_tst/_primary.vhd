library verilog;
use verilog.vl_types.all;
entity u_addr_vlg_check_tst is
    port(
        out_addr        : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end u_addr_vlg_check_tst;
