library verilog;
use verilog.vl_types.all;
entity logic_function is
    port(
        F               : out    vl_logic;
        x1              : in     vl_logic;
        x2              : in     vl_logic;
        x3              : in     vl_logic
    );
end logic_function;
