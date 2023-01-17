`timescale 1ns / 1ps

module block_design_verilog_tb();
    reg  clk = 1'b0;
    reg  ena = 1'b1;
	
    always #5 clk = ~clk;
    
    design_1_wrapper UUT(
        .clk(clk),
        .ena(ena)
        );
    
endmodule

