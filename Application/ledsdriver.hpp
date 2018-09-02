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
#include "../AHardware/GpioPort/gpioports.hpp"
#include <array>

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
        it.SwitchOn();
      }
    };
    inline void SwitchOffAll()
    {
      for(auto it: leds)
      {
        it.SwitchOff();
      }
    };
    inline void ToggleAll()
    {
      for(auto it: leds)
      {
        it.Toggle();
      }
    };
    
    inline tU8 GetLedsCount()
    {
      return leds.size();
    };
    
    inline Led & GetLed(LedNum num)
    {
      return leds[static_cast<tU8>(num)];
    }
    friend class Singleton<LedsDriver>;
  private:
    LedsDriver() = default;     
    std::array<Led, ledsCount> leds {  Led(GpioPortA<led1Pin>::GetInstance()),
                                       Led(GpioPortC<led2Pin>::GetInstance()),        
                                       Led(GpioPortC<led3Pin>::GetInstance()),
                                       Led(GpioPortC<led4Pin>::GetInstance())
                                    };
  
    
};
#endif