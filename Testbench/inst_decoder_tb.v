`timescale 1ns/1ps

module inst_decoder_tb (
	input  wire                rst          ,
	input  wire [31:0] id_pc           ,
	input  wire [   31:0] id_inst         ,
	input  wire [     31:0] id_reg_data1    ,
	input  wire [     31:0] id_reg_data2    ,
	// forwarding
	input  wire [   7:0] ex_aluop     ,
	input  wire                ex_we_o        ,
	input  wire [     31:0] ex_reg_wdata ,
	input  wire [ 4:0] ex_reg_waddr_o ,
	input  wire                mem_we_o       ,
	input  wire [     31:0] mem_reg_wdata_o,
	input  wire [ 4:0] mem_reg_waddr_o
);
wire id_re1;
wire id_re2;
wire [7:0] id_aluop;
wire [2:0] id_alusel;
wire [31:0] id_opv1;
wire [31:0] id_opv2;
wire [4:0] id_reg_waddr;
wire id_we;
wire stallreq_id;
wire br;
wire [31:0] br_addr;
wire [31:0] id_link_addr;
wire [31:0] id_mem_offset;
  wire  [ 4:0] id_reg_addr1    ;
	wire  [ 4:0] id_reg_addr2    ;
	inst_decoder inst_decoder0 (
		// input
		.rst          (rst            ),
		.pc           (id_pc          ),
		.inst         (id_inst        ),
		.reg_data1    (id_reg_data1   ),
		.reg_data2    (id_reg_data2   ),
		
		.ex_aluop     (ex_aluop       ),
		.ex_we        (ex_we_o        ),
		.ex_reg_waddr (ex_reg_waddr_o ),
		.ex_reg_wdata (ex_reg_wdata   ),
		.mem_we       (mem_we_o       ),
		.mem_reg_waddr(mem_reg_waddr_o),
		.mem_reg_wdata(mem_reg_wdata_o),
		
		// output
		.re1          (id_re1         ),
		.re2          (id_re2         ),
		.reg_addr1    (id_reg_addr1   ),
		.reg_addr2    (id_reg_addr2   ),
		.aluop        (id_aluop       ),
		.alusel       (id_alusel      ),
		.opv1         (id_opv1        ),
		.opv2         (id_opv2        ),
		.we           (id_we          ),
		.reg_waddr    (id_reg_waddr   ),
		.stallreq     (stallreq_id    ),
		.br           (br             ),
		.br_addr      (br_addr        ),
		.link_addr    (id_link_addr   ),
		.mem_offset   (id_mem_offset  )
	);



endmodule // stage_id