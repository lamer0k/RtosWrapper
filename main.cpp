#include "rtos.hpp"         // for Rtos
#include "event.hpp"        // for Event
#include "rccregisters.hpp" // for RCC

std::uint32_t SystemCoreClock = 16'000'000U;

extern "C" {
int __low_level_init(void)
{
  //Switch on external 16 MHz oscillator
  RCC::CR::HSION::On::Set();
  while (RCC::CR::HSIRDY::NotReady::IsSet())
  {

  }
  //Switch system clock on external oscillator
  RCC::CFGR::SW::Hsi::Set();
  while (!RCC::CFGR::SWS::Hsi::IsSet())
  {

  }
  
  RCC::APB2ENR::SYSCFGEN::Enable::Set(); 
  

  return 1;
}
}

//OsWrapper::Event event{500ms, 1}; //FIXME Чисто для примера

//MyTask myTask(event, UserButton::GetInstance()); //FIXME Чисто для примера


int main()
{
  using namespace OsWrapper;
  //Rtos::CreateThread(myTask, "myTask", ThreadPriority::lowest);   //FIXME Чисто для примера
  Rtos::Start();

  return 0;
}
