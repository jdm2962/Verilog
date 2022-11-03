module top_module( 
    input a,b,c,	// input wire declarations          driven from outside the module                          driver or source
    output w,x,y,z );	// output wire declarations     output ports drive something outside of the module      sinks
	
    /////////////
    // 4 wire connections between input ports and output ports
    // Output ports are continuously updated as values are driven to input ports
    // All assigments happen simultaneously, no blocking, in parallel
    // Assignemnts are not wires, just connections between wires(a,b,c --> w, x, y, z)
    // Multiple outputs can be sunk by the same input driver
    /////////////
    assign w = a;	// connection from a to w
    assign x = b;	// connetion from b to x
    assign y = b;	// connection from b to v
    assign z = c;	// connection from c to z
    /////////////
endmodule