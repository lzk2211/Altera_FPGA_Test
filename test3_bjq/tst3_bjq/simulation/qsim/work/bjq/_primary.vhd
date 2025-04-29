library verilog;
use verilog.vl_types.all;
entity bjq is
    port(
        LED             : out    vl_logic;
        key             : in     vl_logic_vector(6 downto 0);
        LED8s           : out    vl_logic_vector(7 downto 0);
        CLK             : in     vl_logic;
        SEL             : out    vl_logic_vector(2 downto 0)
    );
end bjq;
