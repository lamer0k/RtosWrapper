//
// Created by Sergey on 27.08.2018.
//
#include "irqcontroller.hpp"
#include "../../Common/singleton.hpp"
#include "../userbutton.hpp"

void IrqController::HandleIrqExtiLine15_10()
{
  EXTI->PR = EXTI_PR_PR13 ;
  Singleton<UserButton>::GetInstance().HandleInterrupt();
}
