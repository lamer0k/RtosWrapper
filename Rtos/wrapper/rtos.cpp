/*******************************************************************************
* Filename  	: rtos.cpp
* 
* Details   	: Implementation of functions of Rtos class
*
* Author        : Sergey Kolody
*******************************************************************************/

//for Rtos class definition
#include "rtos.hpp"

namespace OsWrapper
{
  /*****************************************************************************
 * Function Name: wCreateThread
 * Description: Creates a new task and passes a parameter to the task. The 
 * function should call appropriate RTOS API function to create a task. 
 *
 * Assumptions: RTOS API create task function should get a parameter to pass the
 * paramete to task.      
 * Some RTOS does not use pStack pointer so it should be set to nullptr
 *
 * Parameters: [in] pThread - pointer on Thread object
 *             [in] pName - name of task
 *             [in] prior - task priority
 *             [in] stackDepth - size of Stack  
 *             [in] pStack - pointer on task stack
 * Returns: true if task is created, false if not
 ****************************************************************************/
 
  void Rtos::CreateThread(Thread &thread, tStack * pStack, const char * pName,
                          ThreadPriority prior, const tU16 stackDepth) 
  {
    return wCreateThread(thread, pName, prior, stackDepth, pStack) ;
  }

/*****************************************************************************
 * Function Name: wStart()
 * Description: Starts the RTOS scheduler
 *
 * Assumptions: No
 * Parameters: No
 * Returns: No
 ****************************************************************************/  
  void Rtos::Start()        
  {
    wStart(); 
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
  void Rtos::HandleSvcInterrupt()
  {
    wHandleSvcInterrupt() ;      
  }

/*****************************************************************************
 * Function Name: wHandleSvInterrupt()
 * Description: Handle of PendSV Interrupt. The function should be called from 
 *  Pendable request for system service interrupt (PendSV vector)
 *
 * Assumptions: No
 * Parameters: No
 * Returns: No
 ****************************************************************************/ 
  void Rtos::HandleSvInterrupt() 
  {
    wHandleSvInterrupt() ;
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
  void Rtos::HandleSysTickInterrupt()
  {
    wHandleSysTickInterrupt() ;
  }

}

