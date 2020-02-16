module shiftl2(operand, result);
	input [31:0] operand;
	output [31:0] result;
	
	assign result[31:2] = operand[29:0];
	assign result[1:0] = 2'b00;
	
endmodule 