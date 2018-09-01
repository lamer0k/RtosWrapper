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

#include "FreeRtos/rtosdefs.hpp"
#include "../../Common/susudefs.hpp"

namespace OsWrapper
{
  extern void wSleep(const tTime) ;
  extern void wSleepUntil(tTime &, const tTime) ;
  extern tTime wGetTicks() ;
  extern void wSignal(tTaskHandle const &, const tTaskEventMask) ;
  extern tTaskEventMask wWaitForSignal(const tTaskEventMask, tTime) ;
  constexpr tTaskEventMask defaultTaskMaskBits = 0b010101010 ;

  enum class StackDepth: tU16
  {
      minimal = 128U,
      medium = 256U,
      big = 512U,
      biggest = 1024U
  };

  class Thread
  {
    public:
      virtual void Execute() = 0 ;
      tTaskContext context ;

      static void Sleep(const tTime timeOut = 1000ms)
      {
        wSleep(timeOut) ;
      };

      void SleepUntil(const tTime timeOut = 1000ms)
      {
        wSleepUntil(lastWakeTime, timeOut);
      };

      inline void Signal(const tTaskEventMask mask = defaultTaskMaskBits)
      {
        wSignal(handle, mask);
      };

      inline tTaskEventMask WaitForSignal(tTime timeOut = 1000ms,
                                      const tTaskEventMask mask = defaultTaskMaskBits)
      {
        return wWaitForSignal(mask, timeOut) ;
      }
      friend void wCreateThread(Thread &, const char *, ThreadPriority, const tU16, tStack *);
      friend class Rtos ;
    private:
      tTaskHandle handle ;
      tTime lastWakeTime = 0ms ;
      void Run()
      {
        lastWakeTime = wGetTicks() ;
        Execute();
      }
  } ;
} ;
#endif // THREAD_HPP
