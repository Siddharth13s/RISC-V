
module pipe_ex_mem_tb (
	input  wire               clk          ,
	input  wire               rst          ,
	input  wire [`RegAddrBus] ex_reg_waddr_o ,
	input  wire               ex_we_o        ,
	input  wire [    `RegBus] ex_reg_wdata ,
	input  wire [        5:0] stall        ,
	input  wire [`MemAddrBus] ex_mem_addr  ,
	input  wire [  `AluOpBus] ex_aluop_o     ,
	input  wire [    `RegBus] ex_rt_data   ,
	output reg  [`RegAddrBus] mem_reg_waddr_i,
	output reg                mem_we_i       ,
	output reg  [    `RegBus] mem_reg_wdata_i,
	output reg  [`MemAddrBus] mem_mem_addr ,
	output reg  [  `AluOpBus] mem_aluop    ,
	output reg  [    `RegBus] mem_rt_data
);

	pipe_ex_mem pipe_ex_mem0 (
		// input
		.clk          (clk            ),
		.rst          (rst            ),
		.ex_reg_waddr (ex_reg_waddr_o ),
		.ex_we        (ex_we_o        ),
		.ex_reg_wdata (ex_reg_wdata   ),
		.stall        (stall          ),
		.ex_mem_addr  (ex_mem_addr    ),
		.ex_aluop     (ex_aluop_o     ),
		.ex_rt_data   (ex_rt_data     ),
		// output
		.mem_reg_waddr(mem_reg_waddr_i),
		.mem_we       (mem_we_i       ),
		.mem_reg_wdata(mem_reg_wdata_i),
		.mem_mem_addr (mem_mem_addr   ),
		.mem_aluop    (mem_aluop      ),
		.mem_rt_data  (mem_rt_data    )
	);


endmodule // reg_ex_mem