`include "defines.v"

module pipe_id_ex_tb (
	input  wire                clk          ,
	input  wire                rst          ,
	input  wire [   `AluOpBus] id_aluop     ,
	input  wire [  `AluSelBus] id_alusel    ,
	input  wire [     `RegBus] id_opv1      ,
	input  wire [     `RegBus] id_opv2      ,
	input  wire [ `RegAddrBus] id_reg_waddr ,
	input  wire                id_we        ,
	input  wire [         5:0] stall        ,
	input  wire [`InstAddrBus] id_link_addr ,
	input  wire [     `RegBus] id_mem_offset,
	output reg  [   `AluOpBus] ex_aluop     ,
	output reg  [  `AluSelBus] ex_alusel    ,
	output reg  [     `RegBus] ex_opv1      ,
	output reg  [     `RegBus] ex_opv2      ,
	output reg  [ `RegAddrBus] ex_reg_waddr ,
	output reg                 ex_we        ,
	output reg  [`InstAddrBus] ex_link_addr ,
	output reg  [     `RegBus] ex_mem_offset
);

	pipe_id_ex pipe_id_ex0 (
		// input
		.clk          (clk           ),
		.rst          (rst           ),
		.id_aluop     (id_aluop      ),
		.id_alusel    (id_alusel     ),
		.id_opv1      (id_opv1       ),
		.id_opv2      (id_opv2       ),
		.id_reg_waddr (id_reg_waddr  ),
		.id_we        (id_we         ),
		.id_link_addr (id_link_addr  ),
		.id_mem_offset(id_mem_offset ),
		.stall        (stall         ),
		// output
		.ex_aluop     (ex_aluop      ),
		.ex_alusel    (ex_alusel     ),
		.ex_opv1      (ex_opv1       ),
		.ex_opv2      (ex_opv2       ),
		.ex_reg_waddr (ex_reg_waddr),
		.ex_we        (ex_we       ),
		.ex_link_addr (ex_link_addr  ),
		.ex_mem_offset(ex_mem_offset )
	);


endmodule // reg_id_ex