//Pipeline register
//Placed between fetch and decode stages
//Saves program counter and instruction
module fetchdecoderegister(pcin, isnin, pcout, isnout, clock, reset, enable);

	input [31:0] pcin, isnin;
	output [31:0] pcout, isnout;
	input clock, reset, enable;
	
	
	register pcreg(pcin, pcout, clock, enable, 1'b1, reset);
	register isnreg(isnin, isnout, clock, enable, 1'b1, reset);

endmodule 
