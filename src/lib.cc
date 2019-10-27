// lib.cc
// Synopsis: implementation of the library

#include <ilang/ilang++.h>
#include <iostream>
#include <simple/lib.h>
#include <ilang/util/log.h>

void DfsNoIramStore(const ExprPtr& expr) {
  if (expr->is_op()) {
    auto expr_uid = GetUidExprOp(expr);
    if (expr_uid == AST_UID_EXPR_OP::STORE)
      std::cout << "gg store" << std::endl;
  }
}
 
void ClearIramStore(const InstrLvlAbsPtr& model_ptr, int instr_idx, std::vector<ExprPtr>& tmp_iram_elements) {
  auto instr = model_ptr->instr(instr_idx);
  auto iram_update_expr = instr->update("IRAM");
  auto iram_state = model_ptr->state("IRAM");

  if (iram_state == iram_update_expr)
    return;
  if (iram_update_expr->is_op()) {
    auto update_uid = GetUidExprOp(iram_update_expr);
    if (update_uid == AST_UID_EXPR_OP::ITE) {
      auto arg_1 = iram_update_expr->arg(1);
      auto arg_2 = iram_update_expr->arg(2);
      int target_num = 0;
      if (arg_1->is_op()) {
        auto arg_1_uid = GetUidExprOp(arg_1);
	if (AST_UID_EXPR_OP::STORE) {
	  std::cout << "found target 1" << std::endl;
	  target_num++;
	}
	for (int i = 0; i < arg_1->arg_num(); i++) {
	  arg_1->arg(i)->DepthFirstVisit(DfsNoIramStore);	
	}
      }
      if (arg_2 == iram_state) {
	std::cout << "found target 2" << std::endl;
	target_num++;
      }
      if (target_num == 2) {
        auto cond = iram_update_expr->arg(0);
	auto addr = arg_1->arg(1);
	auto data = arg_1->arg(2);
	for (int i = 0; i < 16; i++) {
	 auto iram_state = tmp_iram_elements[i];
	 auto update_func = Ite(cond, Ite(Extract(addr, 3, 0) == BvConst(i, 4), data, iram_state), iram_state); 
	 instr->set_update(iram_state, update_func.get());
	}
      } else
        std::cout << "gg store" << std::endl;
    }
  }
}


void AddIromInputState(const InstrLvlAbsPtr& model_ptr) {
  auto data_0 = model_ptr->NewBvInput("oc8051_ROM_rdata_0", 8);
  auto data_1 = model_ptr->NewBvInput("oc8051_ROM_rdata_1", 8);
  auto data_2 = model_ptr->NewBvInput("oc8051_ROM_rdata_2", 8);
  auto addr_0 = model_ptr->NewBvState("oc8051_ROM_addr_0", 16);
  auto addr_1 = model_ptr->NewBvState("oc8051_ROM_addr_1", 16);
  auto addr_2 = model_ptr->NewBvState("oc8051_ROM_addr_2", 16);
}

void Model8051RemapMemInterface(const InstrLvlAbsPtr& model_ptr, std::vector<ExprPtr>& tmp_iram_elements, int instr_num) {
  auto addr_0 = model_ptr->state("oc8051_ROM_addr_0");
  auto addr_1 = model_ptr->state("oc8051_ROM_addr_1");
  auto addr_2 = model_ptr->state("oc8051_ROM_addr_2");

  //model_ptr->AddInput(data_0);
  // model_ptr->AddInput(data_1);
  //model_ptr->AddInput(data_2);
  //auto addr_0 = model_ptr->state(addr_0);
  //auto addr_1 = model_ptr->state(addr_1);
  //auto addr_2 = model_ptr->state(addr_2);
  auto pc_state = model_ptr->state("PC");
  auto instr = model_ptr->instr(instr_num);
  if (pc_state)
    std::cout << "not null" << std::endl;
  else
    std::cout << "pc NULL" << std::endl;
  auto DfsModifyRom = [&model_ptr](const ExprPtr& e) {DfsFromRomToPort(e, model_ptr);};
  auto DfsModifyIram = [&model_ptr, &tmp_iram_elements](const ExprPtr& e) {DfsFromIramToPort(e, model_ptr, tmp_iram_elements);};
  for (auto updated_state_name : instr->updated_states()) {
    auto updated_expr = instr->update(updated_state_name);
    auto updated_state = model_ptr->state(updated_state_name);
    ChangeUpdateFuncFromRomToPort(updated_state, instr, model_ptr);
    updated_expr->DepthFirstVisit(DfsModifyIram);
    updated_expr->DepthFirstVisit(DfsModifyRom);
    // Only Assume Store happens at the ast top level 
    if (GetUidExprOp(updated_expr) == AST_UID_EXPR_OP::STORE) {
      ModifyIramStore(updated_expr, model_ptr, instr, tmp_iram_elements);
    } 
  }
  instr->decode()->DepthFirstVisit(DfsModifyIram);
  instr->decode()->DepthFirstVisit(DfsModifyRom);
  instr->set_update(addr_0, pc_state);
  instr->set_update(addr_1, ExprFuse::Add(pc_state, 1));
  instr->set_update(addr_2, ExprFuse::Add(pc_state, 2));

  return;
}


