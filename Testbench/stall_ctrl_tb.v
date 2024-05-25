`include "defines.v"

module stall_ctrl_tb (
	input  wire       rst         ,
	input  wire       stallreq_if ,
	input  wire       stallreq_id ,
	input  wire       stallreq_ex ,
	input  wire       stallreq_mem,
	output reg  [5:0] stall
);
stall_ctrl stall_ctrl0 (
		// input
		.rst         (rst         ),
		.stallreq_if (stallreq_if ),
		.stallreq_id (stallreq_id ),
		.stallreq_ex (stallreq_ex ),
		.stallreq_mem(stallreq_mem),
		// output
		.stall       (stall       )
	);

endmodule