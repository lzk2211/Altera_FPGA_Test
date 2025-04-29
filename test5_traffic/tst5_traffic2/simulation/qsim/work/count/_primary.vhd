library verilog;
use verilog.vl_types.all;
entity count is
    port(
        clk             : in     vl_logic;
        clk_2s          : in     vl_logic;
        rst             : in     vl_logic;
        R1              : out    vl_logic;
        R2              : out    vl_logic;
        Y1              : out    vl_logic;
        Y2              : out    vl_logic;
        G1              : out    vl_logic;
        G2              : out    vl_logic;
        SEC_H           : out    vl_logic_vector(3 downto 0);
        SEC_L           : out    vl_logic_vector(3 downto 0)
    );
end count;
