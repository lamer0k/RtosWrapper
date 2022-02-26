#ifndef __LED1TASK_HPP
#define __LED1TASK_HPP

#include "userbutton.hpp" // for Button
#include "event.hpp" // for Event ;
#include "ledscontroller.hpp" // for LedsController
#include "thread.hpp" //For OsWrapper::Thread
#include <array>

class Led1Task : public OsWrapper::Thread<static_cast<std::size_t>(OsWrapper::StackDepth::minimal)>
{
 public:
    virtual void Execute() override;

    Led1Task(OsWrapper::Event& event, LedsController& controller) : event(event), ledsCntr(controller)
    {
    }
 private:
    OsWrapper::Event& event;
    LedsController& ledsCntr;
};
#endif //__LED1TASK_HPP
