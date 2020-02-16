//32 bit register

module register(data_in, data_out, clk, WE, selector, reset);
	input [31:0] data_in;
	output [31:0] data_out;
	input clk, WE, reset,selector;
	wire writeenable;
	
	and enable(writeenable,WE,selector);
	
	dflip d0(data_out[0],data_in[0],clk,writeenable,reset);
	dflip d1(data_out[1],data_in[1],clk,writeenable,reset);
	dflip d2(data_out[2],data_in[2],clk,writeenable,reset);
	dflip d3(data_out[3],data_in[3],clk,writeenable,reset);
	dflip d4(data_out[4],data_in[4],clk,writeenable,reset);
	dflip d5(data_out[5],data_in[5],clk,writeenable,reset);
	dflip d6(data_out[6],data_in[6],clk,writeenable,reset);
	dflip d7(data_out[7],data_in[7],clk,writeenable,reset);
	dflip d8(data_out[8],data_in[8],clk,writeenable,reset);
	dflip d9(data_out[9],data_in[9],clk,writeenable,reset);
	dflip d10(data_out[10],data_in[10],clk,writeenable,reset);
	dflip d11(data_out[11],data_in[11],clk,writeenable,reset);
	dflip d12(data_out[12],data_in[12],clk,writeenable,reset);
	dflip d13(data_out[13],data_in[13],clk,writeenable,reset);
	dflip d14(data_out[14],data_in[14],clk,writeenable,reset);
	dflip d15(data_out[15],data_in[15],clk,writeenable,reset);
	dflip d16(data_out[16],data_in[16],clk,writeenable,reset);
	dflip d17(data_out[17],data_in[17],clk,writeenable,reset);
	dflip d18(data_out[18],data_in[18],clk,writeenable,reset);
	dflip d19(data_out[19],data_in[19],clk,writeenable,reset);
	dflip d20(data_out[20],data_in[20],clk,writeenable,reset);
	dflip d21(data_out[21],data_in[21],clk,writeenable,reset);
	dflip d22(data_out[22],data_in[22],clk,writeenable,reset);
	dflip d23(data_out[23],data_in[23],clk,writeenable,reset);
	dflip d24(data_out[24],data_in[24],clk,writeenable,reset);
	dflip d25(data_out[25],data_in[25],clk,writeenable,reset);
	dflip d26(data_out[26],data_in[26],clk,writeenable,reset);
	dflip d27(data_out[27],data_in[27],clk,writeenable,reset);
	dflip d28(data_out[28],data_in[28],clk,writeenable,reset);
	dflip d29(data_out[29],data_in[29],clk,writeenable,reset);
	dflip d30(data_out[30],data_in[30],clk,writeenable,reset);
	dflip d31(data_out[31],data_in[31],clk,writeenable,reset);

endmodule 