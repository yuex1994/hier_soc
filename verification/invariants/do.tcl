analyze -sva  \
  soc_8051.v \
  aes_128.v \
  aes_round.v \
  aes_table.v \
  aes_top.v \
  oc8051_defines.v \
  oc8051_gm_top.v \
  oc8051_memarbiter.v \
  oc8051_timescale.v \
  oc8051_xiommu.v \
  oc8051_xram.v \
  reg16byte.v \
  reg2byte.v \
  wrapper.v

elaborate -top wrapper
clock clk
reset rst
assume -name additional_mapping_control_assume0 {m1.oc8051_top_1.ea_in == 1}
assume -name additional_mapping_control_assume1 {(m1.oc8051_xiommu1.oc8051_memarbiter_i.arbit_holder == 0) || (m1.oc8051_xiommu1.oc8051_memarbiter_i.arbit_holder == 1)}
assume -name additional_mapping_control_assume2 {m1.oc8051_top_1.wbd_ack_i == m1.oc8051_top_1.wbd_stb_o}
assume -name additional_mapping_control_assume3 {m1.oc8051_top_1.cxrom_data_out[7:0] == __ILA_I_oc8051_ROM_rdata_0}
assume -name additional_mapping_control_assume4 {m1.oc8051_top_1.op1 == __ILA_I_oc8051_ROM_rdata_0}
assume -name additional_mapping_control_assume5 {__ILA_SO_PSW[7:1] == m1.oc8051_top_1.oc8051_sfr1.oc8051_psw1.data}
assume -name additional_mapping_control_assume6 {__ILA_SO_PSW[0] == m1.oc8051_top_1.oc8051_sfr1.oc8051_psw1.p}
assume -name additional_mapping_control_assume7 {(~__START__) || (((~(m1.oc8051_top_1.oc8051_memory_interface1.op_pos == 0)) || (m1.oc8051_top_1.oc8051_memory_interface1.idat_old[7:0] == __ILA_I_oc8051_ROM_rdata_0)) && ((~(m1.oc8051_top_1.oc8051_memory_interface1.op_pos == 1)) || (m1.oc8051_top_1.oc8051_memory_interface1.idat_old[15:8] == __ILA_I_oc8051_ROM_rdata_0)) && ((~(m1.oc8051_top_1.oc8051_memory_interface1.op_pos == 2)) || (m1.oc8051_top_1.oc8051_memory_interface1.idat_old[23:16] == __ILA_I_oc8051_ROM_rdata_0)) && ((~(m1.oc8051_top_1.oc8051_memory_interface1.op_pos == 3)) || (m1.oc8051_top_1.oc8051_memory_interface1.idat_old[31:24] == __ILA_I_oc8051_ROM_rdata_0)) && ((~(m1.oc8051_top_1.oc8051_memory_interface1.op_pos == 4)) || (m1.oc8051_top_1.oc8051_memory_interface1.idat_cur[7:0] == __ILA_I_oc8051_ROM_rdata_0)) && ((~(m1.oc8051_top_1.oc8051_memory_interface1.op_pos > 4)) || (m1.oc8051_top_1.oc8051_memory_interface1.idat_cur[15:8] == __ILA_I_oc8051_ROM_rdata_0)))}
assume -name additional_mapping_control_assume8 {(~__START__) || (((~(m1.oc8051_top_1.oc8051_memory_interface1.op_pos == 0)) || (m1.oc8051_top_1.oc8051_memory_interface1.idat_old[15:8] == __ILA_I_oc8051_ROM_rdata_1)) && ((~(m1.oc8051_top_1.oc8051_memory_interface1.op_pos == 1)) || (m1.oc8051_top_1.oc8051_memory_interface1.idat_old[23:16] == __ILA_I_oc8051_ROM_rdata_1)) && ((~(m1.oc8051_top_1.oc8051_memory_interface1.op_pos == 2)) || (m1.oc8051_top_1.oc8051_memory_interface1.idat_old[31:24] == __ILA_I_oc8051_ROM_rdata_1)) && ((~(m1.oc8051_top_1.oc8051_memory_interface1.op_pos == 3)) || (m1.oc8051_top_1.oc8051_memory_interface1.idat_cur[7:0] == __ILA_I_oc8051_ROM_rdata_1)) && ((~(m1.oc8051_top_1.oc8051_memory_interface1.op_pos == 4)) || (m1.oc8051_top_1.oc8051_memory_interface1.idat_cur[15:8] == __ILA_I_oc8051_ROM_rdata_1)) && ((~(m1.oc8051_top_1.oc8051_memory_interface1.op_pos > 4)) || (m1.oc8051_top_1.oc8051_memory_interface1.idat_cur[23:16] == __ILA_I_oc8051_ROM_rdata_1)))}
assume -name additional_mapping_control_assume9 {(~__START__) || (((~(m1.oc8051_top_1.oc8051_memory_interface1.op_pos == 0)) || (m1.oc8051_top_1.oc8051_memory_interface1.idat_old[23:16] == __ILA_I_oc8051_ROM_rdata_2)) && ((~(m1.oc8051_top_1.oc8051_memory_interface1.op_pos == 1)) || (m1.oc8051_top_1.oc8051_memory_interface1.idat_old[31:24] == __ILA_I_oc8051_ROM_rdata_2)) && ((~(m1.oc8051_top_1.oc8051_memory_interface1.op_pos == 2)) || (m1.oc8051_top_1.oc8051_memory_interface1.idat_cur[7:0] == __ILA_I_oc8051_ROM_rdata_2)) && ((~(m1.oc8051_top_1.oc8051_memory_interface1.op_pos == 3)) || (m1.oc8051_top_1.oc8051_memory_interface1.idat_cur[15:8] == __ILA_I_oc8051_ROM_rdata_2)) && ((~(m1.oc8051_top_1.oc8051_memory_interface1.op_pos == 4)) || (m1.oc8051_top_1.oc8051_memory_interface1.idat_cur[23:16] == __ILA_I_oc8051_ROM_rdata_2)) && ((~(m1.oc8051_top_1.oc8051_memory_interface1.op_pos > 4)) || (m1.oc8051_top_1.oc8051_memory_interface1.idat_cur[31:24] == __ILA_I_oc8051_ROM_rdata_2)))}
assume -name additional_mapping_control_assume10 {(~__STARTED__) || (__ILA_I_oc8051_ROM_rdata_0 == 8'ha5)}
assume -name additional_mapping_control_assume11 {m1.oc8051_top_1.oc8051_sfr1.oc8051_psw1.p == 0}
assume -name additional_mapping_control_assume12 {m1.oc8051_top_1.oc8051_memory_interface1.int_ack_t == 0}
assert -name invariant_assert0 {((m1.oc8051_top_1.oc8051_memory_interface1.op_pos < 6))}
assert -name invariant_assert1 {((~(m1.oc8051_top_1.oc8051_memory_interface1.dack_ir == 1)) || (m1.oc8051_top_1.oc8051_decoder1.state != 0))}
assert -name invariant_assert2 {((~(m1.oc8051_top_1.oc8051_memory_interface1.cdone == 1)) || (m1.oc8051_top_1.oc8051_decoder1.state != 0))}
assert -name invariant_assert3 {((~((m1.oc8051_top_1.rd == 1) && (m1.oc8051_top_1.irom_out_of_rst == 1) && (m1.oc8051_top_1.oc8051_memory_interface1.pc_wr_r == 0) && (m1.oc8051_top_1.oc8051_memory_interface1.pc_wr_r2 == 0)) || (m1.oc8051_top_1.oc8051_memory_interface1.pc == m1.oc8051_top_1.oc8051_memory_interface1.pc_ref)))}
