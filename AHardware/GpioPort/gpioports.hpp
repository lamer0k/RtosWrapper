//
// Created by Sergey on 27.08.2018.
//

#ifndef UNTITLED_GPIOPORTS_HPP
#define UNTITLED_GPIOPORTS_HPP
#include "gpioport.hpp"
#include "../../Common/singleton.hpp"
#include "../../CMSIS/stm32f411xe.h"

template<tU32 pin>
class GpioPortA: public GpioPort<pin>, public Singleton<GpioPortA<pin>>
{
  friend class Singleton<GpioPortA>;  
  private:
    GpioPortA(): GpioPort<pin>(*GPIOA) {};
};

template<tU32 pin>
class GpioPortB: public GpioPort<pin>, public Singleton<GpioPortB<pin>>
{
  friend class Singleton<GpioPortB>;    
  private:
    GpioPortB(): GpioPort<pin>(*GPIOB) {};
};

template<tU32 pin>
class GpioPortC: public GpioPort<pin>, public Singleton<GpioPortC<pin>>
{
  friend class Singleton<GpioPortC>;    
  private:
    GpioPortC(): GpioPort<pin>(*GPIOC) {};
};

template<tU32 pin>
class GpioPortD: public GpioPort<pin>, public Singleton<GpioPortD<pin>>
{
  friend class Singleton<GpioPortD>;    
  private:
    GpioPortD(): GpioPort<pin>(*GPIOD) {};
};

#endif //UNTITLED_GPIOPORTS_HPP
