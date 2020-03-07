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
#include "RtosFreeRtos.hpp" //for RtosWrapper
#include "eventmode.hpp" // for

namespace OsWrapper
{

  constexpr tTime waitForEver = 0;
  constexpr tEventBits defaultMask = {0b11111111};

  class Event
  {
  public:
    explicit __forceinline Event(tTime delay, tEventBits maskBits) : timeOut{delay},
                                                                     mask{maskBits}
    {
      handle = RtosWrapper::wCreateEvent(event);
    }

    __forceinline ~Event()
    {
      RtosWrapper::wDeleteEvent(handle);
    }

    __forceinline void Signal()
    {
      RtosWrapper::wSignalEvent(handle, mask);
    }

    __forceinline tEventBits Wait(const EventMode mode = EventMode::waitAnyBits,
                           const tEventBits maskBits = defaultMask) const
    {
      return RtosWrapper::wWaitEvent(handle, maskBits, timeOut, mode);
    }

    __forceinline void SetTimeout(tTime delay)
    {
      timeOut = delay;
    }

    __forceinline void SetMaskBits(tEventBits maskBits)
    {
      mask = maskBits;
    }

  private:
    tEventHandle handle{0};
    tEvent event;
    tTime timeOut = 1000ms;
    tEventBits mask{defaultMask};
  };
};

#endif // EVENT_HPP
