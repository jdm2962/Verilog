module top_module( 
    input a, 
    input b, 
    output out );

    //nor gate behavior
    // xor gate outputs true when inputs are opposite
    // xnor is ~xor, the opposite of xor, so out is only asserted when a and b are the same value
    // a --> 0  b --> 0  out --> 1
    // a --> 0  b --> 1  out --> 0
    // a --> 1  b --> 0  out --> 0
    // a --> 1  b --> 1  out --> 1

    assign out = ~(a ^ b);  // xnor gate
endmodule