#ifndef LEDSCONTROLLER_H
#define LEDSCONTROLLER_H

#include "ledsdriver.hpp" // for LedsDriver
#include "ledsmodes.hpp"  // for LedsMode
#include "singleton.hpp" // for Singleton
#include <array>     // for std::array


class LedsController : public Singleton<LedsController>
{
  public:
    inline void Update(std::uint8_t value = 0)
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
    std::size_t currentMode = 0U;
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