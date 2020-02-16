//3:8 encoder
//Used for exception handling in processor.v
module encoder(in, out);

	input [7:0] in;
	output [2:0] out;
	
	assign out[2] = in[7] || in[6] || in[5] || in[4];
	assign out[1] = in[7] || in[6] || in[2] || in[3];
	assign out[0] = in[7] || in[5] || in[3] || in[1];


endmodule 
