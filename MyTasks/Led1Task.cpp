#include "led1task.hpp"
#include "mytask.hpp"
#include "mailbox.hpp"
#include "event.hpp"
#include "rtosdefs.hpp"
#include "ledscontroller.hpp"

extern OsWrapper::MailBox<int, 10> queue;
extern OsWrapper::Event event;

void Led1Task::Execute()
{ 
  LedsController & ledsCntr =   LedsController::GetInstance();
  for(;;)
  {
    if (event.Wait() != 0)
    {
      ledsCntr.NextMode();
    }
    ledsCntr.Update();
  }
} ;

