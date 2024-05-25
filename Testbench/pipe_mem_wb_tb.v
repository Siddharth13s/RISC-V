`include "defines.v"

module pipe_mem_wb_tb (
	input  wire               clk          ,
	input  wire               rst          ,
	input  wire [`RegAddrBus] mem_reg_waddr_o,
	input  wire               mem_we_o       ,
	input  wire [    `RegBus] mem_reg_wdata_o,
	input  wire [5:0]         stall        ,
	output reg  [`RegAddrBus] wb_reg_waddr ,
	output reg                wb_we        ,
	output reg  [    `RegBus] wb_reg_wdata
);

	pipe_mem_wb pipe_mem_wb0 (
		// input
		.clk          (clk            ),
		.rst          (rst            ),
		.mem_reg_waddr(mem_reg_waddr_o),
		.mem_we       (mem_we_o       ),
		.mem_reg_wdata(mem_reg_wdata_o),
		.stall        (stall          ),
		// output
		.wb_reg_waddr (wb_reg_waddr   ),
		.wb_we        (wb_we          ),
		.wb_reg_wdata (wb_reg_wdata   )
	);


endmodule // reg_mem_wb