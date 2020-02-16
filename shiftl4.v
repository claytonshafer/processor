module shiftl4(operand, result);
	input [31:0] operand;
	output [31:0] result;
	
	assign result[31:4] = operand[27:0];
	assign result[3:0] = 4'b0000;
	
endmodule 