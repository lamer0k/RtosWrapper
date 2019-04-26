//
// Created by Sergey on 22.12.2018.
//

#ifndef UNTITLED_EXH001ACTION_HPP
#define UNTITLED_EXH001ACTION_HPP
#include "Action.hpp"

class Exh001Action : public Action, public Singleton<Exh001Action>
{
   friend class Singleton<Exh001Action>;
   public:
     void Do() override
     {

     }
  private:
    Exh001Action() = default;
} ;


#endif //UNTITLED_EXH001ACTION_HPP
