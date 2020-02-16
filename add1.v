//one bit adder
module add1(Ain, Bin, cin, s, cout);
	input Ain, Bin, cin;
	output s, cout;
	wire w1, w2, w3;
	
	xor x1(w1,Ain,Bin);
	xor x2(s,w1,cin);
	and a1(w2,w1,cin);
	and a2(w3,Ain,Bin);
	or o1(cout, w2,w3);

endmodule 
