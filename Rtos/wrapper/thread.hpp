/*******************************************************************************
* Filename  	: thread.hpp
*
* Details   	: Base class for any Tasks which contains the pure virtual
* method Execute().  Any active classes which will have a method for running as
* a task of RTOS should inherit the Thread and override the Execute() method.
* For example:
*            class MyTask : public OsWrapper::Thread
*            {
*            public:
*               virtual void Execute() override {
*                 while(true) {
*                    //do something..
*                 }
*            } ;
*
* Author        : Sergey Kolody
*******************************************************************************/
#ifndef THREAD_HPP
#define THREAD_HPP

#include <array>
#include "FreeRtos/rtosdefs.hpp"
#include "../../Common/susudefs.hpp"
#include "rtosFreeRtos.hpp"

namespace OsWrapper
{
  constexpr tTaskEventMask defaultTaskMaskBits = 0b010101010;

  enum class StackDepth : tU16
  {
    minimal = 128U,
    medium = 256U,
    big = 512U,
    biggest = 1024U
  };

  class IThread
  {
  public:
    virtual void Execute() = 0 ;

    static void Sleep(const tTime timeOut = 1000ms)
    {
      RtosWrapper::wSleep(timeOut);
    };

    void SleepUntil(const tTime timeOut = 1000ms)
    {
      RtosWrapper::wSleepUntil(lastWakeTime, timeOut);
    };

    inline void Signal(const tTaskEventMask mask = defaultTaskMaskBits)
    {
      RtosWrapper::wSignal(handle, mask);
    };

    inline tTaskEventMask WaitForSignal(tTime timeOut = 1000ms,
                                        const tTaskEventMask mask = defaultTaskMaskBits)
    {
      return RtosWrapper::wWaitForSignal(mask, timeOut);
    }
    friend class Rtos;  
    friend class RtosWrapper;
   
  private:
    tTaskContext context;  // инициализация проихсодит во время создания задачи при вызове CreatThread
    tTaskHandle handle =  nullptr; //инициализация проихсодит во время создания задачи при вызове CreatThread


    tTime lastWakeTime = 0ms;
  
    void Run()
    {
      lastWakeTime = RtosWrapper::wGetTicks();
      Execute();
    }
  };

  template<std::size_t stackSize>
  class Thread: public IThread
  {  
    friend class Rtos;  
  //  friend class RtosWrapper;

    static constexpr std::size_t stackDepth = stackSize;
    std::array <tStack, stackSize> stack;
  };
};
#endif // THREAD_HPP
