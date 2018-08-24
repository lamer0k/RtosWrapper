/*******************************************************************************
* Filename  	: interruptentry.hpp
* 
* Details   	: InterruptEntry class is used  in the interrupts. When ISRs 
* that re-enable interrupts or use any RTOS function need to use InterruptEntry 
* at the beginning of ISR, before executing anything else.
*
*******************************************************************************/

#ifndef INTERRUPTENTRY_HPP
#define INTERRUPTENTRY_HPP

namespace OsWrapper
{
  extern void wEnterInterrupt() ;
  extern void wLeaveInterrupt() ;
  
  class InterruptEntry
  {
    public:
      inline InterruptEntry()
      {
        wEnterInterrupt() ;
      }	  
      inline ~InterruptEntry()
      {
        wLeaveInterrupt() ;
      }
  } ;
} ;
#endif // INTERRUPTENTRY_HPP
