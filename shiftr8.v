module shiftr8(operand, result);
	input [31:0] operand;
	output [31:0] result;
	
	assign result[23:0] = operand[31:8];
	assign result[31] = operand[31];
	assign result[30] = operand[31];	
	assign result[29] = operand[31];
	assign result[28] = operand[31];	
	assign result[27] = operand[31];
	assign result[26] = operand[31];	
	assign result[25] = operand[31];
	assign result[24] = operand[31];	
	
endmodule 