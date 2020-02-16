
module mux2(in1, in0, select, out);
	input select;
	input [31:0] in1, in0;
	output [31:0] out;
	assign out = select ? in1 : in0;


endmodule 