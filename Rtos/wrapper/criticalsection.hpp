/*******************************************************************************
* Filename  	: criticalsection.hpp
* 
* Details   	: Critical section are program sections during which preemptive 
* task switches and any interruots are disabled, meaning that no task switch and 
* no execution of any interrupts routines are allowed. 
*   A typical example for a critical region would be the execution of a program 
* section that handles a time-critical hardware access (for example fast writing 
* byte into an SPI), or a section that writes data into simple global variables 
* used by a different task or interrupt and therefore needs to make sure the 
* data is consistent.
*
*******************************************************************************/

#ifndef __CRITICALSECTION_HPP
#define __CRITICALSECTION_HPP

#include "rtos.hpp"

namespace OsWrapper
{
  class CriticalSection
  {
    public:
      inline CriticalSection()
      {
        wEnterCriticalSection() ;
      } 
      
      inline ~CriticalSection()
      {
        wLeaveCriticalSection() ;
      } 
  } ;
} ;
#endif // __CRITICALSECTION_HPP
