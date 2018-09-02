#ifndef LEDSCONTROLLER_H
#define LEDSCONTROLLER_H
#include "utils.hpp"
#include "ledsdriver.hpp"
#include "ledsmodes.hpp"
#include "../Common/singleton.hpp"
#include <array>
#include <functional>

class LedsController : public Singleton<LedsController>
{
  public:
    inline void Update(tU8 value = 0)
    {
      modes[currentMode].get().Do(value);
    }
    
    inline void NextMode()
    {
      currentMode++;
      if (currentMode >= modes.size())
      {
        currentMode = 0U;
      }
      modes[currentMode].get().Reset();
    }    
    friend class Singleton<LedsController>;
  private:
    LedsController() = default;        
    tU8 currentMode = 0U;
    using tModesArray = std::array<std::reference_wrapper<LedsMode>, 6U>;    
    tModesArray modes = { 
                          LedsModeTree::GetInstance(),
                          LedsModeChess::GetInstance(),
                          LedsModeAll::GetInstance(),
                          LedsModeFirstPair::GetInstance(),
                          LedsModeInsideOutside::GetInstance(),
                          LedsModeAdc::GetInstance()                                              
                        }; 
};
#endif //LEDSCONTROLLER_H