//
// Created by Sergey on 27.08.2018.
//

#ifndef UNTITLED_GPIOPORT_HPP
#define UNTITLED_GPIOPORT_HPP
#include "../../Common/susudefs.hpp"
#include "../../Common/utils.hpp"
#include "../../CMSIS/stm32f411xe.h"

template<typename T, tU32 pin>
class GpioPort
{
  public:
    enum class PortMode : tU32
    {
      Input = 1,
      Output = 0,
    };
    GpioPort(T &portName): port{portName} {};
    void SetMode(PortMode mode)
    {
      constexpr tU32 outputBits = 1;
      constexpr tU32 inputBits = 3;
      switch (mode)
      {
        case PortMode::Output:
          utils::setBitsAt(port->MODER, outputBits, pin * 2);
          break;

        case PortMode::Input:
        default:
          utils::clearBitsAt(port->MODER, inputBits, pin * 2);
          break;
      }
    }
    void Set()
    {
      utils::setBitValue(port->BSRR, pin);
    }
    void Clear()
    {
      utils::setBitValue(port->BSRR, pin << 16);
    }
    void Toggle()
    {
      utils::toggleBit(port->ODR, pin);
    }

  protected:
    T &port;
};


#endif //UNTITLED_GPIOPORT_HPP
