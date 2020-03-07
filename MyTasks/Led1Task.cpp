#include "led1task.hpp"
#include "mytask.hpp"
#include "../Rtos/wrapper/mailbox.hpp"
#include "../Rtos/wrapper/event.hpp"
#include "../Rtos/wrapper/FreeRtos/rtosdefs.hpp"
#include "../Application/ledscontroller.hpp"

extern OsWrapper::MailBox<int, 10> queue;
extern OsWrapper::Event event;

void Led1Task::Execute()
{ 
  LedsController & ledsCntr =   LedsController::GetInstance();
  for(;;)
  {
    using OsWrapper::operator""ms ;
    if (event.Wait() != 0)
    {
      ledsCntr.NextMode();
    }
    ledsCntr.Update();
  }
} ;

