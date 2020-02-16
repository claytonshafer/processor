//32 bit decoder

module decoder32(in,out);

	input [4:0] in;
	output [31:0] out;
	
	wire na,nb,nc,nd,ne,a,b,c,d,e;
	
	buf aa(a, in[4]);
	buf bb(b, in[3]);
	buf cc(c, in[2]);
	buf dd(d, in[1]);
	buf ee(e, in[0]);
	
	not nota(na, in[4]);
	not notb(nb, in[3]);
	not notc(nc, in[2]);
	not notd(nd, in[1]);
	not note(ne, in[0]);
	
	and a0(out[0],na,nb,nc,nd,ne);
	and a1(out[1],na,nb,nc,nd,e);
	and a2(out[2],na,nb,nc,d,ne);
	and a3(out[3],na,nb,nc,d,e);
	and a4(out[4],na,nb,c,nd,ne);
	and a5(out[5],na,nb,c,nd,e);
	and a6(out[6],na,nb,c,d,ne);
	and a7(out[7],na,nb,c,d,e);
	and a8(out[8],na,b,nc,nd,ne);
	and a9(out[9],na,b,nc,nd,e);
	and a10(out[10],na,b,nc,d,ne);
	and a11(out[11],na,b,nc,d,e);
	and a12(out[12],na,b,c,nd,ne);
	and a13(out[13],na,b,c,nd,e);
	and a14(out[14],na,b,c,d,ne);
	and a15(out[15],na,b,c,d,e);
	and a16(out[16],a,nb,nc,nd,ne);
	and a17(out[17],a,nb,nc,nd,e);
	and a18(out[18],a,nb,nc,d,ne);
	and a19(out[19],a,nb,nc,d,e);
	and a20(out[20],a,nb,c,nd,ne);
	and a21(out[21],a,nb,c,nd,e);
	and a22(out[22],a,nb,c,d,ne);
	and a23(out[23],a,nb,c,d,e);
	and a24(out[24],a,b,nc,nd,ne);
	and a25(out[25],a,b,nc,nd,e);
	and a26(out[26],a,b,nc,d,ne);
	and a27(out[27],a,b,nc,d,e);
	and a28(out[28],a,b,c,nd,ne);
	and a29(out[29],a,b,c,nd,e);
	and a30(out[30],a,b,c,d,ne);
	and a31(out[31],a,b,c,d,e);

endmodule 
