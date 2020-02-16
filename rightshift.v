
//32 bit right barrel shifter
module rightshift(operand, shamt, result);
	
	input [31:0] operand;
	input [4:0] shamt;
	output [31:0] result;
	
	wire [31:0] w0,w1,w2,w3,w4,w5,w6,w7,w8;
	
	//16 bit shift and mux, wire w0 from shifter to mux, wire w1 from mux to next
	
	shiftr16 s16(operand, w0); //w0 is the shifted operand
	mux2 m16(w0, operand, shamt[4],w1); //w1 is the result of mux
	
	//8 bit shift and mux
	
	shiftr8 s8(w1, w2); //w2 is the shifted operand
	mux2 m8(w2,w1,shamt[3],w3); //w3 is the result of mux
	
	//4 bit shift and mux
	
	shiftr4 s4(w3,w4); //w4 is the shifted operand
	mux2 m4(w4,w3,shamt[2],w5); //w5 is the result of mux
	
	//2 bit shift and mux
	
	shiftr2 s2(w5,w6); //w6 is the shifted operand
	mux2 m2(w6,w5,shamt[1],w7); //w7 is the result of mux
	
	//1 bit shift and mux
	
	shiftr1 s1(w7,w8); //w8 is the shifted operand
	mux2 m1(w8,w7,shamt[0],result); //final result 
	

endmodule 

