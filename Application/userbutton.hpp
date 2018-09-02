#ifndef __BUTTON_H
#define __BUTTON_H
#include "utils.hpp"
#include "../AHardware/GpioPort/gpioports.hpp"
#include "../Common/singleton.hpp"
#include "../AHardware/GpioPort/iport.hpp"
#include "../Common/susudefs.hpp"

class Button
{
  public:
    Button(IPort & portName) : port{portName} {};
    inline bool IsPressed()const
    {
      return port.GetState();      
    }    
  private:
    IPort &port;
};

constexpr tU32 buttonPin = 13U;
class UserButton: public Button, public Singleton<UserButton> 
{
  friend class Singleton;
  public:
   void HandleInterrupt();
  private:
    UserButton(): Button {GpioPortC<buttonPin>::GetInstance()} 
    {
    };
       
};
#endif //__BUTTON_H