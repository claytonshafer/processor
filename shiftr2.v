module shiftr2(operand, result);
	input [31:0] operand;
	output [31:0] result;
	
	assign result[29:0] = operand[31:2];
	assign result[31] = operand[31];
	assign result[30] = operand[31];

	
endmodule 