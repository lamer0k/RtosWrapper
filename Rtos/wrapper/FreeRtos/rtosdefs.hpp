/*******************************************************************************
* Filename  	: rtosdefs.h
*
* Details   	: Common definitions for RTOS wrapper 
*
* Author        : Sergey Kolody
*******************************************************************************/

#ifndef RTOSDEFS_H
#define RTOSDEFS_H

//For EmbOs types and methods definition (OS_TASK)
#include "../../FreeRtos/include/FreeRtos.h"
#include "../../FreeRtos/include/task.h"
#include "../../FreeRtos/include/semphr.h"
#include "../../FreeRtos/include/queue.h"
#include "../../FreeRtos/include/timers.h"
#include "../../FreeRtos/include/event_groups.h"
#include "../../FreeRtos/portable/IAR/ARM_CM4F/portmacro.h"
#include "../../FreeRtos/FreeRTOSConfig.h"
#include "../../../Common/susudefs.hpp"

namespace OsWrapper
{
  extern "C" void vPortSVCHandler(void);
  extern "C" void xPortPendSVHandler(void);
  extern "C" void xPortSysTickHandler(void);

  enum class ThreadPriority : tU16
  {
      clear = 0,
      lowest = 10,
      belowNormal = 20,
      normal = 30,
      aboveNormal = 80,
      highest = 90,
      priorityMax = 255
  } ;

  using tTaskContext = StaticTask_t;
  using tTaskHandle = TaskHandle_t;
  using tStack = StackType_t ;

  using tTaskEventMask = tU32;
  using tTime = TickType_t ;

  using tEventHandle = EventGroupHandle_t;
  using tEvent =  StaticEventGroup_t;
  using tEventBits = EventBits_t;

  using tMailBoxContext = StaticQueue_t;
  using tMailBoxHandle = QueueHandle_t;

  using tMutex = StaticSemaphore_t;
  using tMutexHandle = SemaphoreHandle_t;

  constexpr tTime operator "" ms(unsigned long long ms)
  {
    return static_cast<tTime>(ms / portTICK_PERIOD_MS) ;
  } ;  
}

#endif // RTOSDEFS_H