//Register file
//32 32bit registers
//2 read ports, one write port
module regfile (
    clock,
    ctrl_writeEnable,
    ctrl_reset, ctrl_writeReg,
    ctrl_readRegA, ctrl_readRegB, data_writeReg,
    data_readRegA, data_readRegB
);

   input clock, ctrl_writeEnable, ctrl_reset;
   input [4:0] ctrl_writeReg, ctrl_readRegA, ctrl_readRegB;
   input [31:0] data_writeReg;

   output [31:0] data_readRegA, data_readRegB;
	wire [31:0] writeselect, readselect1, readselect2,zero;
	wire [31:0] w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11;
	wire [31:0] w12,w13,w14,w15,w16,w17,w18,w19,w20,w21;
	wire [31:0] w22,w23,w24,w25,w26,w27,w28,w29,w30,w31;
	assign zero = 32'h00000000;

	
	//instantiate registers
	
	register r00(zero,w0,clock,ctrl_writeEnable,writeselect[0],ctrl_reset);
	register r01(data_writeReg,w1,clock,ctrl_writeEnable,writeselect[1],ctrl_reset);
	register r02(data_writeReg,w2,clock,ctrl_writeEnable,writeselect[2],ctrl_reset);
	register r03(data_writeReg,w3,clock,ctrl_writeEnable,writeselect[3],ctrl_reset);
	register r04(data_writeReg,w4,clock,ctrl_writeEnable,writeselect[4],ctrl_reset);
	register r05(data_writeReg,w5,clock,ctrl_writeEnable,writeselect[5],ctrl_reset);
	register r06(data_writeReg,w6,clock,ctrl_writeEnable,writeselect[6],ctrl_reset);
	register r07(data_writeReg,w7,clock,ctrl_writeEnable,writeselect[7],ctrl_reset);
	register r08(data_writeReg,w8,clock,ctrl_writeEnable,writeselect[8],ctrl_reset);
	register r09(data_writeReg,w9,clock,ctrl_writeEnable,writeselect[9],ctrl_reset);
	register r10(data_writeReg,w10,clock,ctrl_writeEnable,writeselect[10],ctrl_reset);
	register r11(data_writeReg,w11,clock,ctrl_writeEnable,writeselect[11],ctrl_reset);
	register r12(data_writeReg,w12,clock,ctrl_writeEnable,writeselect[12],ctrl_reset);
	register r13(data_writeReg,w13,clock,ctrl_writeEnable,writeselect[13],ctrl_reset);
	register r14(data_writeReg,w14,clock,ctrl_writeEnable,writeselect[14],ctrl_reset);
	register r15(data_writeReg,w15,clock,ctrl_writeEnable,writeselect[15],ctrl_reset);
	register r16(data_writeReg,w16,clock,ctrl_writeEnable,writeselect[16],ctrl_reset);
	register r17(data_writeReg,w17,clock,ctrl_writeEnable,writeselect[17],ctrl_reset);
	register r18(data_writeReg,w18,clock,ctrl_writeEnable,writeselect[18],ctrl_reset);
	register r19(data_writeReg,w19,clock,ctrl_writeEnable,writeselect[19],ctrl_reset);
	register r20(data_writeReg,w20,clock,ctrl_writeEnable,writeselect[20],ctrl_reset);
	register r21(data_writeReg,w21,clock,ctrl_writeEnable,writeselect[21],ctrl_reset);
	register r22(data_writeReg,w22,clock,ctrl_writeEnable,writeselect[22],ctrl_reset);
	register r23(data_writeReg,w23,clock,ctrl_writeEnable,writeselect[23],ctrl_reset);
	register r24(data_writeReg,w24,clock,ctrl_writeEnable,writeselect[24],ctrl_reset);
	register r25(data_writeReg,w25,clock,ctrl_writeEnable,writeselect[25],ctrl_reset);
	register r26(data_writeReg,w26,clock,ctrl_writeEnable,writeselect[26],ctrl_reset);
	register r27(data_writeReg,w27,clock,ctrl_writeEnable,writeselect[27],ctrl_reset);
	register r28(data_writeReg,w28,clock,ctrl_writeEnable,writeselect[28],ctrl_reset);
	register r29(data_writeReg,w29,clock,ctrl_writeEnable,writeselect[29],ctrl_reset);
	register r30(data_writeReg,w30,clock,ctrl_writeEnable,writeselect[30],ctrl_reset);
	register r31(data_writeReg,w31,clock,ctrl_writeEnable,writeselect[31],ctrl_reset);

	
	//read tri states 1 
	
	buf32 b0(w0,data_readRegA,readselect1[0]);
	buf32 b1(w1,data_readRegA,readselect1[1]);
	buf32 b2(w2,data_readRegA,readselect1[2]);
	buf32 b3(w3,data_readRegA,readselect1[3]);
	buf32 b4(w4,data_readRegA,readselect1[4]);
	buf32 b5(w5,data_readRegA,readselect1[5]);
	buf32 b6(w6,data_readRegA,readselect1[6]);
	buf32 b7(w7,data_readRegA,readselect1[7]);
	buf32 b8(w8,data_readRegA,readselect1[8]);
	buf32 b9(w9,data_readRegA,readselect1[9]);
	buf32 b10(w10,data_readRegA,readselect1[10]);
	buf32 b11(w11,data_readRegA,readselect1[11]);
	buf32 b12(w12,data_readRegA,readselect1[12]);
	buf32 b13(w13,data_readRegA,readselect1[13]);
	buf32 b14(w14,data_readRegA,readselect1[14]);
	buf32 b15(w15,data_readRegA,readselect1[15]);
	buf32 b16(w16,data_readRegA,readselect1[16]);
	buf32 b17(w17,data_readRegA,readselect1[17]);
	buf32 b18(w18,data_readRegA,readselect1[18]);
	buf32 b19(w19,data_readRegA,readselect1[19]);
	buf32 b20(w20,data_readRegA,readselect1[20]);
	buf32 b21(w21,data_readRegA,readselect1[21]);
	buf32 b22(w22,data_readRegA,readselect1[22]);
	buf32 b23(w23,data_readRegA,readselect1[23]);
	buf32 b24(w24,data_readRegA,readselect1[24]);
	buf32 b25(w25,data_readRegA,readselect1[25]);
	buf32 b26(w26,data_readRegA,readselect1[26]);
	buf32 b27(w27,data_readRegA,readselect1[27]);
	buf32 b28(w28,data_readRegA,readselect1[28]);
	buf32 b29(w29,data_readRegA,readselect1[29]);
	buf32 b30(w30,data_readRegA,readselect1[30]);
	buf32 b31(w31,data_readRegA,readselect1[31]);
	
	//read tri states 2
	buf32 b00(w0,data_readRegB,readselect2[0]);
	buf32 b01(w1,data_readRegB,readselect2[1]);
	buf32 b02(w2,data_readRegB,readselect2[2]);
	buf32 b03(w3,data_readRegB,readselect2[3]);
	buf32 b04(w4,data_readRegB,readselect2[4]);
	buf32 b05(w5,data_readRegB,readselect2[5]);
	buf32 b06(w6,data_readRegB,readselect2[6]);
	buf32 b07(w7,data_readRegB,readselect2[7]);
	buf32 b08(w8,data_readRegB,readselect2[8]);
	buf32 b09(w9,data_readRegB,readselect2[9]);
	buf32 b010(w10,data_readRegB,readselect2[10]);
	buf32 b011(w11,data_readRegB,readselect2[11]);
	buf32 b012(w12,data_readRegB,readselect2[12]);
	buf32 b013(w13,data_readRegB,readselect2[13]);
	buf32 b014(w14,data_readRegB,readselect2[14]);
	buf32 b015(w15,data_readRegB,readselect2[15]);
	buf32 b016(w16,data_readRegB,readselect2[16]);
	buf32 b017(w17,data_readRegB,readselect2[17]);
	buf32 b018(w18,data_readRegB,readselect2[18]);
	buf32 b019(w19,data_readRegB,readselect2[19]);
	buf32 b020(w20,data_readRegB,readselect2[20]);
	buf32 b021(w21,data_readRegB,readselect2[21]);
	buf32 b022(w22,data_readRegB,readselect2[22]);
	buf32 b023(w23,data_readRegB,readselect2[23]);
	buf32 b024(w24,data_readRegB,readselect2[24]);
	buf32 b025(w25,data_readRegB,readselect2[25]);
	buf32 b026(w26,data_readRegB,readselect2[26]);
	buf32 b027(w27,data_readRegB,readselect2[27]);
	buf32 b028(w28,data_readRegB,readselect2[28]);
	buf32 b029(w29,data_readRegB,readselect2[29]);
	buf32 b030(w30,data_readRegB,readselect2[30]);
	buf32 b031(w31,data_readRegB,readselect2[31]);
	
	//write decoder
	decoder32 wdec(ctrl_writeReg,writeselect);
	decoder32 rdec1(ctrl_readRegA,readselect1);
	decoder32 rdec2(ctrl_readRegB,readselect2);
	
	
	

endmodule
