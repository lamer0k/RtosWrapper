#ifndef MYTASK_HPP
#define MYTASK_HPP


#include "../Rtos/wrapper/thread.hpp"
#include "../Application/userbutton.hpp"
#include "../CMSIS/stm32f411xe.h"
#include<array>


class MyTask : public OsWrapper::Thread<static_cast<std::size_t>(OsWrapper::StackDepth::minimal)>
{

public:
  virtual void Execute() override;

} ;

#endif //MYTASK_HPP
