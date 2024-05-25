`include "defines.v"

module stage_mem_tb (
	input  wire               rst        ,
	input  wire [`RegAddrBus] mem_reg_waddr_i,
	input  wire               mem_we_i       ,
	input  wire [    `RegBus] mem_reg_wdata_i,
	input  wire [`MemAddrBus] mem_mem_addr ,
	input  wire [  `AluOpBus] mem_aluop      ,
	input  wire [    `RegBus] mem_rt_data    ,
	input  wire [    `RegBus] mem_data_i ,
	input  wire [                1:0] mem_busy_i   ,
	input  wire [                1:0] mem_done_i   ,
	output reg  [`RegAddrBus] mem_reg_waddr_o,
	output reg                mem_we_o       ,
	output reg  [    `RegBus] mem_reg_wdata_o,
	output reg  [`MemAddrBus] mem_addr_o ,
	output reg                mem_re     ,
	output reg                mem_we     ,
	output reg  [        3:0] mem_sel    ,
	output reg  [    `RegBus] mem_data_o ,
	output reg                stallreq_mem
);
stage_mem stage_mem0 (
		// input
		.rst        (rst            ),
		.reg_waddr_i(mem_reg_waddr_i),
		.we_i       (mem_we_i       ),
		.reg_wdata_i(mem_reg_wdata_i),
		.mem_addr_i (mem_mem_addr   ),
		.aluop      (mem_aluop      ),
		.rt_data    (mem_rt_data    ),
		.mem_data_i (mem_data_i  ),
		.mem_busy   (mem_busy_i    ),
		.mem_done   (mem_done_i   ),
		// output
		.reg_waddr_o(mem_reg_waddr_o),
		.we_o       (mem_we_o       ),
		.reg_wdata_o(mem_reg_wdata_o),
		.stallreq   (stallreq_mem   ),
		.mem_addr_o (mem_addr_o    ),
		.mem_re     (mem_re  ),
		.mem_we     (mem_we  ),
		.mem_sel    (mem_sel     ),
		.mem_data_o (mem_data_o  )
	);

endmodule // stage_mem