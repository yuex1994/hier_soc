/* PREHEADER */

`define true  1'b1

`define false 1'b0

/* END OF PREHEADER */
module wrapper(
__ILA_I_oc8051_ROM_rdata_0,
__ILA_I_oc8051_ROM_rdata_1,
__ILA_I_oc8051_ROM_rdata_2,
clk,
rst,
__ILA_SO_ACC,
__ILA_SO_B,
__ILA_SO_DPH,
__ILA_SO_DPL,
__ILA_SO_IE,
__ILA_SO_IP,
__ILA_SO_P0,
__ILA_SO_P1,
__ILA_SO_P2,
__ILA_SO_P3,
__ILA_SO_PC,
__ILA_SO_PCON,
__ILA_SO_PSW,
__ILA_SO_SBUF,
__ILA_SO_SCON,
__ILA_SO_SP,
__ILA_SO_TCON,
__ILA_SO_TH0,
__ILA_SO_TH1,
__ILA_SO_TL0,
__ILA_SO_TL1,
__ILA_SO_TMOD,
__ILA_SO_XRAM_ADDR,
__ILA_SO_XRAM_DATA_IN,
__ILA_SO_XRAM_DATA_OUT,
__ILA_SO_aes_address,
__ILA_SO_aes_counter,
__ILA_SO_aes_key,
__ILA_SO_aes_length,
__ILA_SO_aes_status,
__ILA_SO_oc8051_IRAM_data_0,
__ILA_SO_oc8051_IRAM_data_1,
__ILA_SO_oc8051_IRAM_data_10,
__ILA_SO_oc8051_IRAM_data_11,
__ILA_SO_oc8051_IRAM_data_12,
__ILA_SO_oc8051_IRAM_data_13,
__ILA_SO_oc8051_IRAM_data_14,
__ILA_SO_oc8051_IRAM_data_15,
__ILA_SO_oc8051_IRAM_data_2,
__ILA_SO_oc8051_IRAM_data_3,
__ILA_SO_oc8051_IRAM_data_4,
__ILA_SO_oc8051_IRAM_data_5,
__ILA_SO_oc8051_IRAM_data_6,
__ILA_SO_oc8051_IRAM_data_7,
__ILA_SO_oc8051_IRAM_data_8,
__ILA_SO_oc8051_IRAM_data_9,
__ILA_SO_oc8051_ROM_addr_0,
__ILA_SO_oc8051_ROM_addr_1,
__ILA_SO_oc8051_ROM_addr_2
);
input      [7:0] __ILA_I_oc8051_ROM_rdata_0;
input      [7:0] __ILA_I_oc8051_ROM_rdata_1;
input      [7:0] __ILA_I_oc8051_ROM_rdata_2;
input            clk;
input            rst;
output      [7:0] __ILA_SO_ACC;
output      [7:0] __ILA_SO_B;
output      [7:0] __ILA_SO_DPH;
output      [7:0] __ILA_SO_DPL;
output      [7:0] __ILA_SO_IE;
output      [7:0] __ILA_SO_IP;
output      [7:0] __ILA_SO_P0;
output      [7:0] __ILA_SO_P1;
output      [7:0] __ILA_SO_P2;
output      [7:0] __ILA_SO_P3;
output     [15:0] __ILA_SO_PC;
output      [7:0] __ILA_SO_PCON;
output      [7:0] __ILA_SO_PSW;
output      [7:0] __ILA_SO_SBUF;
output      [7:0] __ILA_SO_SCON;
output      [7:0] __ILA_SO_SP;
output      [7:0] __ILA_SO_TCON;
output      [7:0] __ILA_SO_TH0;
output      [7:0] __ILA_SO_TH1;
output      [7:0] __ILA_SO_TL0;
output      [7:0] __ILA_SO_TL1;
output      [7:0] __ILA_SO_TMOD;
output     [15:0] __ILA_SO_XRAM_ADDR;
output      [7:0] __ILA_SO_XRAM_DATA_IN;
output      [7:0] __ILA_SO_XRAM_DATA_OUT;
output     [15:0] __ILA_SO_aes_address;
output    [127:0] __ILA_SO_aes_counter;
output    [127:0] __ILA_SO_aes_key;
output     [15:0] __ILA_SO_aes_length;
output      [1:0] __ILA_SO_aes_status;
output      [7:0] __ILA_SO_oc8051_IRAM_data_0;
output      [7:0] __ILA_SO_oc8051_IRAM_data_1;
output      [7:0] __ILA_SO_oc8051_IRAM_data_10;
output      [7:0] __ILA_SO_oc8051_IRAM_data_11;
output      [7:0] __ILA_SO_oc8051_IRAM_data_12;
output      [7:0] __ILA_SO_oc8051_IRAM_data_13;
output      [7:0] __ILA_SO_oc8051_IRAM_data_14;
output      [7:0] __ILA_SO_oc8051_IRAM_data_15;
output      [7:0] __ILA_SO_oc8051_IRAM_data_2;
output      [7:0] __ILA_SO_oc8051_IRAM_data_3;
output      [7:0] __ILA_SO_oc8051_IRAM_data_4;
output      [7:0] __ILA_SO_oc8051_IRAM_data_5;
output      [7:0] __ILA_SO_oc8051_IRAM_data_6;
output      [7:0] __ILA_SO_oc8051_IRAM_data_7;
output      [7:0] __ILA_SO_oc8051_IRAM_data_8;
output      [7:0] __ILA_SO_oc8051_IRAM_data_9;
output     [15:0] __ILA_SO_oc8051_ROM_addr_0;
output     [15:0] __ILA_SO_oc8051_ROM_addr_1;
output     [15:0] __ILA_SO_oc8051_ROM_addr_2;
(* keep *) wire      [7:0] __ILA_I_oc8051_ROM_rdata_0;
(* keep *) wire      [7:0] __ILA_I_oc8051_ROM_rdata_1;
(* keep *) wire      [7:0] __ILA_I_oc8051_ROM_rdata_2;
(* keep *) wire      [7:0] __ILA_SO_ACC;
(* keep *) wire      [7:0] __ILA_SO_B;
(* keep *) wire      [7:0] __ILA_SO_DPH;
(* keep *) wire      [7:0] __ILA_SO_DPL;
(* keep *) wire      [7:0] __ILA_SO_IE;
(* keep *) wire      [7:0] __ILA_SO_IP;
(* keep *) wire      [7:0] __ILA_SO_P0;
(* keep *) wire      [7:0] __ILA_SO_P1;
(* keep *) wire      [7:0] __ILA_SO_P2;
(* keep *) wire      [7:0] __ILA_SO_P3;
(* keep *) wire     [15:0] __ILA_SO_PC;
(* keep *) wire      [7:0] __ILA_SO_PCON;
(* keep *) wire      [7:0] __ILA_SO_PSW;
(* keep *) wire      [7:0] __ILA_SO_SBUF;
(* keep *) wire      [7:0] __ILA_SO_SCON;
(* keep *) wire      [7:0] __ILA_SO_SP;
(* keep *) wire      [7:0] __ILA_SO_TCON;
(* keep *) wire      [7:0] __ILA_SO_TH0;
(* keep *) wire      [7:0] __ILA_SO_TH1;
(* keep *) wire      [7:0] __ILA_SO_TL0;
(* keep *) wire      [7:0] __ILA_SO_TL1;
(* keep *) wire      [7:0] __ILA_SO_TMOD;
(* keep *) wire     [15:0] __ILA_SO_XRAM_ADDR;
(* keep *) wire      [7:0] __ILA_SO_XRAM_DATA_IN;
(* keep *) wire      [7:0] __ILA_SO_XRAM_DATA_OUT;
(* keep *) wire     [15:0] __ILA_SO_aes_address;
(* keep *) wire    [127:0] __ILA_SO_aes_counter;
(* keep *) wire    [127:0] __ILA_SO_aes_key;
(* keep *) wire     [15:0] __ILA_SO_aes_length;
(* keep *) wire      [1:0] __ILA_SO_aes_status;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_0;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_1;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_10;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_11;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_12;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_13;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_14;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_15;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_2;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_3;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_4;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_5;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_6;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_7;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_8;
(* keep *) wire      [7:0] __ILA_SO_oc8051_IRAM_data_9;
(* keep *) wire     [15:0] __ILA_SO_oc8051_ROM_addr_0;
(* keep *) wire     [15:0] __ILA_SO_oc8051_ROM_addr_1;
(* keep *) wire     [15:0] __ILA_SO_oc8051_ROM_addr_2;
wire            clk;
wire            rst;

soc_8051 m1(
    .clk(clk),
    .rst(rst)
);
endmodule
