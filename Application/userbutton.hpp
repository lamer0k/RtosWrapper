#ifndef BUTTON_H
#define BUTTON_H
#include "../Common/utils.hpp"
#include "../AHardware/GpioPort/gpioports.hpp"
#include "../Common/singleton.hpp"

constexpr tU32 buttonPin = 13U;

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

class UserButton: public Button, public Singleton<UserButton>
{
    friend class Singleton;
  public:
    static void HandleInterrupt();
  private:
    UserButton(): Button {GpioPortC<buttonPin>::GetInstance()} {};
};
#endif //BUTTON_H