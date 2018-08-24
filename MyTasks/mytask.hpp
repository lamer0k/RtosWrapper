#ifndef __MYTASK_HPP
#define __MYTASK_HPP  


#include "../Rtos/wrapper/thread.hpp"
#include "../AHardware/button.hpp"
#include "../CMSIS/stm32f411xe.h"
#include<array>


class MyTask : public OsWrapper::Thread
{

public:
  virtual void Execute() override;
  using tMyTaskStack = std::array<OsWrapper::tStack, static_cast<tU16>(OsWrapper::StackDepth::minimal)> ;
  inline static tMyTaskStack Stack;
private:
  Button button{*GPIOC, 13U} ;  
} ;

extern MyTask myTask;



#endif //__MYTASK_HPP
