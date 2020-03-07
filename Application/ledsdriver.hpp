/*******************************************************************************
*  FILENAME: LedDriver.h
*
*  DESCRIPTION: 
*
*  Copyright (c) 2018 by South Ural State Universaty
******************************************************************************/

#ifndef LEDDRIVER_H
#define LEDDRIVER_H

#include "leds.hpp"
#include "../Common/singleton.hpp"
#include <array>
#include "gpioaregisters.hpp" // for GPIOA
#include "gpiocregisters.hpp" // for GPIOC

constexpr tU8 ledsCount = 4U;

constexpr tU32 led1Pin = 5U;
constexpr tU32 led2Pin = 9U;
constexpr tU32 led3Pin = 8U;
constexpr tU32 led4Pin = 5U;

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
        it->SwitchOn();
      }
    };
    inline void SwitchOffAll()
    {
      for(auto it: leds)
      {
        it->SwitchOff();
      }
    };
    inline void ToggleAll()
    {
      for(auto it: leds)
      {
        it->Toggle();
      }
    };
    
    inline tU8 GetLedsCount()
    {
      return leds.size();
    };
    
    inline ILed& GetLed(LedNum num)
    {
      return *leds[static_cast<tU8>(num)];
    }
    friend class Singleton<LedsDriver>;
  private:
    LedsDriver() = default;     
    std::array<ILed*, ledsCount> leds {
      &Led<
        Pin<Port<GPIOA>,
            led1Pin,
            PinWriteable>
            >::GetInstance(),
      &Led<
          Pin<Port<GPIOC>,
              led2Pin,
              PinWriteable>
              >::GetInstance(),
       &Led<
           Pin<Port<GPIOC>,
               led3Pin,
               PinWriteable>
               >::GetInstance(),
       &Led<
           Pin<Port<GPIOC>,
               led4Pin,
               PinWriteable>
               >::GetInstance()
                                    };
  
    
};
#endif