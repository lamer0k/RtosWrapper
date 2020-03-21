///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.40.2.214/W32 for ARM        21/Mar/2020  14:05:07
// Copyright 1999-2019 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  C:\GitHub\RtosWrapper\startupF411RE.cpp
//    Command line =
//        -f C:\Users\Serge\AppData\Local\Temp\EW6876.tmp
//        (C:\GitHub\RtosWrapper\startupF411RE.cpp -lC
//        C:\GitHub\RtosWrapper\Debug\List -lA C:\GitHub\RtosWrapper\Debug\List
//        -o C:\GitHub\RtosWrapper\Debug\Obj --no_cse --no_unroll --no_inline
//        --no_code_motion --no_tbaa --no_clustering --no_scheduling --debug
//        --endian=little --cpu=Cortex-M4 -e --fpu=VFPv4_sp --dlib_config
//        "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        8.3\arm\inc\c\DLib_Config_Normal.h" -I C:\GitHub\RtosWrapper\Rtos\ -I
//        C:\GitHub\RtosWrapper\Rtos\wrapper\ -I
//        C:\GitHub\RtosWrapper\Rtos\wrapper\FreeRtos\ -I
//        C:\GitHub\RtosWrapper\Rtos\FreeRtos\ -I
//        C:\GitHub\RtosWrapper\Rtos\FreeRtos\include\ -I
//        C:\GitHub\RtosWrapper\Rtos\FreeRtos\portable\ -I
//        C:\GitHub\RtosWrapper\Rtos\FreeRtos\portable\Common\ -I
//        C:\GitHub\RtosWrapper\Rtos\FreeRtos\portable\IAR\ -I
//        C:\GitHub\RtosWrapper\Rtos\FreeRtos\portable\IAR\ARM_CM4F\ -I
//        C:\GitHub\RtosWrapper\Rtos\FreeRtos\portable\MemMang\ -I
//        C:\GitHub\RtosWrapper\MyTasks\ -I C:\GitHub\RtosWrapper\Common\ -I
//        C:\GitHub\RtosWrapper\CMSIS\ -I C:\GitHub\RtosWrapper\Application\ -I
//        C:\GitHub\RtosWrapper\Application\Diagnostic\ -I
//        C:\GitHub\RtosWrapper\AHardware\ -I
//        C:\GitHub\RtosWrapper\AHardware\GpioPort\ -I
//        C:\GitHub\RtosWrapper\AHardware\IrqController\ -I
//        C:\GitHub\RtosWrapper\..\CortexLib\AbstractHardware\Pin\ -I
//        C:\GitHub\RtosWrapper\..\CortexLib\AbstractHardware\Registers\STM32F411\FieldValues\
//        -I
//        C:\GitHub\RtosWrapper\..\CortexLib\AbstractHardware\Registers\STM32F411\
//        -I C:\GitHub\RtosWrapper\..\CortexLib\AbstractHardware\Registers\ -I
//        C:\GitHub\RtosWrapper\..\CortexLib\AbstractHardware\Port\ -I
//        C:\GitHub\RtosWrapper\..\CortexLib\AbstractHardware\Atomic\ -I
//        C:\GitHub\RtosWrapper\..\CortexLib\Common\ -I
//        C:\GitHub\RtosWrapper\..\CortexLib\Common\Singleton\ -I
//        C:\GitHub\RtosWrapper\..\CortexLib\Common\RomObject\ -Ol --c++
//        --no_exceptions --no_rtti)
//    Locale       =  C
//    List file    =  C:\GitHub\RtosWrapper\Debug\List\startupF411RE.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__CPP_Exceptions", "Disabled"
        RTMODEL "__CPP_Language", "C++14"
        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "0"
        RTMODEL "__dlib_full_locale_support", "0"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        SECTION CSTACK:DATA:NOALLOC:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        EXTERN _ZN13IrqController22HandleIrqExtiLine15_10Ev
        EXTERN _ZTVN10__cxxabiv117__class_type_infoE
        EXTERN __cmain
        EXTWEAK __iar_init_core
        EXTWEAK __iar_init_vfp
        EXTERN vPortSVCHandler
        EXTERN xPortPendSVHandler
        EXTERN xPortSysTickHandler

        PUBLIC _ZN11DummyModule7handlerEv
        PUBLIC _ZN9OsWrapper11RtosWrapper19wHandleSvcInterruptEv
        PUBLIC _ZN9OsWrapper11RtosWrapper23wHandleSysTickInterruptEv
        PUBLIC _ZN9OsWrapper4Rtos18HandleSvcInterruptEv
        PUBLIC _ZN9OsWrapper4Rtos22HandleSysTickInterruptEv
        PUBLIC _ZNSt6chrono12steady_clock9is_steadyE
        PUBLIC _ZNSt6chrono12system_clock12is_monotonicE
        PUBLIC _ZNSt6chrono12system_clock9is_steadyE
        PUBLIC _ZTISt10ctype_base
        PUBLIC _ZTSSt10ctype_base
        PUBLIC __iar_program_start
        PUBLIC __vector_table
        
          CFI Names cfiNames0
          CFI StackFrame CFA R13 DATA
          CFI Resource R0:32, R1:32, R2:32, R3:32, R4:32, R5:32, R6:32, R7:32
          CFI Resource R8:32, R9:32, R10:32, R11:32, R12:32, R13:32, R14:32
          CFI Resource D0:64, D1:64, D2:64, D3:64, D4:64, D5:64, D6:64, D7:64
          CFI Resource D8:64, D9:64, D10:64, D11:64, D12:64, D13:64, D14:64
          CFI Resource D15:64
          CFI EndNames cfiNames0
        
          CFI Common cfiCommon0 Using cfiNames0
          CFI CodeAlign 2
          CFI DataAlign 4
          CFI ReturnAddress R14 CODE
          CFI CFA R13+0
          CFI R0 Undefined
          CFI R1 Undefined
          CFI R2 Undefined
          CFI R3 Undefined
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R11 SameValue
          CFI R12 Undefined
          CFI R14 SameValue
          CFI D0 Undefined
          CFI D1 Undefined
          CFI D2 Undefined
          CFI D3 Undefined
          CFI D4 Undefined
          CFI D5 Undefined
          CFI D6 Undefined
          CFI D7 Undefined
          CFI D8 SameValue
          CFI D9 SameValue
          CFI D10 SameValue
          CFI D11 SameValue
          CFI D12 SameValue
          CFI D13 SameValue
          CFI D14 SameValue
          CFI D15 SameValue
          CFI EndCommon cfiCommon0
        

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTISt10ctype_base
        DATA
