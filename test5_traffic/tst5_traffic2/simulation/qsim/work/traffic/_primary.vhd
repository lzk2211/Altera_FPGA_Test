library verilog;
use verilog.vl_types.all;
entity traffic is
    port(
        R1              : out    vl_logic;
        clk_1s          : in     vl_logic;
        clk_2s          : in     vl_logic;
        RST             : in     vl_logic;
        R2              : out    vl_logic;
        Y1              : out    vl_logic;
        Y2              : out    vl_logic;
        G1              : out    vl_logic;
        G2              : out    vl_logic;
        LED8s           : out    vl_logic_vector(7 downto 0);
        clk_ms          : in     vl_logic;
        LED_display     : out    vl_logic_vector(3 downto 0);
        SEL             : out    vl_logic_vector(2 downto 0)
    );
end traffic;
