//8 bit carry-lookahead adder
module cla8(Ain, Bin, cin, s, cout, G, P);

	input [7:0] Ain, Bin;
	input cin;
	output [7:0] s;
	output cout;
	output P,G;
	
	wire g0,g1,g2,g3,g4,g5,g6,g7,p0,p1,p2,p3,p4,p5,p6,p7; //generate and propagate wires
	wire c1,c2,c3,c4,c5,c6,c7; //carry wires
	wire n0,n1,n2,n3,n4,n5,n6,n7;
	wire w1,w2,w3,w4,w5,w6,w7;
	
	and a0(g0,Ain[0],Bin[0]);
	or or0(p0,Ain[0],Bin[0]);  //FA0
	
	and a00(w1, cin,p0);
	or or00(c1, w1, g0);   //logic to find c1
	
	//adder for bit 0
	fulladder1 bit0(Ain[0], Bin[0],cin,s[0], n0);
	
	
	and a1(g1,Ain[1],Bin[1]);
	or o1(p1,Ain[1],Bin[1]);  //FA1
	
	and a01(w2,c1,p1);
	or or01(c2, w2,g1);  //logic to find c2
	
	//adder for bit 1
	fulladder1 bit1(Ain[1], Bin[1],c1,s[1], n1);
	
	and a2(g2,Ain[2],Bin[2]);
	or or2(p2,Ain[2],Bin[2]);  //FA2
	
	and a02(w3,c2,p2);
	or or02(c3, w3, g2); //logic to find c3
	
	//adder for bit 2
	fulladder1 bit2(Ain[2], Bin[2], c2, s[2], n2);
	
	and a3(g3,Ain[3],Bin[3]);
	or or3(p3,Ain[3],Bin[3]);  //FA3
	
	and a03(w4, c3, p3);
	or or03(c4, w4, g3);  //logic to find c4
	
	//adder for bit 3
	fulladder1 bit3(Ain[3], Bin[3], c3, s[3], n3);
	
	and a4(g4,Ain[4],Bin[4]);
	or or4(p4,Ain[4],Bin[4]);  //FA4
	
	and a04(w5, c4, p4);
	or or04(c5, w5, g4);  //logic to find c5
	
	//adder for bit 4
	fulladder1 bit4(Ain[4], Bin[4], c4, s[4], n4);
	
	and a5(g5,Ain[5],Bin[5]);
	or or5(p5,Ain[5],Bin[5]);  //FA5

	and a05(w6, c5, p5);
	or or05(c6, w6, g5);  //logic to find c6
	
	//adder for bit 5
	fulladder1 bit5(Ain[5], Bin[5], c5, s[5], n5);
	
	and a6(g6,Ain[6],Bin[6]);
	or or6(p6,Ain[6],Bin[6]);  //FA6
	
	and a06(w7, c6, p6);
	or or06(c7, w7, g6);  //logic to find c7
	
	//adder for bit 6
	fulladder1 bit6(Ain[6], Bin[6], c6, s[6], n6);
	
	and a7(g7,Ain[7],Bin[7]);
	or or7(p7,Ain[7],Bin[7]);  //FA7
	
	and a07(w8,c7,p7);
	or or07(cout,w8,g7);   //logic to find cout
	
	//adder for bit 7
	fulladder1 bit7(Ain[7], Bin[7], c7, s[7], n7);
	
	
	//logic to find P
	and findP(P, p0,p1,p2,p3,p4,p5,p6,p7);
	
	//logic to find G
	wire w9,w10,w11,w12,w13,w14,w15;
	
	and gand0(w15,p7,p6,p5,p4,p3,p2,p1,g0);
	and gand1(w9,p7,p6,p5,p4,p3,p2,g1);
	and gand2(w10,p7,p6,p5,p4,p3,g2);
	and gand3(w11,p7,p6,p5,p4,g3);
	and gand4(w12,p7,p6,p5,g4);
	and gand5(w13,p7,p6,g5);
	and gand6(w14,p7,g6);
	
	or gor(G,g7,w15,w9,w10,w11,w12,w13,w14);
	

	
	

endmodule 
