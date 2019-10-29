module ila_8051_aes_top(rst, clk, oc8051_ROM_rdata_0, oc8051_ROM_rdata_1, oc8051_ROM_rdata_2);

input rst, clk;

wire [255:0] __ILA_oc8051_grant__ = 256'hffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff;
wire [9:0] __ILA_AES_grant__ = 16'hffff;

wire [9:0] __ILA_AES_grant__ = 16'hffff;

wire [159:0] __ILA__sha__grant__ = 160'hffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff;

input [7:0] oc8051_ROM_rdata_0;
input [7:0] oc8051_ROM_rdata_1;
input [7:0] oc8051_ROM_rdata_2;

wire [1:0] cmd = (XRAM_WRITE) ? 2 : 1;
wire [15:0] XRAM_ADDR;
wire [7:0] XRAM_DATA_IN, XRAM_DATA_OUT;
wire XRAM_WRITE;

wire __8051_START__ = 1;


oc8051 oc8051_1(.clk(clk),
		.rst(rst),
		.__START__(__8051_START__),
		.oc8051_ROM_rdata_0(oc8051_ROM_rdata_0),
		.oc8051_ROM_rdata_1(oc8051_ROM_rdata_1),
		.oc8051_ROM_rdata_2(oc8051_ROM_rdata_2),
		.XRAM_ADDR(XRAM_ADDR),
		.XRAM_DATA_IN(XRAM_DATA_IN),
		.XRAM_DATA_OUT(XRAM_DATA_OUT),
		.XRAM_WRITE(XRAM_WRITE));


/*
oc8051 oc8051_1(.clk(clk),
		.rst(rst),
		.__ILA_oc8051_grant__(__ILA_oc8051_grant__),
		.oc8051_ROM_rdata_0(oc8051_ROM_rdata_0),
		.oc8051_ROM_rdata_1(oc8051_ROM_rdata_1),
		.oc8051_ROM_rdata_2(oc8051_ROM_rdata_2),
		.XRAM_ADDR(XRAM_ADDR),
		.XRAM_DATA_IN(XRAM_DATA_IN),
		.XRAM_DATA_OUT(XRAM_DATA_OUT),
		.XRAM_WRITE(XRAM_WRITE));
*/
AES AES_1(.clk(clk), 
    .rst(rst),
    .__ILA_AES_grant__(__ILA_AES_grant__),
    .cmd(cmd),
    .cmdaddr(XRAM_ADDR),
    .cmddata(XRAM_DATA_OUT)
    );


sha SHA_1(.clk(clk), 
    .rst(rst),
    .__ILA_SHA_grant__(__ILA_SHA_grant__),
    .cmd(cmd),
    .cmdaddr(XRAM_ADDR),
    .cmddata(XRAM_DATA_OUT)
    );

endmodule
