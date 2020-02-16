//Negates a 32 bit number (2's complement)
module neg32(out, operandA);
	input [31:0] operandA;
	output [31:0] out;
	wire [31:0] result;
	wire ovf;
	
	not bit0(result[0],operandA[0]);
	not bit1(result[1],operandA[1]);
	not bit2(result[2],operandA[2]);
	not bit3(result[3],operandA[3]);
	not bit4(result[4],operandA[4]);
	not bit5(result[5],operandA[5]);
	not bit6(result[6],operandA[6]);
	not bit7(result[7],operandA[7]);
	not bit8(result[8],operandA[8]);
	not bit9(result[9],operandA[9]);
	not bit10(result[10],operandA[10]);
	not bit11(result[11],operandA[11]);
	not bit12(result[12],operandA[12]);
	not bit13(result[13],operandA[13]);
	not bit14(result[14],operandA[14]);
	not bit15(result[15],operandA[15]);
	not bit16(result[16],operandA[16]);
	not bit17(result[17],operandA[17]);
	not bit18(result[18],operandA[18]);
	not bit19(result[19],operandA[19]);
	not bit20(result[20],operandA[20]);
	not bit21(result[21],operandA[21]);
	not bit22(result[22],operandA[22]);
	not bit23(result[23],operandA[23]);
	not bit24(result[24],operandA[24]);
	not bit25(result[25],operandA[25]);
	not bit26(result[26],operandA[26]);
	not bit27(result[27],operandA[27]);
	not bit28(result[28],operandA[28]);
	not bit29(result[29],operandA[29]);
	not bit30(result[30],operandA[30]);
	not bit31(result[31],operandA[31]);
	
	add32 adder(result, 32'h00000001,1'b0,out,ovf);

endmodule 
