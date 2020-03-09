#ifndef LEDSMODE_H
#define LEDSMODE_H
#include "ledsdriver.hpp"

class LedsMode 
{
  public:
    virtual void Do(std::uint8_t value = 0U) 
    {
      LedsDriver::GetInstance().ToggleAll();       
    } 
      
    virtual void Reset()
    {
      LedsDriver::GetInstance().SwitchOffAll();
      currentLed = 0U;
    }
  protected:
    std::size_t currentLed = 0U; 
   LedsMode() = default;
};

#endif //LEDSMODE_H