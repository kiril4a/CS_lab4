// Lab4.v
`timescale 1 ns/1 ps

//------------------------------------------------------

module logic_function (F, x1, x2, x3);
    output F;
    input  x1, x2, x3;
    wire   t1, t2, t3;

    // t1 = (x1 + x2 + x3)'
    assign t1 = ~(x1 | x2 | x3);

    // t2 = (x1 + x2' + x3')'
    assign t2 = ~(x1 | ~x2 | ~x3);

    // t3 = (x1' + x2' + x3)'
    assign t3 = ~(~x1 | x2 | ~x3);

    // F = (t1 + t2 + t3)''
    assign F = ~(~(t1 | t2 | t3));

endmodule

