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
#include "rtosdefs.hpp"
#include <cstddef>
#include "rtoswrapper.hpp"

namespace OsWrapper
{
  class Rtos
  {
  public:

    /*****************************************************************************
* Function Name: wCreateThread
* Description: Creates a new task and passes a parameter to the task. The
* function should call appropriate RTOS API function to create a task.
*
* Assumptions: RTOS API create task function should get a parameter to pass the
* parameter to task.
* Some RTOS does not use pStack pointer so it should be set to nullptr
*
* Parameters: [in] pThread - pointer on Thread object
*             [in] pName - name of task
*             [in] prior - task priority
*             [in] stackDepth - size of Stack
*             [in] pStack - pointer on task stack
* Returns: true if task is created, false if not
****************************************************************************/
    __forceinline template<typename T >
    static void CreateThread(T& thread, const char *pName, ThreadPriority prior = ThreadPriority::normal)
    {
      return RtosWrapper::wCreateThread<Rtos>(thread, pName, prior, thread.stackDepth, thread.stack.data());
    }

/***********************************************************************
 * Function Name: wStart()
 * Description: Starts the RTOS scheduler
 *
 * Assumptions: No
 * Parameters: No
 * Returns: No
 ****************************************************************************/
    __forceinline static inline void Start()
    {
      RtosWrapper::wStart();
    }

    /*****************************************************************************
    * Function Name: wHandleSvcInterrupt()
    * Description: Handle of SVCall Interrupt. The function should be called from
    *  System Service interrupt (SVCall vector)
    *
    * Assumptions: No
    * Parameters: No
    * Returns: No
    ****************************************************************************/
    __forceinline static inline void HandleSvcInterrupt()
    {
      RtosWrapper::wHandleSvcInterrupt();
    }

/*****************************************************************************
 * Function Name: HandleSysTickInterrupt()
 * Description: Handle of Systick Interrupt. The function should be called from
 *  System tick timer interrupt (Systick vector)
 *
 * Assumptions: No
 * Parameters: No
 * Returns: No
 ****************************************************************************/
    __forceinline static inline void HandleSysTickInterrupt()
    {
      RtosWrapper::wHandleSysTickInterrupt();
    }

    friend class RtosWrapper;    

  private:
    //cstat !MISRAC++2008-7-1-2 To prevent reinterpret_cast in the CreateTask
    __forceinline static void Run(void *pContext)
    {
      static_cast<IThread*>(pContext)->Run();
    }
  };


};
#endif // RTOS_HPP
