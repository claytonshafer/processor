//Divider module
//Contains array divider, outputs stall control bit to the rest of the processor
module dividermodule(dividend, divisor, start, clock, reset, exception, stall, quotient,finish);

	input [31:0] dividend, divisor;
	input start, clock, reset;
	output finish, exception, stall;
	output [31:0] quotient;
	
	
	stalldiv divcontroller(clock, start, finish, stall, reset);
	
	arraydivider mydivider(dividend, divisor, start, reset, clock, quotient, exception, finish);


endmodule 
