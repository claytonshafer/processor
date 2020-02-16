//Clock divider
//Used in multiplier unit
module clockdiv2(clock, out);

	input clock;
	output out;
	
	wire nq;
	
	not findnotq(nq,out);
	
	dflip divclock(out, nq, clock, 1'b1, 1'b0);
	
endmodule 
