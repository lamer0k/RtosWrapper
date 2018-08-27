
#include "../Rtos/wrapper/interruptentry.hpp"
#include "../CMSIS/stm32f411xe.h"
#include "../MyTasks/mytask.hpp"
#include "../Rtos/wrapper/event.hpp"

extern OsWrapper::Event event;

void Button::HandleInterrupt()
{
  const OsWrapper::InterruptEntry ie;
  EXTI->PR = EXTI_PR_PR13 ;
  event.Signal();
}