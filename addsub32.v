
module addsub32(Ain, Bin, sub, s, cout);

	input [31:0] Ain, Bin;
	input sub;
	output [31:0] s;
	output cout;

	wire [31:0] notB, B;
	
	not32 n(notB, Bin);
	assign B = sub ? notB :  Bin;
	
	
	add32 adder(Ain, B, sub, s, cout);

endmodule 