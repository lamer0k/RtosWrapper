//
// Created by Sergey on 27.08.2018.
//

#ifndef UNTITLED_GPIOPORT_HPP
#define UNTITLED_GPIOPORT_HPP
#include "../../Common/susudefs.hpp"
#include "../../Common/utils.hpp"

template<typename T>
class GpioPort
{

  public:
    enum class PortMode : tU32
    {
        Output = 0,
        Input = 1
    };
    void Set()
    {

    }
    void Clear()
    {

    }
    void Toggle()
    {

    }

  private:
    T & port;
};


#endif //UNTITLED_GPIOPORT_HPP
