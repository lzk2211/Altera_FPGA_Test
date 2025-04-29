library verilog;
use verilog.vl_types.all;
entity u_addr is
    port(
        clk             : in     vl_logic;
        out_addr        : out    vl_logic_vector(5 downto 0)
    );
end u_addr;