// __absolute __class_type_info const <Typeinfo for std::ctype_base>
_ZTISt10ctype_base:
        DATA32
        DC32 _ZTVN10__cxxabiv117__class_type_infoE + 0x8, _ZTSSt10ctype_base

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTSSt10ctype_base
        DATA
// __absolute char const <Typeinfo name for std::ctype_base>[15]
_ZTSSt10ctype_base:
        DATA8
        DC8 "St10ctype_base"
        DC8 0
// C:\GitHub\RtosWrapper\startupF411RE.cpp
//    1 /******************************************************************************
//    2  *  FILENAME: startupF411RE.cpp
//    3  *  
//    4  * DESCRIPTION: Файл с векторами прерывания для Cortex-M. для С++.
//    5  * Поскольку почему-то в Cortex-M все обработчики должны по имени точно 
//    6  *  совпадать с имена в таблице векторов, а название метода из С++ класса 
//    7  * совпасть с такой таблицей со стандратными стартап файлами никак не может
//    8  * то вот приходиться такой же писать на С++. 
//    9  * Внимание!!!!!! Имена классов точно должны совпадать с именами у вас в проекте
//   10  * Можно изменить и сократить количество классов, если есть желание, например
//   11  *
//   12  * Copyright (c) 2018 by South Ural State University
//   13  * Author: Сергей Колодий
//   14  ******************************************************************************/
//   15 
//   16 #pragma language = extended
//   17 #pragma segment = "CSTACK"
//   18 #include "AHardware/IrqController/irqcontroller.hpp"
//   19 #include "Rtos/wrapper/rtos.hpp"

        SECTION `.rodata`:CONST:REORDER:NOROOT(0)
        SECTION_GROUP _ZNSt6chrono12system_clock9is_steadyE
        DATA
