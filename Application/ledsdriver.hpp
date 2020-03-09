/*******************************************************************************
*  FILENAME: LedDriver.h
*
*  DESCRIPTION: 
*
*  Copyright (c) 2018 by South Ural State Universaty
******************************************************************************/

#ifndef LEDDRIVER_H
#define LEDDRIVER_H

#include "leds.hpp" // For Led
#include "singleton.hpp" // for Singleton
#include <array>  // for std::array
#include "gpioaregisters.hpp" // for GPIOA
#include "gpiocregisters.hpp" // for GPIOC

constexpr std::size_t ledsCount = 4U;

constexpr std::uint32_t led1Pin = 5U;
constexpr std::uint32_t led2Pin = 9U;
constexpr std::uint32_t led3Pin = 8U;
constexpr std::uint32_t led4Pin = 5U;

enum class LedNum
{
  led1 = 0,
  led2 = 1,
  led3 = 2,
  led4 = 3,
  ledMax = ledsCount - 1
};

class LedsDriver : public Singleton<LedsDriver> 
{ 
  public:    
    inline void SwitchOnAll()
    {
      for(auto it: leds)
      {
        it.get().SwitchOn();
      }
    };
    inline void SwitchOffAll()
    {
      for(auto it: leds)
      {
        it.get().SwitchOff();
      }
    };
    inline void ToggleAll()
    {
      for(auto it: leds)
      {
        it.get().Toggle();
      }
    };
    
    std::size_t GetLedsCount()
    {
      return leds.size();
    };
    
    inline ILed& GetLed(LedNum num)
    {
      return leds[static_cast<std::size_t>(num)];
    }
    friend class Singleton<LedsDriver>;
  private:
    LedsDriver() = default;     
    std::array<std::reference_wrapper<ILed>, ledsCount> leds {
      Led<
        Pin<Port<GPIOA>,
            led1Pin,
            PinWriteable>
            >::GetInstance(),
      Led<
          Pin<Port<GPIOC>,
              led2Pin,
              PinWriteable>
              >::GetInstance(),
       Led<
           Pin<Port<GPIOC>,
               led3Pin,
               PinWriteable>
               >::GetInstance(),
       Led<
           Pin<Port<GPIOC>,
               led4Pin,
               PinWriteable>
               >::GetInstance()
                                    };
  
    
};
#endif