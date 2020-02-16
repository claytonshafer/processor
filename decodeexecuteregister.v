
//Pipeline register
//Placed between decode and execute stages
//Saves Instruction, program counter, two operands, and the branch address
module decodeexecuteregister(pcin, isnin, operandAin, operandBin, pcout, isnout, operandAout, operandBout, clock, enable, reset, branchaddressin, branchaddressout);

	input [31:0] pcin, isnin, operandAin, operandBin,branchaddressin;
	output [31:0] pcout, isnout, operandAout, operandBout,branchaddressout;
	
	input clock, enable, reset;
	
	 register decodeexecuteisn(isnin, isnout, clock, enable, 1'b1, reset);
	 register decodeexecutepc(pcin, pcout, clock, enable, 1'b1, reset);
	 register operandAregister(operandAin, operandAout, clock, enable, 1'b1, reset);
	 register operandBregister(operandBin, operandBout, clock, enable, 1'b1, reset);
	 register branchaddressregister(branchaddressin, branchaddressout, clock, enable, 1'b1, reset);
	 


endmodule 
