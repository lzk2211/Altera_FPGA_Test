library verilog;
use verilog.vl_types.all;
entity count_vlg_check_tst is
    port(
        G1              : in     vl_logic;
        G2              : in     vl_logic;
        R1              : in     vl_logic;
        R2              : in     vl_logic;
        SEC_H           : in     vl_logic_vector(3 downto 0);
        SEC_L           : in     vl_logic_vector(3 downto 0);
        Y1              : in     vl_logic;
        Y2              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end count_vlg_check_tst;
