`timescale 1ns/1ps

module program_counter_tb (
	input  wire                clk        ,
	input  wire                rst        ,
	input  wire [5:0] stall      ,
	input  wire                br         ,
	input  wire [31:0] br_addr    
	
);

    wire  [31:0] pc      ;
	wire  right_one;
	program_counter program_counter0 (
		// input
		.clk        (clk      ),
		.rst        (rst      ),
		.stall      (stall    ),
		.br         (br       ),
		.br_addr    (br_addr  ),
		// output
		.pc_o       (pc       ),
		.right_one_o(right_one)
	);


endmodule // reg_pc