`timescale 1ns/1ps

module regfile_tb (
	input  wire  clk   ,
	input  wire  rst  
);
    wire wb_we; 
    wire [4:0]  wb_reg_waddr;
    wire [4:0]  wb_reg_wdata;
    wire id_re1;
	wire id_re2;
	wire[31:0] id_reg_data1;
	wire[31:0] id_reg_data2;
	reg [4:0] id_reg_addr1;
	reg [4:0] id_reg_addr2;
	
	regfile regfile0 (
		// input
		.clk   (clk         ),
		.rst   (rst         ),
		.we    (wb_we       ),
		.waddr (wb_reg_waddr),
		.wdata (wb_reg_wdata),
		.re1   (id_re1      ),
		.re2   (id_re2      ),
		.raddr1(id_reg_addr1),
		.raddr2(id_reg_addr2),
		// output
		.rdata1(id_reg_data1),
		.rdata2(id_reg_data2)
	);

initial begin
	
//reg banks
$display("REGISTER 1: %d = %b",id_reg_addr1, id_reg_data1 );
$display("REGISTER 2: %d = %b",id_reg_addr2, id_reg_data2 );
#5 id_reg_addr1= 5'b00000; id_reg_addr2= 5'b00000;
 $display("REGISTER 1: %d = %b",id_reg_addr1, id_reg_data1 );
$display("REGISTER 2: %d = %b",id_reg_addr2, id_reg_data2 );
#5 $display("REGISTER 1: %d = %b",id_reg_addr1, id_reg_data1 );
$display("REGISTER 2: %d = %b",id_reg_addr2, id_reg_data2 );

 end 
endmodule // regfile