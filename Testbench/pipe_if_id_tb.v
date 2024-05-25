`include "defines.v"

module pipe_if_id_tb (
	input  wire                clk    ,
	input  wire                rst    ,
	input  wire [`InstAddrBus] if_pc  ,
	input  wire [    `InstBus] if_inst,
	input  wire [         5:0] stall  ,
	input  wire                br     ,
	output reg  [`InstAddrBus] id_pc  ,
	output reg  [    `InstBus] id_inst
);

pipe_if_id pipe_if_id0 (
		// input
		.clk    (clk    ),
		.rst    (rst    ),
		.if_pc  (if_pc  ),
		.if_inst(if_inst),
		.stall  (stall  ),
		.br     (br     ),
		// output
		.id_pc  (id_pc  ),
		.id_inst(id_inst)
	);

endmodule // reg_if_id