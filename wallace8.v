//8 bit wallace tree multiplier

module wallace8(Ain, Bin, out);

	input [7:0] Ain, Bin;
	wire [15:0] out1,out2;
	output [15:0] out;
	wire ovf;
	wire zer;
	assign zer = 0;
	
   wire p00;
   wire p01;
   wire p02;
   wire p03;
   wire p04;
   wire p05;
   wire p06;
   wire p07;
   wire p10;
   wire p11;
   wire p12;
   wire p13;
   wire p14;
   wire p15;
   wire p16;
   wire p17;
   wire p20;
   wire p21;
   wire p22;
   wire p23;
   wire p24;
   wire p25;
   wire p26;
   wire p27;
   wire p30;
   wire p31;
   wire p32;
   wire p33;
   wire p34;
   wire p35;
   wire p36;
   wire p37;
   wire p40;
   wire p41;
   wire p42;
   wire p43;
   wire p44;
   wire p45;
   wire p46;
   wire p47;
   wire p50;
   wire p51;
   wire p52;
   wire p53;
   wire p54;
   wire p55;
   wire p56;
   wire p57;
   wire p60;
   wire p61;
   wire p62;
   wire p63;
   wire p64;
   wire p65;
   wire p66;
   wire p67;
   wire p70;
   wire p71;
   wire p72;
   wire p73;
   wire p74;
   wire p75;
   wire p76;
   wire p77;
	
	//partial products
	
   and a00(p00, Ain[0],Bin[0]);
   and a01(p01, Ain[0],Bin[1]);
   and a02(p02, Ain[0],Bin[2]);
   and a03(p03, Ain[0],Bin[3]);
   and a04(p04, Ain[0],Bin[4]);
   and a05(p05, Ain[0],Bin[5]);
   and a06(p06, Ain[0],Bin[6]);
   and a07(p07, Ain[0],Bin[7]);
   and a10(p10, Ain[1],Bin[0]);
   and a11(p11, Ain[1],Bin[1]);
   and a12(p12, Ain[1],Bin[2]);
   and a13(p13, Ain[1],Bin[3]);
   and a14(p14, Ain[1],Bin[4]);
   and a15(p15, Ain[1],Bin[5]);
   and a16(p16, Ain[1],Bin[6]);
   and a17(p17, Ain[1],Bin[7]);
   and a20(p20, Ain[2],Bin[0]);
   and a21(p21, Ain[2],Bin[1]);
   and a22(p22, Ain[2],Bin[2]);
   and a23(p23, Ain[2],Bin[3]);
   and a24(p24, Ain[2],Bin[4]);
   and a25(p25, Ain[2],Bin[5]);
   and a26(p26, Ain[2],Bin[6]);
   and a27(p27, Ain[2],Bin[7]);
   and a30(p30, Ain[3],Bin[0]);
   and a31(p31, Ain[3],Bin[1]);
   and a32(p32, Ain[3],Bin[2]);
   and a33(p33, Ain[3],Bin[3]);
   and a34(p34, Ain[3],Bin[4]);
   and a35(p35, Ain[3],Bin[5]);
   and a36(p36, Ain[3],Bin[6]);
   and a37(p37, Ain[3],Bin[7]);
   and a40(p40, Ain[4],Bin[0]);
   and a41(p41, Ain[4],Bin[1]);
   and a42(p42, Ain[4],Bin[2]);
   and a43(p43, Ain[4],Bin[3]);
   and a44(p44, Ain[4],Bin[4]);
   and a45(p45, Ain[4],Bin[5]);
   and a46(p46, Ain[4],Bin[6]);
   and a47(p47, Ain[4],Bin[7]);
   and a50(p50, Ain[5],Bin[0]);
   and a51(p51, Ain[5],Bin[1]);
   and a52(p52, Ain[5],Bin[2]);
   and a53(p53, Ain[5],Bin[3]);
   and a54(p54, Ain[5],Bin[4]);
   and a55(p55, Ain[5],Bin[5]);
   and a56(p56, Ain[5],Bin[6]);
   and a57(p57, Ain[5],Bin[7]);
   and a60(p60, Ain[6],Bin[0]);
   and a61(p61, Ain[6],Bin[1]);
   and a62(p62, Ain[6],Bin[2]);
   and a63(p63, Ain[6],Bin[3]);
   and a64(p64, Ain[6],Bin[4]);
   and a65(p65, Ain[6],Bin[5]);
   and a66(p66, Ain[6],Bin[6]);
   and a67(p67, Ain[6],Bin[7]);
   and a70(p70, Ain[7],Bin[0]);
   and a71(p71, Ain[7],Bin[1]);
   and a72(p72, Ain[7],Bin[2]);
   and a73(p73, Ain[7],Bin[3]);
   and a74(p74, Ain[7],Bin[4]);
   and a75(p75, Ain[7],Bin[5]);
   and a76(p76, Ain[7],Bin[6]);
   and a77(p77, Ain[7],Bin[7]);
	
	
	//stage 1
   wire stage1add1s, stage1add1c;
   wire stage1add2s, stage1add2c;
   wire stage1add3s, stage1add3c;
   wire stage1add4s, stage1add4c;
   wire stage1add5s, stage1add5c;
   wire stage1add6s, stage1add6c;
   wire stage1add7s, stage1add7c;
   wire stage1add8s, stage1add8c;
   wire stage1add9s, stage1add9c;
   wire stage1add10s, stage1add10c;
   wire stage1add11s, stage1add11c;
   wire stage1add12s, stage1add12c;
   wire stage1add13s, stage1add13c;
   wire stage1add14s, stage1add14c;
   wire stage1add15s, stage1add15c;
   wire stage1add16s, stage1add16c;
	
	
	//                             p70 p60 p50 p40 p30 p20 p10 p00
	//                         p71 p61 p51 p41 p31 p21 p11 p01
	//                     p72 p62 p52 p42 p32 p22 p12 p02
	
	//                 p73 p63 p53 p43 p33 p23 p13 p03
	//             p74 p64 p54 p44 p34 p24 p14 p04
	//         p75 p65 p55 p45 p35 p25 p15 p05
	
	//     p76 p66 p56 p46 p36 p26 p16 p06
	// p77 p67 p57 p47 p37 p27 p17 p07

	add1 stage1add1(zer, p10, p01, stage1add1s, stage1add1c);
	add1 stage1add2(p20, p11, p02, stage1add2s, stage1add2c);
	add1 stage1add3(p30, p21, p12, stage1add3s, stage1add3c);
	add1 stage1add4(p40, p31, p22, stage1add4s, stage1add4c);
	add1 stage1add5(p50, p41, p32, stage1add5s, stage1add5c);
	add1 stage1add6(p60, p51, p42, stage1add6s, stage1add6c);
	add1 stage1add7(p70, p61, p52, stage1add7s, stage1add7c);
	add1 stage1add8(p71, p62, zer, stage1add8s, stage1add8c);
	
	add1 stage1add9(p13, p04, zer, stage1add9s, stage1add9c);
	add1 stage1add10(p23, p14, p05, stage1add10s, stage1add10c);
	add1 stage1add11(p33, p24, p15, stage1add11s, stage1add11c);
	add1 stage1add12(p43, p34, p25, stage1add12s, stage1add12c);
	add1 stage1add13(p53, p44, p35, stage1add13s, stage1add13c);
	add1 stage1add14(p63, p54, p45, stage1add14s, stage1add14c);
	add1 stage1add15(p73, p64, p55, stage1add15s, stage1add15c);
	add1 stage1add16(p74, p65, zer, stage1add16s, stage1add16c);
	
	
	//stage 2
	
   wire stage2add1s, stage2add1c;
   wire stage2add2s, stage2add2c;
   wire stage2add3s, stage2add3c;
   wire stage2add4s, stage2add4c;
   wire stage2add5s, stage2add5c;
   wire stage2add6s, stage2add6c;
   wire stage2add7s, stage2add7c;
   wire stage2add8s, stage2add8c;
   wire stage2add9s, stage2add9c;
   wire stage2add10s, stage2add10c;
   wire stage2add11s, stage2add11c;
   wire stage2add12s, stage2add12c;
   wire stage2add13s, stage2add13c;
   wire stage2add14s, stage2add14c;
   wire stage2add15s, stage2add15c;
   wire stage2add16s, stage2add16c;
	
	//                     p72 07c 07s 05c 05s 03c 03s 01c 01s p00
	//                     08c 08s 06c 06s 04c 04s 02c 02s
	//         p75 15c 15s 13c 13s 11c 11s 09c 09s p03 
	
	//         16c 16s 14c 14s 12c 12s 10c 10s
	//     p76 p66 p56 p46 p36 p26 p16 p06
	// p77 p67 p57 p47 p37 p27 p17 p07
	
	
	add1 stage2add1(stage1add1c, stage1add2s, zer, stage2add1s, stage2add1c);
	add1 stage2add2(stage1add3s, stage1add2c, p03, stage2add2s, stage2add2c);
	add1 stage2add3(stage1add3c, stage1add4s, stage1add9s, stage2add3s, stage2add3c);
	add1 stage2add4(stage1add5s, stage1add4c, stage1add9c, stage2add4s, stage2add4c);
	add1 stage2add5(stage1add5c, stage1add6s, stage1add11s, stage2add5s, stage2add5c);
	add1 stage2add6(stage1add7s, stage1add6c, stage1add11c, stage2add6s, stage2add6c);
	add1 stage2add7(stage1add7c, stage1add8s, stage1add13s, stage2add7s, stage2add7c);
	add1 stage2add8(p72, stage1add8c, stage1add13c, stage2add8s, stage2add8c);
	
	add1 stage2add9(stage1add10c, p06, zer, stage2add9s, stage2add9c);
	add1 stage2add10(stage1add12s, p16, p07, stage2add10s, stage2add10c);
	add1 stage2add11(stage1add12c, p26, p17, stage2add11s, stage2add11c);
	add1 stage2add12(stage1add14s, p36, p27, stage2add12s, stage2add12c);
	add1 stage2add13(stage1add14c, p46, p37, stage2add13s, stage2add13c);
	add1 stage2add14(stage1add16s, p56, p47, stage2add14s, stage2add14c);
	add1 stage2add15(stage1add16c, p66, p57, stage2add15s, stage2add15c);
	add1 stage2add16(p76, p67, zer, stage2add16s, stage2add16c);
	
	
	
	//stage 3
	
   wire stage3add1s, stage3add1c;
   wire stage3add2s, stage3add2c;
   wire stage3add3s, stage3add3c;
   wire stage3add4s, stage3add4c;
   wire stage3add5s, stage3add5c;
   wire stage3add6s, stage3add6c;
   wire stage3add7s, stage3add7c;
   wire stage3add8s, stage3add8c;
   wire stage3add9s, stage3add9c;
   wire stage3add10s, stage3add10c;
	
	//                 08c 08s 06c|06s 04c 04s 02c 02s 01s~01s p00
	//         p75~15c~15s 07c 07s|05c 05s 03c 03s 01c
	// p77 15c 15s 13c 13s 11c 11s|09c 09s~10s
	//
	// 16c 16s 14c 14s 12c 12s 10c|10s
		
	add1 stage3add1(stage2add2s, stage2add1c, zer, stage3add1s, stage3add1c);
	add1 stage3add2(stage2add2c, stage2add3s, zer, stage3add2s, stage3add2c);
	add1 stage3add3(stage2add4s, stage2add3c, stage1add10s, stage3add3s, stage3add3c);
	add1 stage3add4(stage2add4c, stage2add5s, stage2add9s, stage3add4s, stage3add4c);
	add1 stage3add5(stage2add6s, stage2add5c, stage2add9c, stage3add5s, stage3add5c);
	add1 stage3add6(stage2add6c, stage2add7s, stage2add11s, stage3add6s, stage3add6c);
	add1 stage3add7(stage2add8s, stage2add7c, stage2add11c, stage3add7s, stage3add7c);
	add1 stage3add8(stage2add8c, stage1add15s, stage2add13s, stage3add8s, stage3add8c);
	add1 stage3add9(stage1add15c, stage2add13c, zer, stage3add9s, stage3add9c);
	add1 stage3add10(p75, stage2add15s, zer, stage3add10s, stage3add10c);
	
	
	
	//stage 4
   wire stage4add1s, stage4add1c;
   wire stage4add2s, stage4add2c;
   wire stage4add3s, stage4add3c;
   wire stage4add4s, stage4add4c;
   wire stage4add5s, stage4add5c;
   wire stage4add6s, stage4add6c;
   wire stage4add7s, stage4add7c;
   wire stage4add8s, stage4add8c;
   wire stage4add9s, stage4add9c;
   wire stage4add10s, stage4add10c;
   wire stage4add11s, stage4add11c;
	
	//     -15c 09c 09s 07c 07s 05c 05s 03c 03s 01c 01s-01s~01s p00
	//  p77 10c 10s 08c 08s 06c 06s 04c 04s 02c 02s
	// -16c-16s-14c-14s-12c-12s-10c-10s
	

	add1 stage4add1(stage3add1c, stage3add2s, zer, stage4add1s, stage4add1c);
	add1 stage4add2(stage3add3s, stage3add2c, zer, stage4add2s, stage4add2c);
	add1 stage4add3(stage3add3c, stage3add4s, zer, stage4add3s, stage4add3c);
	add1 stage4add4(stage3add5s, stage3add4c, stage2add10s, stage4add4s, stage4add4c);
	add1 stage4add5(stage3add5c, stage3add6s, stage2add10c, stage4add5s, stage4add5c);
	add1 stage4add6(stage3add7s, stage3add6c, stage2add12s, stage4add6s, stage4add6c);
	add1 stage4add7(stage3add7c, stage3add8s, stage2add12c, stage4add7s, stage4add7c);
	add1 stage4add8(stage3add9s, stage3add8c, stage2add14s, stage4add8s, stage4add8c);
	add1 stage4add9(stage3add9c, stage3add10s, stage2add14c, stage4add9s, stage4add9c);
	add1 stage4add10(stage2add15c, stage3add10c, stage2add16s, stage4add10s, stage4add10c);
	add1 stage4add11(p77, stage2add16c, zer, stage4add11s, stage4add11c);
	
	//final add
	
	// 11c 11s 09c 09s 07c 07s 05c 05s 03c 03s|01c|01s_01s-01s~01s p00
	// zer 10c 10s 08c 08s 06c 06s 04c 04s 02c|02s|zer zer zer zer zer

	assign out1 = {stage4add11c, stage4add11s, stage4add9c, stage4add9s, stage4add7c, stage4add7s, stage4add5c, stage4add5s, stage4add3c, stage4add3s, stage4add1c, stage4add1s, stage3add1s, stage2add1s, stage1add1s, p00};
	assign out2 = {zer, stage4add10c, stage4add10s, stage4add8c, stage4add8s, stage4add6c, stage4add6s, stage4add4c, stage4add4s, stage4add2c, stage4add2s, zer,zer,zer,zer,zer};

	add16 finaladd(out1,out2,zer,out,ovf);
	
	
endmodule	
