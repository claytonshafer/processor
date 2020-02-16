
module mux8(in7, in6, in5, in4, in3, in2, in1, in0, select, out);

	input [2:0] select;
	input [31:0] in7, in6, in5, in4, in3, in2, in1, in0;
	output [31:0] out;
	wire [31:0] w0, w1;
	
	mux4 left(in3, in2, in1, in0, select[1:0], w0);
	mux4 right(in7, in6, in5, in4, select[1:0], w1);
	mux2 top(w1, w0, select[2], out);

endmodule 