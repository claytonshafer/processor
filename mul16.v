//16 bit multiplier
//Consists of 4 wallace tree multipliers (8 bits each), with partial products accumulated using a carry save adder
module mul16(inA, inB, out);

	input [15:0] inA, inB;
	wire [31:0] row1,row2,row3;
	output [31:0] out;
	
	wire [15:0] albl, albh, ahbl, ahbh;
	wire [7:0] zero8;
	assign zero8 = 8'h00;
	wire cout1,cout2;
	
   wallace8 w0(inA[7:0],inB[7:0],albl);
	wallace8 w1(inA[15:8],inB[7:0],ahbl);
	wallace8 w2(inA[7:0],inB[15:8],albh);
	wallace8 w3(inA[15:8],inB[15:8],ahbh);
	
	assign row1 = {zero8,ahbl,zero8};
	assign row2 = {ahbh,albl};
	assign row3 = {zero8,albh,zero8};

   wire [31:0] sum,carry;
	
	//full adder row
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
	assign sum[31] = 1'b0;
	
	//carry lookahead adder
	
	add32 adder(carry, sum, 1'b0, {cout1,out[31:1]}, cout2);


endmodule 
