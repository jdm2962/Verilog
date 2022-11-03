`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 

    wire a_and_b;  
    wire c_and_d;  
    
    assign a_and_b = a & b;     // intermediate wire being driven by and(a, b)
    assign c_and_d = c & d;     // intermediate wire being driven by and(c, d)

    assign out = a_and_b | c_and_d;     // out being driven by or(a_and_b, c_and_d)
    assign out_n = ~(a_and_b | c_and_d);    // out_n being driven by not(or(a_and_b, c_and_d))
endmodule