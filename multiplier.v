//Multiplier unit
//Contains two separate multipliers, multiplexed using clock divider to allow one cycle multiplication

module multiplier(inA, inB, clock, out, exception,reset);

	input [31:0] inA, inB;
	input clock,reset;
	output [31:0] out;
	output exception;
	
	wire clock2,notclock2;
	
	clockdiv2 clockdivider(clock, clock2);
	not nclk(notclock2, clock2);
	
	//multiplier 1, registers
	wire [31:0] m1inA, m1inB,out1;
	wire exception1;
	
	register m1regA(inA, m1inA, clock, clock2, 1'b1, reset);
	register m1regB(inB, m1inB, clock, clock2, 1'b1, reset);
	
	multdiv multiplier1(m1inA, m1inB, out1, exception1);
	
	//multiplier 2, registers
	wire [31:0] m2inA, m2inB,out2;
	wire exception2;
	
	register m2regA(inA, m2inA, clock, notclock2, 1'b1, reset);
	register m2regB(inB, m2inB, clock, notclock2, 1'b1, reset);
	
	multdiv multiplier2(m2inA, m2inB, out2, exception2);
	
	assign out = clock2 ? out1 : out2;
	assign exception = clock2 ? exception1 : exception2;
	
	


endmodule 
