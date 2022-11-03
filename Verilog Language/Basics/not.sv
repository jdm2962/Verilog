module top_module( input in, output out );
	assign out = ~in;   // continuously drive the inverse of in to out      --> not gate
endmodule