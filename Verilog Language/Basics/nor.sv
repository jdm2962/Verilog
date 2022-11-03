module top_module( 
    input a, 	// wire or called a net
    input b, 	// net(wire) b
    output out );
	
    //nor gate behavior
    // out only asserted when a and b are deasserted 
    // a --> 0  b --> 0  out --> 1
    // a --> 0  b --> 1  out --> 0
    // a --> 1  b --> 0  out --> 0
    // a --> 1  b --> 1  out --> 0
    
    assign out = ~(a | b);	// nor gate
endmodule