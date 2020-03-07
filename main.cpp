#include "Rtos/wrapper/rtos.hpp"
#include "Rtos/wrapper/mailbox.hpp"
#include "Rtos/wrapper/event.hpp"

#include "MyTasks/mytask.hpp"
#include "MyTasks/led1task.hpp"
#include "rccregisters.hpp"

//#include "Application/Diagnostic/GlobalStatus.hpp"
#include <iostream>
#include <gpioaregisters.hpp>

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
  // RCC->CFGR |= RCC_CFGR_SW_HSI;
  RCC::CFGR::SW::Hsi::Set();
  while (!RCC::CFGR::SWS::Hsi::IsSet())
  {

  }
  //Switch on clock on PortA and PortC
  RCC::AHB1ENRPack<
      RCC::AHB1ENR::GPIOCEN::Enable,
      RCC::AHB1ENR::GPIOAEN::Enable
  >::Set();

  RCC::APB2ENR::SYSCFGEN::Enable::Set();

  //LED1 on PortA.5, set PortA.5 as output
  GPIOA::MODER::MODER5::Output::Set();

  /* LED2 on PortC.9, LED3 on PortC.8, LED4 on PortC.5 so set PortC.5,8,9 as output */
  GPIOC::MODERPack<
      GPIOC::MODER::MODER5::Output,
      GPIOC::MODER::MODER8::Output,
      GPIOC::MODER::MODER9::Output
  >::Set();


  //Button on PortC.13 external interrupt
  // EXTI->RTSR |= EXTI_RTSR_TR13;
  // EXTI->IMR  |= EXTI_IMR_MR13;
  // SYSCFG->EXTICR[3] |= SYSCFG_EXTICR4_EXTI13_PC ;

  // NVIC_EnableIRQ(EXTI15_10_IRQn);

  return 1;
}
}

using OsWrapper::operator ""ms;
OsWrapper::Event event{500ms, 1};

MyTask myTask;
Led1Task led1Task;
OsWrapper::MailBox<int, 10> queue;
//GlobalStatus status;


int main()
{
  using namespace OsWrapper;
  Rtos::CreateThread(myTask, "myTask", ThreadPriority::lowest);
  Rtos::CreateThread(led1Task, "Led1Task");
  Rtos::Start();

  return 0;
}
