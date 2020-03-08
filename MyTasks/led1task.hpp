#ifndef __LED1TASK_HPP
#define __LED1TASK_HPP 
// For Button
#include "../Application/userbutton.hpp"
#include "event.hpp" // for Event ;
//For OsWrapper::Thread
#include "../Rtos/wrapper/thread.hpp"
#include <array>

class Led1Task : public OsWrapper::Thread<static_cast<std::size_t>(OsWrapper::StackDepth::minimal)>
{
public:
  virtual void Execute() override;

  Led1Task(OsWrapper::Event& event) : event(event)
  {
  }
private:
  OsWrapper::Event& event ;
} ;
#endif //__LED1TASK_HPP
