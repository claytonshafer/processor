//32 bit adder
//Two level carry-lookahead
//Ain + Bin + cin = s + cout
module add32(Ain, Bin, cin, s, cout); 
	
	input [31:0] Ain, Bin; 
	input cin;
	output [31:0] s;
	output cout;
	
	wire P0, P1, P2, P3;    //propagate
	wire G0, G1, G2, G3;    //generate 
	wire c8, c16, c24, c32; //Carry
	wire n0,n1,n2,n3;
	wire w1,w2,w3,w4;
		
	//adder 0
	cla8 adder0(Ain[7:0], Bin[7:0], cin, s[7:0], n0,G0,P0);
	
	//adder 1 
	cla8 adder1(Ain[15:8], Bin[15:8], c8, s[15:8], n1, G1, P1);
	
	//adder 2
	cla8 adder2(Ain[23:16], Bin[23:16], c16, s[23:16], n2, G2, P2);
	
	//adder 3
	cla8 adder3(Ain[31:24], Bin[31:24], c24, s[31:24], n3, G3, P3);
	
	//logic to find c8
	and a8(w1, cin,P0);
	or or8(c8, w1, G0);
	//logic to find c16
	and a16(w2, c8, P1);
	or or16(c16, w2, G1);
	//logic to find c24
	and a24(w3, c16, P2);
	or or24(c24, w3, G2);
	//logic to find c32
	and a32(w4, c24, P3);
	or or32(cout, w4, G3);
	
endmodule 
