//Returns 1 if inA = inB
//Used to control bypassing in processor.v
//Returns 0 if inA = inB = 0 to prevent bypassing $r0
module isequal5(inA,inB, out);

	input [4:0] inA,inB;
	output out;
	wire w0,w1,w2,w3,w4;
	
	xnor x0(w0, inA[0], inB[0]);
	xnor x1(w1, inA[1], inB[1]);
	xnor x2(w2, inA[2], inB[2]);
	xnor x3(w3, inA[3], inB[3]);
	xnor x4(w4, inA[4], inB[4]);
	
	wire zero;
	
	nor checkifzero(zero, inA[0], inA[1], inA[2], inA[3], inA[4]);
	
	and a(out, w0,w1,w2,w3,w4,~zero);

endmodule 
