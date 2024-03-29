#ifndef MYTASK_HPP
#define MYTASK_HPP


#include "thread.hpp"
#include "userbutton.hpp"
#include "event.hpp"
#include<array>


class MyTask : public OsWrapper::Thread<200>
{

public:
  virtual void Execute() override;
  MyTask(OsWrapper::Event& event, UserButton& button) : event(event), button(button)
  {
  }
private:
  OsWrapper::Event& event;
  UserButton& button ;
} ;

#endif //MYTASK_HPP
