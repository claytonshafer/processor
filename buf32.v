//32 bit buffer
//Used for read port on register file
module buf32(in,out,ctrl);
	
	input [31:0] in;
	input ctrl;
	output [31:0] out;
	
	bufif1(out[0],in[0],ctrl);
	bufif1(out[1],in[1],ctrl);
	bufif1(out[2],in[2],ctrl);
	bufif1(out[3],in[3],ctrl);
	bufif1(out[4],in[4],ctrl);
	bufif1(out[5],in[5],ctrl);
	bufif1(out[6],in[6],ctrl);
	bufif1(out[7],in[7],ctrl);
	bufif1(out[8],in[8],ctrl);
	bufif1(out[9],in[9],ctrl);
	bufif1(out[10],in[10],ctrl);
	bufif1(out[11],in[11],ctrl);
	bufif1(out[12],in[12],ctrl);
	bufif1(out[13],in[13],ctrl);
	bufif1(out[14],in[14],ctrl);
	bufif1(out[15],in[15],ctrl);
	bufif1(out[16],in[16],ctrl);
	bufif1(out[17],in[17],ctrl);
	bufif1(out[18],in[18],ctrl);
	bufif1(out[19],in[19],ctrl);
	bufif1(out[20],in[20],ctrl);
	bufif1(out[21],in[21],ctrl);
	bufif1(out[22],in[22],ctrl);
	bufif1(out[23],in[23],ctrl);
	bufif1(out[24],in[24],ctrl);
	bufif1(out[25],in[25],ctrl);
	bufif1(out[26],in[26],ctrl);
	bufif1(out[27],in[27],ctrl);
	bufif1(out[28],in[28],ctrl);
	bufif1(out[29],in[29],ctrl);
	bufif1(out[30],in[30],ctrl);
	bufif1(out[31],in[31],ctrl);

endmodule
