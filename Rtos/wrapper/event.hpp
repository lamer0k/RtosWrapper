/*******************************************************************************
* Filename  	: event.hpp
* 
* Details   	: Event class is used  to enable one or multiple tasks to wait 
* for a particular event to occur. The tasks can be kept suspended until the 
* event is set by another task, a software timer, or an interrupt handler. An 
* event can be, for example, the change of an input signal, the expiration of a 
* timer, a key press, the reception of a character, or a complete command. 
* Typical usage of event is activate a task from interrupt by an event object. 
*
*******************************************************************************/

#ifndef EVENT_HPP
#define EVENT_HPP

// For tEvent
#include "FreeRtos/rtosdefs.hpp"

namespace OsWrapper
{
  enum class EventMode
  {
    waitAnyBits = 0,    
    waitAllBits = 1,    
  } ;

  constexpr tTime waitForEver = 0;
  extern tEventHandle wCreateEvent(tEvent &) ;
  extern void wDeleteEvent(tEventHandle &) ;
  extern void wSignalEvent(tEventHandle const &, const tEventBits) ;
  extern tEventBits wWaitEvent(tEventHandle const &, const tEventBits, const tTime, OsWrapper::EventMode) ;
  
  constexpr tEventBits defaultMask = {0b11111111} ;
  
  class Event
  {
    public:
      explicit inline Event(tTime delay, tEventBits maskBits) : timeOut{delay}, 
                                                       mask{maskBits} 
      {
        handle = wCreateEvent(event) ;
      }
      
      inline ~Event()
      {
        wDeleteEvent(handle) ;
      }
      
      inline void Signal()
      {
        wSignalEvent(handle, mask) ;
      }
	  
      inline tEventBits Wait(const EventMode mode = EventMode::waitAnyBits,
                             const tEventBits maskBits = defaultMask) const
      {
        return wWaitEvent(handle, maskBits, timeOut, mode);
      }
      
      inline void SetTimeout(tTime delay)
      {
        timeOut = delay ;
      }
      
      inline void SetMaskBits(tEventBits maskBits)
      {
        mask = maskBits ;
      }

    private:
      tEventHandle handle {0} ;
      tEvent event;
      tTime timeOut = 1000ms ;      
      tEventBits mask {defaultMask} ;
  } ;
} ;

#endif // EVENT_HPP
