/******************************************************************************
 *  FILENAME: startupF411RE.cpp
 *  
 * DESCRIPTION: Файл с векторами прерывания для Cortex-M. для С++.
 * Поскольку почему-то в Cortex-M все обработчики должны по имени точно 
 *  совпадать с имена в таблице векторов, а название метода из С++ класса 
 * совпасть с такой таблицей со стандратными стартап файлами никак не может
 * то вот приходиться такой же писать на С++. 
 * Внимание!!!!!! Имена классов точно должны совпадать с именами у вас в проекте
 * Можно изменить и сократить количество классов, если есть желание, например
 *
 * Copyright (c) 2018 by South Ural State University
 * Author: Сергей Колодий
 ******************************************************************************/

#pragma language = extended
#pragma segment = "CSTACK"
#include "AHardware/IrqController/irqcontroller.hpp"
#include "Rtos/wrapper/rtos.hpp"

extern "C" void __iar_program_start( void );
extern "C" void xPortPendSVHandler(void);


class DummyModule
{
  public:
    static void handler();
};

using tIntFunct = void(*)();
//cstat !MISRAC++2008-9-5-1
using tIntVectItem = union {tIntFunct __fun; void * __ptr;};

// The vector table is normally located at address 0.
// When debugging in RAM, it can be located in RAM, aligned to at least 2^6.
// If you need to define interrupt service routines,
// make a copy of this file and include it in your project.
// The name "__vector_table" has special meaning for C-SPY:
// it is where the SP start value is found, and the NVIC vector
// table register (VTOR) is initialized to this address if != 0.

#pragma location = ".intvec"
//cstat !MISRAC++2008-0-1-4_b !MISRAC++2008-9-5-1
extern "C" const tIntVectItem __vector_table[] =
{
  { .__ptr = __sfe( "CSTACK" ) },
  __iar_program_start,

  DummyModule::handler,
  DummyModule::handler,
  DummyModule::handler,
  DummyModule::handler,
  DummyModule::handler,
  0,
  0,
  0,
  0,
  OsWrapper::Rtos::HandleSvcInterrupt,
  DummyModule::handler,
  0,
  xPortPendSVHandler,
  OsWrapper::Rtos::HandleSysTickInterrupt,
  //External Interrupts
  DummyModule::handler,         //Window Watchdog
  DummyModule::handler,         //PVD through EXTI Line detect/EXTI16
  DummyModule::handler,         //Tamper and Time Stamp/EXTI21 
  DummyModule::handler,         //RTC Wakeup/EXTI22 
  DummyModule::handler,         //FLASH
  DummyModule::handler,         //RCC
  DummyModule::handler,         //EXTI Line 0
  DummyModule::handler,         //EXTI Line 1
  DummyModule::handler,         //EXTI Line 2
  DummyModule::handler,         //EXTI Line 3
  DummyModule::handler,         //EXTI Line 4
  DummyModule::handler,         //DMA1 Stream 0
  DummyModule::handler,         //DMA1 Stream 1
  DummyModule::handler,         //DMA1 Stream 2
  DummyModule::handler,         //DMA1 Stream 3
  DummyModule::handler,         //DMA1 Stream 4
  DummyModule::handler,         //DMA1 Stream 5
  DummyModule::handler,         //DMA1 Stream 6
  DummyModule::handler,         //ADC1
  0,                            //USB High Priority
  0,                            //USB Low  Priority
  0,                            //DAC
  0,                            //COMP through EXTI Line
  DummyModule::handler,         //EXTI Line 9..5
  DummyModule::handler,         //TIM9/TIM1 Break interrupt 
  DummyModule::handler,         //TIM10/TIM1 Update interrupt
  DummyModule::handler,         //TIM11/TIM1 Trigger/Commutation interrupts
  DummyModule::handler,		//TIM1 Capture Compare interrupt
  DummyModule::handler,         //TIM2  	
  DummyModule::handler,         //TIM3
  DummyModule::handler,         //TIM4
  DummyModule::handler,         //I2C1 Event
  DummyModule::handler,         //I2C1 Error
  DummyModule::handler,         //I2C2 Event
  DummyModule::handler,         //I2C2 Error
  DummyModule::handler,         //SPI1
  DummyModule::handler,         //SPI2
  DummyModule::handler,         //USART1
  DummyModule::handler,         //USART2
  0,
  IrqController::HandleIrqExtiLine15_10,         //EXTI Line 15..10
  DummyModule::handler,         //EXTI Line 17 interrupt / RTC Alarms (A and B) through EXTI line interrupt
  DummyModule::handler,         //EXTI Line 18 interrupt / USB On-The-Go  FS Wakeup through EXTI line interrupt
  0,				//TIM6
  0,				//TIM7  f0
  0,
  0,
  DummyModule::handler,         //DMA1 Stream 7 global interrupt fc
  0,
  DummyModule::handler,	        //SDIO global interrupt
  DummyModule::handler,	        //TIM5 global interrupt
  DummyModule::handler,	        //SPI3 global interrupt
  0,			        // 110
  0,
  0,
  0,
  DummyModule::handler,		//DMA2 Stream0 global interrupt 120
  DummyModule::handler,		//DMA2 Stream1 global interrupt
  DummyModule::handler,		//DMA2 Stream2 global interrupt
  DummyModule::handler,		//DMA2 Stream3 global interrupt
  DummyModule::handler,		//DMA2 Stream4 global interrupt 130
  0,
  0,
  0,
  0,
  0,
  0,
  DummyModule::handler,		//USB On The Go FS global interrupt, 14C
  DummyModule::handler,		//DMA2 Stream5 global interrupt
  DummyModule::handler,		//DMA2 Stream6 global interrupt
  DummyModule::handler,		//DMA2 Stream7 global interrupt
  DummyModule::handler,				//USART6 15C
  DummyModule::handler,         //I2C3 Event
  DummyModule::handler,         //I2C3 Error 164
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  DummyModule::handler,		//FPU 184
  0,
  0,
  DummyModule::handler,		//SPI 4 global interrupt
  DummyModule::handler		//SPI 5 global interrupt
};

void DummyModule::handler()   { for(;;) {} } ;

extern "C" void __cmain( void );
extern "C" __weak void __iar_init_core( void );
extern "C" __weak void __iar_init_vfp( void );

#pragma required=__vector_table
void __iar_program_start( void )
{
  __iar_init_core();
  __iar_init_vfp();
  __cmain();
}

