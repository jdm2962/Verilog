module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    // Wire version
    // 7458 chip has 4 AND gates and 2 OR gates
    // 10 inputs
    // 2 oututs

    wire w1, w2, w3, w4;    // wires driven by intermediate AND gates

    assign w1 = p1c & p1b & p1a;
    assign w2 = p1f & p1e & p1d;
    assign w3 = p2a & p2b;
    assign w4 = p2c & p2d;

    assign p1y = w1 | w2;
    assign p2y = w3 | w4;

endmodule