void ModifyIramInterface(const InstrLvlAbsPtr& model_ptr, std::vector<ExprPtr>& iram) {
  for (int i = 0; i < 16; i++) {
    iram.push_back(model_ptr->NewBvState("oc8051_IRAM_data_" + std::to_string(i), 8));
  } 
}

void DfsFromIramToPort(const ExprPtr& expr, const InstrLvlAbsPtr& model_ptr, std::vector<ExprPtr>& iram) {
  auto ram_state = model_ptr->state("IRAM");
  if (expr->is_op()) {
    for (int i = 0; i < expr->arg_num(); i++) {
      auto arg_expr = expr->arg(i);
      if (arg_expr->is_op()) {
        auto op_uid = GetUidExprOp(arg_expr);
	if (op_uid == AST_UID_EXPR_OP::LOAD) 
	  ModifyIramLoad(expr, i, model_ptr, iram);
	if (op_uid == AST_UID_EXPR_OP::STORE) {
	  std::cout << "gg store" << std::endl;
	}
	// ILA_ASSERT(op_uid != AST_UID_EXPR_OP::STORE);
      }
    }
  }
}

void ModifyIramLoad(const ExprPtr& parent_expr, int parent_index, const InstrLvlAbsPtr& model_ptr, std::vector<ExprPtr>& iram) {
  auto arg_expr = parent_expr->arg(parent_index);
  auto arg_arg_0 = arg_expr->arg(0);
  auto iram_state = model_ptr->state("IRAM");
  if (arg_arg_0 == iram_state) {
    auto arg_arg_1 = arg_expr->arg(1);
    auto arg_arg_1_extr = ExprFuse::Extract(arg_arg_1, 3, 0);
    auto repl_expr = ExprFuse::BvConst(0, 8);
    for (int i = 0; i < 16; i++) {
      repl_expr = ExprFuse::Ite(ExprFuse::Eq(arg_arg_1_extr, i), iram[i], repl_expr);
    }
    parent_expr->replace_arg(parent_index, repl_expr);
  }
}

void ModifyIramStore(const ExprPtr& expr, const InstrLvlAbsPtr& model_ptr, const InstrPtr& instr_ptr, std::vector<ExprPtr>& iram) {
  auto arg_0 = expr->arg(0);
  auto iram_state = model_ptr->state("IRAM");
  if (arg_0 == iram_state) {
    auto addr = expr->arg(1);
    auto addr_extr = ExprFuse::Extract(addr, 3, 0);
    auto data = expr->arg(2);
    for (int i = 0; i < 16; i++) {
      auto update = ExprFuse::Ite(ExprFuse::Eq(addr_extr, i), data, iram[i]);
      instr_ptr->set_update(iram[i], update);
    } 
  }
  instr_ptr->set_update(expr, expr);
}

