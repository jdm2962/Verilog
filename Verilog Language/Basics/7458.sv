module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    // 7458 chip has 4 AND gates and 2 OR gates
    // 10 inputs
    // 2 oututs

    // p1y driven by 2 3 input AND gates fed to a 2 input OR gate
    // OR( AND(p1a, p1b, p1c), AND(p1f, p1e, p1d) )
    assign p1y = (p1a & p1b & p1c) | (p1f & p1e & p1d);

    // p2y driven by 2 2 input AND gates fed to a two input OR gate
    // OR( AND(p2a, p2b), AND(p2c, p2d))
    assign p2y = (p2a & p2b) | (p2c & p2d);

endmodule