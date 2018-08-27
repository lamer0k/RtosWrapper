//
// Created by Sergey on 27.08.2018.
//

#ifndef UNTITLED_GPIOPORTA_HPP
#define UNTITLED_GPIOPORTA_HPP
#include "gpioport.hpp"
#include "../../CMSIS/stm32f411xe.h"

template<tU32 pin>
class GpioPortA: public GpioPort<GPIO_TypeDef, pin>
{
  public:
    explicit GpioPortA(): GpioPort<GPIO_TypeDef, pin>(*GPIOA) {};
};

template<tU32 pin>
class GpioPortB: public GpioPort<GPIO_TypeDef, pin>
{
  public:
    explicit GpioPortB(): GpioPort<GPIO_TypeDef, pin>(*GPIOB) {};
};

template<tU32 pin>
class GpioPortC: public GpioPort<GPIO_TypeDef, pin>
{
  public:
    explicit GpioPortC(): GpioPort<GPIO_TypeDef, pin>(*GPIOC) {};
};

template<tU32 pin>
class GpioPortD: public GpioPort<GPIO_TypeDef, pin>
{
  public:
    explicit GpioPortD(): GpioPort<GPIO_TypeDef, pin>(*GPIOD) {};
};

#endif //UNTITLED_GPIOPORTA_HPP
