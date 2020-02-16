//32 bit array divider
//No sign handling or timing 
module div32(dividendshort, divisor, quotient,exception);

	input [31:0] divisor;
	input [31:0] dividendshort;
	wire [62:0] dividend;
	output exception;
	
	signext s(dividend, dividendshort);
	wire [31:0] data_operandB;
	assign data_operandB = divisor;
	
	
	output [31:0] quotient;
   wire [31:0] d1, b1;
   wire [31:0] d2, b2;
   wire [31:0] d3, b3;
   wire [31:0] d4, b4;
   wire [31:0] d5, b5;
   wire [31:0] d6, b6;
   wire [31:0] d7, b7;
   wire [31:0] d8, b8;
   wire [31:0] d9, b9;
   wire [31:0] d10, b10;
   wire [31:0] d11, b11;
   wire [31:0] d12, b12;
   wire [31:0] d13, b13;
   wire [31:0] d14, b14;
   wire [31:0] d15, b15;
   wire [31:0] d16, b16;
   wire [31:0] d17, b17;
   wire [31:0] d18, b18;
   wire [31:0] d19, b19;
   wire [31:0] d20, b20;
   wire [31:0] d21, b21;
   wire [31:0] d22, b22;
   wire [31:0] d23, b23;
   wire [31:0] d24, b24;
   wire [31:0] d25, b25;
   wire [31:0] d26, b26;
   wire [31:0] d27, b27;
   wire [31:0] d28, b28;
   wire [31:0] d29, b29;
   wire [31:0] d30, b30;
   wire [31:0] d31, b31;
   wire [31:0] d32, b32;
	
	
	addsub32 a1(dividend[62:31], divisor, 1'b1, b1, quotient[31]);
   addsub32 a2({b1[30:0], dividend[30]}, divisor, quotient[31], b2, quotient[30]);
   addsub32 a3({b2[30:0], dividend[29]}, divisor, quotient[30], b3, quotient[29]);
   addsub32 a4({b3[30:0], dividend[28]}, divisor, quotient[29], b4, quotient[28]);
   addsub32 a5({b4[30:0], dividend[27]}, divisor, quotient[28], b5, quotient[27]);
   addsub32 a6({b5[30:0], dividend[26]}, divisor, quotient[27], b6, quotient[26]);
   addsub32 a7({b6[30:0], dividend[25]}, divisor, quotient[26], b7, quotient[25]);
   addsub32 a8({b7[30:0], dividend[24]}, divisor, quotient[25], b8, quotient[24]);
   addsub32 a9({b8[30:0], dividend[23]}, divisor, quotient[24], b9, quotient[23]);
   addsub32 a10({b9[30:0], dividend[22]}, divisor, quotient[23], b10, quotient[22]);
   addsub32 a11({b10[30:0], dividend[21]}, divisor, quotient[22], b11, quotient[21]);
   addsub32 a12({b11[30:0], dividend[20]}, divisor, quotient[21], b12, quotient[20]);
   addsub32 a13({b12[30:0], dividend[19]}, divisor, quotient[20], b13, quotient[19]);
   addsub32 a14({b13[30:0], dividend[18]}, divisor, quotient[19], b14, quotient[18]);
   addsub32 a15({b14[30:0], dividend[17]}, divisor, quotient[18], b15, quotient[17]);
   addsub32 a16({b15[30:0], dividend[16]}, divisor, quotient[17], b16, quotient[16]);
   addsub32 a17({b16[30:0], dividend[15]}, divisor, quotient[16], b17, quotient[15]);
   addsub32 a18({b17[30:0], dividend[14]}, divisor, quotient[15], b18, quotient[14]);
   addsub32 a19({b18[30:0], dividend[13]}, divisor, quotient[14], b19, quotient[13]);
   addsub32 a20({b19[30:0], dividend[12]}, divisor, quotient[13], b20, quotient[12]);
   addsub32 a21({b20[30:0], dividend[11]}, divisor, quotient[12], b21, quotient[11]);
   addsub32 a22({b21[30:0], dividend[10]}, divisor, quotient[11], b22, quotient[10]);
   addsub32 a23({b22[30:0], dividend[9]}, divisor, quotient[10], b23, quotient[9]);
   addsub32 a24({b23[30:0], dividend[8]}, divisor, quotient[9], b24, quotient[8]);
   addsub32 a25({b24[30:0], dividend[7]}, divisor, quotient[8], b25, quotient[7]);
   addsub32 a26({b25[30:0], dividend[6]}, divisor, quotient[7], b26, quotient[6]);
   addsub32 a27({b26[30:0], dividend[5]}, divisor, quotient[6], b27, quotient[5]);
   addsub32 a28({b27[30:0], dividend[4]}, divisor, quotient[5], b28, quotient[4]);
   addsub32 a29({b28[30:0], dividend[3]}, divisor, quotient[4], b29, quotient[3]);
   addsub32 a30({b29[30:0], dividend[2]}, divisor, quotient[3], b30, quotient[2]);
   addsub32 a31({b30[30:0], dividend[1]}, divisor, quotient[2], b31, quotient[1]);
   addsub32 a32({b31[30:0], dividend[0]}, divisor, quotient[1], b32, quotient[0]);
		
    wire  q1,q2,q3,q4,q5;
	 nor o1(q1, data_operandB[31], data_operandB[30], data_operandB[29], data_operandB[28], data_operandB[27], data_operandB[26], data_operandB[25]);
	 nor o2(q2, data_operandB[18], data_operandB[19], data_operandB[20], data_operandB[21], data_operandB[22], data_operandB[23], data_operandB[24]); 
	 nor o3(q3, data_operandB[17], data_operandB[16], data_operandB[15], data_operandB[14], data_operandB[13], data_operandB[12], data_operandB[11]);
	 nor o4(q4, data_operandB[4], data_operandB[5], data_operandB[6], data_operandB[7], data_operandB[8], data_operandB[9], data_operandB[10]);
	 nor o5(q5, data_operandB[0], data_operandB[1], data_operandB[2], data_operandB[3]);
	 and o6(exception, q5,q4,q3,q2,q1);
	
endmodule 
