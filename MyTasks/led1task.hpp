#ifndef __LED1TASK_HPP
#define __LED1TASK_HPP 
// For Button
#include "../Application/userbutton.hpp"
//For OsWrapper::Thread
#include "../Rtos/wrapper/thread.hpp"
#include <array>

class Led1Task : public OsWrapper::Thread
{
 using tLedStack = std::array<OsWrapper::tStack, static_cast<tU16>(OsWrapper::StackDepth::minimal)> ;
public:
  virtual void Execute() override;
  inline static tLedStack Stack;
} ;
#endif //__LED1TASK_HPP
