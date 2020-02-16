//32 bit array divider

module arraydivider(dividend, divisor, ctrl_DIV, reset, clock, data_result, data_exception, data_resultRDY);
    input [31:0] dividend, divisor;
    input ctrl_DIV, clock,reset;

    output [31:0] data_result;
    output data_exception, data_resultRDY;
	 wire [31:0] data_operandA, data_operandB;
	 
	 register saveoperandA(dividend, data_operandA, ~clock, ctrl_DIV, 1'b1, reset);
	 register saveoperandB(divisor, data_operandB, ~clock, ctrl_DIV, 1'b1, reset);
	 
	//sign choice
	 wire isAneg, isBneg;
	 assign isAneg = data_operandA[31];
	 
	 assign isBneg = data_operandB[31];
	 wire [31:0] negresult;
	 wire isresultneg;

	 wire [31:0] inA, inB;
	 wire [31:0] negA,negB;
	 neg32 na(negA, data_operandA);
	 neg32 nb(negB, data_operandB);
	 
	 
	 assign inA = isAneg ? negA : data_operandA;
	 assign inB = isBneg ? negB : data_operandB;
	

	 //delay sequence for divider
	 wire b0out,b1out,b2out,b3out,b4out,b5out,b6out,b7out,b8out,b9out,b10out,b11out,b12out,b13out, b14out,b15out,b16out,b17out,b18out,b19out,b20out,b21out,divdone,newop;
	 assign newop = ctrl_DIV || reset;
	 dflip b0(b0out, ctrl_DIV, clock, 1'b1, reset);
	 dflip b1(b1out, b0out, clock, 1'b1, reset);
 	 dflip b2(b2out, b1out, clock, 1'b1, newop);
	 dflip b3(b3out, b2out, clock, 1'b1, newop);
 	 dflip b4(b4out, b3out, clock, 1'b1, newop);
	 dflip b5(b5out, b4out, clock, 1'b1, newop);
 	 dflip b6(b6out, b5out, clock, 1'b1, newop);
	 dflip b7(b7out, b6out, clock, 1'b1, newop);
	 dflip b8(b8out, b7out, clock, 1'b1, newop);
	 dflip b9(b9out, b8out, clock, 1'b1, newop);
	 dflip b10(b10out, b9out, clock, 1'b1, newop);
	 dflip b11(b11out, b10out, clock, 1'b1, newop);
	 dflip b12(b12out, b11out, clock, 1'b1, newop);
	 dflip b13(b13out, b12out, clock, 1'b1, newop);
	 dflip b14(b14out, b13out, clock, 1'b1, newop);
	 dflip b15(b15out, b14out, clock, 1'b1, newop);
	 dflip b16(b16out, b15out, clock, 1'b1, newop);
	 dflip b17(b17out, b16out, clock, 1'b1, newop);
	 dflip b18(b18out, b17out, clock, 1'b1, newop);
	 dflip b19(b19out, b18out, clock, 1'b1, newop);
	 dflip b20(b20out, b19out, clock, 1'b1, newop);
	 dflip b21(b21out, b20out, clock, 1'b1, newop);
	 dflip b22(divdone, b21out, clock, 1'b1, newop);

	assign data_resultRDY = divdone;
	 
	 
	 
	 //divbyzero
	 wire divbyzero;
	 	 
	 xor x(isresultneg, isAneg, isBneg);	 
	 wire [31:0] quotient;
	
 	 //divider
	 div32 divider32(inA, inB, quotient, divbyzero);
	 
	 wire [31:0] negquotient, div_result;
	 
         neg32 n3(negquotient, quotient);
	 

	 
	 //sign choice
	 
	 assign div_result = isresultneg ? negquotient : quotient;
	 
	 
	 
	 assign data_result = div_result;

	 
	 
	 assign data_exception = divbyzero;
	 

endmodule 
