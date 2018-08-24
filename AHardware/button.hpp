#ifndef __BUTTON_H
#define __BUTTON_H
#include "utils.hpp"
#include "stm32f411xe.h"

class Button
{
  public:
    Button(GPIO_TypeDef &portName, unsigned int pinNum): port(portName),
      pin(pinNum) {};
      inline bool IsPressed() { 
        using namespace utils;
        return !checkBit(port.IDR, pin);
      }
      
    static void HandleInterrupt();    

  private:
    GPIO_TypeDef &port;
    unsigned int pin;
};
#endif //__BUTTON_H