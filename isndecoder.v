//breaks 32 bit instruction into separate fields

module isndecoder(isn, opcode, rd, rs, rt, shamt, ALUop, immediate, target, onehot);

	input [31:0] isn;
	output [4:0] opcode, rd, rs, rt, shamt, ALUop;
	output [31:0] immediate;
	output [26:0] target;
	output [31:0] onehot;
	wire [16:0] imm;
	
	wire [4:0] ALUop_notaddi;
	
	assign opcode = isn[31:27];
	assign rd = isn[26:22];
	assign rs = isn[21:17];
	assign rt = isn[16:12];
	assign shamt = isn[11:7];
	assign ALUop_notaddi = isn[6:2];
	assign imm = isn[16:0];
	assign target = isn[26:0];
	
   signext1732 extendimmediate(imm, immediate);
	decoder32 decodetoonehot(opcode, onehot);

	assign ALUop = onehot[5'b00101] ? 5'b00000 : ALUop_notaddi;

endmodule 
