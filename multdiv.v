//multiplier unit
module multdiv(data_operandA, data_operandB, data_result, data_exception);
    input [31:0] data_operandA, data_operandB;

    output [31:0] data_result;
    output data_exception;
	 
	 
	 wire isAneg, isBneg;
	 assign isAneg = data_operandA[31];
	 
	 assign isBneg = data_operandB[31];
	 wire [31:0] multout, negresult;
	 wire isresultneg, mulovf;

	 wire [31:0] inA, inB,negA,negB;
	 neg32 na(negA, data_operandA);
	 neg32 nb(negB, data_operandB);
	 
    //is either operand zero
	 wire isAzero, isBzero, isonezero;
	 isnotzero opA(inA, isAzero);
	 isnotzero opB(inB, isBzero);
	 or iszeroor(isonezero, isAzero, isBzero);
	 
	 
	 assign inA = isAneg ? negA : data_operandA;
	 assign inB = isBneg ? negB : data_operandB;

	
	 mul32 mult(inA, inB, multout, mulovf);
	 
	 neg32 n2(negresult, multout);
	 
	 xor x(isresultneg, isAneg, isBneg);
	 wire [31:0] mult_result;	 
	 	 
	 assign data_result = isresultneg ? negresult : multout;

	 
	 wire bothpos;
	 nor norforbothpos(bothpos, isAneg, isBneg);
	 wire signovf;
	 and andforsignoverflow(signovf, bothpos, data_result[31]);
	 
	 
	 wire bothnegativeoverflow;	 
	 
	 and bnegovfand(bothnegativeoverflow, isAneg, isBneg, mult_result[31]);
	 
	 wire onenegative, isresultpositive,onenegativeoverflow,negovf,mx;
	 xor xneg(onenegative, data_operandA[31], data_operandB[31]);
	 not resnot(isresultpositive, mult_result[31]);
	 and andfornegativeoverflow(negovf, isresultpositive, onenegative);
	 assign onenegativeoverflow = isonezero ? 1'b0 : negovf;
		 	 
	 
	 or ov(data_exception, mulovf, signovf,onenegativeoverflow,bothnegativeoverflow);
	 

endmodule
