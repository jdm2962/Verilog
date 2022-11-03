module top_module( 
    input a, 
    input b, 
    output out );

    // output is only 1 when both a and b are driven by a one
    assign out = a & b;	// and gate with inputs: a, b  outputs: out
endmodule