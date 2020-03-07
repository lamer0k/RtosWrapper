//
// Created by Sergey on 27.08.2018.
//
#include "irqcontroller.hpp"
#include "../../Application/userbutton.hpp"

void IrqController::HandleIrqExtiLine15_10()
{
  //EXTI->PR = EXTI_PR_PR13 ;
  //UserButton::GetInstance().HandleInterrupt();
}
