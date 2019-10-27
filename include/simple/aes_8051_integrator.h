#ifndef AES_8051_INTEGRATOR_H__
#define AES_8051_INTEGRATOR_H__

#include <ilang/ilang++.h>
#include <ilang/ila/instr_lvl_abs.h>
#include <ilang/ila/instr.h>

using namespace ilang;

#define AES_START 0xff00
#define AES_STATE 0xff01
#define AES_ADDR 0xff02
#define AES_LENGTH 0xff04
#define AES_KEY 0xff20
#define AES_CNT 0xff10
#define AES_END 0xff40

#define CMD_NOP 0
#define CMD_READ 1
#define CMD_WRITE 2

#define AES_STATE_IDLE 0
#define AES_STATE_READ_DATA 1
#define AES_STATE_OPERATE 2
#define AES_STATE_WRITE_DATA 3

void AddAESTo8051(const InstrLvlAbsPtr& model_ptr);

//ExprRef slice_read(const ExprRef& reg, const ExprRef& idx,
//                          unsigned long base_addr, unsigned no_slice,
//                          unsigned slice_width);

ExprRef slice_update(const ExprRef& reg, const ExprRef& idx,
                     const ExprRef& input_slice,
                     unsigned long base_addr, unsigned no_slice,
                     unsigned slice_width);

#endif // AES_8051_INTEGRATOR_H__
