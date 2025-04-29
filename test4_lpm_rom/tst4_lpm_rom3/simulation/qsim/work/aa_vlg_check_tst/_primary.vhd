library verilog;
use verilog.vl_types.all;
entity aa_vlg_check_tst is
    port(
        Q               : in     vl_logic_vector(11 downto 0);
        sampler_rx      : in     vl_logic
    );
end aa_vlg_check_tst;
