/*******************************************************************************
* Filename  	: Rtos.hpp
*
* Details   	: Rtos class is used to create tasks, work with special Rtos
* functions and also it contains a special static method Run. In this method
* the pointer on Thread should be pass. This method is input point as
* the task of Rtos. In the body of the method, the method of concrete Thread
* will run.
*******************************************************************************/

#ifndef RTOS_HPP
#define RTOS_HPP

#include "thread.hpp"        // for Thread
#include "../../Common/susudefs.hpp"
#include "FreeRtos/rtosdefs.hpp"

namespace OsWrapper
{
  extern void wCreateThread(Thread &, const char *, ThreadPriority, const tU16, tStack *) ;
  extern void wStart() ;
  extern void wHandleSvcInterrupt() ;
  extern void wHandleSvInterrupt() ;
  extern void wHandleSysTickInterrupt() ;
  extern void wEnterCriticalSection();
  extern void wLeaveCriticalSection();

  class Rtos
  {
    public:
      static void CreateThread(Thread &thread ,
                               tStack * pStack = nullptr,
                               const char * pName = nullptr,
                               ThreadPriority prior = ThreadPriority::normal,
                               const tU16 stackDepth = static_cast<tU16>(StackDepth::minimal)) ;
      static void Start() ;
      static void HandleSvcInterrupt() ;
      static void HandleSvInterrupt() ;
      static void HandleSysTickInterrupt() ;

      friend void wCreateThread(Thread &, const char *, ThreadPriority, const tU16, tStack *);
    private:
      //cstat !MISRAC++2008-7-1-2 To prevent reinterpret_cast in the CreateTask
      static void Run(void *pContext )
      {
        static_cast<Thread*>(pContext)->Run() ;
      }
  } ;
} ;
#endif // RTOS_HPP
