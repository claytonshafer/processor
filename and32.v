//bitwise and (32 bits)
module and32(operandA, operandB, result);

	input [31:0] operandA;
	input [31:0] operandB;
	output [31:0] result;
	
	and bit0(result[0],operandA[0], operandB[0]);
	and bit1(result[1],operandA[1], operandB[1]);
	and bit2(result[2],operandA[2], operandB[2]);
	and bit3(result[3],operandA[3], operandB[3]);
	and bit4(result[4],operandA[4], operandB[4]);
	and bit5(result[5],operandA[5], operandB[5]);
	and bit6(result[6],operandA[6], operandB[6]);
	and bit7(result[7],operandA[7], operandB[7]);
	and bit8(result[8],operandA[8], operandB[8]);
	and bit9(result[9],operandA[9], operandB[9]);
	and bit10(result[10],operandA[10], operandB[10]);
	and bit11(result[11],operandA[11], operandB[11]);
	and bit12(result[12],operandA[12], operandB[12]);
	and bit13(result[13],operandA[13], operandB[13]);
	and bit14(result[14],operandA[14], operandB[14]);
	and bit15(result[15],operandA[15], operandB[15]);
	and bit16(result[16],operandA[16], operandB[16]);
	and bit17(result[17],operandA[17], operandB[17]);
	and bit18(result[18],operandA[18], operandB[18]);
	and bit19(result[19],operandA[19], operandB[19]);
	and bit20(result[20],operandA[20], operandB[20]);
	and bit21(result[21],operandA[21], operandB[21]);
	and bit22(result[22],operandA[22], operandB[22]);
	and bit23(result[23],operandA[23], operandB[23]);
	and bit24(result[24],operandA[24], operandB[24]);
	and bit25(result[25],operandA[25], operandB[25]);
	and bit26(result[26],operandA[26], operandB[26]);
	and bit27(result[27],operandA[27], operandB[27]);
	and bit28(result[28],operandA[28], operandB[28]);
	and bit29(result[29],operandA[29], operandB[29]);
	and bit30(result[30],operandA[30], operandB[30]);
	and bit31(result[31],operandA[31], operandB[31]);


endmodule 
