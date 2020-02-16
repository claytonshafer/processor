module shiftr1(operand, result);
	input [31:0] operand;
	output [31:0] result;
	
	assign result[30:0] = operand[31:1];
	
	assign result[31] = operand[31];
	
endmodule 