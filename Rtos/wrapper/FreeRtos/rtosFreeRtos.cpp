/*******************************************************************************
* Filename  	: rtosFreeRtos.cpp
* 
* Details   	: This file containce implementation of functions of concrete 
*                 FreeRTOS to support another RTOS create the same file with the
*                 same functions but another name< for example rtosEmbOS.cpp and
*                 implement these functions using EmbOS API.
*
* Author        : Sergey Kolody
*******************************************************************************/


#include "../thread.hpp"
#include "../mutex.hpp"
#include "../mailbox.hpp"
#include "../rtos.hpp"
#include "../../../Common/susudefs.hpp"
#include "rtosdefs.hpp"
#include "../event.hpp"

#include <limits>

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
   * Parameters: [in] thread - refernce on Thread object
   *             [in] pName - name of task
   *             [in] prior - task priority
   *             [in] stackDepth - size of Stack
   *             [in] pStack - pointer on task stack
   * Returns: No
   ****************************************************************************/
  void wCreateThread(Thread &thread, const char *pName,
                     ThreadPriority prior, const tU16 stackDepth,
                     tStack *pStack)
  {
#if (configSUPPORT_STATIC_ALLOCATION == 1)
    if (pStack != nullptr)
    {
      thread.handle = xTaskCreateStatic(static_cast<TaskFunction_t>(Rtos::Run),
                                        pName,
                                        stackDepth,
                                        &thread,
                                        static_cast<uint32_t>(prior),
                                        pStack,
                                        &thread.context);
    }
#else
    thread.handle =  (xTaskCreate(static_cast<TaskFunction_t>(Rtos::Run),
                          pName, stackDepth, &thread, static_cast<uint32_t>(prior),
                          &thread.handle) == pdTRUE) ?  thread.handle : nullptr ;
#endif
  }

  /*****************************************************************************
   * Function Name: wStart()
   * Description: Starts the RTOS scheduler
   *
   * Assumptions: No
   * Parameters: No
   * Returns: No
   ****************************************************************************/
  void wStart()
  {
    vTaskStartScheduler();
  }


  /*****************************************************************************
   * Function Name: wHandleSvcInterrupt()
   * Description: Handle of SVC Interrupt. The function should call appropriate
   * RTOS function to handle the interrupt
   *
   * Assumptions: No
   * Parameters: No
   * Returns: No
   ****************************************************************************/
  void wHandleSvcInterrupt()
  {
    vPortSVCHandler();
  }

  /*****************************************************************************
   * Function Name: wHandleSvInterrupt()
   * Description: Handle of SV Interrupt. The function should call appropriate
   * RTOS function to handle the interrupt
   *
   * Assumptions: No
   * Parameters: No
   * Returns: No
   ****************************************************************************/
  void wHandleSvInterrupt()
  {
    xPortPendSVHandler();
  }

  /*****************************************************************************
   * Function Name: wHandleSysTickInterrupt()
   * Description: Handle of System Timer Interrupt. The function should call
   *  appropriate RTOS function to handle the interrupt
   *
   * Assumptions: No
   * Parameters: No
   * Returns: No
   ****************************************************************************/
  void wHandleSysTickInterrupt()
  {
    xPortSysTickHandler();
  }

  /*****************************************************************************
  * Function Name: wSleep()
  * Description: Suspends the calling task for a specified period of time,
  *  or waits actively when called from main()
  *
  * Assumptions: No
  * Parameters: [in] timeOut - specifies the time interval in system ticks
  * Returns: No
  ****************************************************************************/
  void wSleep(const tTime timeOut)
  {
    vTaskDelay(timeOut);
  }

  /*****************************************************************************
  * Function Name: wEnterCriticalSection()
  * Description: Basic critical section implementation that works by simply 
  * disabling interrupts
  *
  * Assumptions: No
  * Parameters: No
  * Returns: No
  ****************************************************************************/
  void wEnterCriticalSection()
  {
    taskENTER_CRITICAL();
  }

  /*****************************************************************************
  * Function Name: wLeaveCriticalSection()
  * Description: Leave critical section implementation that works by simply 
  * enabling interrupts
  *
  * Assumptions: No
  * Parameters: No
  * Returns: No
  ****************************************************************************/
  void wLeaveCriticalSection()
  {
    taskEXIT_CRITICAL();
  }

  /****************************************************************************
  * Function Name: wEnterInterrupt()
  * Description: Some RTOS requires to inform the kernel  that interrupt code 
  * is executing 
  *
  * Assumptions: No
  * Parameters: No
  * Returns: No
  ****************************************************************************/
  void wEnterInterrupt()
  {

  }

  /****************************************************************************
  * Function Name: wLeaveInterrupt()
  * Description: Some RTOS requires to inform that the end of the interrupt r
  * outine has been reached; executes task switching within ISR 
  *
  * Assumptions: No
  * Parameters: No
  * Returns: No
  ****************************************************************************/
  void wLeaveInterrupt()
  {

  }

  /****************************************************************************
  * Function Name: wSignal()
  * Description: Signals event(s) to a specified task
  *
  * Assumptions: No
  * Parameters: [in] taskHandle - Reference to the task structure
  *             [in] mask - The event bit mask containing the event bits, 
  *             which shall be signaled.
  * Returns: No
  ****************************************************************************/
  void wSignal(tTaskHandle const &taskHandle, const tTaskEventMask mask)
  {
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    xTaskNotifyFromISR(taskHandle, mask, eSetBits, &xHigherPriorityTaskWoken);
    portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
  }

  /****************************************************************************
  * Function Name: wWaitForSignal()
  * Description: Waits for the specified events for a given time, and clears 
  * the event memory when the function returns
  *
  * Assumptions: No
  * Parameters: [in] mask - The event bit mask containing the event bits, 
  *             which shall be waited for
  *             [in] timeOut - Maximum time in system ticks waiting for events 
  *             to be signaled.
  * Returns: Set bits
  ****************************************************************************/
  tTaskEventMask wWaitForSignal(const tTaskEventMask mask, tTime timeOut)
  {
    uint32_t ulNotifiedValue = 0U;
    xTaskNotifyWait(0U,
                    std::numeric_limits<uint32_t>::max(),
                    &ulNotifiedValue,
                    timeOut);
    return (ulNotifiedValue & mask);
  }

  /****************************************************************************
    * Function Name: wCreateEvent()
    * Description:  Create an Event object
    *
    * Assumptions: No
    * Parameters: [in] event - reference on tEvent object
    *
    * Returns: Handle of created Event
    ****************************************************************************/
  tEventHandle wCreateEvent(tEvent &event)
  {
#if (configSUPPORT_STATIC_ALLOCATION == 1)
    return xEventGroupCreateStatic(&event);
#else
    return xEventGroupCreate();
#endif
  }

  /****************************************************************************
  * Function Name: wDeleteEvent()
  * Description:  Create an Event object
  *
  * Assumptions: No
  * Parameters: [in] eventHandle - reference on tEventHandle object
  *
  * Returns: No
  ****************************************************************************/
  void wDeleteEvent(tEventHandle &eventHandle)
  {
    vEventGroupDelete(eventHandle);
  }

  /****************************************************************************
  * Function Name: wSignalEvent()
  * Description:  Sets an  resumes tasks which are waiting at the event object 
  *
  * Assumptions: No
  * Parameters: [in] event - reference on eventHandle object
  *             [in] mask - The event bit mask containing the event bits, 
  *             which shall be signaled
  *
  * Returns: No
  ****************************************************************************/
  void wSignalEvent(tEventHandle const &eventHandle, const tEventBits mask)
  {
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    xEventGroupSetBitsFromISR(eventHandle, mask, &xHigherPriorityTaskWoken);

    portYIELD_FROM_ISR(xHigherPriorityTaskWoken);

  }

  /****************************************************************************
  * Function Name: wWaitEvent()
  * Description:  Waits for an event and suspends the task for a specified time 
  * or until the event has been signaled. 
  *
  * Assumptions: No
  * Parameters: [in] event - Reference on eventHandle object
  *             [in] mask - The event bit mask containing the event bits, 
  *             which shall be signaled
  *             [in] timeOut - Maximum time in RTOS system ticks until the 
  *             event must be signaled. 
  *             [in] mode - Indicate mask bit behaviour
  *
  * Returns: Set bits
  ****************************************************************************/
  tEventBits wWaitEvent(tEventHandle const &eventHandle, const tEventBits mask,
                        const tTime timeOut, OsWrapper::EventMode mode)
  {
    BaseType_t xWaitForAllBits = pdFALSE;
    if (mode == OsWrapper::EventMode::waitAnyBits)
    {
      xWaitForAllBits = pdFALSE;
    }
    return xEventGroupWaitBits(eventHandle, mask, pdTRUE, xWaitForAllBits, timeOut);
  }

  /****************************************************************************
  * Function Name: wCreateMutex()
  * Description:  Create an mutex. Mutexes are used for managing resources by
  * avoiding conflicts caused by simultaneous use of a resource. The resource
  * managed can be of any kind: a part of the program that is not reentrant, a
  * piece of hardware like the display, a flash prom that can only be written to
  * by a single task at a time, a motor in a CNC control that can only be
  * controlled by one task at a time, and a lot more.
  *
  * Assumptions: No
  * Parameters: [in] mutex - Reference on tMutex structure
  *             [in] mode - Indicate mask bit behaviour
  *
  * Returns: Mutex handle
  ****************************************************************************/
  tMutexHandle wCreateMutex(tMutex &mutex)
  {
#if (configSUPPORT_STATIC_ALLOCATION == 1)
    return xSemaphoreCreateMutexStatic(&mutex);
#else
    return xSemaphoreCreateMutex();
#endif
  }

  /****************************************************************************
  * Function Name: wDeleteMutex()
  * Description:  Delete the mutex.
  *
  * Assumptions: No
  * Parameters: [in] mutex - handle of mutex
  *
  * Returns: Mutex handle
  ****************************************************************************/
  void wDeleteMutex(tMutexHandle &handle)
  {
    vSemaphoreDelete(handle);
  }

  /****************************************************************************
  * Function Name: wLockMutex()
  * Description:  Claim the resource
  *
  * Assumptions: No
  * Parameters: [in] handle - handle of mutex
  *             [in] timeOut - Maximum time until the mutex should be available
  *
  * Returns: true if resource has been claimed, false if timeout is expired
  ****************************************************************************/
  bool wLockMutex(tMutexHandle const &handle, tTime timeOut)
  {
    return static_cast<bool>(xSemaphoreTake(handle, timeOut));
  }

  /****************************************************************************
  * Function Name: wUnLockMutex()
  * Description:  Releases a mutex currently in use by a task
  *
  * Assumptions: No
  * Parameters: [in] handle - handle of mutex
  *
  * Returns: No
  ****************************************************************************/
  void wUnLockMutex(tMutexHandle const &handle)
  {
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    xSemaphoreGiveFromISR(handle, &xHigherPriorityTaskWoken);

    portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
  }

  /****************************************************************************
  * Function Name: wSleepUntil()
  * Description:  Suspends the calling task until a specified time, or waits
  * actively when called from main()
  *
  * Assumptions: No
  * Parameters: [in] last - Refence to a variable that holds the time at which
  *             the task was last unblocked. The variable must be initialised
  *             with the current time prior to its first use
  *             [in] timeOut - Time to delay until, the task will be unblocked
  *             at time
  *
  * Returns: No
  ****************************************************************************/
  void wSleepUntil(tTime &last, const tTime timeOut)
  {
    vTaskDelayUntil(&last, timeOut);
  }

  /****************************************************************************
  * Function Name: wGetTicks()
  * Description:  Returns the current system time in ticks as a native integer
  * value
  *
  * Assumptions: No
  * Parameters:  No
  *
  * Returns: Current system time in ticks
  ****************************************************************************/
  tTime wGetTicks()
  {
    return xTaskGetTickCount();
  }


  /****************************************************************************
  * Function Name: wMailBoxPut()
  * Description:  Stores a new message of a predefined size in a mailbox if the
  * mailbox is able to accept one more message
  *
  * Assumptions: No
  * Parameters: [in] handle - Refence to a mailbox
  *             [in] item -   Refernce to the message to store.
  *
  * Returns: Current system time in ticks
  ****************************************************************************/
  bool wMailBoxPut(tMailBoxHandle &handle, const void * pItem)
  {
    return ((xQueueSendFromISR(handle, pItem, nullptr) == pdTRUE) ? true : false);
  }

  /****************************************************************************
  * Function Name: wMailBoxCreate()
  * Description:
  *
  * Assumptions: No
  * Parameters: [in] length -
  *             [in] itemSize -
  *             [in] pBuffer -
  *             [in] context -
  *
  * Returns: Current system time in ticks
  ****************************************************************************/
  tMailBoxHandle wMailBoxCreate(tU16 length, tU16 itemSize, tU8 *pBuffer, tMailBoxContext & context)
  {
    return xQueueCreateStatic(length, itemSize, pBuffer, &context);
  }

  /****************************************************************************
  * Function Name: wMailBoxGet()
  * Description:
  *
  * Assumptions: No
  * Parameters: [in] handle - Refence to a mailbox
  *             [in] item -   Refernce to the message to store.
  *             [in] tTime -
  *
  * Returns: Current system time in ticks
  ****************************************************************************/
  bool wMailBoxGet(tMailBoxHandle & handle, void * pItem, tTime timeOut)
  {
    return ((xQueueReceive(handle, pItem, timeOut) == pdTRUE) ? true : false);
  }


  void wMailBoxCreate(tMailBoxHandle &queue)
  {
    vQueueDelete(queue);
  }

}
