//sign extender for immediates
module signext1732(in, out);

	  input [16:0] in;
	  output [31:0] out;
	  wire [14:0] signbits;
	  
	  assign signbits = in[16] ? 15'b111111111111111 : 15'b000000000000000;
	  assign out = {signbits, in};
	
endmodule 
