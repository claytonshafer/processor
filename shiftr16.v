module shiftr16(operand, result);
	input [31:0] operand;
	output [31:0] result;
	
	assign result[15:0] = operand[31:16];
	assign result[31] = operand[31];
	assign result[30] = operand[31];	
	assign result[29] = operand[31];
	assign result[28] = operand[31];	
	assign result[27] = operand[31];
	assign result[26] = operand[31];	
	assign result[25] = operand[31];
	assign result[24] = operand[31];	
	assign result[23] = operand[31];
	assign result[22] = operand[31];	
	assign result[21] = operand[31];
	assign result[20] = operand[31];	
	assign result[19] = operand[31];
	assign result[18] = operand[31];	
	assign result[17] = operand[31];
	assign result[16] = operand[31];	
	
endmodule 