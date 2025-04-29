library verilog;
use verilog.vl_types.all;
entity count_add is
    port(
        clk_2s          : in     vl_logic;
        rst             : in     vl_logic;
        scoure          : in     vl_logic;
        num             : out    vl_logic_vector(27 downto 0)
    );
end count_add;
