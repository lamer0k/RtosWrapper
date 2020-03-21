//
// Created by Sergey on 22.12.2018.
//

#ifndef UNTITLED_EXH002ACTION_HPP
#define UNTITLED_EXH002ACTION_HPP

#include "Action.hpp"
#include "singleton.hpp" // for Singleton
#include "memoryobject.hpp" // for RomObject

class Exh002ActionBase : public Action, RomObject
{
  friend class Singleton<Exh002ActionBase>;
  public:
    void Do() override
    {

    }
  private:
    constexpr Exh002ActionBase() = default;
} ;

class Exh002Action: Exh002ActionBase, public Singleton<Exh002ActionBase>
{

};
#endif //UNTITLED_EXH002ACTION_HPP
