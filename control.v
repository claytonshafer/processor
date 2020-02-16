
//find control signals based on instruction opcode
module control(
	//control signals
	opcode, 
	onehot);
	
	input [4:0] opcode;	
	output [31:0] onehot;
	
	decoder opcodedecode(opcode, onehot);
	

	
endmodule 
