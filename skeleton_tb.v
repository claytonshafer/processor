//main testbench for verifying processor
//Can show values found on different wires over a set number of clock cycles

`timescale 1 ns / 100 ps

module skeleton_tb();

	reg clock, reset;
	
	skeleton testskeleton(clock, reset);
	integer i;
	
	
	initial begin
		clock = 1'b0;
		reset = 1'b0;
		$display("Starting: ");
		
	end


	always 
	  #10 clock = ~clock;
	  
	  
	always begin
		for(i=0;i<100; i=i+1) begin
		@(negedge clock) begin
			$display("-------------------------------------------------");
			$display("Program Counter: %d", testskeleton.my_processor.pcout);
			$display("-------------------------------------------------");
			$display("decodeisn:    %h", testskeleton.my_processor.fetchdecodeisnout);
			$display("executeisn:   %h", testskeleton.my_processor.decodeexecuteisnout);			
			$display("memoryisn:    %h", testskeleton.my_processor.executememoryisnout);			
			$display("writebackisn: %h", testskeleton.my_processor.memorywritebackisnout);
			$display("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
			$display("REGISTERS");
			$display("Register 1:  %d", $signed(testskeleton.my_regfile.w1));
			$display("Register 2:  %d", $signed(testskeleton.my_regfile.w2));
			$display("Register 3:  %d", $signed(testskeleton.my_regfile.w3));
			$display("Register 4:  %d", $signed(testskeleton.my_regfile.w4));			
			$display("Register 5:  %d", $signed(testskeleton.my_regfile.w5));
			$display("Register 6:  %d", $signed(testskeleton.my_regfile.w6));			
			$display("Register 7:  %d", $signed(testskeleton.my_regfile.w7));
			$display("Register 8:  %d", $signed(testskeleton.my_regfile.w8));			
			$display("Register 9:  %d", $signed(testskeleton.my_regfile.w9));
			$display("Register 10: %d", $signed(testskeleton.my_regfile.w10));			
			$display("Register 11: %d", $signed(testskeleton.my_regfile.w11));
			$display("Register 12: %d", $signed(testskeleton.my_regfile.w12));			
			$display("Register 13: %d", $signed(testskeleton.my_regfile.w13));
			$display("Register 14: %d", $signed(testskeleton.my_regfile.w14));
			$display("Rstatus:     %d", $signed(testskeleton.my_regfile.w30));
			$display("   ");
			$display("   ");
			$display("Multout: %d", $signed(testskeleton.my_processor.mult_out));
			$display("ctrl: %b", testskeleton.my_processor.ctrl_writeback);
			$display("data: %d", $signed(testskeleton.my_processor.data_writeReg));
			$display("enable: %b", testskeleton.my_processor.ctrl_writeEnable);
			$display("reg: %b", testskeleton.my_processor.ctrl_writeReg);
			$display("bypass logic: %b", testskeleton.my_processor.stallbypass);
			$display("data to memory: %d", $signed(testskeleton.my_processor.data));
			$display("writeback aluout: %d", $signed(testskeleton.my_processor.mw_ALUoutput));
			$display("memory operandB: %d", $signed(testskeleton.my_processor.xm_operandB));
			$display("mw bypass: %b", testskeleton.my_processor.mwbypass);
			$display("memory address: %d", $signed(testskeleton.my_processor.address_dmem));
			$display("data from memory: %d", $signed(testskeleton.my_processor.q_dmem));
			$display("ALUoutput : %d", $signed(testskeleton.my_processor.ALUresult));
			$display("Add overflow: %b", testskeleton.my_processor.writeback_addexception);
			$display("executeovf: %b", testskeleton.my_processor.execute_ALUovf);
			$display("memoryovf: %b", testskeleton.my_processor.memory_ALUovf);

			$display("writebackovf: %b", testskeleton.my_processor.writeback_ALUovf);
			$display("exception controller: %b", testskeleton.my_processor.ctrl_exception);
			$display("writeback_target: %d", $signed(testskeleton.my_processor.writeback_target_extended));
			$display("execute_aluout: %d", $signed(testskeleton.my_processor.ALUresult));
			$display("memory_ALUout: %d", $signed(testskeleton.my_processor.xm_ALUoutput));
			$display("execute_aluout: %d", $signed(testskeleton.my_processor.mw_ALUoutput));
			$display("are theyequal: %b", testskeleton.my_processor.wxbypass_A_int);
			$display("writebackrd: %b", testskeleton.my_processor.writeback_rd);
			$display("executers: %b", testskeleton.my_processor.execute_rs);


			end
		end
		$stop;
	end
	



endmodule 
