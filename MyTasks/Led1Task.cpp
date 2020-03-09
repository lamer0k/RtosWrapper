#include "led1task.hpp"

void Led1Task::Execute()
{ 
 
  for(;;)
  {
    if (event.Wait() != 0)
    {
      ledsCntr.NextMode();
    }
    ledsCntr.Update();
  }
} ;

