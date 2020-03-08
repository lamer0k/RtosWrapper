/*******************************************************************************
* Filename  	: mytask.cpp
* 
* Details   	: Implementation of Execute() of MyTask class
*
* Author        : Sergey Kolody
*******************************************************************************/
#include "mytask.hpp"

void MyTask::Execute()
{ 
  while(true) 
  {
    if (button.IsPressed())
    {
      event.Signal();
    }
    Sleep(300ms);
  }
} ;