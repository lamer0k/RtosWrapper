//
// Created by Sergey on 22.12.2018.
//

#ifndef UNTITLED_EXH001ACTION_HPP
#define UNTITLED_EXH001ACTION_HPP
#include "Action.hpp"
#include "singleton.hpp" // for Singleton
#include "memoryobject.hpp" // for RomObject

class Exh001ActionBase : public Action
{
   friend class Singleton<Exh001ActionBase>;
   public:
     void Do() override
     {

     }
  private:
    Exh001ActionBase() = default;
} ;

class Exh001Action: Exh001ActionBase, public Singleton<Exh001ActionBase>
{

};

#endif //UNTITLED_EXH001ACTION_HPP
