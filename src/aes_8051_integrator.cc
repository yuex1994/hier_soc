#include <simple/aes_8051_integrator.h> 

using namespace ilang;
ExprRef slice_update(const ExprRef& reg, const ExprRef& idx,
                     const ExprRef& input_slice, unsigned long base_addr,
                     unsigned num_slice, unsigned slice_width) {
  auto new_value =
      Ite(idx - base_addr == 0, input_slice, reg(slice_width - 1, 0));
  for (int i = 1; i < num_slice; ++i)
    new_value =
        Concat(Ite(idx - base_addr == i, input_slice,
                   reg(slice_width * i + slice_width - 1, slice_width * i)),
               new_value);
  return new_value;
}

void AddAESTo8051(const InstrLvlAbsPtr& model_ptr) {
  auto address = model_ptr->NewBvState("aes_address", 16);
  auto length = model_ptr->NewBvState("aes_length", 16);
  auto key = model_ptr->NewBvState("aes_key", 128);
  auto counter = model_ptr->NewBvState("aes_counter", 128);
  auto status = model_ptr->NewBvState("aes_status" , 2  );

  
  {
    auto write_aes_instr = model_ptr->instr(240);
    auto DPH = model_ptr->state("DPH");
    auto DPL = model_ptr->state("DPL");
    auto ACC = model_ptr->state("ACC");
    auto XRAM = model_ptr->state("XRAM");
    auto movx_address = Concat(DPH, DPL);
    auto length_update = Ite(status == BvConst(AES_STATE_IDLE, 2), 
    			 Ite(movx_address == BvConst(AES_LENGTH, 16), Concat(Extract(length, 15, 8), ACC),
    			 Ite(movx_address == BvConst(AES_LENGTH + 1, 16), Concat(ACC, Extract(length, 7, 0)), length)), length);
    auto address_update = Ite(status == BvConst(AES_STATE_IDLE, 2), 
    			  Ite(movx_address == BvConst(AES_ADDR, 16), Concat(Extract(address, 15, 8), ACC),
    			  Ite(movx_address == BvConst(AES_ADDR + 1, 16), Concat(ACC, Extract(address, 7, 0)), address)), address);
    auto key_update = Ite(status == BvConst(AES_STATE_IDLE, 2), slice_update(key, movx_address, ACC, AES_KEY, 16, 8), key);
    auto counter_update = Ite(status == BvConst(AES_STATE_IDLE, 2), slice_update(counter, movx_address, ACC, AES_CNT, 16, 8), counter);
    auto status_update = Ite(status == BvConst(AES_STATE_IDLE, 2), Ite(movx_address == BvConst(AES_START, 16), BvConst(1, 2), status), status);
    auto XRAM_update = Ite(status == BvConst(AES_STATE_IDLE, 2), Ite((movx_address < AES_START) | (movx_address >= AES_END), Store(XRAM, movx_address, ACC), XRAM), XRAM); 

    write_aes_instr->set_update(length, length_update.get()); 
    write_aes_instr->set_update(address, address_update.get()); 
    write_aes_instr->set_update(key, key_update.get()); 
    write_aes_instr->set_update(counter, counter_update.get()); 
    write_aes_instr->set_update(status, status_update.get());
    write_aes_instr->set_update(XRAM, XRAM_update.get());

  }


}


