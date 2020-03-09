//
// Created by Serge on 07.03.2020.
//

#ifndef UNTITLED_RTOSWRAPPER_HPP
#define UNTITLED_RTOSWRAPPER_HPP

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

#include "rtosdefs.hpp" // for OsWrapper types such as tTime, tMutexHandle...
#include "eventmode.hpp" //for EventMode

#include <limits> // for std::numeric_limits<uint32_t>::max()

namespace OsWrapper
{
  struct RtosWrapper
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
     * Parameters: [in] thread - reference on Thread object
     *             [in] pName - name of task
     *             [in] prior - task priority
     *             [in] stackDepth - size of Stack
     *             [in] pStack - pointer on task stack
     * Returns: No
     ****************************************************************************/
    __forceinline template<typename Rtos, typename T>
    static void wCreateThread(T &thread, const char *pName, ThreadPriority prior, const std::uint16_t stackDepth, tStack *pStack)
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
    __forceinline static void wStart()
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
    __forceinline void static wHandleSvcInterrupt()
    {
      vPortSVCHandler();
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
    __forceinline static void wHandleSysTickInterrupt()
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
    __forceinline static void wSleep(const tTime timeOut)
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
    __forceinline static void wEnterCriticalSection()
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
    __forceinline static void wLeaveCriticalSection()
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
    __forceinline static void wEnterInterrupt()
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
    __forceinline static void wLeaveInterrupt()
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
    __forceinline static void wSignal(tTaskHandle const &taskHandle, const tTaskEventMask mask)
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
    __forceinline static tTaskEventMask wWaitForSignal(const tTaskEventMask mask, tTime timeOut)
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
    __forceinline static tEventHandle wCreateEvent(tEvent &event)
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
    __forceinline static void wDeleteEvent(tEventHandle &eventHandle)
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
    __forceinline static void wSignalEvent(tEventHandle const &eventHandle, const tEventBits mask)
    {
      BaseType_t xHigherPriorityTaskWoken = pdFALSE;
      if (xEventGroupSetBitsFromISR(eventHandle, mask, &xHigherPriorityTaskWoken) != pdFAIL)
      {
        portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
      }

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
    __forceinline static tEventBits wWaitEvent(tEventHandle const &eventHandle, const tEventBits mask,
                                               tTime timeOut, OsWrapper::EventMode mode)
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
    __forceinline static tMutexHandle wCreateMutex(tMutex &mutex)
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
    __forceinline static void wDeleteMutex(tMutexHandle &handle)
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
    __forceinline static bool wLockMutex(tMutexHandle const &handle, tTime timeOut)
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
    __forceinline static void wUnLockMutex(tMutexHandle const &handle)
    {
      xSemaphoreGiveFromISR(handle, nullptr);
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
    __forceinline static void wSleepUntil(tTime &last, const tTime timeOut)
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
    __forceinline static tTime wGetTicks()
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
    * Returns: true if the item was successfully posted, otherwise false
    ****************************************************************************/
    __forceinline static bool wMailBoxPut(tMailBoxHandle &handle, const void *pItem)
    {
      return (xQueueSendFromISR(handle, pItem, nullptr) == pdTRUE);
    }

    /****************************************************************************
    * Function Name: wMailBoxCreate()
    * Description:
    *
    * Assumptions: No
    * Parameters: [in] length - The maximum number of items the mailbox can hold at
    *             any one time
    *             [in] itemSize - Size of an item in bytes
    *             [in] pBuffer - Pointer to a memory area used as buffer. The buffer
    *             must be big enough to hold the given number of messages of the
    *             specified size: length * itemSize bytes
    *             [in] context - Must point to a variable, which will be used to
    *             hold the mailbox's data structure.
    *
    * Returns: If the mailbox is created successfully then a handle to the created
    * mailbox is returned, otherwise nullptr is returned.
    ****************************************************************************/
    __forceinline static tMailBoxHandle wMailBoxCreate(std::uint16_t length, std::uint16_t itemSize,
        std::uint8_t *pBuffer, tMailBoxContext &context)
    {
#if (configSUPPORT_STATIC_ALLOCATION == 1)
      return xQueueCreateStatic(length, itemSize, pBuffer, &context);
#else
      return xQueueCreate(length, itemSize);
#endif
    }

    /****************************************************************************
    * Function Name: wMailBoxGet()
    * Description:
    *
    * Assumptions: No
    * Parameters: [in] handle - Reference to a mailbox
    *             [in] item -   Reference to the message to store.
    *             [in] tTime -  The maximum amount of time the task should block
    *             waiting for an item to receive should the mailbox be empty at
    *             the time of the call
    *
    * Returns:  if an item was successfully received from the mailbox, otherwise
    * false
    ****************************************************************************/
    __forceinline static bool wMailBoxGet(tMailBoxHandle &handle, void *pItem, tTime timeOut)
    {
      return (xQueueReceive(handle, pItem, timeOut) == pdTRUE);
    }

    /****************************************************************************
    * Function Name: wMailBoxDelete()
    * Description: Deletes a specified mailbox
    *
    * Assumptions: No
    * Parameters: [in] queue - Reference to the mailbox
    *
    * Returns: Current system time in ticks
    ****************************************************************************/
    __forceinline void static wMailBoxDelete(tMailBoxHandle &queue)
    {
      vQueueDelete(queue);
    }

  } ;
} 

#endif //UNTITLED_RTOSWRAPPER_HPP
