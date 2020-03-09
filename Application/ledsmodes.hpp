#ifndef LEDSMODES_H
#define LEDSMODES_H
#include "ledsdriver.hpp"
#include "ledsmode.hpp"
#include "singleton.hpp"

class LedsModeTree : public LedsMode, public Singleton<LedsModeTree>
{
  friend class Singleton<LedsModeTree>;
  public:
    virtual void Do(std::uint8_t value) override
    {
      LedsDriver & driver = LedsDriver::GetInstance();
      if (currentLed >= driver.GetLedsCount())
      {
        currentLed = 0U;
      }
      driver.GetLed(static_cast<LedNum>(currentLed)).Toggle();
      currentLed++;      
    }  
  private:
    LedsModeTree() = default;
};

class LedsModeChess : public LedsMode, public Singleton<LedsModeChess>
{
  friend class Singleton<LedsModeChess>;
  public:
    virtual void Reset() override
    {
      LedsDriver & driver = LedsDriver::GetInstance();
      driver.SwitchOffAll();
      driver.GetLed(LedNum::led1).SwitchOn();
      driver.GetLed(LedNum::led3).SwitchOn();
      currentLed = 0U;
    }
    private:
    LedsModeChess() = default;  
};

class LedsModeAll : public LedsMode, public Singleton<LedsModeAll>
{
  friend class Singleton<LedsModeAll>;
  private:
    LedsModeAll() = default;  
};


class LedsModeFirstPair : public LedsMode, public Singleton<LedsModeFirstPair>
{
  friend class Singleton<LedsModeFirstPair>;
  public:
    virtual void Reset() override
    {
      LedsDriver & driver = LedsDriver::GetInstance();
      driver.SwitchOffAll();
      driver.GetLed(LedNum::led1).SwitchOn();
      driver.GetLed(LedNum::led2).SwitchOn();
      currentLed = 0U;
    }
   private:
    LedsModeFirstPair() = default;  
};

class LedsModeInsideOutside : public LedsMode, public Singleton<LedsModeInsideOutside>
{
  friend class Singleton<LedsModeInsideOutside>;
  public:
    virtual void Reset() override
    {
      LedsDriver & driver = LedsDriver::GetInstance();
      driver.SwitchOffAll();
      driver.GetLed(LedNum::led3).SwitchOn();
      driver.GetLed(LedNum::led2).SwitchOn();
      currentLed = 0U;
    }
   private:
    LedsModeInsideOutside() = default;  
};


class LedsModeAdc : public LedsMode, public Singleton<LedsModeAdc>
{
  friend class Singleton<LedsModeAdc>;
  public:
    virtual void Do(std::uint8_t value) override
    {
      LedsDriver & driver = LedsDriver::GetInstance(); 
      for (std::size_t i = 0U; i < driver.GetLedsCount(); i++)
      {
        if (i < value)
        {
          driver.GetLed(static_cast<LedNum>(i)).SwitchOn();
        } else
        {
          driver.GetLed(static_cast<LedNum>(i)).SwitchOff();
        }
      }          
    }
    private:
    LedsModeAdc() = default;  
};


#endif //LEDSMODES_H