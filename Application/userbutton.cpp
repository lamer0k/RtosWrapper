
#include "../Rtos/wrapper/interruptentry.hpp"
#include "../CMSIS/stm32f411xe.h"
#include "../MyTasks/mytask.hpp"
#include "../Rtos/wrapper/event.hpp"

extern OsWrapper::Event event;

void UserButton::HandleInterrupt()
{
  //const OsWrapper::InterruptEntry ie;
 // event.Signal();
}