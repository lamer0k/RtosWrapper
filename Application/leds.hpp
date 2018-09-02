#ifndef LED1_H
#define LED1_H
#include "utils.hpp"
#include "GpioPort/gpioports.hpp"
#include "../Common/singleton.hpp"

class Led 
{
  public:
    Led(IPort & portName): port{portName} 
    {
    };
    void SwitchOn()
    {
      port.Set();
    };
    void SwitchOff()
    {
      port.Clear();
    };
    void Toggle()
    {
      port.Toggle();
    };  
  private:
   IPort &port;
};

#endif //LED1_H