void ChangeUpdateFuncFromRomToPort(const ExprPtr& updated_state, const InstrPtr& instr, const InstrLvlAbsPtr& model_ptr) {
  auto updated_expr = instr->update(updated_state); 
  auto pc_state = model_ptr->state("PC");
  auto rom_state = model_ptr->state("ROM");
  if (updated_expr->is_op()) {
    auto op_uid = GetUidExprOp(updated_expr);
    if (op_uid == AST_UID_EXPR_OP::LOAD) {
      auto arg_arg_0 = updated_expr->arg(0);
      if (arg_arg_0 == rom_state) {
        auto arg_arg_1 = updated_expr->arg(1);
	if (arg_arg_1->is_var()) {
	  ILA_ASSERT(arg_arg_1 == pc_state);
	  instr->ForceAddUpdate(updated_state->name().str(), model_ptr->input("oc8051_ROM_rdata_0"));
	} else {
	  ILA_ASSERT(arg_arg_1->is_op());
          ILA_ASSERT(GetUidExprOp(arg_arg_1) == AST_UID_EXPR_OP::ADD);
	  auto arg_arg_pc = arg_arg_1->arg(0);
	  auto arg_arg_const = arg_arg_1->arg(1);
	  if (arg_arg_pc == pc_state) {
	    auto const_val = std::dynamic_pointer_cast<ExprConst>(arg_arg_const)->val_bv()->val();
	    ILA_ASSERT((const_val == 1) || (const_val == 2));
	    if (const_val == 1)
	      instr->ForceAddUpdate(updated_state->name().str(), model_ptr->input("oc8051_ROM_rdata_1"));
	    else 
	      instr->ForceAddUpdate(updated_state->name().str(), model_ptr->input("oc8051_ROM_rdata_2"));
	  } else {
	    auto const_val = std::dynamic_pointer_cast<ExprConst>(arg_arg_pc)->val_bv()->val();
	    ILA_ASSERT((const_val == 1) || (const_val == 2));
	    if (const_val == 1)
	      instr->ForceAddUpdate(updated_state->name().str(), model_ptr->input("oc8051_ROM_rdata_1"));
	    else 
	      instr->ForceAddUpdate(updated_state->name().str(), model_ptr->input("oc8051_ROM_rdata_2"));
	  }
	}
      } 
    } 
  } 
  return ;
}

void DfsFromRomToPort(const ExprPtr& expr, const InstrLvlAbsPtr& model_ptr) {
  auto pc_state = model_ptr->state("PC");
  auto rom_state = model_ptr->state("ROM");
  if (expr->is_op()) {
    for (int i = 0; i < expr->arg_num(); i++) {
      auto arg_expr = expr->arg(i);
      if (arg_expr->is_op()) {
        auto op_uid = GetUidExprOp(arg_expr);
        if (op_uid == AST_UID_EXPR_OP::LOAD) {
	  auto arg_arg_0 = arg_expr->arg(0);
	  if (arg_arg_0 == rom_state) {
	    auto arg_arg_1 = arg_expr->arg(1);
	    if (arg_arg_1->is_var()) {
	      ILA_ASSERT(arg_arg_1 == pc_state);
	      expr->replace_arg(i, model_ptr->input("oc8051_ROM_rdata_0"));
	    } else {
	      ILA_ASSERT(arg_arg_1->is_op());
	      ILA_ASSERT(GetUidExprOp(arg_arg_1) == AST_UID_EXPR_OP::ADD);
	      auto arg_arg_pc = arg_arg_1->arg(0);
	      auto arg_arg_const = arg_arg_1->arg(1);
	      ILA_ASSERT(arg_arg_pc == pc_state);
	      ILA_ASSERT(arg_arg_const->is_const());
	      if (arg_arg_pc == pc_state) {
	        auto const_val = std::dynamic_pointer_cast<ExprConst>(arg_arg_const)->val_bv()->val();
	        ILA_ASSERT((const_val == 1) || (const_val == 2));
	        if (const_val == 1)
	          expr->replace_arg(i, model_ptr->input("oc8051_ROM_rdata_1"));
	        else 
	          expr->replace_arg(i, model_ptr->input("oc8051_ROM_rdata_2"));
	      } else {
	        auto const_val = std::dynamic_pointer_cast<ExprConst>(arg_arg_pc)->val_bv()->val();
	        ILA_ASSERT((const_val == 1) || (const_val == 2));
	        if (const_val == 1)
	          expr->replace_arg(i, model_ptr->input("oc8051_ROM_rdata_1"));
	        else 
	          expr->replace_arg(i, model_ptr->input("oc8051_ROM_rdata_2"));
	      }
	    }
	  }
        }
      } 
    } 
  } 
  return ;
}

