`include "defines.v"

module execute_alu_tb (
	input  wire                rst        ,
	input  wire [   `AluOpBus] aluop      ,
	input  wire [  `AluSelBus] ex_alusel     ,
	input  wire [     `RegBus] ex_opv1       ,
	input  wire [     `RegBus] ex_opv2       ,
	input  wire [ `RegAddrBus] ex_reg_waddr_i,
	input  wire                ex_we_i       ,
	input  wire [`InstAddrBus] ex_link_addr  ,
	input  wire [     `RegBus] ex_mem_offset ,
	output reg  [ `RegAddrBus] ex_reg_waddr_o,
	output reg                 ex_we_o       ,
	output reg  [     `RegBus] ex_reg_wdata  ,
	output reg                 stallreq_ex   ,
	output reg  [ `MemAddrBus] ex_mem_addr   ,
	output wire [   `AluOpBus] ex_aluop_o   ,
	output wire [     `RegBus] ex_rt_data
);

	execute_alu execute_alu0 (
		// input
		.rst        (rst           ),
		.aluop      (aluop      ),
		.alusel     (ex_alusel     ),
		.opv1       (ex_opv1       ),
		.opv2       (ex_opv2       ),
		.reg_waddr_i(ex_reg_waddr_i),
		.we_i       (ex_we_i       ),
		.link_addr  (ex_link_addr  ),
		.mem_offset (ex_mem_offset ),
		// output
		.reg_waddr_o(ex_reg_waddr_o),
		.we_o       (ex_we_o       ),
		.reg_wdata  (ex_reg_wdata  ),
		.stallreq   (stallreq_ex   ),
		.mem_addr   (ex_mem_addr   ),
		.ex_aluop   (ex_aluop_o    ),
		.rt_data    (ex_rt_data    )
	);

endmodule // stage_ex