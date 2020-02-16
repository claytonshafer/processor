module shiftr4(operand, result);
	input [31:0] operand;
	output [31:0] result;
	
	assign result[27:0] = operand[31:4];
	assign result[31] = operand[31];
	assign result[30] = operand[31];	
	assign result[29] = operand[31];
	assign result[28] = operand[31];	
	
endmodule 