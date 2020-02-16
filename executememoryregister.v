//Pipeline register
//Placed between execute and memory stages
//Saves instruction, program counter, ALU result, and operand B
module executememoryregister(pcin, isnin, resultin, operandBin, pcout, isnout, resultout, operandBout, clock, enable, reset);

	input [31:0] pcin, isnin, resultin, operandBin;
	output [31:0] pcout, isnout, resultout, operandBout;
	
	input clock, enable, reset;
	
	 register executememoryisnreg(isnin, isnout, clock, enable, 1'b1, reset);
	 register executememorypcreg(pcin, pcout, clock, enable, 1'b1, reset);
	 register executememoryresultreg(resultin, resultout, clock, enable, 1'b1, reset);
	 register executememoryoperandBreg(operandBin, operandBout, clock, enable, 1'b1, reset);
	 


endmodule 
