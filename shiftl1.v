module shiftl1(operand, result);
	input [31:0] operand;
	output [31:0] result;
	
	assign result[31:1] = operand[30:0];
	assign result[0] = 1'b0;
	
endmodule 