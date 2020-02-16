//Pipeline register
//Placed between memory and writeback stages
//Saves instruction, program counter, ALU result, data from memory, and divider result
module memorywritebackregister(pcin, isnin, resultin, datain, pcout, isnout, resultout, dataout, clock, enable, reset,divresultin, divresultout);

	input [31:0] pcin, isnin, resultin, datain,divresultin;
	output [31:0] pcout, isnout, resultout, dataout,divresultout;
	
	input clock, enable, reset;
	
	 register memorywritebackisnreg(isnin, isnout, clock, enable, 1'b1, reset);
	 register memorywritebackpcreg(pcin, pcout, clock, enable, 1'b1, reset);
	 register memorywritebackresultreg(resultin, resultout, clock, enable, 1'b1, reset);
	 register memorywritebackdatareg(datain, dataout, clock, enable, 1'b1, reset);	 
	 register memorywritebackdivreg(divresultin, divresultout, clock, enable, 1'b1, reset);


endmodule 