// __absolute bool const std::chrono::system_clock::is_steady
_ZNSt6chrono12system_clock9is_steadyE:
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(0)
        SECTION_GROUP _ZNSt6chrono12system_clock12is_monotonicE
        DATA
// __absolute bool const std::chrono::system_clock::is_monotonic
_ZNSt6chrono12system_clock12is_monotonicE:
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(0)
        SECTION_GROUP _ZNSt6chrono12steady_clock9is_steadyE
        DATA
// __absolute bool const std::chrono::steady_clock::is_steady
_ZNSt6chrono12steady_clock9is_steadyE:
        DATA8
        DC8 1

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9OsWrapper11RtosWrapper19wHandleSvcInterruptEv
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function _ZN9OsWrapper11RtosWrapper19wHandleSvcInterruptEv
        THUMB
// __interwork __vfp void OsWrapper::RtosWrapper::wHandleSvcInterrupt()
_ZN9OsWrapper11RtosWrapper19wHandleSvcInterruptEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall vPortSVCHandler
        BL       vPortSVCHandler
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock0

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9OsWrapper11RtosWrapper23wHandleSysTickInterruptEv
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function _ZN9OsWrapper11RtosWrapper23wHandleSysTickInterruptEv
        THUMB
// __interwork __vfp void OsWrapper::RtosWrapper::wHandleSysTickInterrupt()
_ZN9OsWrapper11RtosWrapper23wHandleSysTickInterruptEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall xPortSysTickHandler
        BL       xPortSysTickHandler
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9OsWrapper4Rtos18HandleSvcInterruptEv
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function _ZN9OsWrapper4Rtos18HandleSvcInterruptEv
        THUMB
// __interwork __vfp void OsWrapper::Rtos::HandleSvcInterrupt()
_ZN9OsWrapper4Rtos18HandleSvcInterruptEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN9OsWrapper11RtosWrapper19wHandleSvcInterruptEv
        BL       _ZN9OsWrapper11RtosWrapper19wHandleSvcInterruptEv
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9OsWrapper4Rtos22HandleSysTickInterruptEv
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function _ZN9OsWrapper4Rtos22HandleSysTickInterruptEv
        THUMB
// __interwork __vfp void OsWrapper::Rtos::HandleSysTickInterrupt()
_ZN9OsWrapper4Rtos22HandleSysTickInterruptEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN9OsWrapper11RtosWrapper23wHandleSysTickInterruptEv
        BL       _ZN9OsWrapper11RtosWrapper23wHandleSysTickInterruptEv
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock3
//   20 
//   21 extern "C" void __iar_program_start( void );
//   22 extern "C" void xPortPendSVHandler(void);
//   23 
//   24 
//   25 class DummyModule
//   26 {
//   27   public:
//   28     static void handler();
//   29 };
//   30 
//   31 using tIntFunct = void(*)();
//   32 //cstat !MISRAC++2008-9-5-1
//   33 using tIntVectItem = union {tIntFunct __fun; void * __ptr;};
//   34 
//   35 // The vector table is normally located at address 0.
//   36 // When debugging in RAM, it can be located in RAM, aligned to at least 2^6.
//   37 // If you need to define interrupt service routines,
//   38 // make a copy of this file and include it in your project.
//   39 // The name "__vector_table" has special meaning for C-SPY:
//   40 // it is where the SP start value is found, and the NVIC vector
//   41 // table register (VTOR) is initialized to this address if != 0.
//   42 
//   43 #pragma location = ".intvec"
//   44 //cstat !MISRAC++2008-0-1-4_b !MISRAC++2008-9-5-1

        SECTION `.intvec`:CONST:REORDER:NOROOT(2)
        DATA
