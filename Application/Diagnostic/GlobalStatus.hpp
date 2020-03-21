//
// Created by Sergey on 22.12.2018.
//

#ifndef UNTITLED_GLOBALSTATUS_HPP
#define UNTITLED_GLOBALSTATUS_HPP

//#include <cstdint>
#include "../../Common\utils.hpp"
#include "../../Rtos/wrapper/criticalsection.hpp"
#include <array>
#include "Action.hpp"
#include "Exh001Action.hpp"
#include "Exh002Action.hpp"
using tComprehensiveStatus = std::uint64_t ;

struct ActionSubscriber
{
  Action& act;
  tComprehensiveStatus  mask ;
} ;

constexpr tComprehensiveStatus Exh001Mask = 1U;
constexpr tComprehensiveStatus Exh002Mask = 2U;

class GlobalStatus
{
  public:

    inline bool getFieldDeviceMalfunction() const
    {
       return false;
    }

    inline void SetComprehesiveStatusBit(tComprehensiveStatus statusBit)
    {
      if (!utils::checkBit(comprehensiveStatus, statusBit))
      {
        OsWrapper::CriticalSection ie;
        utils::setBit(comprehensiveStatus, statusBit);

      }
    }

  private:
    tComprehensiveStatus comprehensiveStatus;
    using tActionArray = std::array<ActionSubscriber, 2U>;
    static constexpr tActionArray actions =
    {
        ActionSubscriber{
        Exh001Action::GetInstance(),
        Exh001Mask
      },
        ActionSubscriber{
        Exh001Action::GetInstance(),
        Exh001Mask
      }
    } ;

} ;


#endif //UNTITLED_GLOBALSTATUS_HPP
