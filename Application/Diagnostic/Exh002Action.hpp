//
// Created by Sergey on 22.12.2018.
//

#ifndef UNTITLED_EXH002ACTION_HPP
#define UNTITLED_EXH002ACTION_HPP

#include "Action.hpp"
#include "singleton.hpp"

class Exh002Action : public Action, public Singleton<Exh002Action>
{
  friend class Singleton<Exh002Action>;
  public:
    void Do() override
    {

    }
  private:
    Exh002Action() = default;
} ;
#endif //UNTITLED_EXH002ACTION_HPP
