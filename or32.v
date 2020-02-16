
module or32(operandA, operandB, result);

	input [31:0] operandA;
	input [31:0] operandB;
	output [31:0] result;
	
	or bit0(result[0],operandA[0], operandB[0]);
	or bit1(result[1],operandA[1], operandB[1]);
	or bit2(result[2],operandA[2], operandB[2]);
	or bit3(result[3],operandA[3], operandB[3]);
	or bit4(result[4],operandA[4], operandB[4]);
	or bit5(result[5],operandA[5], operandB[5]);
	or bit6(result[6],operandA[6], operandB[6]);
	or bit7(result[7],operandA[7], operandB[7]);
	or bit8(result[8],operandA[8], operandB[8]);
	or bit9(result[9],operandA[9], operandB[9]);
	or bit10(result[10],operandA[10], operandB[10]);
	or bit11(result[11],operandA[11], operandB[11]);
	or bit12(result[12],operandA[12], operandB[12]);
	or bit13(result[13],operandA[13], operandB[13]);
	or bit14(result[14],operandA[14], operandB[14]);
	or bit15(result[15],operandA[15], operandB[15]);
	or bit16(result[16],operandA[16], operandB[16]);
	or bit17(result[17],operandA[17], operandB[17]);
	or bit18(result[18],operandA[18], operandB[18]);
	or bit19(result[19],operandA[19], operandB[19]);
	or bit20(result[20],operandA[20], operandB[20]);
	or bit21(result[21],operandA[21], operandB[21]);
	or bit22(result[22],operandA[22], operandB[22]);
	or bit23(result[23],operandA[23], operandB[23]);
	or bit24(result[24],operandA[24], operandB[24]);
	or bit25(result[25],operandA[25], operandB[25]);
	or bit26(result[26],operandA[26], operandB[26]);
	or bit27(result[27],operandA[27], operandB[27]);
	or bit28(result[28],operandA[28], operandB[28]);
	or bit29(result[29],operandA[29], operandB[29]);
	or bit30(result[30],operandA[30], operandB[30]);
	or bit31(result[31],operandA[31], operandB[31]);


endmodule 