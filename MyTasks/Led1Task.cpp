#include "led1task.hpp"
#include "mytask.hpp"
#include "../Rtos/wrapper/mailbox.hpp"
#include "../Rtos/wrapper/event.hpp"
#include "../Rtos/wrapper/FreeRtos/rtosdefs.hpp"
#include "../CMSIS/stm32f411xe.h"
#include "../Application/leds.hpp"

extern OsWrapper::MailBox<int, 10> queue;
extern OsWrapper::Event event;

void Led1Task::Execute()
{ 
    while(true) 
    {
      using OsWrapper::operator""ms ;
      Led1::GetInstance().Toggle() ;
      SleepUntil(1000ms);
      event.Signal() ;
     }
  } ;

