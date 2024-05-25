`timescale 1ns/1ps

module inst_fetch_tb (
	input  wire               rst       ,
	input  wire [31:0] pc      ,
	input  wire [    31:0] mem_data_i,
	input  wire [                1:0]        mem_busy_i  ,
	input  wire        [                1:0]       mem_done_i  ,
	input  wire               br        ,
	input  wire               right_one 
	
);
   
    wire            mem_re   ;
	wire  [31:0] mem_addr_o;
	wire  [31:0] if_pc      ;
	wire  [   31:0] if_inst    ;
	wire                stallreq_if;
	
	inst_fetch inst_fetch0 (
		// input
		.rst       (rst          ),
		.pc_i      (pc           ),
		.mem_data_i(mem_data_i),
		.mem_busy  (mem_busy_i  ),
		.mem_done  (mem_done_i  ),
		.br        (br           ),
		.right_one (right_one    ),
		// output
		.mem_re    (mem_re),
		.mem_addr_o(mem_addr_o  ),
		.pc_o      (if_pc        ),
		.inst_o    (if_inst      ),
		.stallreq  (stallreq_if  )
	);


endmodule // stage_if