//   45 extern "C" const tIntVectItem __vector_table[] =
__vector_table:
        DATA32
        DC32 SFE(CSTACK), __iar_program_start, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv, 0x0, 0x0
        DC32 0x0, 0x0, _ZN9OsWrapper4Rtos18HandleSvcInterruptEv
        DC32 _ZN11DummyModule7handlerEv, 0x0, xPortPendSVHandler
        DC32 _ZN9OsWrapper4Rtos22HandleSysTickInterruptEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, 0x0, 0x0, 0x0, 0x0
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv, 0x0
        DC32 _ZN13IrqController22HandleIrqExtiLine15_10Ev
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv, 0x0, 0x0
        DC32 0x0, 0x0, _ZN11DummyModule7handlerEv, 0x0
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, 0x0, 0x0, 0x0, 0x0
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
        DC32 _ZN11DummyModule7handlerEv, 0x0, 0x0, _ZN11DummyModule7handlerEv
        DC32 _ZN11DummyModule7handlerEv
//   46 {
//   47   { .__ptr = __sfe( "CSTACK" ) },
//   48   __iar_program_start,
//   49 
//   50   DummyModule::handler,
//   51   DummyModule::handler,
//   52   DummyModule::handler,
//   53   DummyModule::handler,
//   54   DummyModule::handler,
//   55   0,
//   56   0,
//   57   0,
//   58   0,
//   59   OsWrapper::Rtos::HandleSvcInterrupt,
//   60   DummyModule::handler,
//   61   0,
//   62   xPortPendSVHandler,
//   63   OsWrapper::Rtos::HandleSysTickInterrupt,
//   64   //External Interrupts
//   65   DummyModule::handler,         //Window Watchdog
//   66   DummyModule::handler,         //PVD through EXTI Line detect/EXTI16
//   67   DummyModule::handler,         //Tamper and Time Stamp/EXTI21 
//   68   DummyModule::handler,         //RTC Wakeup/EXTI22 
//   69   DummyModule::handler,         //FLASH
//   70   DummyModule::handler,         //RCC
//   71   DummyModule::handler,         //EXTI Line 0
//   72   DummyModule::handler,         //EXTI Line 1
//   73   DummyModule::handler,         //EXTI Line 2
//   74   DummyModule::handler,         //EXTI Line 3
//   75   DummyModule::handler,         //EXTI Line 4
//   76   DummyModule::handler,         //DMA1 Stream 0
//   77   DummyModule::handler,         //DMA1 Stream 1
//   78   DummyModule::handler,         //DMA1 Stream 2
//   79   DummyModule::handler,         //DMA1 Stream 3
//   80   DummyModule::handler,         //DMA1 Stream 4
//   81   DummyModule::handler,         //DMA1 Stream 5
//   82   DummyModule::handler,         //DMA1 Stream 6
//   83   DummyModule::handler,         //ADC1
//   84   0,                            //USB High Priority
//   85   0,                            //USB Low  Priority
//   86   0,                            //DAC
//   87   0,                            //COMP through EXTI Line
//   88   DummyModule::handler,         //EXTI Line 9..5
//   89   DummyModule::handler,         //TIM9/TIM1 Break interrupt 
//   90   DummyModule::handler,         //TIM10/TIM1 Update interrupt
//   91   DummyModule::handler,         //TIM11/TIM1 Trigger/Commutation interrupts
//   92   DummyModule::handler,		//TIM1 Capture Compare interrupt
//   93   DummyModule::handler,         //TIM2  	
//   94   DummyModule::handler,         //TIM3
//   95   DummyModule::handler,         //TIM4
//   96   DummyModule::handler,         //I2C1 Event
//   97   DummyModule::handler,         //I2C1 Error
//   98   DummyModule::handler,         //I2C2 Event
//   99   DummyModule::handler,         //I2C2 Error
//  100   DummyModule::handler,         //SPI1
//  101   DummyModule::handler,         //SPI2
//  102   DummyModule::handler,         //USART1
//  103   DummyModule::handler,         //USART2
//  104   0,
//  105   IrqController::HandleIrqExtiLine15_10,         //EXTI Line 15..10
//  106   DummyModule::handler,         //EXTI Line 17 interrupt / RTC Alarms (A and B) through EXTI line interrupt
//  107   DummyModule::handler,         //EXTI Line 18 interrupt / USB On-The-Go  FS Wakeup through EXTI line interrupt
//  108   0,				//TIM6
//  109   0,				//TIM7  f0
//  110   0,
//  111   0,
//  112   DummyModule::handler,         //DMA1 Stream 7 global interrupt fc
//  113   0,
//  114   DummyModule::handler,	        //SDIO global interrupt
//  115   DummyModule::handler,	        //TIM5 global interrupt
//  116   DummyModule::handler,	        //SPI3 global interrupt
//  117   0,			        // 110
//  118   0,
//  119   0,
//  120   0,
//  121   DummyModule::handler,		//DMA2 Stream0 global interrupt 120
//  122   DummyModule::handler,		//DMA2 Stream1 global interrupt
//  123   DummyModule::handler,		//DMA2 Stream2 global interrupt
//  124   DummyModule::handler,		//DMA2 Stream3 global interrupt
//  125   DummyModule::handler,		//DMA2 Stream4 global interrupt 130
//  126   0,
//  127   0,
//  128   0,
//  129   0,
//  130   0,
//  131   0,
//  132   DummyModule::handler,		//USB On The Go FS global interrupt, 14C
//  133   DummyModule::handler,		//DMA2 Stream5 global interrupt
//  134   DummyModule::handler,		//DMA2 Stream6 global interrupt
//  135   DummyModule::handler,		//DMA2 Stream7 global interrupt
//  136   DummyModule::handler,				//USART6 15C
//  137   DummyModule::handler,         //I2C3 Event
//  138   DummyModule::handler,         //I2C3 Error 164
//  139   0,
//  140   0,
//  141   0,
//  142   0,
//  143   0,
//  144   0,
//  145   0,
//  146   DummyModule::handler,		//FPU 184
//  147   0,
//  148   0,
//  149   DummyModule::handler,		//SPI 4 global interrupt
//  150   DummyModule::handler		//SPI 5 global interrupt
//  151 };
//  152 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function _ZN11DummyModule7handlerEv
          CFI NoCalls
        THUMB
//  153 void DummyModule::handler()   { for(;;) {} } ;
_ZN11DummyModule7handlerEv:
??handler_0:
        B.N      ??handler_0
          CFI EndBlock cfiBlock4
//  154 
//  155 extern "C" void __cmain( void );
//  156 extern "C" __weak void __iar_init_core( void );
//  157 extern "C" __weak void __iar_init_vfp( void );
//  158 
//  159 #pragma required=__vector_table

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function __iar_program_start
        THUMB
//  160 void __iar_program_start( void )
//  161 {
__iar_program_start:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  162   __iar_init_core();
          CFI FunCall __iar_init_core
        BL       __iar_init_core
//  163   __iar_init_vfp();
          CFI FunCall __iar_init_vfp
        BL       __iar_init_vfp
//  164   __cmain();
          CFI FunCall __cmain
        BL       __cmain
//  165 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock5
        REQUIRE __vector_table

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION CSTACK:DATA:NOALLOC:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  166 
// 
// 408 bytes in section .intvec
//  27 bytes in section .rodata
//  50 bytes in section .text
// 
//  18 bytes of CODE  memory (+ 32 bytes shared)
// 408 bytes of CONST memory (+ 27 bytes shared)
//
//Errors: none
//Warnings: none
