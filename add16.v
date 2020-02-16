//Two level carry-lookahead adder (16 bits)
module add16(Ain,Bin,cin,out,cout);
		
	output [15:0] out;
	output cout;
	
	input [15:0] Ain, Bin;
	input cin;
		
	wire P0, P1, P2, P3;
	wire G0, G1, G2, G3;
	wire c8, c16, c24, c32;
	wire n0,n1,n2,n3;
	wire w1,w2,w3,w4;
		
	//adder 0
	cla8 adder0(Ain[7:0], Bin[7:0], cin, out[7:0], n0,G0,P0);
	
	//adder 1 
	cla8 adder1(Ain[15:8], Bin[15:8], c8, out[15:8], n1, G1, P1);
	
	
	//logic to find c8
	and a8(w1, cin,P0);
	or or8(c8, w1, G0);
	//logic to find c16
	and a16(w2, c8, P1);
	or or16(cout, w2, G1);
 
				 
endmodule 
