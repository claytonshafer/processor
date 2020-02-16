//sign extender for divider
module signext(out, in);

	input [31:0] in;
	output [62:0] out;
	wire [30:0] extrasignbits;
	
	assign extrasignbits = in[31] ? 31'b1111111111111111111111111111111 : 31'b0000000000000000000000000000000;
	
	assign out = {extrasignbits, in};


endmodule 
