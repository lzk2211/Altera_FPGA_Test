library verilog;
use verilog.vl_types.all;
entity tst2 is
    port(
        count           : out    vl_logic_vector(3 downto 0);
        rst             : in     vl_logic;
        sys_clk         : in     vl_logic;
        LED8s           : out    vl_logic_vector(7 downto 0);
        SEL             : out    vl_logic_vector(2 downto 0)
    );
end tst2;
