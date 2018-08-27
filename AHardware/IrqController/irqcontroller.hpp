//
// Created by Sergey on 27.08.2018.
//

#ifndef UNTITLED_IRQCONTROLLER_HPP
#define UNTITLED_IRQCONTROLLER_HPP
#include "../../CMSIS/stm32f411xe.h"

class IrqController
{
  public:
    static void HandleIrqExtiLine15_10();
};

#endif //UNTITLED_IRQCONTROLLER_HPP
