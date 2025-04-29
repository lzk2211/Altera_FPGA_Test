library verilog;
use verilog.vl_types.all;
entity aa is
    port(
        Q               : out    vl_logic_vector(11 downto 0);
        CLK             : in     vl_logic
    );
end aa;
