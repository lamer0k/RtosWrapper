//
// Created by Sergey on 27.08.2018.
//

#ifndef IPORT_HPP
#define IPORT_HPP

enum class PortMode
{
  Input = 1,
  Output = 0,
};

class IPort
{
  public:          
    virtual void SetMode(PortMode mode) = 0;
    virtual void Set() = 0;    
    virtual void Clear() = 0;
    virtual void Toggle() = 0;
    virtual bool GetState() const = 0;
};


#endif //IPORT_HPP