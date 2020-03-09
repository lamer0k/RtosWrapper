#ifndef LEDS_H
#define LEDS_H

#include "gpiocregisters.hpp" // for GPIOC
#include "pin.hpp" // For Pin
#include "singleton.hpp" // for Singleton

struct ILed
{
  virtual void SwitchOn() = 0;

  virtual void SwitchOff() = 0;

  virtual void Toggle() = 0;

};

template<typename Pin>
class Led : public ILed, public Singleton<Led<Pin>>
{
  friend class Singleton<Led<Pin>>;

public:
  __forceinline void SwitchOn() override
  {
    Pin::Set();
  };

  __forceinline void SwitchOff() override
  {
    Pin::Reset();
  };

  __forceinline void Toggle() override
  {
    Pin::Toggle();
  };
private:
  Led()
  {
  }
};


#endif //LEDS_H