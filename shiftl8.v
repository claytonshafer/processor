module shiftl8(operand, result);
	input [31:0] operand;
	output [31:0] result;
	
	assign result[31:8] = operand[23:0];
	assign result[7:0] = 8'b00000000;
	
endmodule 