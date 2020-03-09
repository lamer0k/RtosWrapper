#ifndef __BUTTON_H
#define __BUTTON_H

#include "singleton.hpp" // for Singleton
#include "gpiocregisters.hpp" // for GPIOC
#include "pin.hpp" // For Pin
#include "port.hpp" // For Port
#include "susudefs.hpp" // for __forcinline


template<typename Pin>
class Button : public Singleton<Button<Pin>>
{
  friend class Singleton<Button<Pin>>;
public:

  __forceinline inline bool IsPressed() const
  {
    return (Pin::Get() != 1U);
  }

private:
  Button()
  {
  };
};

//Button configuration
constexpr std::uint32_t buttonPin = 13U;
using PinButton = Pin<Port<GPIOC>, buttonPin, PinReadable> ;

using UserButton = Button<PinButton> ;

#endif //__BUTTON_H