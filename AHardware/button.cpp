
#include "../Rtos/wrapper/interruptentry.hpp"
#include "../CMSIS/stm32f411xe.h"
#include "../MyTasks/mytask.hpp"
#include "../main.hpp"

void Button::HandleInterrupt()
{
  const OsWrapper::InterruptEntry ie;
  EXTI->PR = EXTI_PR_PR13 ;
  event.Signal();
}