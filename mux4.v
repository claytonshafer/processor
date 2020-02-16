module mux4(in3,in2,in1, in0, select, out);
	input [1:0] select;
	input [31:0] in3, in2, in1, in0;
	output [31:0] out;
	wire [31:0] w0, w1;
	
	assign w0 = select[0] ? in1 : in0;
	assign w1 = select[0] ? in3 : in2;
	assign out = select[1] ? w1 : w0;

endmodule 