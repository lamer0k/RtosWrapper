#include "led1task.hpp"
#include "mytask.hpp"
#include "../Rtos/wrapper/mailbox.hpp"
#include "../Rtos/wrapper/event.hpp"
#include "../Rtos/wrapper/FreeRtos/rtosdefs.hpp"
#include "../CMSIS/stm32f411xe.h"

extern OsWrapper::MailBox<int, 10> queue;
extern OsWrapper::Event event;

void Led1Task::Execute()
{ 
    while(true) 
    {
      using OsWrapper::operator""ms ;
      GPIOC->ODR ^= (1 << 5) ;
      SleepUntil(5000ms);
      event.Signal() ;

 //     int p = 10;
   //   queue.Put(p);
//      p = 11;
  //    queue.Put(p);
     }
  } ;

