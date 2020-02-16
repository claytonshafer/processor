//stall module for divider
module stalldiv(clock, start,finish, stall,reset);

	input clock, start, finish,reset;
	output stall;
	
	wire qin, din;
	
	
	dflip d(qin, din, clock, 1'b1, reset);
	
	assign stall = qin;
	
	assign din = (start && ~qin) || (~finish && qin);


endmodule 
