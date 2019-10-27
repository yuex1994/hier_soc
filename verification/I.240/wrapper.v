/* PREHEADER */

`define true  1'b1

`define false 1'b0

/* END OF PREHEADER */
module wrapper(
__ILA_I_oc8051_ROM_rdata_0,
__ILA_I_oc8051_ROM_rdata_1,
__ILA_I_oc8051_ROM_rdata_2,
clk,
dummy_reset,
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
__ILA_SO_oc8051_ROM_addr_2,
__m0__,
__m10__,
__m11__,
__m12__,
__m13__,
__m14__,
__m15__,
__m16__,
__m17__,
__m18__,
__m19__,
__m1__,
__m20__,
__m21__,
__m22__,
__m23__,
__m24__,
__m25__,
__m26__,
__m27__,
__m28__,
__m29__,
__m2__,
__m30__,
__m31__,
__m32__,
__m33__,
__m34__,
__m35__,
__m36__,
__m37__,
__m38__,
__m39__,
__m3__,
__m40__,
__m41__,
__m42__,
__m43__,
__m44__,
__m45__,
__m46__,
__m47__,
__m48__,
__m49__,
__m4__,
__m50__,
__m51__,
__m52__,
__m53__,
__m54__,
__m55__,
__m56__,
__m57__,
__m58__,
__m59__,
__m5__,
__m60__,
__m61__,
__m62__,
__m63__,
__m64__,
__m65__,
__m66__,
__m67__,
__m68__,
__m69__,
__m6__,
__m70__,
__m71__,
__m72__,
__m73__,
__m74__,
__m75__,
__m76__,
__m77__,
__m78__,
__m79__,
__m7__,
__m8__,
__m9__,
__CYCLE_CNT__,
__START__,
__STARTED__,
__ENDED__,
__RESETED__
);
input      [7:0] __ILA_I_oc8051_ROM_rdata_0;
input      [7:0] __ILA_I_oc8051_ROM_rdata_1;
input      [7:0] __ILA_I_oc8051_ROM_rdata_2;
input            clk;
input            dummy_reset;
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
output            __m0__;
output            __m10__;
output            __m11__;
output            __m12__;
output            __m13__;
output            __m14__;
output            __m15__;
output            __m16__;
output            __m17__;
output            __m18__;
output            __m19__;
output            __m1__;
output            __m20__;
output            __m21__;
output            __m22__;
output            __m23__;
output            __m24__;
output            __m25__;
output            __m26__;
output            __m27__;
output            __m28__;
output            __m29__;
output            __m2__;
output            __m30__;
output            __m31__;
output            __m32__;
output            __m33__;
output            __m34__;
output            __m35__;
output            __m36__;
output            __m37__;
output            __m38__;
output            __m39__;
output            __m3__;
output            __m40__;
output            __m41__;
output            __m42__;
output            __m43__;
output            __m44__;
output            __m45__;
output            __m46__;
output            __m47__;
output            __m48__;
output            __m49__;
output            __m4__;
output            __m50__;
output            __m51__;
output            __m52__;
output            __m53__;
output            __m54__;
output            __m55__;
output            __m56__;
output            __m57__;
output            __m58__;
output            __m59__;
output            __m5__;
output            __m60__;
output            __m61__;
output            __m62__;
output            __m63__;
output            __m64__;
output            __m65__;
output            __m66__;
output            __m67__;
output            __m68__;
output            __m69__;
output            __m6__;
output            __m70__;
output            __m71__;
output            __m72__;
output            __m73__;
output            __m74__;
output            __m75__;
output            __m76__;
output            __m77__;
output            __m78__;
output            __m79__;
output            __m7__;
output            __m8__;
output            __m9__;
output reg      [7:0] __CYCLE_CNT__;
output reg            __START__;
output reg            __STARTED__;
output reg            __ENDED__;
output reg            __RESETED__;
(* keep *) wire            __IEND__;
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
(* keep *) wire            __ILA_oc8051_decode_of_I__DOT__240__;
(* keep *) wire            __ILA_oc8051_valid__;
(* keep *) wire     [15:0] __IMEM_XRAM_0_waddr;
(* keep *) wire      [7:0] __IMEM_XRAM_0_wdata;
(* keep *) wire            __IMEM_XRAM_0_wen;
(* keep *) wire            __ISSUE__;
(* keep *) wire            __m0__;
(* keep *) wire            __m10__;
(* keep *) wire            __m11__;
(* keep *) wire            __m12__;
(* keep *) wire            __m13__;
(* keep *) wire            __m14__;
(* keep *) wire            __m15__;
(* keep *) wire            __m16__;
(* keep *) wire            __m17__;
(* keep *) wire            __m18__;
(* keep *) wire            __m19__;
(* keep *) wire            __m1__;
(* keep *) wire            __m20__;
(* keep *) wire            __m21__;
(* keep *) wire            __m22__;
(* keep *) wire            __m23__;
(* keep *) wire            __m24__;
(* keep *) wire            __m25__;
(* keep *) wire            __m26__;
(* keep *) wire            __m27__;
(* keep *) wire            __m28__;
(* keep *) wire            __m29__;
(* keep *) wire            __m2__;
(* keep *) wire            __m30__;
(* keep *) wire            __m31__;
(* keep *) wire            __m32__;
(* keep *) wire            __m33__;
(* keep *) wire            __m34__;
(* keep *) wire            __m35__;
(* keep *) wire            __m36__;
(* keep *) wire            __m37__;
(* keep *) wire            __m38__;
(* keep *) wire            __m39__;
(* keep *) wire            __m3__;
(* keep *) wire            __m40__;
(* keep *) wire            __m41__;
(* keep *) wire            __m42__;
(* keep *) wire            __m43__;
(* keep *) wire            __m44__;
(* keep *) wire            __m45__;
(* keep *) wire            __m46__;
(* keep *) wire            __m47__;
(* keep *) wire            __m48__;
(* keep *) wire            __m49__;
(* keep *) wire            __m4__;
(* keep *) wire            __m50__;
(* keep *) wire            __m51__;
(* keep *) wire            __m52__;
(* keep *) wire            __m53__;
(* keep *) wire            __m54__;
(* keep *) wire            __m55__;
(* keep *) wire            __m56__;
(* keep *) wire            __m57__;
(* keep *) wire            __m58__;
(* keep *) wire            __m59__;
(* keep *) wire            __m5__;
(* keep *) wire            __m60__;
(* keep *) wire            __m61__;
(* keep *) wire            __m62__;
(* keep *) wire            __m63__;
(* keep *) wire            __m64__;
(* keep *) wire            __m65__;
(* keep *) wire            __m66__;
(* keep *) wire            __m67__;
(* keep *) wire            __m68__;
(* keep *) wire            __m69__;
(* keep *) wire            __m6__;
(* keep *) wire            __m70__;
(* keep *) wire            __m71__;
(* keep *) wire            __m72__;
(* keep *) wire            __m73__;
(* keep *) wire            __m74__;
(* keep *) wire            __m75__;
(* keep *) wire            __m76__;
(* keep *) wire            __m77__;
(* keep *) wire            __m78__;
(* keep *) wire            __m79__;
(* keep *) wire            __m7__;
(* keep *) wire            __m8__;
(* keep *) wire            __m9__;
wire            clk;
(* keep *) wire            dummy_reset;
wire            rst;
always @(posedge clk) begin
if (rst) __CYCLE_CNT__ <= 0;
else if ( ( __START__ || __STARTED__ ) &&  __CYCLE_CNT__ < 132) __CYCLE_CNT__ <= __CYCLE_CNT__ + 1;
end
always @(posedge clk) begin
if (rst) __START__ <= 0;
else if (__START__ || __STARTED__) __START__ <= 0;
else if (__ISSUE__) __START__ <= 1;
end
always @(posedge clk) begin
if (rst) __STARTED__ <= 0;
else if (__START__) __STARTED__ <= 1;
end
always @(posedge clk) begin
if (rst) __ENDED__ <= 0;
else if (__IEND__) __ENDED__ <= 1;
end
always @(posedge clk) begin
if (rst) __RESETED__ <= 1;
end
assign __m0__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_acc1.data2_in == __ILA_SO_ACC ;
assign __m1__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_acc1.data_in == __ILA_SO_ACC ;
assign __m2__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_acc1.acc == __ILA_SO_ACC ;
assign __m3__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_acc1.data_out == __ILA_SO_ACC ;
assign __m4__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_b_register.data_out == __ILA_SO_B ;
assign __m5__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_b_register.data_in == __ILA_SO_B ;
assign __m6__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_dptr1.data_hi == __ILA_SO_DPH ;
assign __m7__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_dptr1.data2_in == __ILA_SO_DPH ;
assign __m8__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_dptr1.data_in == __ILA_SO_DPH ;
assign __m9__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_dptr1.data_lo == __ILA_SO_DPL ;
assign __m10__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_dptr1.data_in == __ILA_SO_DPL ;
assign __m11__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_dptr1.data_in == __ILA_SO_DPL ;
assign __m12__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_int1.ie == __ILA_SO_IE ;
assign __m13__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_int1.ip == __ILA_SO_IP ;
assign __m14__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_ports1.p0_out == __ILA_SO_P0 ;
assign __m15__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_ports1.data_in == __ILA_SO_P0 ;
assign __m16__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_ports1.p1_out == __ILA_SO_P1 ;
assign __m17__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_ports1.data_in == __ILA_SO_P1 ;
assign __m18__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_ports1.p2_out == __ILA_SO_P2 ;
assign __m19__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_ports1.data_in == __ILA_SO_P2 ;
assign __m20__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_ports1.p3_out == __ILA_SO_P3 ;
assign __m21__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_ports1.data_in == __ILA_SO_P3 ;
assign __m22__ = m1.oc8051_top_1.oc8051_memory_interface1.pc == __ILA_SO_PC ;
assign __m23__ = {m1.oc8051_top_1.oc8051_sfr1.oc8051_psw1.data, m1.oc8051_top_1.oc8051_sfr1.oc8051_psw1.p} == __ILA_SO_PSW ;
assign __m24__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_sp1.sp_out == __ILA_SO_SP ;
assign __m25__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_int1.tcon == __ILA_SO_TCON ;
assign __m26__ = m1.oc8051_xiommu1.aes_top_i.aes_reg_opaddr_i.reg_out == __ILA_SO_aes_address ;
assign __m27__ = m1.oc8051_xiommu1.aes_top_i.aes_reg_ctr_i.reg_out == __ILA_SO_aes_counter ;
assign __m28__ = m1.oc8051_xiommu1.aes_top_i.aes_reg_key0_i.reg_out == __ILA_SO_aes_key ;
assign __m29__ = m1.oc8051_xiommu1.aes_top_i.aes_reg_oplen_i.reg_out == __ILA_SO_aes_length ;
assign __m30__ = m1.oc8051_xiommu1.aes_top_i.aes_reg_state == __ILA_SO_aes_status ;
assign __m31__ = m1.oc8051_top_1.iram_0 == __ILA_SO_oc8051_IRAM_data_0 ;
assign __m32__ = m1.oc8051_top_1.oc8051_ram_top1.oc8051_idata.wr_data == __ILA_SO_oc8051_IRAM_data_0 ;
assign __m33__ = m1.oc8051_top_1.iram_1 == __ILA_SO_oc8051_IRAM_data_1 ;
assign __m34__ = m1.oc8051_top_1.oc8051_ram_top1.oc8051_idata.wr_data == __ILA_SO_oc8051_IRAM_data_1 ;
assign __m35__ = m1.oc8051_top_1.iram_10 == __ILA_SO_oc8051_IRAM_data_10 ;
assign __m36__ = m1.oc8051_top_1.iram_11 == __ILA_SO_oc8051_IRAM_data_11 ;
assign __m37__ = m1.oc8051_top_1.iram_12 == __ILA_SO_oc8051_IRAM_data_12 ;
assign __m38__ = m1.oc8051_top_1.iram_13 == __ILA_SO_oc8051_IRAM_data_13 ;
assign __m39__ = m1.oc8051_top_1.iram_14 == __ILA_SO_oc8051_IRAM_data_14 ;
assign __m40__ = m1.oc8051_top_1.iram_15 == __ILA_SO_oc8051_IRAM_data_15 ;
assign __m41__ = m1.oc8051_top_1.iram_2 == __ILA_SO_oc8051_IRAM_data_2 ;
assign __m42__ = m1.oc8051_top_1.iram_3 == __ILA_SO_oc8051_IRAM_data_3 ;
assign __m43__ = m1.oc8051_top_1.iram_4 == __ILA_SO_oc8051_IRAM_data_4 ;
assign __m44__ = m1.oc8051_top_1.iram_5 == __ILA_SO_oc8051_IRAM_data_5 ;
assign __m45__ = m1.oc8051_top_1.iram_6 == __ILA_SO_oc8051_IRAM_data_6 ;
assign __m46__ = m1.oc8051_top_1.iram_7 == __ILA_SO_oc8051_IRAM_data_7 ;
assign __m47__ = m1.oc8051_top_1.iram_8 == __ILA_SO_oc8051_IRAM_data_8 ;
assign __m48__ = m1.oc8051_top_1.iram_9 == __ILA_SO_oc8051_IRAM_data_9 ;
assign __m49__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_acc1.data2_in == __ILA_SO_ACC ;
assign __m50__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_acc1.data_in == __ILA_SO_ACC ;
assign __m51__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_acc1.acc == __ILA_SO_ACC ;
assign __m52__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_acc1.data_out == __ILA_SO_ACC ;
assign __m53__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_b_register.data_out == __ILA_SO_B ;
assign __m54__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_b_register.data_in == __ILA_SO_B ;
assign __m55__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_dptr1.data_hi == __ILA_SO_DPH ;
assign __m56__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_dptr1.data2_in == __ILA_SO_DPH ;
assign __m57__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_dptr1.data_in == __ILA_SO_DPH ;
assign __m58__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_dptr1.data_lo == __ILA_SO_DPL ;
assign __m59__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_dptr1.data_in == __ILA_SO_DPL ;
assign __m60__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_dptr1.data_in == __ILA_SO_DPL ;
assign __m61__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_int1.ie == __ILA_SO_IE ;
assign __m62__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_int1.ip == __ILA_SO_IP ;
assign __m63__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_ports1.p0_out == __ILA_SO_P0 ;
assign __m64__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_ports1.data_in == __ILA_SO_P0 ;
assign __m65__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_ports1.p1_out == __ILA_SO_P1 ;
assign __m66__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_ports1.data_in == __ILA_SO_P1 ;
assign __m67__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_ports1.p2_out == __ILA_SO_P2 ;
assign __m68__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_ports1.data_in == __ILA_SO_P2 ;
assign __m69__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_ports1.p3_out == __ILA_SO_P3 ;
assign __m70__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_ports1.data_in == __ILA_SO_P3 ;
assign __m71__ = m1.oc8051_top_1.oc8051_memory_interface1.pc == __ILA_SO_PC ;
assign __m72__ = {m1.oc8051_top_1.oc8051_sfr1.oc8051_psw1.data, m1.oc8051_top_1.oc8051_sfr1.oc8051_psw1.p} == __ILA_SO_PSW ;
assign __m73__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_sp1.sp_out == __ILA_SO_SP ;
assign __m74__ = m1.oc8051_top_1.oc8051_sfr1.oc8051_int1.tcon == __ILA_SO_TCON ;
assign __m75__ = m1.oc8051_xiommu1.aes_top_i.aes_reg_opaddr_i.reg_out == __ILA_SO_aes_address ;
assign __m76__ = m1.oc8051_xiommu1.aes_top_i.aes_reg_ctr_i.reg_out == __ILA_SO_aes_counter ;
assign __m77__ = m1.oc8051_xiommu1.aes_top_i.aes_reg_key0_i.reg_out == __ILA_SO_aes_key ;
assign __m78__ = m1.oc8051_xiommu1.aes_top_i.aes_reg_oplen_i.reg_out == __ILA_SO_aes_length ;
assign __m79__ = m1.oc8051_xiommu1.aes_top_i.aes_reg_state == __ILA_SO_aes_status ;
assign __IEND__ = (`false|| (m1.oc8051_top_1.pc_change == 1)) && __STARTED__ && (~ __ENDED__) ;
assign __ISSUE__ = 1 ;

oc8051__DOT__I__DOT__240 m0 (
   .__START__(__START__),
   .clk(clk),
   .oc8051_ROM_rdata_0(__ILA_I_oc8051_ROM_rdata_0),
   .oc8051_ROM_rdata_1(__ILA_I_oc8051_ROM_rdata_1),
   .oc8051_ROM_rdata_2(__ILA_I_oc8051_ROM_rdata_2),
   .rst(rst),
   .__ILA_oc8051_decode_of_I__DOT__240__(__ILA_oc8051_decode_of_I__DOT__240__),
   .__ILA_oc8051_valid__(__ILA_oc8051_valid__),
   .XRAM_data0(__IMEM_XRAM_0_wdata),
   .XRAM_addr0(__IMEM_XRAM_0_waddr),
   .XRAM_wen0(__IMEM_XRAM_0_wen),
   .ACC(__ILA_SO_ACC),
   .B(__ILA_SO_B),
   .DPH(__ILA_SO_DPH),
   .DPL(__ILA_SO_DPL),
   .IE(__ILA_SO_IE),
   .IP(__ILA_SO_IP),
   .P0(__ILA_SO_P0),
   .P1(__ILA_SO_P1),
   .P2(__ILA_SO_P2),
   .P3(__ILA_SO_P3),
   .PC(__ILA_SO_PC),
   .PCON(__ILA_SO_PCON),
   .PSW(__ILA_SO_PSW),
   .SBUF(__ILA_SO_SBUF),
   .SCON(__ILA_SO_SCON),
   .SP(__ILA_SO_SP),
   .TCON(__ILA_SO_TCON),
   .TH0(__ILA_SO_TH0),
   .TH1(__ILA_SO_TH1),
   .TL0(__ILA_SO_TL0),
   .TL1(__ILA_SO_TL1),
   .TMOD(__ILA_SO_TMOD),
   .XRAM_ADDR(__ILA_SO_XRAM_ADDR),
   .XRAM_DATA_IN(__ILA_SO_XRAM_DATA_IN),
   .XRAM_DATA_OUT(__ILA_SO_XRAM_DATA_OUT),
   .oc8051_IRAM_data_0(__ILA_SO_oc8051_IRAM_data_0),
   .oc8051_IRAM_data_1(__ILA_SO_oc8051_IRAM_data_1),
   .oc8051_IRAM_data_2(__ILA_SO_oc8051_IRAM_data_2),
   .oc8051_IRAM_data_3(__ILA_SO_oc8051_IRAM_data_3),
   .oc8051_IRAM_data_4(__ILA_SO_oc8051_IRAM_data_4),
   .oc8051_IRAM_data_5(__ILA_SO_oc8051_IRAM_data_5),
   .oc8051_IRAM_data_6(__ILA_SO_oc8051_IRAM_data_6),
   .oc8051_IRAM_data_7(__ILA_SO_oc8051_IRAM_data_7),
   .oc8051_IRAM_data_8(__ILA_SO_oc8051_IRAM_data_8),
   .oc8051_IRAM_data_9(__ILA_SO_oc8051_IRAM_data_9),
   .oc8051_IRAM_data_10(__ILA_SO_oc8051_IRAM_data_10),
   .oc8051_IRAM_data_11(__ILA_SO_oc8051_IRAM_data_11),
   .oc8051_IRAM_data_12(__ILA_SO_oc8051_IRAM_data_12),
   .oc8051_IRAM_data_13(__ILA_SO_oc8051_IRAM_data_13),
   .oc8051_IRAM_data_14(__ILA_SO_oc8051_IRAM_data_14),
   .oc8051_IRAM_data_15(__ILA_SO_oc8051_IRAM_data_15),
   .oc8051_ROM_addr_0(__ILA_SO_oc8051_ROM_addr_0),
   .oc8051_ROM_addr_1(__ILA_SO_oc8051_ROM_addr_1),
   .oc8051_ROM_addr_2(__ILA_SO_oc8051_ROM_addr_2),
   .aes_address(__ILA_SO_aes_address),
   .aes_length(__ILA_SO_aes_length),
   .aes_key(__ILA_SO_aes_key),
   .aes_counter(__ILA_SO_aes_counter),
   .aes_status(__ILA_SO_aes_status),
   .__COUNTER_start__n1()
);
soc_8051 m1(
    .clk(clk),
    .rst(dummy_reset)
);
endmodule
