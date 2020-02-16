//32 bit multiplier
//Consists of 4 16 bit multipliers (mul16), with partial product accumulation using carry save adder
module mul32(inA, inB,out,overflow);

	input [31:0] inA, inB;
	output [31:0] out;
	output overflow;
	
	wire [31:0] albl,albh,ahbl,ahbh;
	wire [15:0] zero16;
	assign zero16 = 16'h0000;
	wire cout1,cout2,cout3;
	wire [31:0] carryout;
	wire [63:0] row1,row2,row3,sum,carry;
	
	//multipliers
	mul16 m0(inA[15:0],inB[15:0],albl);
	mul16 m1(inA[31:16],inB[15:0],ahbl);
	mul16 m2(inA[15:0],inB[31:16],albh);
	mul16 m3(inA[31:16],inB[31:16],ahbh);
	
	//align partial products
	assign row1 = {zero16,ahbl,zero16};
	assign row2 = {ahbh,albl};
	assign row3 = {zero16,albh,zero16};

	//full adders - first layer
	
   add1 a0(row1[0],row2[0],row3[0],out[0],carry[0]);
   add1 a1(row1[1],row2[1],row3[1],sum[0],carry[1]);
   add1 a2(row1[2],row2[2],row3[2],sum[1],carry[2]);
   add1 a3(row1[3],row2[3],row3[3],sum[2],carry[3]);
   add1 a4(row1[4],row2[4],row3[4],sum[3],carry[4]);
   add1 a5(row1[5],row2[5],row3[5],sum[4],carry[5]);
   add1 a6(row1[6],row2[6],row3[6],sum[5],carry[6]);
   add1 a7(row1[7],row2[7],row3[7],sum[6],carry[7]);
   add1 a8(row1[8],row2[8],row3[8],sum[7],carry[8]);
   add1 a9(row1[9],row2[9],row3[9],sum[8],carry[9]);
   add1 a10(row1[10],row2[10],row3[10],sum[9],carry[10]);
   add1 a11(row1[11],row2[11],row3[11],sum[10],carry[11]);
   add1 a12(row1[12],row2[12],row3[12],sum[11],carry[12]);
   add1 a13(row1[13],row2[13],row3[13],sum[12],carry[13]);
   add1 a14(row1[14],row2[14],row3[14],sum[13],carry[14]);
   add1 a15(row1[15],row2[15],row3[15],sum[14],carry[15]);
   add1 a16(row1[16],row2[16],row3[16],sum[15],carry[16]);
   add1 a17(row1[17],row2[17],row3[17],sum[16],carry[17]);
   add1 a18(row1[18],row2[18],row3[18],sum[17],carry[18]);
   add1 a19(row1[19],row2[19],row3[19],sum[18],carry[19]);
   add1 a20(row1[20],row2[20],row3[20],sum[19],carry[20]);
   add1 a21(row1[21],row2[21],row3[21],sum[20],carry[21]);
   add1 a22(row1[22],row2[22],row3[22],sum[21],carry[22]);
   add1 a23(row1[23],row2[23],row3[23],sum[22],carry[23]);
   add1 a24(row1[24],row2[24],row3[24],sum[23],carry[24]);
   add1 a25(row1[25],row2[25],row3[25],sum[24],carry[25]);
   add1 a26(row1[26],row2[26],row3[26],sum[25],carry[26]);
   add1 a27(row1[27],row2[27],row3[27],sum[26],carry[27]);
   add1 a28(row1[28],row2[28],row3[28],sum[27],carry[28]);
   add1 a29(row1[29],row2[29],row3[29],sum[28],carry[29]);
   add1 a30(row1[30],row2[30],row3[30],sum[29],carry[30]);
   add1 a31(row1[31],row2[31],row3[31],sum[30],carry[31]);
   add1 a32(row1[32],row2[32],row3[32],sum[31],carry[32]);
   add1 a33(row1[33],row2[33],row3[33],sum[32],carry[33]);
   add1 a34(row1[34],row2[34],row3[34],sum[33],carry[34]);
   add1 a35(row1[35],row2[35],row3[35],sum[34],carry[35]);
   add1 a36(row1[36],row2[36],row3[36],sum[35],carry[36]);
   add1 a37(row1[37],row2[37],row3[37],sum[36],carry[37]);
   add1 a38(row1[38],row2[38],row3[38],sum[37],carry[38]);
   add1 a39(row1[39],row2[39],row3[39],sum[38],carry[39]);
   add1 a40(row1[40],row2[40],row3[40],sum[39],carry[40]);
   add1 a41(row1[41],row2[41],row3[41],sum[40],carry[41]);
   add1 a42(row1[42],row2[42],row3[42],sum[41],carry[42]);
   add1 a43(row1[43],row2[43],row3[43],sum[42],carry[43]);
   add1 a44(row1[44],row2[44],row3[44],sum[43],carry[44]);
   add1 a45(row1[45],row2[45],row3[45],sum[44],carry[45]);
   add1 a46(row1[46],row2[46],row3[46],sum[45],carry[46]);
   add1 a47(row1[47],row2[47],row3[47],sum[46],carry[47]);
   add1 a48(row1[48],row2[48],row3[48],sum[47],carry[48]);
   add1 a49(row1[49],row2[49],row3[49],sum[48],carry[49]);
   add1 a50(row1[50],row2[50],row3[50],sum[49],carry[50]);
   add1 a51(row1[51],row2[51],row3[51],sum[50],carry[51]);
   add1 a52(row1[52],row2[52],row3[52],sum[51],carry[52]);
   add1 a53(row1[53],row2[53],row3[53],sum[52],carry[53]);
   add1 a54(row1[54],row2[54],row3[54],sum[53],carry[54]);
   add1 a55(row1[55],row2[55],row3[55],sum[54],carry[55]);
   add1 a56(row1[56],row2[56],row3[56],sum[55],carry[56]);
   add1 a57(row1[57],row2[57],row3[57],sum[56],carry[57]);
   add1 a58(row1[58],row2[58],row3[58],sum[57],carry[58]);
   add1 a59(row1[59],row2[59],row3[59],sum[58],carry[59]);
   add1 a60(row1[60],row2[60],row3[60],sum[59],carry[60]);
   add1 a61(row1[61],row2[61],row3[61],sum[60],carry[61]);
   add1 a62(row1[62],row2[62],row3[62],sum[61],carry[62]);
   add1 a63(row1[63],row2[63],row3[63],sum[62],carry[63]);
	assign sum[63] = 1'b0;
	
	
	//carry lookahead adder - second layer
	add32 adder(carry[31:0], sum[31:0], 1'b0, {cout1,out[31:1]}, cout2);
	
	add32 adderovf(carry[63:32], sum[63:32], 1'b0, carryout, cout3);
	
	//Overflow 
	wire w0,w1,w2,w3,overflowand,overflowor,w4,w5,w6,w7,both;
	
	and r0(w0,carryout[31],carryout[30],carryout[29],carryout[28],carryout[27],carryout[26],carryout[25],carryout[24]);
	and r1(w1,carryout[23],carryout[22],carryout[21],carryout[20],carryout[19],carryout[18],carryout[17],carryout[16]);
	and r2(w2,carryout[15],carryout[14],carryout[13],carryout[12],carryout[11],carryout[10],carryout[9],carryout[8]);
	and r3(w3,carryout[7],carryout[6],carryout[5],carryout[4],carryout[3],carryout[2],carryout[1],carryout[0],cout1,cout2,cout3);
	and r4(overflowand,w0,w1,w2,w3);

	nor r5(w4,carryout[31],carryout[30],carryout[29],carryout[28],carryout[27],carryout[26],carryout[25],carryout[24]);
	nor r6(w5,carryout[23],carryout[22],carryout[21],carryout[20],carryout[19],carryout[18],carryout[17],carryout[16]);
	nor r7(w6,carryout[15],carryout[14],carryout[13],carryout[12],carryout[11],carryout[10],carryout[9],carryout[8]);
	nor r8(w7,carryout[7],carryout[6],carryout[5],carryout[4],carryout[3],carryout[2],carryout[1],carryout[0],cout1,cout2,cout3);
	and r9(overflownor,w4,w5,w6,w7);
	
	or b(both, overflownor, overflowand);
	not n(overflow, both);

endmodule 
