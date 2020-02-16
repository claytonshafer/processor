//ALU
module alu(data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);

   input [31:0] data_operandA, data_operandB;
   input [4:0] ctrl_ALUopcode, ctrl_shiftamt;

   output [31:0] data_result;
   output isNotEqual, isLessThan, overflow;
	wire [31:0] lsout, rsout, addout, subout,andout, orout,dummy1, dummy2,dummy3, notval, add_inB;
	wire cout;

	
	//logic to find and choose sign change for subtraction
	not32 negativeB(notval, data_operandB);
	assign add_inB  = ctrl_ALUopcode[0] ? notval : data_operandB;
	
	
	//adder module
	add32 adder(data_operandA, add_inB, ctrl_ALUopcode[0], addout, cout);
	
	//bitwise or
	
	or32 o(data_operandA, data_operandB, orout);
		
	//bitwise and
	
	and32 a(data_operandA, data_operandB, andout);
	
	//left barrel shifter
	
	leftshift l(data_operandA, ctrl_shiftamt, lsout);
	
	//right barrel shifter
	rightshift r(data_operandA, ctrl_shiftamt, rsout);

	
	//Mux to choose result based on ALUop
	
	mux8 bigmux(dummy1, dummy2, rsout, lsout, orout, andout, addout, addout, ctrl_ALUopcode[2:0], data_result);
	
	//LT
	//mux chooses either sign or !sign
	
	wire w11;
	not ltnot(w11,addout[31]);
	assign isLessThan = overflow ? w11 : addout[31];
	//possible values: A positive, B more positive
	//A positive, B less positive
	//A negative, B less negative
	//assign isLessThan = addout[31];
	
	//overflow 
	//cin xor cout
	wire c,w0,w1,w2,w3,w4,w5,w6;
	wire nota, notb, notr;
	
	
	not na(nota, data_operandA[31]);
	not nb(notb, add_inB[31]);
	not nr(notr, addout[31]);
	and a1(w0,data_operandA[31],add_inB[31],addout[31]);
	and a2(w1,nota,notb,addout[31]);
	and a3(w2,data_operandA[31],notb,notr);
	and a4(w3,nota,add_inB[31],notr);
	
	or cor(c,w0,w1,w2,w3);
	
	xor ovf(overflow, cout, c);
	
	isnotzero ze(addout,isNotEqual);

endmodule
