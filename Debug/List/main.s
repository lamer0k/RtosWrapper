///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.40.2.214/W32 for ARM        21/Mar/2020  14:05:07
// Copyright 1999-2019 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  C:\GitHub\RtosWrapper\main.cpp
//    Command line =
//        -f C:\Users\Serge\AppData\Local\Temp\EW670A.tmp
//        (C:\GitHub\RtosWrapper\main.cpp -lC C:\GitHub\RtosWrapper\Debug\List
//        -lA C:\GitHub\RtosWrapper\Debug\List -o
//        C:\GitHub\RtosWrapper\Debug\Obj --no_cse --no_unroll --no_inline
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
//    List file    =  C:\GitHub\RtosWrapper\Debug\List\main.s
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
        #define SHT_INIT_ARRAY 0xe

        EXTERN _ZTV6MyTask
        EXTERN _ZTV8Led1Task
        EXTERN _ZTVN10__cxxabiv117__class_type_infoE
        EXTERN _ZTVN10__cxxabiv120__si_class_type_infoE
        EXTERN _ZTVN10__cxxabiv121__vmi_class_type_infoE
        EXTERN __aeabi_assert
        EXTERN __aeabi_atexit
        EXTERN __aeabi_ldivmod
        EXTERN __aeabi_memset
        EXTERN __dso_handle
        EXTWEAK __iar_EmptyStepPoint
        EXTERN vEventGroupDelete
        EXTERN vTaskStartScheduler
        EXTERN xEventGroupCreateStatic
        EXTERN xTaskCreateStatic
        EXTERN xTaskGetTickCount

        PUBLIC SystemCoreClock
        PUBLIC _ZGVN9SingletonI10LedsDrivervJEE8instanceE
        PUBLIC _ZGVN9SingletonI14LedsControllervJEE8instanceE
        PUBLIC _ZGVN9SingletonI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEvJEE8instanceE
        PUBLIC _ZGVN9SingletonI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEvJEE8instanceE
        PUBLIC _ZGVN9SingletonI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEvJEE8instanceE
        PUBLIC _ZGVN9SingletonI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEvJEE8instanceE
        PUBLIC _ZGVN9SingletonI6ButtonI3PinI4PortI5GPIOCELh13E11PinReadableEEvJEE8instanceE
        PUBLIC _ZN10LedsDriver12GetLedsCountEv
        PUBLIC _ZN10LedsDriver12SwitchOffAllEv
        PUBLIC _ZN10LedsDriver6GetLedE6LedNum
        PUBLIC _ZN10LedsDriver9ToggleAllEv
        PUBLIC _ZN10LedsDriverC1Ev
        PUBLIC _ZN11LedsModeAdc2DoEh
        PUBLIC _ZN12GlobalStatus7actionsE
        PUBLIC _ZN12LedsModeTree2DoEh
        PUBLIC _ZN12RegisterBaseILj1073872916ELj32E13ReadWriteModeE6ToggleIS0_vEEvj
        PUBLIC _ZN12RegisterBaseILj1073872920ELj32E9WriteModeE5WriteIS0_vEEvj
        PUBLIC _ZN12RegisterBaseILj1073874964ELj32E13ReadWriteModeE6ToggleIS0_vEEvj
        PUBLIC _ZN12RegisterBaseILj1073874968ELj32E9WriteModeE5WriteIS0_vEEvj
        PUBLIC _ZN13LedsModeChess5ResetEv
        PUBLIC _ZN14FieldValueBaseI18RCC_CFGR_SW_ValuesIN3RCC4CFGRELj0ELj2E13ReadWriteModeNS1_11RCCCFGRBaseEES4_Lj0EE3SetIS3_vEEvv
        PUBLIC _ZN14FieldValueBaseI19RCC_CFGR_SWS_ValuesIN3RCC4CFGRELj2ELj2E8ReadModeNS1_11RCCCFGRBaseEES4_Lj0EE5IsSetIS3_vEEbv
        PUBLIC _ZN14FieldValueBaseI19RCC_CR_HSION_ValuesIN3RCC2CRELj0ELj1E13ReadWriteModeNS1_9RCCCRBaseEES4_Lj1EE3SetIS3_vEEvv
        PUBLIC _ZN14FieldValueBaseI20RCC_CR_HSIRDY_ValuesIN3RCC2CRELj1ELj1E8ReadModeNS1_9RCCCRBaseEES4_Lj0EE5IsSetIS3_vEEbv
        PUBLIC _ZN14FieldValueBaseI25RCC_AHB1ENR_DMA2EN_ValuesIN3RCC7APB2ENRELj14ELj1E13ReadWriteModeNS1_14RCCAPB2ENRBaseEES4_Lj1EE3SetIS3_vEEvv
        PUBLIC _ZN14FieldValueBaseI26GPIOA_MODER_MODER15_ValuesIN5GPIOA5MODERELj10ELj2E13ReadWriteModeNS1_14GPIOAMODERBaseEES4_Lj1EE3SetIS3_vEEvv
        PUBLIC _ZN14LedsControllerC1Ev
        PUBLIC _ZN16Exh001ActionBase2DoEv
        PUBLIC _ZN17LedsModeFirstPair5ResetEv
        PUBLIC _ZN21LedsModeInsideOutside5ResetEv
        PUBLIC _ZN3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE6ToggleEv
        PUBLIC _ZN3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE8SwitchOnEv
        PUBLIC _ZN3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE9SwitchOffEv
        PUBLIC _ZN3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEC1Ev
        PUBLIC _ZN3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE6ToggleEv
        PUBLIC _ZN3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE8SwitchOnEv
        PUBLIC _ZN3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE9SwitchOffEv
        PUBLIC _ZN3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEC1Ev
        PUBLIC _ZN3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE6ToggleEv
        PUBLIC _ZN3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE8SwitchOnEv
        PUBLIC _ZN3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE9SwitchOffEv
        PUBLIC _ZN3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEC1Ev
        PUBLIC _ZN3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE6ToggleEv
        PUBLIC _ZN3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE8SwitchOnEv
        PUBLIC _ZN3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE9SwitchOffEv
        PUBLIC _ZN3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEC1Ev
        PUBLIC _ZN3PinI4PortI5GPIOAELh5E12PinWriteableE3SetIS3_vEEvv
        PUBLIC _ZN3PinI4PortI5GPIOAELh5E12PinWriteableE5ResetIS3_vEEvv
        PUBLIC _ZN3PinI4PortI5GPIOAELh5E12PinWriteableE6ToggleIS3_vEEvv
        PUBLIC _ZN3PinI4PortI5GPIOCELh5E12PinWriteableE3SetIS3_vEEvv
        PUBLIC _ZN3PinI4PortI5GPIOCELh5E12PinWriteableE5ResetIS3_vEEvv
        PUBLIC _ZN3PinI4PortI5GPIOCELh5E12PinWriteableE6ToggleIS3_vEEvv
        PUBLIC _ZN3PinI4PortI5GPIOCELh8E12PinWriteableE3SetIS3_vEEvv
        PUBLIC _ZN3PinI4PortI5GPIOCELh8E12PinWriteableE5ResetIS3_vEEvv
        PUBLIC _ZN3PinI4PortI5GPIOCELh8E12PinWriteableE6ToggleIS3_vEEvv
        PUBLIC _ZN3PinI4PortI5GPIOCELh9E12PinWriteableE3SetIS3_vEEvv
        PUBLIC _ZN3PinI4PortI5GPIOCELh9E12PinWriteableE5ResetIS3_vEEvv
        PUBLIC _ZN3PinI4PortI5GPIOCELh9E12PinWriteableE6ToggleIS3_vEEvv
        PUBLIC _ZN4ILedC1Ev
        PUBLIC _ZN4ILedC2Ev
        PUBLIC _ZN4PortI5GPIOAE3SetEj
        PUBLIC _ZN4PortI5GPIOAE5ResetEj
        PUBLIC _ZN4PortI5GPIOAE6ToggleEj
        PUBLIC _ZN4PortI5GPIOCE3SetEj
        PUBLIC _ZN4PortI5GPIOCE5ResetEj
        PUBLIC _ZN4PortI5GPIOCE6ToggleEj
        PUBLIC _ZN6MyTaskC1ERN9OsWrapper5EventER6ButtonI3PinI4PortI5GPIOCELh13E11PinReadableEE
        PUBLIC _ZN8Led1TaskC1ERN9OsWrapper5EventER14LedsController
        PUBLIC _ZN8LedsMode2DoEh
        PUBLIC _ZN8LedsMode5ResetEv
        PUBLIC _ZN8RegisterILj1073874944ELj32E13ReadWriteModeN5GPIOC14GPIOCMODERBaseEJ10FieldValueI26GPIOC_MODER_MODER15_ValuesINS1_5MODERELj10ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj16ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj18ELj2ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvv
        PUBLIC _ZN8RegisterILj1073887280ELj32E13ReadWriteModeN3RCC14RCCAHB1ENRBaseEJ10FieldValueI25RCC_AHB1ENR_DMA2EN_ValuesINS1_7AHB1ENRELj2ELj1ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj0ELj1ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvv
        PUBLIC _ZN9OsWrapper11RtosWrapper12wCreateEventER19xSTATIC_EVENT_GROUP
        PUBLIC _ZN9OsWrapper11RtosWrapper12wDeleteEventERPv
        PUBLIC _ZN9OsWrapper11RtosWrapper13wCreateThreadINS_4RtosE6MyTaskEEvRT0_PKcNS_14ThreadPriorityEtPj
        PUBLIC _ZN9OsWrapper11RtosWrapper13wCreateThreadINS_4RtosE8Led1TaskEEvRT0_PKcNS_14ThreadPriorityEtPj
        PUBLIC _ZN9OsWrapper11RtosWrapper6wStartEv
        PUBLIC _ZN9OsWrapper11RtosWrapper9wGetTicksEv
        PUBLIC _ZN9OsWrapper4Rtos12CreateThreadI6MyTaskEEvRT_PKcNS_14ThreadPriorityE
        PUBLIC _ZN9OsWrapper4Rtos12CreateThreadI8Led1TaskEEvRT_PKcNS_14ThreadPriorityE
        PUBLIC _ZN9OsWrapper4Rtos3RunEPv
        PUBLIC _ZN9OsWrapper4Rtos5StartEv
        PUBLIC _ZN9OsWrapper5EventC1ENSt6chrono8durationIxSt5ratioILx1ELx1000EEEEj
        PUBLIC _ZN9OsWrapper5EventD1Ev
        PUBLIC _ZN9OsWrapper6ThreadILj128EEC1Ev
        PUBLIC _ZN9OsWrapper6ThreadILj128EEC2Ev
        PUBLIC _ZN9OsWrapper7IThread3RunEv
        PUBLIC _ZN9OsWrapper7IThreadC1Ev
        PUBLIC _ZN9OsWrapper7IThreadC2Ev
        PUBLIC _ZN9SingletonI10LedsDrivervJEE8instanceE
        PUBLIC _ZN9SingletonI11LedsModeAdcvJEE8instanceE
        PUBLIC _ZN9SingletonI11LedsModeAllvJEE8instanceE
        PUBLIC _ZN9SingletonI12LedsModeTreevJEE8instanceE
        PUBLIC _ZN9SingletonI13LedsModeChessvJEE8instanceE
        PUBLIC _ZN9SingletonI14LedsControllervJEE8instanceE
        PUBLIC _ZN9SingletonI16Exh001ActionBasevJEE8instanceE
        PUBLIC _ZN9SingletonI17LedsModeFirstPairvJEE8instanceE
        PUBLIC _ZN9SingletonI21LedsModeInsideOutsidevJEE8instanceE
        PUBLIC _ZN9SingletonI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEvJEE8instanceE
        PUBLIC _ZN9SingletonI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEvJEE8instanceE
        PUBLIC _ZN9SingletonI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEvJEE8instanceE
        PUBLIC _ZN9SingletonI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEvJEE8instanceE
        PUBLIC _ZN9SingletonI6ButtonI3PinI4PortI5GPIOCELh13E11PinReadableEEvJEE8instanceE
        PUBLIC _ZNKSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEdeEv
        PUBLIC _ZNKSt17reference_wrapperI4ILedE3getEv
        PUBLIC _ZNKSt17reference_wrapperI4ILedEcvRS0_Ev
        PUBLIC _ZNKSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEdeEv
        PUBLIC _ZNKSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEeqERKS3_
        PUBLIC _ZNKSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEneERKS3_
        PUBLIC _ZNKSt5arrayISt17reference_wrapperI4ILedELj4EE4sizeEv
        PUBLIC _ZNKSt6chrono8durationIjSt5ratioILx10ELx1000EEE5countEv
        PUBLIC _ZNKSt6chrono8durationIxSt5ratioILx1ELx1000EEE5countEv
        PUBLIC _ZNSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEC1EPS2_j
        PUBLIC _ZNSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEppEv
        PUBLIC _ZNSt17reference_wrapperI4ILedEC1ERS0_
        PUBLIC _ZNSt17reference_wrapperI8LedsModeEC1ERS0_
        PUBLIC _ZNSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEC1EPKS2_j
        PUBLIC _ZNSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEC2EPKS2_j
        PUBLIC _ZNSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEppEv
        PUBLIC _ZNSt5arrayISt17reference_wrapperI4ILedELj4EE3endEv
        PUBLIC _ZNSt5arrayISt17reference_wrapperI4ILedELj4EE5beginEv
        PUBLIC _ZNSt5arrayISt17reference_wrapperI4ILedELj4EEixEj
        PUBLIC _ZNSt5arrayIjLj128EE4dataEv
        PUBLIC _ZNSt6chrono12steady_clock9is_steadyE
        PUBLIC _ZNSt6chrono12system_clock12is_monotonicE
        PUBLIC _ZNSt6chrono12system_clock9is_steadyE
        PUBLIC _ZNSt6chrono13duration_castINS_8durationIjSt5ratioILx10ELx1000EEEExS2_ILx1ELx1000EEEENSt9enable_ifIXsr3std6chrono12_Is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
        PUBLIC _ZNSt6chrono8durationIjSt5ratioILx10ELx1000EEEC1IjvEERKT_
        PUBLIC _ZSt10_AddressofI4ILedEPT_RS1_St17integral_constantIbLb0EE
        PUBLIC _ZSt10_AddressofI8LedsModeEPT_RS1_St17integral_constantIbLb0EE
        PUBLIC _ZSt10_AddressofISt17reference_wrapperI4ILedEEPT_RS3_St17integral_constantIbLb0EE
        PUBLIC _ZSt9addressofI4ILedEPT_RS1_
        PUBLIC _ZSt9addressofI8LedsModeEPT_RS1_
        PUBLIC _ZSt9addressofISt17reference_wrapperI4ILedEEPT_RS3_
        PUBLIC _ZTI11LedsModeAdc
        PUBLIC _ZTI11LedsModeAll
        PUBLIC _ZTI12LedsModeTree
        PUBLIC _ZTI13LedsModeChess
        PUBLIC _ZTI16Exh001ActionBase
        PUBLIC _ZTI17LedsModeFirstPair
        PUBLIC _ZTI21LedsModeInsideOutside
        PUBLIC _ZTI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE
        PUBLIC _ZTI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE
        PUBLIC _ZTI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE
        PUBLIC _ZTI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE
        PUBLIC _ZTI4ILed
        PUBLIC _ZTI6Action
        PUBLIC _ZTI8LedsMode
        PUBLIC _ZTI9RomObject
        PUBLIC _ZTI9SingletonI11LedsModeAdcvJEE
        PUBLIC _ZTI9SingletonI11LedsModeAllvJEE
        PUBLIC _ZTI9SingletonI12LedsModeTreevJEE
        PUBLIC _ZTI9SingletonI13LedsModeChessvJEE
        PUBLIC _ZTI9SingletonI16Exh001ActionBasevJEE
        PUBLIC _ZTI9SingletonI16Exh002ActionBasevJEE
        PUBLIC _ZTI9SingletonI17LedsModeFirstPairvJEE
        PUBLIC _ZTI9SingletonI21LedsModeInsideOutsidevJEE
        PUBLIC _ZTI9SingletonI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEvJEE
        PUBLIC _ZTI9SingletonI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEvJEE
        PUBLIC _ZTI9SingletonI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEvJEE
        PUBLIC _ZTI9SingletonI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEvJEE
        PUBLIC _ZTIN9OsWrapper7IThreadE
        PUBLIC _ZTISt10ctype_base
        PUBLIC _ZTS11LedsModeAdc
        PUBLIC _ZTS11LedsModeAll
        PUBLIC _ZTS12LedsModeTree
        PUBLIC _ZTS13LedsModeChess
        PUBLIC _ZTS16Exh001ActionBase
        PUBLIC _ZTS17LedsModeFirstPair
        PUBLIC _ZTS21LedsModeInsideOutside
        PUBLIC _ZTS3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE
        PUBLIC _ZTS3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE
        PUBLIC _ZTS3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE
        PUBLIC _ZTS3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE
        PUBLIC _ZTS4ILed
        PUBLIC _ZTS6Action
        PUBLIC _ZTS8LedsMode
        PUBLIC _ZTS9RomObject
        PUBLIC _ZTS9SingletonI11LedsModeAdcvJEE
        PUBLIC _ZTS9SingletonI11LedsModeAllvJEE
        PUBLIC _ZTS9SingletonI12LedsModeTreevJEE
        PUBLIC _ZTS9SingletonI13LedsModeChessvJEE
        PUBLIC _ZTS9SingletonI16Exh001ActionBasevJEE
        PUBLIC _ZTS9SingletonI16Exh002ActionBasevJEE
        PUBLIC _ZTS9SingletonI17LedsModeFirstPairvJEE
        PUBLIC _ZTS9SingletonI21LedsModeInsideOutsidevJEE
        PUBLIC _ZTS9SingletonI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEvJEE
        PUBLIC _ZTS9SingletonI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEvJEE
        PUBLIC _ZTS9SingletonI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEvJEE
        PUBLIC _ZTS9SingletonI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEvJEE
        PUBLIC _ZTSN9OsWrapper7IThreadE
        PUBLIC _ZTSSt10ctype_base
        PUBLIC _ZTV11LedsModeAdc
        PUBLIC _ZTV11LedsModeAll
        PUBLIC _ZTV12LedsModeTree
        PUBLIC _ZTV13LedsModeChess
        PUBLIC _ZTV16Exh001ActionBase
        PUBLIC _ZTV17LedsModeFirstPair
        PUBLIC _ZTV21LedsModeInsideOutside
        PUBLIC _ZTV3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE
        PUBLIC _ZTV3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE
        PUBLIC _ZTV3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE
        PUBLIC _ZTV3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE
        PUBLIC _ZZN4PortI5GPIOAE3SetEjEs
        PUBLIC _ZZN4PortI5GPIOAE3SetEjEs_0
        PUBLIC _ZZN4PortI5GPIOAE5ResetEjEs
        PUBLIC _ZZN4PortI5GPIOAE5ResetEjEs_0
        PUBLIC _ZZN4PortI5GPIOAE6ToggleEjEs
        PUBLIC _ZZN4PortI5GPIOAE6ToggleEjEs_0
        PUBLIC _ZZN4PortI5GPIOCE3SetEjEs
        PUBLIC _ZZN4PortI5GPIOCE3SetEjEs_0
        PUBLIC _ZZN4PortI5GPIOCE5ResetEjEs
        PUBLIC _ZZN4PortI5GPIOCE5ResetEjEs_0
        PUBLIC _ZZN4PortI5GPIOCE6ToggleEjEs
        PUBLIC _ZZN4PortI5GPIOCE6ToggleEjEs_0
        PUBLIC _ZZN8RegisterILj1073874944ELj32E13ReadWriteModeN5GPIOC14GPIOCMODERBaseEJ10FieldValueI26GPIOC_MODER_MODER15_ValuesINS1_5MODERELj10ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj16ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj18ELj2ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvvE4mask
        PUBLIC _ZZN8RegisterILj1073874944ELj32E13ReadWriteModeN5GPIOC14GPIOCMODERBaseEJ10FieldValueI26GPIOC_MODER_MODER15_ValuesINS1_5MODERELj10ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj16ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj18ELj2ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvvE5value
        PUBLIC _ZZN8RegisterILj1073887280ELj32E13ReadWriteModeN3RCC14RCCAHB1ENRBaseEJ10FieldValueI25RCC_AHB1ENR_DMA2EN_ValuesINS1_7AHB1ENRELj2ELj1ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj0ELj1ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvvE4mask
        PUBLIC _ZZN8RegisterILj1073887280ELj32E13ReadWriteModeN3RCC14RCCAHB1ENRBaseEJ10FieldValueI25RCC_AHB1ENR_DMA2EN_ValuesINS1_7AHB1ENRELj2ELj1ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj0ELj1ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvvE5value
        PUBLIC __low_level_init
        PUBLIC event
        PUBLIC led1Task
        PUBLIC main
        PUBLIC myTask
        
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
        SECTION_GROUP _ZTIN9OsWrapper7IThreadE
        DATA
// __absolute __class_type_info const <Typeinfo for OsWrapper::IThread>
_ZTIN9OsWrapper7IThreadE:
        DATA32
        DC32 _ZTVN10__cxxabiv117__class_type_infoE + 0x8
        DC32 _ZTSN9OsWrapper7IThreadE

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI4ILed
        DATA
// __absolute __class_type_info const <Typeinfo for ILed>
_ZTI4ILed:
        DATA32
        DC32 _ZTVN10__cxxabiv117__class_type_infoE + 0x8, _ZTS4ILed

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTV12LedsModeTree
        DATA
// __absolute void (*const LedsModeTree::__vtbl[4])()
_ZTV12LedsModeTree:
        DATA32
        DC32 0x0, _ZTI12LedsModeTree, _ZN12LedsModeTree2DoEh
        DC32 _ZN8LedsMode5ResetEv

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTV13LedsModeChess
        DATA
// __absolute void (*const LedsModeChess::__vtbl[4])()
_ZTV13LedsModeChess:
        DATA32
        DC32 0x0, _ZTI13LedsModeChess, _ZN8LedsMode2DoEh
        DC32 _ZN13LedsModeChess5ResetEv

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTV17LedsModeFirstPair
        DATA
// __absolute void (*const LedsModeFirstPair::__vtbl[4])()
_ZTV17LedsModeFirstPair:
        DATA32
        DC32 0x0, _ZTI17LedsModeFirstPair, _ZN8LedsMode2DoEh
        DC32 _ZN17LedsModeFirstPair5ResetEv

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTV21LedsModeInsideOutside
        DATA
// __absolute void (*const LedsModeInsideOutside::__vtbl[4])()
_ZTV21LedsModeInsideOutside:
        DATA32
        DC32 0x0, _ZTI21LedsModeInsideOutside, _ZN8LedsMode2DoEh
        DC32 _ZN21LedsModeInsideOutside5ResetEv

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTV11LedsModeAdc
        DATA
// __absolute void (*const LedsModeAdc::__vtbl[4])()
_ZTV11LedsModeAdc:
        DATA32
        DC32 0x0, _ZTI11LedsModeAdc, _ZN11LedsModeAdc2DoEh
        DC32 _ZN8LedsMode5ResetEv

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI8LedsMode
        DATA
// __absolute __class_type_info const <Typeinfo for LedsMode>
_ZTI8LedsMode:
        DATA32
        DC32 _ZTVN10__cxxabiv117__class_type_infoE + 0x8, _ZTS8LedsMode

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTV16Exh001ActionBase
        DATA
// __absolute void (*const Exh001ActionBase::__vtbl[3])()
_ZTV16Exh001ActionBase:
        DATA32
        DC32 0x0, _ZTI16Exh001ActionBase, _ZN16Exh001ActionBase2DoEv

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTV3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE
        DATA
// __absolute void (*const Led<Pin<Port<GPIOA>, (uint8_t)'\005', PinWriteable>>::__vtbl[5])()
_ZTV3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE:
        DATA32
        DC32 0x0, _ZTI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE
        DC32 _ZN3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE8SwitchOnEv
        DC32 _ZN3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE9SwitchOffEv
        DC32 _ZN3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE6ToggleEv

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZZN4PortI5GPIOAE3SetEjEs
        DATA
// __absolute char const <_ZZN4PortI5GPIOAE3SetEjEs>[22]
_ZZN4PortI5GPIOAE3SetEjEs:
        DATA8
        DC8 "(value <= (1 << 16U))"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZZN4PortI5GPIOAE3SetEjEs_0
        DATA
// __absolute char const <_ZZN4PortI5GPIOAE3SetEjEs_0>[66]
_ZZN4PortI5GPIOAE3SetEjEs_0:
        DATA8
        DC8 0x43, 0x3A, 0x5C, 0x47, 0x69, 0x74, 0x48, 0x75
        DC8 0x62, 0x5C, 0x52, 0x74, 0x6F, 0x73, 0x57, 0x72
        DC8 0x61, 0x70, 0x70, 0x65, 0x72, 0x5C, 0x2E, 0x2E
        DC8 0x5C, 0x43, 0x6F, 0x72, 0x74, 0x65, 0x78, 0x4C
        DC8 0x69, 0x62, 0x5C, 0x41, 0x62, 0x73, 0x74, 0x72
        DC8 0x61, 0x63, 0x74, 0x48, 0x61, 0x72, 0x64, 0x77
        DC8 0x61, 0x72, 0x65, 0x5C, 0x50, 0x6F, 0x72, 0x74
        DC8 0x5C, 0x70, 0x6F, 0x72, 0x74, 0x2E, 0x68, 0x70
        DC8 0x70, 0
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZZN4PortI5GPIOAE5ResetEjEs
        DATA
// __absolute char const <_ZZN4PortI5GPIOAE5ResetEjEs>[22]
_ZZN4PortI5GPIOAE5ResetEjEs:
        DATA8
        DC8 "(value <= (1 << 16U))"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZZN4PortI5GPIOAE5ResetEjEs_0
        DATA
// __absolute char const <_ZZN4PortI5GPIOAE5ResetEjEs_0>[66]
_ZZN4PortI5GPIOAE5ResetEjEs_0:
        DATA8
        DC8 0x43, 0x3A, 0x5C, 0x47, 0x69, 0x74, 0x48, 0x75
        DC8 0x62, 0x5C, 0x52, 0x74, 0x6F, 0x73, 0x57, 0x72
        DC8 0x61, 0x70, 0x70, 0x65, 0x72, 0x5C, 0x2E, 0x2E
        DC8 0x5C, 0x43, 0x6F, 0x72, 0x74, 0x65, 0x78, 0x4C
        DC8 0x69, 0x62, 0x5C, 0x41, 0x62, 0x73, 0x74, 0x72
        DC8 0x61, 0x63, 0x74, 0x48, 0x61, 0x72, 0x64, 0x77
        DC8 0x61, 0x72, 0x65, 0x5C, 0x50, 0x6F, 0x72, 0x74
        DC8 0x5C, 0x70, 0x6F, 0x72, 0x74, 0x2E, 0x68, 0x70
        DC8 0x70, 0
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZZN4PortI5GPIOAE6ToggleEjEs
        DATA
// __absolute char const <_ZZN4PortI5GPIOAE6ToggleEjEs>[22]
_ZZN4PortI5GPIOAE6ToggleEjEs:
        DATA8
        DC8 "(value <= (1 << 16U))"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZZN4PortI5GPIOAE6ToggleEjEs_0
        DATA
// __absolute char const <_ZZN4PortI5GPIOAE6ToggleEjEs_0>[66]
_ZZN4PortI5GPIOAE6ToggleEjEs_0:
        DATA8
        DC8 0x43, 0x3A, 0x5C, 0x47, 0x69, 0x74, 0x48, 0x75
        DC8 0x62, 0x5C, 0x52, 0x74, 0x6F, 0x73, 0x57, 0x72
        DC8 0x61, 0x70, 0x70, 0x65, 0x72, 0x5C, 0x2E, 0x2E
        DC8 0x5C, 0x43, 0x6F, 0x72, 0x74, 0x65, 0x78, 0x4C
        DC8 0x69, 0x62, 0x5C, 0x41, 0x62, 0x73, 0x74, 0x72
        DC8 0x61, 0x63, 0x74, 0x48, 0x61, 0x72, 0x64, 0x77
        DC8 0x61, 0x72, 0x65, 0x5C, 0x50, 0x6F, 0x72, 0x74
        DC8 0x5C, 0x70, 0x6F, 0x72, 0x74, 0x2E, 0x68, 0x70
        DC8 0x70, 0
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTV3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE
        DATA
// __absolute void (*const Led<Pin<Port<GPIOC>, (uint8_t)'\t', PinWriteable>>::__vtbl[5])()
_ZTV3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE:
        DATA32
        DC32 0x0, _ZTI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE
        DC32 _ZN3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE8SwitchOnEv
        DC32 _ZN3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE9SwitchOffEv
        DC32 _ZN3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE6ToggleEv

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZZN4PortI5GPIOCE3SetEjEs
        DATA
// __absolute char const <_ZZN4PortI5GPIOCE3SetEjEs>[22]
_ZZN4PortI5GPIOCE3SetEjEs:
        DATA8
        DC8 "(value <= (1 << 16U))"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZZN4PortI5GPIOCE3SetEjEs_0
        DATA
// __absolute char const <_ZZN4PortI5GPIOCE3SetEjEs_0>[66]
_ZZN4PortI5GPIOCE3SetEjEs_0:
        DATA8
        DC8 0x43, 0x3A, 0x5C, 0x47, 0x69, 0x74, 0x48, 0x75
        DC8 0x62, 0x5C, 0x52, 0x74, 0x6F, 0x73, 0x57, 0x72
        DC8 0x61, 0x70, 0x70, 0x65, 0x72, 0x5C, 0x2E, 0x2E
        DC8 0x5C, 0x43, 0x6F, 0x72, 0x74, 0x65, 0x78, 0x4C
        DC8 0x69, 0x62, 0x5C, 0x41, 0x62, 0x73, 0x74, 0x72
        DC8 0x61, 0x63, 0x74, 0x48, 0x61, 0x72, 0x64, 0x77
        DC8 0x61, 0x72, 0x65, 0x5C, 0x50, 0x6F, 0x72, 0x74
        DC8 0x5C, 0x70, 0x6F, 0x72, 0x74, 0x2E, 0x68, 0x70
        DC8 0x70, 0
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZZN4PortI5GPIOCE5ResetEjEs
        DATA
// __absolute char const <_ZZN4PortI5GPIOCE5ResetEjEs>[22]
_ZZN4PortI5GPIOCE5ResetEjEs:
        DATA8
        DC8 "(value <= (1 << 16U))"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZZN4PortI5GPIOCE5ResetEjEs_0
        DATA
// __absolute char const <_ZZN4PortI5GPIOCE5ResetEjEs_0>[66]
_ZZN4PortI5GPIOCE5ResetEjEs_0:
        DATA8
        DC8 0x43, 0x3A, 0x5C, 0x47, 0x69, 0x74, 0x48, 0x75
        DC8 0x62, 0x5C, 0x52, 0x74, 0x6F, 0x73, 0x57, 0x72
        DC8 0x61, 0x70, 0x70, 0x65, 0x72, 0x5C, 0x2E, 0x2E
        DC8 0x5C, 0x43, 0x6F, 0x72, 0x74, 0x65, 0x78, 0x4C
        DC8 0x69, 0x62, 0x5C, 0x41, 0x62, 0x73, 0x74, 0x72
        DC8 0x61, 0x63, 0x74, 0x48, 0x61, 0x72, 0x64, 0x77
        DC8 0x61, 0x72, 0x65, 0x5C, 0x50, 0x6F, 0x72, 0x74
        DC8 0x5C, 0x70, 0x6F, 0x72, 0x74, 0x2E, 0x68, 0x70
        DC8 0x70, 0
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZZN4PortI5GPIOCE6ToggleEjEs
        DATA
// __absolute char const <_ZZN4PortI5GPIOCE6ToggleEjEs>[22]
_ZZN4PortI5GPIOCE6ToggleEjEs:
        DATA8
        DC8 "(value <= (1 << 16U))"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZZN4PortI5GPIOCE6ToggleEjEs_0
        DATA
// __absolute char const <_ZZN4PortI5GPIOCE6ToggleEjEs_0>[66]
_ZZN4PortI5GPIOCE6ToggleEjEs_0:
        DATA8
        DC8 0x43, 0x3A, 0x5C, 0x47, 0x69, 0x74, 0x48, 0x75
        DC8 0x62, 0x5C, 0x52, 0x74, 0x6F, 0x73, 0x57, 0x72
        DC8 0x61, 0x70, 0x70, 0x65, 0x72, 0x5C, 0x2E, 0x2E
        DC8 0x5C, 0x43, 0x6F, 0x72, 0x74, 0x65, 0x78, 0x4C
        DC8 0x69, 0x62, 0x5C, 0x41, 0x62, 0x73, 0x74, 0x72
        DC8 0x61, 0x63, 0x74, 0x48, 0x61, 0x72, 0x64, 0x77
        DC8 0x61, 0x72, 0x65, 0x5C, 0x50, 0x6F, 0x72, 0x74
        DC8 0x5C, 0x70, 0x6F, 0x72, 0x74, 0x2E, 0x68, 0x70
        DC8 0x70, 0
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTV3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE
        DATA
// __absolute void (*const Led<Pin<Port<GPIOC>, (uint8_t)'\b', PinWriteable>>::__vtbl[5])()
_ZTV3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE:
        DATA32
        DC32 0x0, _ZTI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE
        DC32 _ZN3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE8SwitchOnEv
        DC32 _ZN3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE9SwitchOffEv
        DC32 _ZN3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE6ToggleEv

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTV3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE
        DATA
// __absolute void (*const Led<Pin<Port<GPIOC>, (uint8_t)'\005', PinWriteable>>::__vtbl[5])()
_ZTV3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE:
        DATA32
        DC32 0x0, _ZTI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE
        DC32 _ZN3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE8SwitchOnEv
        DC32 _ZN3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE9SwitchOffEv
        DC32 _ZN3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE6ToggleEv

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTV11LedsModeAll
        DATA
// __absolute void (*const LedsModeAll::__vtbl[4])()
_ZTV11LedsModeAll:
        DATA32
        DC32 0x0, _ZTI11LedsModeAll, _ZN8LedsMode2DoEh, _ZN8LedsMode5ResetEv

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE
        DATA
// __absolute __vmi_class_type_info const <Typeinfo for Led<Pin<Port<GPIOA>, (unsigned char)5, PinWriteable>>>
_ZTI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE:
        DATA32
        DC32 _ZTVN10__cxxabiv121__vmi_class_type_infoE + 0x8
        DC32 _ZTS3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE, 0, 2, _ZTI4ILed
        DC32 2, _ZTI9SingletonI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEvJEE
        DC32 2

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE
        DATA
// __absolute __vmi_class_type_info const <Typeinfo for Led<Pin<Port<GPIOC>, (unsigned char)9, PinWriteable>>>
_ZTI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE:
        DATA32
        DC32 _ZTVN10__cxxabiv121__vmi_class_type_infoE + 0x8
        DC32 _ZTS3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE, 0, 2, _ZTI4ILed
        DC32 2, _ZTI9SingletonI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEvJEE
        DC32 2

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE
        DATA
// __absolute __vmi_class_type_info const <Typeinfo for Led<Pin<Port<GPIOC>, (unsigned char)8, PinWriteable>>>
_ZTI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE:
        DATA32
        DC32 _ZTVN10__cxxabiv121__vmi_class_type_infoE + 0x8
        DC32 _ZTS3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE, 0, 2, _ZTI4ILed
        DC32 2, _ZTI9SingletonI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEvJEE
        DC32 2

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE
        DATA
// __absolute __vmi_class_type_info const <Typeinfo for Led<Pin<Port<GPIOC>, (unsigned char)5, PinWriteable>>>
_ZTI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE:
        DATA32
        DC32 _ZTVN10__cxxabiv121__vmi_class_type_infoE + 0x8
        DC32 _ZTS3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE, 0, 2, _ZTI4ILed
        DC32 2, _ZTI9SingletonI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEvJEE
        DC32 2

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI12LedsModeTree
        DATA
// __absolute __vmi_class_type_info const <Typeinfo for LedsModeTree>
_ZTI12LedsModeTree:
        DATA32
        DC32 _ZTVN10__cxxabiv121__vmi_class_type_infoE + 0x8
        DC32 _ZTS12LedsModeTree, 0, 2, _ZTI8LedsMode, 2
        DC32 _ZTI9SingletonI12LedsModeTreevJEE, 2

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI13LedsModeChess
        DATA
// __absolute __vmi_class_type_info const <Typeinfo for LedsModeChess>
_ZTI13LedsModeChess:
        DATA32
        DC32 _ZTVN10__cxxabiv121__vmi_class_type_infoE + 0x8
        DC32 _ZTS13LedsModeChess, 0, 2, _ZTI8LedsMode, 2
        DC32 _ZTI9SingletonI13LedsModeChessvJEE, 2

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI11LedsModeAll
        DATA
// __absolute __vmi_class_type_info const <Typeinfo for LedsModeAll>
_ZTI11LedsModeAll:
        DATA32
        DC32 _ZTVN10__cxxabiv121__vmi_class_type_infoE + 0x8, _ZTS11LedsModeAll
        DC32 0, 2, _ZTI8LedsMode, 2, _ZTI9SingletonI11LedsModeAllvJEE, 2

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI17LedsModeFirstPair
        DATA
// __absolute __vmi_class_type_info const <Typeinfo for LedsModeFirstPair>
_ZTI17LedsModeFirstPair:
        DATA32
        DC32 _ZTVN10__cxxabiv121__vmi_class_type_infoE + 0x8
        DC32 _ZTS17LedsModeFirstPair, 0, 2, _ZTI8LedsMode, 2
        DC32 _ZTI9SingletonI17LedsModeFirstPairvJEE, 2

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI21LedsModeInsideOutside
        DATA
// __absolute __vmi_class_type_info const <Typeinfo for LedsModeInsideOutside>
_ZTI21LedsModeInsideOutside:
        DATA32
        DC32 _ZTVN10__cxxabiv121__vmi_class_type_infoE + 0x8
        DC32 _ZTS21LedsModeInsideOutside, 0, 2, _ZTI8LedsMode, 2
        DC32 _ZTI9SingletonI21LedsModeInsideOutsidevJEE, 2

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI11LedsModeAdc
        DATA
// __absolute __vmi_class_type_info const <Typeinfo for LedsModeAdc>
_ZTI11LedsModeAdc:
        DATA32
        DC32 _ZTVN10__cxxabiv121__vmi_class_type_infoE + 0x8, _ZTS11LedsModeAdc
        DC32 0, 2, _ZTI8LedsMode, 2, _ZTI9SingletonI11LedsModeAdcvJEE, 2

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI6Action
        DATA
// __absolute __class_type_info const <Typeinfo for Action>
_ZTI6Action:
        DATA32
        DC32 _ZTVN10__cxxabiv117__class_type_infoE + 0x8, _ZTS6Action

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI16Exh001ActionBase
        DATA
// __absolute __si_class_type_info const <Typeinfo for Exh001ActionBase>
_ZTI16Exh001ActionBase:
        DATA32
        DC32 _ZTVN10__cxxabiv120__si_class_type_infoE + 0x8
        DC32 _ZTS16Exh001ActionBase, _ZTI6Action

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS4ILed
        DATA
// __absolute char const <Typeinfo name for ILed>[6]
_ZTS4ILed:
        DATA8
        DC8 "4ILed"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI9SingletonI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEvJEE
        DATA
// __absolute __class_type_info const <Typeinfo for Singleton<Led<Pin<Port<GPIOA>, (unsigned char)5, PinWriteable>>, void, >>
_ZTI9SingletonI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEvJEE:
        DATA32
        DC32 _ZTVN10__cxxabiv117__class_type_infoE + 0x8
        DC32 _ZTS9SingletonI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEvJEE

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS9SingletonI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEvJEE
        DATA
// __absolute char const <Typeinfo name for Singleton<Led<Pin<Port<GPIOA>, (unsigned char)5, PinWriteable>>, void, >>[59]
_ZTS9SingletonI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEvJEE:
        DATA8
        DC8 0x39, 0x53, 0x69, 0x6E, 0x67, 0x6C, 0x65, 0x74
        DC8 0x6F, 0x6E, 0x49, 0x33, 0x4C, 0x65, 0x64, 0x49
        DC8 0x33, 0x50, 0x69, 0x6E, 0x49, 0x34, 0x50, 0x6F
        DC8 0x72, 0x74, 0x49, 0x35, 0x47, 0x50, 0x49, 0x4F
        DC8 0x41, 0x45, 0x4C, 0x68, 0x35, 0x45, 0x31, 0x32
        DC8 0x50, 0x69, 0x6E, 0x57, 0x72, 0x69, 0x74, 0x65
        DC8 0x61, 0x62, 0x6C, 0x65, 0x45, 0x45, 0x76, 0x4A
        DC8 0x45, 0x45, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE
        DATA
// __absolute char const <Typeinfo name for Led<Pin<Port<GPIOA>, (unsigned char)5, PinWriteable>>>[44]
_ZTS3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE:
        DATA8
        DC8 "3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI9SingletonI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEvJEE
        DATA
// __absolute __class_type_info const <Typeinfo for Singleton<Led<Pin<Port<GPIOC>, (unsigned char)9, PinWriteable>>, void, >>
_ZTI9SingletonI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEvJEE:
        DATA32
        DC32 _ZTVN10__cxxabiv117__class_type_infoE + 0x8
        DC32 _ZTS9SingletonI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEvJEE

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS9SingletonI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEvJEE
        DATA
// __absolute char const <Typeinfo name for Singleton<Led<Pin<Port<GPIOC>, (unsigned char)9, PinWriteable>>, void, >>[59]
_ZTS9SingletonI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEvJEE:
        DATA8
        DC8 0x39, 0x53, 0x69, 0x6E, 0x67, 0x6C, 0x65, 0x74
        DC8 0x6F, 0x6E, 0x49, 0x33, 0x4C, 0x65, 0x64, 0x49
        DC8 0x33, 0x50, 0x69, 0x6E, 0x49, 0x34, 0x50, 0x6F
        DC8 0x72, 0x74, 0x49, 0x35, 0x47, 0x50, 0x49, 0x4F
        DC8 0x43, 0x45, 0x4C, 0x68, 0x39, 0x45, 0x31, 0x32
        DC8 0x50, 0x69, 0x6E, 0x57, 0x72, 0x69, 0x74, 0x65
        DC8 0x61, 0x62, 0x6C, 0x65, 0x45, 0x45, 0x76, 0x4A
        DC8 0x45, 0x45, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE
        DATA
// __absolute char const <Typeinfo name for Led<Pin<Port<GPIOC>, (unsigned char)9, PinWriteable>>>[44]
_ZTS3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE:
        DATA8
        DC8 "3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI9SingletonI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEvJEE
        DATA
// __absolute __class_type_info const <Typeinfo for Singleton<Led<Pin<Port<GPIOC>, (unsigned char)8, PinWriteable>>, void, >>
_ZTI9SingletonI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEvJEE:
        DATA32
        DC32 _ZTVN10__cxxabiv117__class_type_infoE + 0x8
        DC32 _ZTS9SingletonI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEvJEE

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS9SingletonI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEvJEE
        DATA
// __absolute char const <Typeinfo name for Singleton<Led<Pin<Port<GPIOC>, (unsigned char)8, PinWriteable>>, void, >>[59]
_ZTS9SingletonI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEvJEE:
        DATA8
        DC8 0x39, 0x53, 0x69, 0x6E, 0x67, 0x6C, 0x65, 0x74
        DC8 0x6F, 0x6E, 0x49, 0x33, 0x4C, 0x65, 0x64, 0x49
        DC8 0x33, 0x50, 0x69, 0x6E, 0x49, 0x34, 0x50, 0x6F
        DC8 0x72, 0x74, 0x49, 0x35, 0x47, 0x50, 0x49, 0x4F
        DC8 0x43, 0x45, 0x4C, 0x68, 0x38, 0x45, 0x31, 0x32
        DC8 0x50, 0x69, 0x6E, 0x57, 0x72, 0x69, 0x74, 0x65
        DC8 0x61, 0x62, 0x6C, 0x65, 0x45, 0x45, 0x76, 0x4A
        DC8 0x45, 0x45, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE
        DATA
// __absolute char const <Typeinfo name for Led<Pin<Port<GPIOC>, (unsigned char)8, PinWriteable>>>[44]
_ZTS3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE:
        DATA8
        DC8 "3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI9SingletonI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEvJEE
        DATA
// __absolute __class_type_info const <Typeinfo for Singleton<Led<Pin<Port<GPIOC>, (unsigned char)5, PinWriteable>>, void, >>
_ZTI9SingletonI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEvJEE:
        DATA32
        DC32 _ZTVN10__cxxabiv117__class_type_infoE + 0x8
        DC32 _ZTS9SingletonI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEvJEE

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS9SingletonI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEvJEE
        DATA
// __absolute char const <Typeinfo name for Singleton<Led<Pin<Port<GPIOC>, (unsigned char)5, PinWriteable>>, void, >>[59]
_ZTS9SingletonI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEvJEE:
        DATA8
        DC8 0x39, 0x53, 0x69, 0x6E, 0x67, 0x6C, 0x65, 0x74
        DC8 0x6F, 0x6E, 0x49, 0x33, 0x4C, 0x65, 0x64, 0x49
        DC8 0x33, 0x50, 0x69, 0x6E, 0x49, 0x34, 0x50, 0x6F
        DC8 0x72, 0x74, 0x49, 0x35, 0x47, 0x50, 0x49, 0x4F
        DC8 0x43, 0x45, 0x4C, 0x68, 0x35, 0x45, 0x31, 0x32
        DC8 0x50, 0x69, 0x6E, 0x57, 0x72, 0x69, 0x74, 0x65
        DC8 0x61, 0x62, 0x6C, 0x65, 0x45, 0x45, 0x76, 0x4A
        DC8 0x45, 0x45, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE
        DATA
// __absolute char const <Typeinfo name for Led<Pin<Port<GPIOC>, (unsigned char)5, PinWriteable>>>[44]
_ZTS3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE:
        DATA8
        DC8 "3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS8LedsMode
        DATA
// __absolute char const <Typeinfo name for LedsMode>[10]
_ZTS8LedsMode:
        DATA8
        DC8 "8LedsMode"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI9SingletonI12LedsModeTreevJEE
        DATA
// __absolute __class_type_info const <Typeinfo for Singleton<LedsModeTree, void, >>
_ZTI9SingletonI12LedsModeTreevJEE:
        DATA32
        DC32 _ZTVN10__cxxabiv117__class_type_infoE + 0x8
        DC32 _ZTS9SingletonI12LedsModeTreevJEE

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS9SingletonI12LedsModeTreevJEE
        DATA
// __absolute char const <Typeinfo name for Singleton<LedsModeTree, void, >>[30]
_ZTS9SingletonI12LedsModeTreevJEE:
        DATA8
        DC8 "9SingletonI12LedsModeTreevJEE"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS12LedsModeTree
        DATA
// __absolute char const <Typeinfo name for LedsModeTree>[15]
_ZTS12LedsModeTree:
        DATA8
        DC8 "12LedsModeTree"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI9SingletonI13LedsModeChessvJEE
        DATA
// __absolute __class_type_info const <Typeinfo for Singleton<LedsModeChess, void, >>
_ZTI9SingletonI13LedsModeChessvJEE:
        DATA32
        DC32 _ZTVN10__cxxabiv117__class_type_infoE + 0x8
        DC32 _ZTS9SingletonI13LedsModeChessvJEE

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS9SingletonI13LedsModeChessvJEE
        DATA
// __absolute char const <Typeinfo name for Singleton<LedsModeChess, void, >>[31]
_ZTS9SingletonI13LedsModeChessvJEE:
        DATA8
        DC8 "9SingletonI13LedsModeChessvJEE"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS13LedsModeChess
        DATA
// __absolute char const <Typeinfo name for LedsModeChess>[16]
_ZTS13LedsModeChess:
        DATA8
        DC8 "13LedsModeChess"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI9SingletonI11LedsModeAllvJEE
        DATA
// __absolute __class_type_info const <Typeinfo for Singleton<LedsModeAll, void, >>
_ZTI9SingletonI11LedsModeAllvJEE:
        DATA32
        DC32 _ZTVN10__cxxabiv117__class_type_infoE + 0x8
        DC32 _ZTS9SingletonI11LedsModeAllvJEE

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS9SingletonI11LedsModeAllvJEE
        DATA
// __absolute char const <Typeinfo name for Singleton<LedsModeAll, void, >>[29]
_ZTS9SingletonI11LedsModeAllvJEE:
        DATA8
        DC8 "9SingletonI11LedsModeAllvJEE"
        DATA
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS11LedsModeAll
        DATA
// __absolute char const <Typeinfo name for LedsModeAll>[14]
_ZTS11LedsModeAll:
        DATA8
        DC8 "11LedsModeAll"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI9SingletonI17LedsModeFirstPairvJEE
        DATA
// __absolute __class_type_info const <Typeinfo for Singleton<LedsModeFirstPair, void, >>
_ZTI9SingletonI17LedsModeFirstPairvJEE:
        DATA32
        DC32 _ZTVN10__cxxabiv117__class_type_infoE + 0x8
        DC32 _ZTS9SingletonI17LedsModeFirstPairvJEE

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS9SingletonI17LedsModeFirstPairvJEE
        DATA
// __absolute char const <Typeinfo name for Singleton<LedsModeFirstPair, void, >>[35]
_ZTS9SingletonI17LedsModeFirstPairvJEE:
        DATA8
        DC8 "9SingletonI17LedsModeFirstPairvJEE"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS17LedsModeFirstPair
        DATA
// __absolute char const <Typeinfo name for LedsModeFirstPair>[20]
_ZTS17LedsModeFirstPair:
        DATA8
        DC8 "17LedsModeFirstPair"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI9SingletonI21LedsModeInsideOutsidevJEE
        DATA
// __absolute __class_type_info const <Typeinfo for Singleton<LedsModeInsideOutside, void, >>
_ZTI9SingletonI21LedsModeInsideOutsidevJEE:
        DATA32
        DC32 _ZTVN10__cxxabiv117__class_type_infoE + 0x8
        DC32 _ZTS9SingletonI21LedsModeInsideOutsidevJEE

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS9SingletonI21LedsModeInsideOutsidevJEE
        DATA
// __absolute char const <Typeinfo name for Singleton<LedsModeInsideOutside, void, >>[39]
_ZTS9SingletonI21LedsModeInsideOutsidevJEE:
        DATA8
        DC8 "9SingletonI21LedsModeInsideOutsidevJEE"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS21LedsModeInsideOutside
        DATA
// __absolute char const <Typeinfo name for LedsModeInsideOutside>[24]
_ZTS21LedsModeInsideOutside:
        DATA8
        DC8 "21LedsModeInsideOutside"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI9SingletonI11LedsModeAdcvJEE
        DATA
// __absolute __class_type_info const <Typeinfo for Singleton<LedsModeAdc, void, >>
_ZTI9SingletonI11LedsModeAdcvJEE:
        DATA32
        DC32 _ZTVN10__cxxabiv117__class_type_infoE + 0x8
        DC32 _ZTS9SingletonI11LedsModeAdcvJEE

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS9SingletonI11LedsModeAdcvJEE
        DATA
// __absolute char const <Typeinfo name for Singleton<LedsModeAdc, void, >>[29]
_ZTS9SingletonI11LedsModeAdcvJEE:
        DATA8
        DC8 "9SingletonI11LedsModeAdcvJEE"
        DATA
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS11LedsModeAdc
        DATA
// __absolute char const <Typeinfo name for LedsModeAdc>[14]
_ZTS11LedsModeAdc:
        DATA8
        DC8 "11LedsModeAdc"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS6Action
        DATA
// __absolute char const <Typeinfo name for Action>[8]
_ZTS6Action:
        DATA8
        DC8 "6Action"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS16Exh001ActionBase
        DATA
// __absolute char const <Typeinfo name for Exh001ActionBase>[19]
_ZTS16Exh001ActionBase:
        DATA8
        DC8 "16Exh001ActionBase"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI9SingletonI16Exh001ActionBasevJEE
        DATA
// __absolute __class_type_info const <Typeinfo for Singleton<Exh001ActionBase, void, >>
_ZTI9SingletonI16Exh001ActionBasevJEE:
        DATA32
        DC32 _ZTVN10__cxxabiv117__class_type_infoE + 0x8
        DC32 _ZTS9SingletonI16Exh001ActionBasevJEE

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS9SingletonI16Exh001ActionBasevJEE
        DATA
// __absolute char const <Typeinfo name for Singleton<Exh001ActionBase, void, >>[34]
_ZTS9SingletonI16Exh001ActionBasevJEE:
        DATA8
        DC8 "9SingletonI16Exh001ActionBasevJEE"
        DATA16
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI9RomObject
        DATA
// __absolute __class_type_info const <Typeinfo for RomObject>
_ZTI9RomObject:
        DATA32
        DC32 _ZTVN10__cxxabiv117__class_type_infoE + 0x8, _ZTS9RomObject

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS9RomObject
        DATA
// __absolute char const <Typeinfo name for RomObject>[11]
_ZTS9RomObject:
        DATA8
        DC8 "9RomObject"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI9SingletonI16Exh002ActionBasevJEE
        DATA
// __absolute __class_type_info const <Typeinfo for Singleton<Exh002ActionBase, void, >>
_ZTI9SingletonI16Exh002ActionBasevJEE:
        DATA32
        DC32 _ZTVN10__cxxabiv117__class_type_infoE + 0x8
        DC32 _ZTS9SingletonI16Exh002ActionBasevJEE

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS9SingletonI16Exh002ActionBasevJEE
        DATA
// __absolute char const <Typeinfo name for Singleton<Exh002ActionBase, void, >>[34]
_ZTS9SingletonI16Exh002ActionBasevJEE:
        DATA8
        DC8 "9SingletonI16Exh002ActionBasevJEE"
        DATA16
        DC8 0, 0

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

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTSN9OsWrapper7IThreadE
        DATA
// __absolute char const <Typeinfo name for OsWrapper::IThread>[21]
_ZTSN9OsWrapper7IThreadE:
        DATA8
        DC8 "N9OsWrapper7IThreadE"
        DATA
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DATA8
        DC8 "myTask"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DATA8
        DC8 "Led1Task"
        DATA
        DC8 0, 0, 0
// C:\GitHub\RtosWrapper\main.cpp
//    1 #include "rtos.hpp"         // for Rtos

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

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        SECTION_GROUP _ZGVN9SingletonI10LedsDrivervJEE8instanceE
        DATA
// __absolute unsigned char <_ZGVN9SingletonI10LedsDrivervJEE8instanceE>
_ZGVN9SingletonI10LedsDrivervJEE8instanceE:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        SECTION_GROUP _ZGVN9SingletonI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEvJEE8instanceE
        DATA
// __absolute unsigned char <_ZGVN9SingletonI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEvJEE8instanceE>
_ZGVN9SingletonI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEvJEE8instanceE:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        SECTION_GROUP _ZGVN9SingletonI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEvJEE8instanceE
        DATA
// __absolute unsigned char <_ZGVN9SingletonI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEvJEE8instanceE>
_ZGVN9SingletonI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEvJEE8instanceE:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        SECTION_GROUP _ZGVN9SingletonI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEvJEE8instanceE
        DATA
// __absolute unsigned char <_ZGVN9SingletonI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEvJEE8instanceE>
_ZGVN9SingletonI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEvJEE8instanceE:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        SECTION_GROUP _ZGVN9SingletonI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEvJEE8instanceE
        DATA
// __absolute unsigned char <_ZGVN9SingletonI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEvJEE8instanceE>
_ZGVN9SingletonI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEvJEE8instanceE:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        SECTION_GROUP _ZGVN9SingletonI14LedsControllervJEE8instanceE
        DATA
// __absolute unsigned char <_ZGVN9SingletonI14LedsControllervJEE8instanceE>
_ZGVN9SingletonI14LedsControllervJEE8instanceE:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        SECTION_GROUP _ZGVN9SingletonI6ButtonI3PinI4PortI5GPIOCELh13E11PinReadableEEvJEE8instanceE
        DATA
// __absolute unsigned char <_ZGVN9SingletonI6ButtonI3PinI4PortI5GPIOCELh13E11PinReadableEEvJEE8instanceE>
_ZGVN9SingletonI6ButtonI3PinI4PortI5GPIOCELh13E11PinReadableEEvJEE8instanceE:
        DS8 1
//    2 #include "mailbox.hpp"      // for Mailbox
//    3 #include "event.hpp"        // for Event
//    4 
//    5 #include "mytask.hpp"       // for MyTask

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        SECTION_GROUP _ZN9SingletonI10LedsDrivervJEE8instanceE
        DATA
// __absolute LedsDriver Singleton<LedsDriver>::instance
_ZN9SingletonI10LedsDrivervJEE8instanceE:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        SECTION_GROUP _ZN9SingletonI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEvJEE8instanceE
        DATA
// __absolute Led<Pin<Port<GPIOA>, (uint8_t)'\005', PinWriteable>> Singleton<Led<Pin<Port<GPIOA>, (uint8_t)'\005', PinWriteable>>>::instance
_ZN9SingletonI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEvJEE8instanceE:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        SECTION_GROUP _ZN9SingletonI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEvJEE8instanceE
        DATA
// __absolute Led<Pin<Port<GPIOC>, (uint8_t)'\t', PinWriteable>> Singleton<Led<Pin<Port<GPIOC>, (uint8_t)'\t', PinWriteable>>>::instance
_ZN9SingletonI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEvJEE8instanceE:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        SECTION_GROUP _ZN9SingletonI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEvJEE8instanceE
        DATA
// __absolute Led<Pin<Port<GPIOC>, (uint8_t)'\b', PinWriteable>> Singleton<Led<Pin<Port<GPIOC>, (uint8_t)'\b', PinWriteable>>>::instance
_ZN9SingletonI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEvJEE8instanceE:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        SECTION_GROUP _ZN9SingletonI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEvJEE8instanceE
        DATA
// __absolute Led<Pin<Port<GPIOC>, (uint8_t)'\005', PinWriteable>> Singleton<Led<Pin<Port<GPIOC>, (uint8_t)'\005', PinWriteable>>>::instance
_ZN9SingletonI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEvJEE8instanceE:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        SECTION_GROUP _ZN9SingletonI14LedsControllervJEE8instanceE
        DATA
// __absolute LedsController Singleton<LedsController>::instance
_ZN9SingletonI14LedsControllervJEE8instanceE:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        SECTION_GROUP _ZN9SingletonI6ButtonI3PinI4PortI5GPIOCELh13E11PinReadableEEvJEE8instanceE
        DATA
// __absolute Button<PinButton> Singleton<Button<PinButton>>::instance
_ZN9SingletonI6ButtonI3PinI4PortI5GPIOCELh13E11PinReadableEEvJEE8instanceE:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        SECTION_GROUP _ZN9SingletonI12LedsModeTreevJEE8instanceE
        DATA
// __absolute LedsModeTree Singleton<LedsModeTree>::instance
_ZN9SingletonI12LedsModeTreevJEE8instanceE:
        DATA32
        DC32 _ZTV12LedsModeTree + 0x8, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        SECTION_GROUP _ZN9SingletonI13LedsModeChessvJEE8instanceE
        DATA
// __absolute LedsModeChess Singleton<LedsModeChess>::instance
_ZN9SingletonI13LedsModeChessvJEE8instanceE:
        DATA32
        DC32 _ZTV13LedsModeChess + 0x8, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        SECTION_GROUP _ZN9SingletonI11LedsModeAllvJEE8instanceE
        DATA
// __absolute LedsModeAll Singleton<LedsModeAll>::instance
_ZN9SingletonI11LedsModeAllvJEE8instanceE:
        DATA32
        DC32 _ZTV11LedsModeAll + 0x8, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        SECTION_GROUP _ZN9SingletonI17LedsModeFirstPairvJEE8instanceE
        DATA
// __absolute LedsModeFirstPair Singleton<LedsModeFirstPair>::instance
_ZN9SingletonI17LedsModeFirstPairvJEE8instanceE:
        DATA32
        DC32 _ZTV17LedsModeFirstPair + 0x8, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        SECTION_GROUP _ZN9SingletonI21LedsModeInsideOutsidevJEE8instanceE
        DATA
// __absolute LedsModeInsideOutside Singleton<LedsModeInsideOutside>::instance
_ZN9SingletonI21LedsModeInsideOutsidevJEE8instanceE:
        DATA32
        DC32 _ZTV21LedsModeInsideOutside + 0x8, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        SECTION_GROUP _ZN9SingletonI11LedsModeAdcvJEE8instanceE
        DATA
// __absolute LedsModeAdc Singleton<LedsModeAdc>::instance
_ZN9SingletonI11LedsModeAdcvJEE8instanceE:
        DATA32
        DC32 _ZTV11LedsModeAdc + 0x8, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        SECTION_GROUP _ZN9SingletonI16Exh001ActionBasevJEE8instanceE
        DATA
// __absolute Exh001ActionBase Singleton<Exh001ActionBase>::instance
_ZN9SingletonI16Exh001ActionBasevJEE8instanceE:
        DATA32
        DC32 _ZTV16Exh001ActionBase + 0x8

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function __sti__routine
        THUMB
// static __intrinsic __interwork __vfp void __sti__routine()
__sti__routine:
        PUSH     {R2-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+24
        LDR.N    R5,??DataTable1
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable1_1
        LDRD     R2,R3,[R0, #+0]
        MOVS     R0,R5
          CFI FunCall _ZN9OsWrapper5EventC1ENSt6chrono8durationIxSt5ratioILx1ELx1000EEEEj
        BL       _ZN9OsWrapper5EventC1ENSt6chrono8durationIxSt5ratioILx1ELx1000EEEEj
        LDR.N    R2,??DataTable1_2
        LDR.N    R1,??DataTable1_3
          CFI FunCall __aeabi_atexit
        BL       __aeabi_atexit
        LDR.N    R2,??DataTable1_4
        MOVS     R1,R5
        LDR.N    R0,??DataTable1_5
          CFI FunCall _ZN6MyTaskC1ERN9OsWrapper5EventER6ButtonI3PinI4PortI5GPIOCELh13E11PinReadableEE
        BL       _ZN6MyTaskC1ERN9OsWrapper5EventER6ButtonI3PinI4PortI5GPIOCELh13E11PinReadableEE
        LDR.N    R4,??DataTable1_6
        MOVS     R2,R4
        MOVS     R1,R5
        LDR.N    R0,??DataTable1_7
          CFI FunCall _ZN8Led1TaskC1ERN9OsWrapper5EventER14LedsController
        BL       _ZN8Led1TaskC1ERN9OsWrapper5EventER14LedsController
        LDR.N    R1,??DataTable1_8
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??__sti__routine_0
        MOVS     R0,#+1
        STRB     R0,[R1, #+0]
        MOVS     R1,#+16
        MOVS     R2,#+0
        LDR.N    R5,??DataTable1_9
        MOVS     R6,R5
        MOVS     R0,R6
          CFI FunCall __aeabi_memset
        BL       __aeabi_memset
        MOVS     R0,R5
          CFI FunCall _ZN10LedsDriverC1Ev
        BL       _ZN10LedsDriverC1Ev
??__sti__routine_0:
        LDR.N    R1,??DataTable1_10
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??__sti__routine_1
        MOVS     R0,#+1
        STRB     R0,[R1, #+0]
        LDR.N    R0,??DataTable1_11
          CFI FunCall _ZN3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEC1Ev
        BL       _ZN3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEC1Ev
??__sti__routine_1:
        LDR.N    R1,??DataTable1_12
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??__sti__routine_2
        MOVS     R0,#+1
        STRB     R0,[R1, #+0]
        LDR.N    R0,??DataTable1_13
          CFI FunCall _ZN3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEC1Ev
        BL       _ZN3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEC1Ev
??__sti__routine_2:
        LDR.N    R1,??DataTable1_14
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??__sti__routine_3
        MOVS     R0,#+1
        STRB     R0,[R1, #+0]
        LDR.N    R0,??DataTable1_15
          CFI FunCall _ZN3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEC1Ev
        BL       _ZN3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEC1Ev
??__sti__routine_3:
        LDR.N    R1,??DataTable1_16
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??__sti__routine_4
        MOVS     R0,#+1
        STRB     R0,[R1, #+0]
        LDR.N    R0,??DataTable1_17
          CFI FunCall _ZN3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEC1Ev
        BL       _ZN3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEC1Ev
??__sti__routine_4:
        LDR.N    R1,??DataTable1_18
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??__sti__routine_5
        MOVS     R0,#+1
        STRB     R0,[R1, #+0]
        MOVS     R1,#+28
        MOVS     R2,#+0
        MOVS     R5,R4
        MOVS     R0,R5
          CFI FunCall __aeabi_memset
        BL       __aeabi_memset
        MOVS     R0,R4
          CFI FunCall _ZN14LedsControllerC1Ev
        BL       _ZN14LedsControllerC1Ev
??__sti__routine_5:
        LDR.N    R1,??DataTable1_19
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??__sti__routine_6
        MOVS     R0,#+1
        STRB     R0,[R1, #+0]
??__sti__routine_6:
        POP      {R0,R1,R4-R6,PC}  ;; return
          CFI EndBlock cfiBlock0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZZN8RegisterILj1073887280ELj32E13ReadWriteModeN3RCC14RCCAHB1ENRBaseEJ10FieldValueI25RCC_AHB1ENR_DMA2EN_ValuesINS1_7AHB1ENRELj2ELj1ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj0ELj1ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvvE4mask
        DATA
// __absolute unsigned int const mask
_ZZN8RegisterILj1073887280ELj32E13ReadWriteModeN3RCC14RCCAHB1ENRBaseEJ10FieldValueI25RCC_AHB1ENR_DMA2EN_ValuesINS1_7AHB1ENRELj2ELj1ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj0ELj1ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvvE4mask:
        DATA32
        DC32 5

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZZN8RegisterILj1073874944ELj32E13ReadWriteModeN5GPIOC14GPIOCMODERBaseEJ10FieldValueI26GPIOC_MODER_MODER15_ValuesINS1_5MODERELj10ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj16ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj18ELj2ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvvE4mask
        DATA
// __absolute unsigned int const mask
_ZZN8RegisterILj1073874944ELj32E13ReadWriteModeN5GPIOC14GPIOCMODERBaseEJ10FieldValueI26GPIOC_MODER_MODER15_ValuesINS1_5MODERELj10ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj16ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj18ELj2ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvvE4mask:
        DATA32
        DC32 986'112

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZZN8RegisterILj1073887280ELj32E13ReadWriteModeN3RCC14RCCAHB1ENRBaseEJ10FieldValueI25RCC_AHB1ENR_DMA2EN_ValuesINS1_7AHB1ENRELj2ELj1ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj0ELj1ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvvE5value
        DATA
// __absolute unsigned int const value
_ZZN8RegisterILj1073887280ELj32E13ReadWriteModeN3RCC14RCCAHB1ENRBaseEJ10FieldValueI25RCC_AHB1ENR_DMA2EN_ValuesINS1_7AHB1ENRELj2ELj1ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj0ELj1ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvvE5value:
        DATA32
        DC32 5

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZZN8RegisterILj1073874944ELj32E13ReadWriteModeN5GPIOC14GPIOCMODERBaseEJ10FieldValueI26GPIOC_MODER_MODER15_ValuesINS1_5MODERELj10ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj16ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj18ELj2ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvvE5value
        DATA
// __absolute unsigned int const value
_ZZN8RegisterILj1073874944ELj32E13ReadWriteModeN5GPIOC14GPIOCMODERBaseEJ10FieldValueI26GPIOC_MODER_MODER15_ValuesINS1_5MODERELj10ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj16ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj18ELj2ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvvE5value:
        DATA32
        DC32 328'704
//    6 #include "led1task.hpp"     // for Led1Task
//    7 #include "rccregisters.hpp" // for RCC
//    8 
//    9 #include "Application/Diagnostic/GlobalStatus.hpp"

        SECTION `.rodata`:CONST:REORDER:NOROOT(3)
        SECTION_GROUP _ZN12GlobalStatus7actionsE
        DATA
// __absolute GlobalStatus::tActionArray const GlobalStatus::actions
_ZN12GlobalStatus7actionsE:
        DATA32
        DC32 _ZN9SingletonI16Exh001ActionBasevJEE8instanceE
        DC8 0, 0, 0, 0
        DATA64
        DC64 1
        DATA32
        DC32 _ZN9SingletonI16Exh001ActionBasevJEE8instanceE
        DC8 0, 0, 0, 0
        DATA64
        DC64 1
//   10 #include <gpioaregisters.hpp>  // for GPIOA
//   11 #include <gpiocregisters.hpp>  // for GPIOC
//   12 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   13 std::uint32_t SystemCoreClock = 16'000'000U;
SystemCoreClock:
        DATA32
        DC32 16'000'000
//   14 
//   15 
//   16 extern "C" {

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function __low_level_init
        THUMB
//   17 int __low_level_init(void)
//   18 {
__low_level_init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   19   //Switch on external 16 MHz oscillator
//   20   RCC::CR::HSION::On::Set();
          CFI FunCall _ZN14FieldValueBaseI19RCC_CR_HSION_ValuesIN3RCC2CRELj0ELj1E13ReadWriteModeNS1_9RCCCRBaseEES4_Lj1EE3SetIS3_vEEvv
        BL       _ZN14FieldValueBaseI19RCC_CR_HSION_ValuesIN3RCC2CRELj0ELj1E13ReadWriteModeNS1_9RCCCRBaseEES4_Lj1EE3SetIS3_vEEvv
//   21   while (RCC::CR::HSIRDY::NotReady::IsSet())
??__low_level_init_0:
          CFI FunCall _ZN14FieldValueBaseI20RCC_CR_HSIRDY_ValuesIN3RCC2CRELj1ELj1E8ReadModeNS1_9RCCCRBaseEES4_Lj0EE5IsSetIS3_vEEbv
        BL       _ZN14FieldValueBaseI20RCC_CR_HSIRDY_ValuesIN3RCC2CRELj1ELj1E8ReadModeNS1_9RCCCRBaseEES4_Lj0EE5IsSetIS3_vEEbv
        CMP      R0,#+0
        BNE.N    ??__low_level_init_0
//   22   {
//   23 
//   24   }
//   25   //Switch system clock on external oscillator
//   26   RCC::CFGR::SW::Hsi::Set();
          CFI FunCall _ZN14FieldValueBaseI18RCC_CFGR_SW_ValuesIN3RCC4CFGRELj0ELj2E13ReadWriteModeNS1_11RCCCFGRBaseEES4_Lj0EE3SetIS3_vEEvv
        BL       _ZN14FieldValueBaseI18RCC_CFGR_SW_ValuesIN3RCC4CFGRELj0ELj2E13ReadWriteModeNS1_11RCCCFGRBaseEES4_Lj0EE3SetIS3_vEEvv
//   27   while (!RCC::CFGR::SWS::Hsi::IsSet())
??__low_level_init_1:
          CFI FunCall _ZN14FieldValueBaseI19RCC_CFGR_SWS_ValuesIN3RCC4CFGRELj2ELj2E8ReadModeNS1_11RCCCFGRBaseEES4_Lj0EE5IsSetIS3_vEEbv
        BL       _ZN14FieldValueBaseI19RCC_CFGR_SWS_ValuesIN3RCC4CFGRELj2ELj2E8ReadModeNS1_11RCCCFGRBaseEES4_Lj0EE5IsSetIS3_vEEbv
        CMP      R0,#+0
        BEQ.N    ??__low_level_init_1
//   28  {
//   29 
//   30   }
//   31   //Switch on clock on PortA and PortC
//   32   RCC::AHB1ENRPack<
//   33       RCC::AHB1ENR::GPIOCEN::Enable,
//   34       RCC::AHB1ENR::GPIOAEN::Enable
//   35   >::Set();
          CFI FunCall _ZN8RegisterILj1073887280ELj32E13ReadWriteModeN3RCC14RCCAHB1ENRBaseEJ10FieldValueI25RCC_AHB1ENR_DMA2EN_ValuesINS1_7AHB1ENRELj2ELj1ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj0ELj1ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvv
        BL       _ZN8RegisterILj1073887280ELj32E13ReadWriteModeN3RCC14RCCAHB1ENRBaseEJ10FieldValueI25RCC_AHB1ENR_DMA2EN_ValuesINS1_7AHB1ENRELj2ELj1ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj0ELj1ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvv
//   36 
//   37   RCC::APB2ENR::SYSCFGEN::Enable::Set();
          CFI FunCall _ZN14FieldValueBaseI25RCC_AHB1ENR_DMA2EN_ValuesIN3RCC7APB2ENRELj14ELj1E13ReadWriteModeNS1_14RCCAPB2ENRBaseEES4_Lj1EE3SetIS3_vEEvv
        BL       _ZN14FieldValueBaseI25RCC_AHB1ENR_DMA2EN_ValuesIN3RCC7APB2ENRELj14ELj1E13ReadWriteModeNS1_14RCCAPB2ENRBaseEES4_Lj1EE3SetIS3_vEEvv
//   38 
//   39   //LED1 on PortA.5, set PortA.5 as output
//   40   GPIOA::MODER::MODER5::Output::Set();
          CFI FunCall _ZN14FieldValueBaseI26GPIOA_MODER_MODER15_ValuesIN5GPIOA5MODERELj10ELj2E13ReadWriteModeNS1_14GPIOAMODERBaseEES4_Lj1EE3SetIS3_vEEvv
        BL       _ZN14FieldValueBaseI26GPIOA_MODER_MODER15_ValuesIN5GPIOA5MODERELj10ELj2E13ReadWriteModeNS1_14GPIOAMODERBaseEES4_Lj1EE3SetIS3_vEEvv
//   41 
//   42   /* LED2 on PortC.9, LED3 on PortC.8, LED4 on PortC.5 so set PortC.5,8,9 as output */
//   43   GPIOC::MODERPack<
//   44       GPIOC::MODER::MODER5::Output,
//   45       GPIOC::MODER::MODER8::Output,
//   46       GPIOC::MODER::MODER9::Output
//   47   >::Set();
          CFI FunCall _ZN8RegisterILj1073874944ELj32E13ReadWriteModeN5GPIOC14GPIOCMODERBaseEJ10FieldValueI26GPIOC_MODER_MODER15_ValuesINS1_5MODERELj10ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj16ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj18ELj2ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvv
        BL       _ZN8RegisterILj1073874944ELj32E13ReadWriteModeN5GPIOC14GPIOCMODERBaseEJ10FieldValueI26GPIOC_MODER_MODER15_ValuesINS1_5MODERELj10ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj16ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj18ELj2ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvv
//   48 
//   49   return 1;
        MOVS     R0,#+1
        POP      {R1,PC}          ;; return
//   50 }
          CFI EndBlock cfiBlock1
//   51 }
//   52 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   53 OsWrapper::Event event{500ms, 1};
event:
        DS8 36

        SECTION `.rodata`:CONST:REORDER:NOROOT(3)
        DATA
?_2:
        DATA64
        DC64 500
//   54 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   55 MyTask myTask(event, UserButton::GetInstance());
myTask:
        DS8 612

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   56 Led1Task led1Task(event, LedsController::GetInstance());
led1Task:
        DS8 612
//   57 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function main
        THUMB
//   58 int main()
//   59 {
main:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   60   using namespace OsWrapper;
//   61   Rtos::CreateThread(myTask, "myTask", ThreadPriority::lowest);
        MOVS     R2,#+10
        LDR.N    R1,??DataTable1_20
        LDR.N    R0,??DataTable1_5
          CFI FunCall _ZN9OsWrapper4Rtos12CreateThreadI6MyTaskEEvRT_PKcNS_14ThreadPriorityE
        BL       _ZN9OsWrapper4Rtos12CreateThreadI6MyTaskEEvRT_PKcNS_14ThreadPriorityE
//   62   Rtos::CreateThread(led1Task, "Led1Task");
        MOVS     R2,#+30
        LDR.N    R1,??DataTable1_21
        LDR.N    R0,??DataTable1_7
          CFI FunCall _ZN9OsWrapper4Rtos12CreateThreadI8Led1TaskEEvRT_PKcNS_14ThreadPriorityE
        BL       _ZN9OsWrapper4Rtos12CreateThreadI8Led1TaskEEvRT_PKcNS_14ThreadPriorityE
//   63   Rtos::Start();
          CFI FunCall _ZN9OsWrapper4Rtos5StartEv
        BL       _ZN9OsWrapper4Rtos5StartEv
//   64 
//   65   return 0;
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
//   66 }
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DATA32
        DC32     event

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DATA32
        DC32     ?_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DATA32
        DC32     __dso_handle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DATA32
        DC32     _ZN9OsWrapper5EventD1Ev

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DATA32
        DC32     _ZN9SingletonI6ButtonI3PinI4PortI5GPIOCELh13E11PinReadableEEvJEE8instanceE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DATA32
        DC32     myTask

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DATA32
        DC32     _ZN9SingletonI14LedsControllervJEE8instanceE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DATA32
        DC32     led1Task

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DATA32
        DC32     _ZGVN9SingletonI10LedsDrivervJEE8instanceE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DATA32
        DC32     _ZN9SingletonI10LedsDrivervJEE8instanceE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DATA32
        DC32     _ZGVN9SingletonI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEvJEE8instanceE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DATA32
        DC32     _ZN9SingletonI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEvJEE8instanceE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DATA32
        DC32     _ZGVN9SingletonI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEvJEE8instanceE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DATA32
        DC32     _ZN9SingletonI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEvJEE8instanceE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_14:
        DATA32
        DC32     _ZGVN9SingletonI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEvJEE8instanceE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_15:
        DATA32
        DC32     _ZN9SingletonI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEvJEE8instanceE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_16:
        DATA32
        DC32     _ZGVN9SingletonI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEvJEE8instanceE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_17:
        DATA32
        DC32     _ZN9SingletonI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEvJEE8instanceE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_18:
        DATA32
        DC32     _ZGVN9SingletonI14LedsControllervJEE8instanceE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_19:
        DATA32
        DC32     _ZGVN9SingletonI6ButtonI3PinI4PortI5GPIOCELh13E11PinReadableEEvJEE8instanceE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_20:
        DATA32
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_21:
        DATA32
        DC32     ?_1

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZSt10_AddressofI4ILedEPT_RS1_St17integral_constantIbLb0EE
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function _ZSt10_AddressofI4ILedEPT_RS1_St17integral_constantIbLb0EE
          CFI NoCalls
        THUMB
// __interwork __vfp ILed *std::_Addressof<ILed>(ILed &, std::false_type)
_ZSt10_AddressofI4ILedEPT_RS1_St17integral_constantIbLb0EE:
        BX       LR               ;; return
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZSt10_AddressofISt17reference_wrapperI4ILedEEPT_RS3_St17integral_constantIbLb0EE
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function _ZSt10_AddressofISt17reference_wrapperI4ILedEEPT_RS3_St17integral_constantIbLb0EE
          CFI NoCalls
        THUMB
// __interwork __vfp std::reference_wrapper<ILed> *std::_Addressof<std::reference_wrapper<ILed>>(std::reference_wrapper<ILed> &, std::false_type)
_ZSt10_AddressofISt17reference_wrapperI4ILedEEPT_RS3_St17integral_constantIbLb0EE:
        BX       LR               ;; return
          CFI EndBlock cfiBlock4

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZSt10_AddressofI8LedsModeEPT_RS1_St17integral_constantIbLb0EE
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function _ZSt10_AddressofI8LedsModeEPT_RS1_St17integral_constantIbLb0EE
          CFI NoCalls
        THUMB
// __interwork __vfp LedsMode *std::_Addressof<LedsMode>(LedsMode &, std::false_type)
_ZSt10_AddressofI8LedsModeEPT_RS1_St17integral_constantIbLb0EE:
        BX       LR               ;; return
          CFI EndBlock cfiBlock5

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZSt9addressofI4ILedEPT_RS1_
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function _ZSt9addressofI4ILedEPT_RS1_
        THUMB
// __interwork __vfp ILed *std::addressof<ILed>(ILed &)
_ZSt9addressofI4ILedEPT_RS1_:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZSt10_AddressofI4ILedEPT_RS1_St17integral_constantIbLb0EE
        BL       _ZSt10_AddressofI4ILedEPT_RS1_St17integral_constantIbLb0EE
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock6

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZSt9addressofISt17reference_wrapperI4ILedEEPT_RS3_
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function _ZSt9addressofISt17reference_wrapperI4ILedEEPT_RS3_
        THUMB
// __interwork __vfp std::reference_wrapper<ILed> *std::addressof<std::reference_wrapper<ILed>>(std::reference_wrapper<ILed> &)
_ZSt9addressofISt17reference_wrapperI4ILedEEPT_RS3_:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZSt10_AddressofISt17reference_wrapperI4ILedEEPT_RS3_St17integral_constantIbLb0EE
        BL       _ZSt10_AddressofISt17reference_wrapperI4ILedEEPT_RS3_St17integral_constantIbLb0EE
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZSt9addressofI8LedsModeEPT_RS1_
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function _ZSt9addressofI8LedsModeEPT_RS1_
        THUMB
// __interwork __vfp LedsMode *std::addressof<LedsMode>(LedsMode &)
_ZSt9addressofI8LedsModeEPT_RS1_:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZSt10_AddressofI8LedsModeEPT_RS1_St17integral_constantIbLb0EE
        BL       _ZSt10_AddressofI8LedsModeEPT_RS1_St17integral_constantIbLb0EE
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock8

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNSt17reference_wrapperI4ILedEC1ERS0_
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function _ZNSt17reference_wrapperI4ILedEC1ERS0_
        THUMB
// __code __interwork __vfp std::reference_wrapper<ILed>::reference_wrapper(ILed &)
_ZNSt17reference_wrapperI4ILedEC1ERS0_:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        MOVS     R0,R1
          CFI FunCall _ZSt9addressofI4ILedEPT_RS1_
        BL       _ZSt9addressofI4ILedEPT_RS1_
        STR      R0,[R4, #+0]
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock9

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNSt17reference_wrapperI8LedsModeEC1ERS0_
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function _ZNSt17reference_wrapperI8LedsModeEC1ERS0_
        THUMB
// __code __interwork __vfp std::reference_wrapper<LedsMode>::reference_wrapper(LedsMode &)
_ZNSt17reference_wrapperI8LedsModeEC1ERS0_:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        MOVS     R0,R1
          CFI FunCall _ZSt9addressofI8LedsModeEPT_RS1_
        BL       _ZSt9addressofI8LedsModeEPT_RS1_
        STR      R0,[R4, #+0]
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock10

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNKSt17reference_wrapperI4ILedEcvRS0_Ev
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function _ZNKSt17reference_wrapperI4ILedEcvRS0_Ev
          CFI NoCalls
        THUMB
// __code __interwork __vfp std::reference_wrapper<ILed>::operator ILed &() const
_ZNKSt17reference_wrapperI4ILedEcvRS0_Ev:
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock11

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNKSt17reference_wrapperI4ILedE3getEv
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function _ZNKSt17reference_wrapperI4ILedE3getEv
          CFI NoCalls
        THUMB
// __interwork __vfp ILed &std::reference_wrapper<ILed>::get() const
_ZNKSt17reference_wrapperI4ILedE3getEv:
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock12

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEC1EPKS2_j
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function _ZNSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEC1EPKS2_j
          CFI NoCalls
        THUMB
// __code __interwork __vfp std::_Array_const_iterator<std::reference_wrapper<ILed>, 4U>::_Array_const_iterator(std::reference_wrapper<ILed> const *, size_t)
_ZNSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEC1EPKS2_j:
        ADD      R1,R1,R2, LSL #+2
        STR      R1,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock13

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEC2EPKS2_j
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function _ZNSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEC2EPKS2_j
        THUMB
// __code __interwork __vfp std::_Array_const_iterator<std::reference_wrapper<ILed>, 4U>::subobject _Array_const_iterator(std::reference_wrapper<ILed> const *, size_t)
_ZNSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEC2EPKS2_j:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZNSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEC1EPKS2_j
        BL       _ZNSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEC1EPKS2_j
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock14

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNKSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEdeEv
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function _ZNKSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEdeEv
          CFI NoCalls
        THUMB
// __interwork __vfp std::reference_wrapper<ILed> const & std::_Array_const_iterator<std::reference_wrapper<ILed>, 4U>::operator*() const
_ZNKSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEdeEv:
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock15

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEppEv
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function _ZNSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEppEv
          CFI NoCalls
        THUMB
// __interwork __vfp std::_Array_const_iterator<std::reference_wrapper<ILed>, 4U> &std::_Array_const_iterator<std::reference_wrapper<ILed>, 4U>::operator++()
_ZNSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEppEv:
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+4
        STR      R1,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock16

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNKSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEeqERKS3_
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function _ZNKSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEeqERKS3_
          CFI NoCalls
        THUMB
// __interwork __vfp bool std::_Array_const_iterator<std::reference_wrapper<ILed>, 4U>::operator==(std::_Array_const_iterator<std::reference_wrapper<ILed>, 4U> const &) const
_ZNKSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEeqERKS3_:
        LDR      R0,[R0, #+0]
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    `??operator==_0`
        MOVS     R0,#+1
        B.N      `??operator==_1`
`??operator==_0`:
        MOVS     R0,#+0
`??operator==_1`:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock17

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNKSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEneERKS3_
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function _ZNKSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEneERKS3_
        THUMB
// __interwork __vfp bool std::_Array_const_iterator<std::reference_wrapper<ILed>, 4U>::operator!=(std::_Array_const_iterator<std::reference_wrapper<ILed>, 4U> const &) const
_ZNKSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEneERKS3_:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZNKSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEeqERKS3_
        BL       _ZNKSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEeqERKS3_
        CMP      R0,#+0
        BNE.N    `??operator!=_0`
        MOVS     R0,#+1
        B.N      `??operator!=_1`
`??operator!=_0`:
        MOVS     R0,#+0
`??operator!=_1`:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock18

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEC1EPS2_j
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function _ZNSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEC1EPS2_j
        THUMB
// __code __interwork __vfp std::_Array_iterator<std::reference_wrapper<ILed>, 4U>::_Array_iterator(std::reference_wrapper<ILed> *, size_t)
_ZNSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEC1EPS2_j:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        MOVS     R0,R4
          CFI FunCall _ZNSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEC2EPKS2_j
        BL       _ZNSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEC2EPKS2_j
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock19

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNKSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEdeEv
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function _ZNKSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEdeEv
        THUMB
// __interwork __vfp std::reference_wrapper<ILed> & std::_Array_iterator<std::reference_wrapper<ILed>, 4U>::operator*() const
_ZNKSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEdeEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZNKSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEdeEv
        BL       _ZNKSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEdeEv
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock20

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEppEv
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function _ZNSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEppEv
        THUMB
// __interwork __vfp std::_Array_iterator<std::reference_wrapper<ILed>, 4U> &std::_Array_iterator<std::reference_wrapper<ILed>, 4U>::operator++()
_ZNSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEppEv:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        MOVS     R0,R4
          CFI FunCall _ZNSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEppEv
        BL       _ZNSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEppEv
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock21

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNSt5arrayISt17reference_wrapperI4ILedELj4EE5beginEv
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function _ZNSt5arrayISt17reference_wrapperI4ILedELj4EE5beginEv
        THUMB
// __interwork __vfp std::array<std::reference_wrapper<ILed>, 4U>::iterator std::array<std::reference_wrapper<ILed>, 4U>::begin()
_ZNSt5arrayISt17reference_wrapperI4ILedELj4EE5beginEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZSt9addressofISt17reference_wrapperI4ILedEEPT_RS3_
        BL       _ZSt9addressofISt17reference_wrapperI4ILedEEPT_RS3_
        MOVS     R2,#+0
        MOVS     R1,R0
        MOV      R0,SP
          CFI FunCall _ZNSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEC1EPS2_j
        BL       _ZNSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEC1EPS2_j
        LDR      R0,[R0, #+0]
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock22

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNSt5arrayISt17reference_wrapperI4ILedELj4EE3endEv
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function _ZNSt5arrayISt17reference_wrapperI4ILedELj4EE3endEv
        THUMB
// __interwork __vfp std::array<std::reference_wrapper<ILed>, 4U>::iterator std::array<std::reference_wrapper<ILed>, 4U>::end()
_ZNSt5arrayISt17reference_wrapperI4ILedELj4EE3endEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZSt9addressofISt17reference_wrapperI4ILedEEPT_RS3_
        BL       _ZSt9addressofISt17reference_wrapperI4ILedEEPT_RS3_
        MOVS     R2,#+4
        MOVS     R1,R0
        MOV      R0,SP
          CFI FunCall _ZNSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEC1EPS2_j
        BL       _ZNSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEC1EPS2_j
        LDR      R0,[R0, #+0]
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock23

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNKSt5arrayISt17reference_wrapperI4ILedELj4EE4sizeEv
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function _ZNKSt5arrayISt17reference_wrapperI4ILedELj4EE4sizeEv
          CFI NoCalls
        THUMB
// __interwork __vfp size_t std::array<std::reference_wrapper<ILed>, 4U>::size() const
_ZNKSt5arrayISt17reference_wrapperI4ILedELj4EE4sizeEv:
        MOVS     R0,#+4
        BX       LR               ;; return
          CFI EndBlock cfiBlock24

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNSt5arrayISt17reference_wrapperI4ILedELj4EEixEj
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function _ZNSt5arrayISt17reference_wrapperI4ILedELj4EEixEj
          CFI NoCalls
        THUMB
// __interwork __vfp std::reference_wrapper<ILed> & std::array<std::reference_wrapper<ILed>, 4U>::operator[](size_t)
_ZNSt5arrayISt17reference_wrapperI4ILedELj4EEixEj:
        ADD      R0,R0,R1, LSL #+2
        BX       LR               ;; return
          CFI EndBlock cfiBlock25

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNSt5arrayIjLj128EE4dataEv
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function _ZNSt5arrayIjLj128EE4dataEv
          CFI NoCalls
        THUMB
// __interwork __vfp uint32_t *std::array<uint32_t, 128U>::data()
_ZNSt5arrayIjLj128EE4dataEv:
        BX       LR               ;; return
          CFI EndBlock cfiBlock26

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNSt6chrono13duration_castINS_8durationIjSt5ratioILx10ELx1000EEEExS2_ILx1ELx1000EEEENSt9enable_ifIXsr3std6chrono12_Is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function _ZNSt6chrono13duration_castINS_8durationIjSt5ratioILx10ELx1000EEEExS2_ILx1ELx1000EEEENSt9enable_ifIXsr3std6chrono12_Is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
        THUMB
// __interwork __vfp OsWrapper::TicksPerSecond std::chrono::duration_cast<OsWrapper::TicksPerSecond, __int64_t, std::milli>(std::chrono::duration<__int64_t, std::milli> const &)
_ZNSt6chrono13duration_castINS_8durationIjSt5ratioILx10ELx1000EEEExS2_ILx1ELx1000EEEENSt9enable_ifIXsr3std6chrono12_Is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE:
        PUSH     {R5-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
          CFI FunCall _ZNKSt6chrono8durationIxSt5ratioILx1ELx1000EEE5countEv
        BL       _ZNKSt6chrono8durationIxSt5ratioILx1ELx1000EEE5countEv
        MOVS     R2,#+10
        MOVS     R3,#+0
          CFI FunCall __aeabi_ldivmod
        BL       __aeabi_ldivmod
        STR      R0,[SP, #+4]
        ADD      R1,SP,#+4
        MOV      R0,SP
          CFI FunCall _ZNSt6chrono8durationIjSt5ratioILx10ELx1000EEEC1IjvEERKT_
        BL       _ZNSt6chrono8durationIjSt5ratioILx10ELx1000EEEC1IjvEERKT_
        LDR      R0,[SP, #+0]
        POP      {R1-R3,PC}       ;; return
          CFI EndBlock cfiBlock27

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNSt6chrono8durationIjSt5ratioILx10ELx1000EEEC1IjvEERKT_
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function _ZNSt6chrono8durationIjSt5ratioILx10ELx1000EEEC1IjvEERKT_
          CFI NoCalls
        THUMB
// __code __interwork __vfp std::chrono::duration<uint32_t, std::ratio<10LL, 1000LL>>::duration<uint32_t, void>(uint32_t const &)
_ZNSt6chrono8durationIjSt5ratioILx10ELx1000EEEC1IjvEERKT_:
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock28

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNKSt6chrono8durationIxSt5ratioILx1ELx1000EEE5countEv
          CFI Block cfiBlock29 Using cfiCommon0
          CFI Function _ZNKSt6chrono8durationIxSt5ratioILx1ELx1000EEE5countEv
          CFI NoCalls
        THUMB
// __interwork __vfp __int64_t std::chrono::duration<__int64_t, std::milli>::count() const
_ZNKSt6chrono8durationIxSt5ratioILx1ELx1000EEE5countEv:
        LDRD     R0,R1,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock29

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNKSt6chrono8durationIjSt5ratioILx10ELx1000EEE5countEv
          CFI Block cfiBlock30 Using cfiCommon0
          CFI Function _ZNKSt6chrono8durationIjSt5ratioILx10ELx1000EEE5countEv
          CFI NoCalls
        THUMB
// __interwork __vfp uint32_t std::chrono::duration<uint32_t, std::ratio<10LL, 1000LL>>::count() const
_ZNKSt6chrono8durationIjSt5ratioILx10ELx1000EEE5countEv:
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock30

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN9OsWrapper11RtosWrapper13wCreateThreadINS_4RtosE6MyTaskEEvRT0_PKcNS_14ThreadPriorityEtPj
          CFI Block cfiBlock31 Using cfiCommon0
          CFI Function _ZN9OsWrapper11RtosWrapper13wCreateThreadINS_4RtosE6MyTaskEEvRT0_PKcNS_14ThreadPriorityEtPj
        THUMB
// __interwork __vfp void OsWrapper::RtosWrapper::wCreateThread<OsWrapper::Rtos, MyTask>(MyTask &, char const *, OsWrapper::ThreadPriority, uint16_t, uint32_t *)
_ZN9OsWrapper11RtosWrapper13wCreateThreadINS_4RtosE6MyTaskEEvRT0_PKcNS_14ThreadPriorityEtPj:
        PUSH     {R1-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+24
        MOVS     R5,R0
        MOVS     R4,R3
        LDR      R0,[SP, #+24]
        CMP      R0,#+0
        BEQ.N    ??wCreateThread_2
        ADDS     R3,R5,#+4
        STR      R3,[SP, #+8]
        STR      R0,[SP, #+4]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        STR      R2,[SP, #+0]
        MOVS     R3,R5
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVS     R2,R4
        LDR.N    R0,??wCreateThread_0
          CFI FunCall xTaskCreateStatic
        BL       xTaskCreateStatic
        STR      R0,[R5, #+84]
??wCreateThread_2:
        POP      {R0-R2,R4,R5,PC}  ;; return
        Nop      
        DATA
??wCreateThread_0:
        DATA32
        DC32     _ZN9OsWrapper4Rtos3RunEPv
          CFI EndBlock cfiBlock31

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN9OsWrapper11RtosWrapper13wCreateThreadINS_4RtosE8Led1TaskEEvRT0_PKcNS_14ThreadPriorityEtPj
          CFI Block cfiBlock32 Using cfiCommon0
          CFI Function _ZN9OsWrapper11RtosWrapper13wCreateThreadINS_4RtosE8Led1TaskEEvRT0_PKcNS_14ThreadPriorityEtPj
        THUMB
// __interwork __vfp void OsWrapper::RtosWrapper::wCreateThread<OsWrapper::Rtos, Led1Task>(Led1Task &, char const *, OsWrapper::ThreadPriority, uint16_t, uint32_t *)
_ZN9OsWrapper11RtosWrapper13wCreateThreadINS_4RtosE8Led1TaskEEvRT0_PKcNS_14ThreadPriorityEtPj:
        PUSH     {R1-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+24
        MOVS     R5,R0
        MOVS     R4,R3
        LDR      R0,[SP, #+24]
        CMP      R0,#+0
        BEQ.N    ??wCreateThread_3
        ADDS     R3,R5,#+4
        STR      R3,[SP, #+8]
        STR      R0,[SP, #+4]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        STR      R2,[SP, #+0]
        MOVS     R3,R5
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVS     R2,R4
        LDR.N    R0,??wCreateThread_1
          CFI FunCall xTaskCreateStatic
        BL       xTaskCreateStatic
        STR      R0,[R5, #+84]
??wCreateThread_3:
        POP      {R0-R2,R4,R5,PC}  ;; return
        Nop      
        DATA
??wCreateThread_1:
        DATA32
        DC32     _ZN9OsWrapper4Rtos3RunEPv
          CFI EndBlock cfiBlock32

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9OsWrapper11RtosWrapper6wStartEv
          CFI Block cfiBlock33 Using cfiCommon0
          CFI Function _ZN9OsWrapper11RtosWrapper6wStartEv
        THUMB
// __interwork __vfp void OsWrapper::RtosWrapper::wStart()
_ZN9OsWrapper11RtosWrapper6wStartEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall vTaskStartScheduler
        BL       vTaskStartScheduler
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock33

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9OsWrapper11RtosWrapper12wCreateEventER19xSTATIC_EVENT_GROUP
          CFI Block cfiBlock34 Using cfiCommon0
          CFI Function _ZN9OsWrapper11RtosWrapper12wCreateEventER19xSTATIC_EVENT_GROUP
        THUMB
// __interwork __vfp void * OsWrapper::RtosWrapper::wCreateEvent(OsWrapper::tEvent &)
_ZN9OsWrapper11RtosWrapper12wCreateEventER19xSTATIC_EVENT_GROUP:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall xEventGroupCreateStatic
        BL       xEventGroupCreateStatic
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock34

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9OsWrapper11RtosWrapper12wDeleteEventERPv
          CFI Block cfiBlock35 Using cfiCommon0
          CFI Function _ZN9OsWrapper11RtosWrapper12wDeleteEventERPv
        THUMB
// __interwork __vfp void OsWrapper::RtosWrapper::wDeleteEvent(void * &)
_ZN9OsWrapper11RtosWrapper12wDeleteEventERPv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        LDR      R0,[R0, #+0]
          CFI FunCall vEventGroupDelete
        BL       vEventGroupDelete
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock35

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9OsWrapper11RtosWrapper9wGetTicksEv
          CFI Block cfiBlock36 Using cfiCommon0
          CFI Function _ZN9OsWrapper11RtosWrapper9wGetTicksEv
        THUMB
// __interwork __vfp uint32_t OsWrapper::RtosWrapper::wGetTicks()
_ZN9OsWrapper11RtosWrapper9wGetTicksEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall xTaskGetTickCount
        BL       xTaskGetTickCount
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock36

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9OsWrapper7IThreadC2Ev
          CFI Block cfiBlock37 Using cfiCommon0
          CFI Function _ZN9OsWrapper7IThreadC2Ev
        THUMB
// __code __interwork __vfp OsWrapper::IThread::subobject IThread()
_ZN9OsWrapper7IThreadC2Ev:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN9OsWrapper7IThreadC1Ev
        BL       _ZN9OsWrapper7IThreadC1Ev
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock37

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9OsWrapper7IThreadC1Ev
          CFI Block cfiBlock38 Using cfiCommon0
          CFI Function _ZN9OsWrapper7IThreadC1Ev
          CFI NoCalls
        THUMB
// __code __interwork __vfp OsWrapper::IThread::IThread()
_ZN9OsWrapper7IThreadC1Ev:
        MOVS     R1,#+0
        STR      R1,[R0, #+84]
        MOVS     R1,#+0
        STR      R1,[R0, #+88]
        BX       LR               ;; return
          CFI EndBlock cfiBlock38

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9OsWrapper7IThread3RunEv
          CFI Block cfiBlock39 Using cfiCommon0
          CFI Function _ZN9OsWrapper7IThread3RunEv
        THUMB
// __interwork __vfp void OsWrapper::IThread::Run()
_ZN9OsWrapper7IThread3RunEv:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
          CFI FunCall _ZN9OsWrapper11RtosWrapper9wGetTicksEv
        BL       _ZN9OsWrapper11RtosWrapper9wGetTicksEv
        STR      R0,[R4, #+88]
        MOVS     R0,R4
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+0]
          CFI FunCall
        BLX      R1
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock39

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9OsWrapper6ThreadILj128EEC2Ev
          CFI Block cfiBlock40 Using cfiCommon0
          CFI Function _ZN9OsWrapper6ThreadILj128EEC2Ev
        THUMB
// __code __interwork __vfp OsWrapper::Thread<128U>::subobject Thread()
_ZN9OsWrapper6ThreadILj128EEC2Ev:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN9OsWrapper6ThreadILj128EEC1Ev
        BL       _ZN9OsWrapper6ThreadILj128EEC1Ev
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock40

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9OsWrapper6ThreadILj128EEC1Ev
          CFI Block cfiBlock41 Using cfiCommon0
          CFI Function _ZN9OsWrapper6ThreadILj128EEC1Ev
        THUMB
// __code __interwork __vfp OsWrapper::Thread<128U>::Thread()
_ZN9OsWrapper6ThreadILj128EEC1Ev:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        MOVS     R0,R4
          CFI FunCall _ZN9OsWrapper7IThreadC2Ev
        BL       _ZN9OsWrapper7IThreadC2Ev
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock41

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9OsWrapper4Rtos12CreateThreadI6MyTaskEEvRT_PKcNS_14ThreadPriorityE
          CFI Block cfiBlock42 Using cfiCommon0
          CFI Function _ZN9OsWrapper4Rtos12CreateThreadI6MyTaskEEvRT_PKcNS_14ThreadPriorityE
        THUMB
// __interwork __vfp void OsWrapper::Rtos::CreateThread<MyTask>(MyTask &, char const *, OsWrapper::ThreadPriority)
_ZN9OsWrapper4Rtos12CreateThreadI6MyTaskEEvRT_PKcNS_14ThreadPriorityE:
        PUSH     {R2-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        ADDS     R0,R4,#+92
          CFI FunCall _ZNSt5arrayIjLj128EE4dataEv
        BL       _ZNSt5arrayIjLj128EE4dataEv
        STR      R0,[SP, #+0]
        MOVS     R3,#+128
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        MOVS     R0,R4
          CFI FunCall _ZN9OsWrapper11RtosWrapper13wCreateThreadINS_4RtosE6MyTaskEEvRT0_PKcNS_14ThreadPriorityEtPj
        BL       _ZN9OsWrapper11RtosWrapper13wCreateThreadINS_4RtosE6MyTaskEEvRT0_PKcNS_14ThreadPriorityEtPj
        POP      {R0,R1,R4-R6,PC}  ;; return
          CFI EndBlock cfiBlock42

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9OsWrapper4Rtos12CreateThreadI8Led1TaskEEvRT_PKcNS_14ThreadPriorityE
          CFI Block cfiBlock43 Using cfiCommon0
          CFI Function _ZN9OsWrapper4Rtos12CreateThreadI8Led1TaskEEvRT_PKcNS_14ThreadPriorityE
        THUMB
// __interwork __vfp void OsWrapper::Rtos::CreateThread<Led1Task>(Led1Task &, char const *, OsWrapper::ThreadPriority)
_ZN9OsWrapper4Rtos12CreateThreadI8Led1TaskEEvRT_PKcNS_14ThreadPriorityE:
        PUSH     {R2-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        ADDS     R0,R4,#+92
          CFI FunCall _ZNSt5arrayIjLj128EE4dataEv
        BL       _ZNSt5arrayIjLj128EE4dataEv
        STR      R0,[SP, #+0]
        MOVS     R3,#+128
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        MOVS     R0,R4
          CFI FunCall _ZN9OsWrapper11RtosWrapper13wCreateThreadINS_4RtosE8Led1TaskEEvRT0_PKcNS_14ThreadPriorityEtPj
        BL       _ZN9OsWrapper11RtosWrapper13wCreateThreadINS_4RtosE8Led1TaskEEvRT0_PKcNS_14ThreadPriorityEtPj
        POP      {R0,R1,R4-R6,PC}  ;; return
          CFI EndBlock cfiBlock43

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9OsWrapper4Rtos5StartEv
          CFI Block cfiBlock44 Using cfiCommon0
          CFI Function _ZN9OsWrapper4Rtos5StartEv
        THUMB
// __interwork __vfp void OsWrapper::Rtos::Start()
_ZN9OsWrapper4Rtos5StartEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN9OsWrapper11RtosWrapper6wStartEv
        BL       _ZN9OsWrapper11RtosWrapper6wStartEv
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock44

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9OsWrapper4Rtos3RunEPv
          CFI Block cfiBlock45 Using cfiCommon0
          CFI Function _ZN9OsWrapper4Rtos3RunEPv
        THUMB
// __interwork __vfp void OsWrapper::Rtos::Run(void *)
_ZN9OsWrapper4Rtos3RunEPv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN9OsWrapper7IThread3RunEv
        BL       _ZN9OsWrapper7IThread3RunEv
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock45

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9OsWrapper5EventC1ENSt6chrono8durationIxSt5ratioILx1ELx1000EEEEj
          CFI Block cfiBlock46 Using cfiCommon0
          CFI Function _ZN9OsWrapper5EventC1ENSt6chrono8durationIxSt5ratioILx1ELx1000EEEEj
        THUMB
// __code __interwork __vfp OsWrapper::Event::Event(std::chrono::milliseconds, uint32_t)
_ZN9OsWrapper5EventC1ENSt6chrono8durationIxSt5ratioILx1ELx1000EEEEj:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        PUSH     {R0-R3}
          CFI CFA R13+32
        MOVS     R4,R0
        LDR      R5,[SP, #+32]
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
        ADD      R0,SP,#+8
          CFI FunCall _ZNSt6chrono13duration_castINS_8durationIjSt5ratioILx10ELx1000EEEExS2_ILx1ELx1000EEEENSt9enable_ifIXsr3std6chrono12_Is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
        BL       _ZNSt6chrono13duration_castINS_8durationIjSt5ratioILx10ELx1000EEEExS2_ILx1ELx1000EEEENSt9enable_ifIXsr3std6chrono12_Is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
        STR      R0,[SP, #+0]
        MOV      R0,SP
          CFI FunCall _ZNKSt6chrono8durationIjSt5ratioILx10ELx1000EEE5countEv
        BL       _ZNKSt6chrono8durationIjSt5ratioILx10ELx1000EEE5countEv
        STR      R0,[R4, #+28]
        STR      R5,[R4, #+32]
        ADDS     R0,R4,#+4
          CFI FunCall _ZN9OsWrapper11RtosWrapper12wCreateEventER19xSTATIC_EVENT_GROUP
        BL       _ZN9OsWrapper11RtosWrapper12wCreateEventER19xSTATIC_EVENT_GROUP
        STR      R0,[R4, #+0]
        MOVS     R0,R4
        ADD      SP,SP,#+20
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
          CFI EndBlock cfiBlock46

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9OsWrapper5EventD1Ev
          CFI Block cfiBlock47 Using cfiCommon0
          CFI Function _ZN9OsWrapper5EventD1Ev
        THUMB
// __code __interwork __vfp OsWrapper::Event::~Event()
_ZN9OsWrapper5EventD1Ev:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        MOVS     R0,R4
          CFI FunCall _ZN9OsWrapper11RtosWrapper12wDeleteEventERPv
        BL       _ZN9OsWrapper11RtosWrapper12wDeleteEventERPv
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock47

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN14FieldValueBaseI19RCC_CR_HSION_ValuesIN3RCC2CRELj0ELj1E13ReadWriteModeNS1_9RCCCRBaseEES4_Lj1EE3SetIS3_vEEvv
          CFI Block cfiBlock48 Using cfiCommon0
          CFI Function _ZN14FieldValueBaseI19RCC_CR_HSION_ValuesIN3RCC2CRELj0ELj1E13ReadWriteModeNS1_9RCCCRBaseEES4_Lj1EE3SetIS3_vEEvv
          CFI NoCalls
        THUMB
// __interwork __vfp void FieldValueBase<RCC_CR_HSION_Values<RCC::CR, 0U, 1U, ReadWriteMode, RCC::RCCCRBase>, RCC::RCCCRBase, 1U>::Set<ReadWriteMode, void>()
_ZN14FieldValueBaseI19RCC_CR_HSION_ValuesIN3RCC2CRELj0ELj1E13ReadWriteModeNS1_9RCCCRBaseEES4_Lj1EE3SetIS3_vEEvv:
        LDR.N    R1,??Set_0       ;; 0x40023800
        LDR      R0,[R1, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        ORRS     R0,R0,#0x1
        STR      R0,[R1, #+0]
        BX       LR               ;; return
        DATA
??Set_0:
        DATA32
        DC32     0x40023800
          CFI EndBlock cfiBlock48

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN14FieldValueBaseI18RCC_CFGR_SW_ValuesIN3RCC4CFGRELj0ELj2E13ReadWriteModeNS1_11RCCCFGRBaseEES4_Lj0EE3SetIS3_vEEvv
          CFI Block cfiBlock49 Using cfiCommon0
          CFI Function _ZN14FieldValueBaseI18RCC_CFGR_SW_ValuesIN3RCC4CFGRELj0ELj2E13ReadWriteModeNS1_11RCCCFGRBaseEES4_Lj0EE3SetIS3_vEEvv
          CFI NoCalls
        THUMB
// __interwork __vfp void FieldValueBase<RCC_CFGR_SW_Values<RCC::CFGR, 0U, 2U, ReadWriteMode, RCC::RCCCFGRBase>, RCC::RCCCFGRBase, 0U>::Set<ReadWriteMode, void>()
_ZN14FieldValueBaseI18RCC_CFGR_SW_ValuesIN3RCC4CFGRELj0ELj2E13ReadWriteModeNS1_11RCCCFGRBaseEES4_Lj0EE3SetIS3_vEEvv:
        LDR.N    R1,??Set_1       ;; 0x40023808
        LDR      R0,[R1, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+2
        STR      R0,[R1, #+0]
        BX       LR               ;; return
        DATA
??Set_1:
        DATA32
        DC32     0x40023808
          CFI EndBlock cfiBlock49

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN14FieldValueBaseI25RCC_AHB1ENR_DMA2EN_ValuesIN3RCC7APB2ENRELj14ELj1E13ReadWriteModeNS1_14RCCAPB2ENRBaseEES4_Lj1EE3SetIS3_vEEvv
          CFI Block cfiBlock50 Using cfiCommon0
          CFI Function _ZN14FieldValueBaseI25RCC_AHB1ENR_DMA2EN_ValuesIN3RCC7APB2ENRELj14ELj1E13ReadWriteModeNS1_14RCCAPB2ENRBaseEES4_Lj1EE3SetIS3_vEEvv
          CFI NoCalls
        THUMB
// __interwork __vfp void FieldValueBase<RCC_AHB1ENR_DMA2EN_Values<RCC::APB2ENR, 14U, 1U, ReadWriteMode, RCC::RCCAPB2ENRBase>, RCC::RCCAPB2ENRBase, 1U>::Set<ReadWriteMode, void>()
_ZN14FieldValueBaseI25RCC_AHB1ENR_DMA2EN_ValuesIN3RCC7APB2ENRELj14ELj1E13ReadWriteModeNS1_14RCCAPB2ENRBaseEES4_Lj1EE3SetIS3_vEEvv:
        LDR.N    R1,??Set_2       ;; 0x40023844
        LDR      R0,[R1, #+0]
        BICS     R0,R0,#0x4000
        ORRS     R0,R0,#0x4000
        STR      R0,[R1, #+0]
        BX       LR               ;; return
        DATA
??Set_2:
        DATA32
        DC32     0x40023844
          CFI EndBlock cfiBlock50

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN14FieldValueBaseI26GPIOA_MODER_MODER15_ValuesIN5GPIOA5MODERELj10ELj2E13ReadWriteModeNS1_14GPIOAMODERBaseEES4_Lj1EE3SetIS3_vEEvv
          CFI Block cfiBlock51 Using cfiCommon0
          CFI Function _ZN14FieldValueBaseI26GPIOA_MODER_MODER15_ValuesIN5GPIOA5MODERELj10ELj2E13ReadWriteModeNS1_14GPIOAMODERBaseEES4_Lj1EE3SetIS3_vEEvv
          CFI NoCalls
        THUMB
// __interwork __vfp void FieldValueBase<GPIOA_MODER_MODER15_Values<GPIOA::MODER, 10U, 2U, ReadWriteMode, GPIOA::GPIOAMODERBase>, GPIOA::GPIOAMODERBase, 1U>::Set<ReadWriteMode, void>()
_ZN14FieldValueBaseI26GPIOA_MODER_MODER15_ValuesIN5GPIOA5MODERELj10ELj2E13ReadWriteModeNS1_14GPIOAMODERBaseEES4_Lj1EE3SetIS3_vEEvv:
        LDR.N    R1,??Set_3       ;; 0x40020000
        LDR      R0,[R1, #+0]
        BICS     R0,R0,#0xC00
        ORRS     R0,R0,#0x400
        STR      R0,[R1, #+0]
        BX       LR               ;; return
        DATA
??Set_3:
        DATA32
        DC32     0x40020000
          CFI EndBlock cfiBlock51

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN14FieldValueBaseI20RCC_CR_HSIRDY_ValuesIN3RCC2CRELj1ELj1E8ReadModeNS1_9RCCCRBaseEES4_Lj0EE5IsSetIS3_vEEbv
          CFI Block cfiBlock52 Using cfiCommon0
          CFI Function _ZN14FieldValueBaseI20RCC_CR_HSIRDY_ValuesIN3RCC2CRELj1ELj1E8ReadModeNS1_9RCCCRBaseEES4_Lj0EE5IsSetIS3_vEEbv
          CFI NoCalls
        THUMB
// __interwork __vfp bool FieldValueBase<RCC_CR_HSIRDY_Values<RCC::CR, 1U, 1U, ReadMode, RCC::RCCCRBase>, RCC::RCCCRBase, 0U>::IsSet<ReadMode, void>()
_ZN14FieldValueBaseI20RCC_CR_HSIRDY_ValuesIN3RCC2CRELj1ELj1E8ReadModeNS1_9RCCCRBaseEES4_Lj0EE5IsSetIS3_vEEbv:
        LDR.N    R0,??IsSet_0     ;; 0x40023800
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        ANDS     R0,R0,#0x1
        EORS     R0,R0,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
        Nop      
        DATA
??IsSet_0:
        DATA32
        DC32     0x40023800
          CFI EndBlock cfiBlock52

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN14FieldValueBaseI19RCC_CFGR_SWS_ValuesIN3RCC4CFGRELj2ELj2E8ReadModeNS1_11RCCCFGRBaseEES4_Lj0EE5IsSetIS3_vEEbv
          CFI Block cfiBlock53 Using cfiCommon0
          CFI Function _ZN14FieldValueBaseI19RCC_CFGR_SWS_ValuesIN3RCC4CFGRELj2ELj2E8ReadModeNS1_11RCCCFGRBaseEES4_Lj0EE5IsSetIS3_vEEbv
          CFI NoCalls
        THUMB
// __interwork __vfp bool FieldValueBase<RCC_CFGR_SWS_Values<RCC::CFGR, 2U, 2U, ReadMode, RCC::RCCCFGRBase>, RCC::RCCCFGRBase, 0U>::IsSet<ReadMode, void>()
_ZN14FieldValueBaseI19RCC_CFGR_SWS_ValuesIN3RCC4CFGRELj2ELj2E8ReadModeNS1_11RCCCFGRBaseEES4_Lj0EE5IsSetIS3_vEEbv:
        LDR.N    R0,??IsSet_1     ;; 0x40023808
        LDR      R0,[R0, #+0]
        TST      R0,#0xC
        BNE.N    ??IsSet_2
        MOVS     R0,#+1
        B.N      ??IsSet_3
??IsSet_2:
        MOVS     R0,#+0
??IsSet_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
        DATA
??IsSet_1:
        DATA32
        DC32     0x40023808
          CFI EndBlock cfiBlock53

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN12RegisterBaseILj1073874968ELj32E9WriteModeE5WriteIS0_vEEvj
          CFI Block cfiBlock54 Using cfiCommon0
          CFI Function _ZN12RegisterBaseILj1073874968ELj32E9WriteModeE5WriteIS0_vEEvj
          CFI NoCalls
        THUMB
// __interwork __vfp void RegisterBase<1073874968U, 32U, WriteMode>::Write<WriteMode, void>(uint32_t)
_ZN12RegisterBaseILj1073874968ELj32E9WriteModeE5WriteIS0_vEEvj:
        LDR.N    R1,??Write_0     ;; 0x40020818
        STR      R0,[R1, #+0]
        BX       LR               ;; return
        Nop      
        DATA
??Write_0:
        DATA32
        DC32     0x40020818
          CFI EndBlock cfiBlock54

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN12RegisterBaseILj1073872920ELj32E9WriteModeE5WriteIS0_vEEvj
          CFI Block cfiBlock55 Using cfiCommon0
          CFI Function _ZN12RegisterBaseILj1073872920ELj32E9WriteModeE5WriteIS0_vEEvj
          CFI NoCalls
        THUMB
// __interwork __vfp void RegisterBase<1073872920U, 32U, WriteMode>::Write<WriteMode, void>(uint32_t)
_ZN12RegisterBaseILj1073872920ELj32E9WriteModeE5WriteIS0_vEEvj:
        LDR.N    R1,??Write_1     ;; 0x40020018
        STR      R0,[R1, #+0]
        BX       LR               ;; return
        Nop      
        DATA
??Write_1:
        DATA32
        DC32     0x40020018
          CFI EndBlock cfiBlock55

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN12RegisterBaseILj1073874964ELj32E13ReadWriteModeE6ToggleIS0_vEEvj
          CFI Block cfiBlock56 Using cfiCommon0
          CFI Function _ZN12RegisterBaseILj1073874964ELj32E13ReadWriteModeE6ToggleIS0_vEEvj
          CFI NoCalls
        THUMB
// __interwork __vfp void RegisterBase<1073874964U, 32U, ReadWriteMode>::Toggle<ReadWriteMode, void>(uint32_t)
_ZN12RegisterBaseILj1073874964ELj32E13ReadWriteModeE6ToggleIS0_vEEvj:
        LDR.N    R1,??Toggle_0    ;; 0x40020814
        LDR      R2,[R1, #+0]
        EORS     R0,R0,R2
        STR      R0,[R1, #+0]
        BX       LR               ;; return
        Nop      
        DATA
??Toggle_0:
        DATA32
        DC32     0x40020814
          CFI EndBlock cfiBlock56

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN12RegisterBaseILj1073872916ELj32E13ReadWriteModeE6ToggleIS0_vEEvj
          CFI Block cfiBlock57 Using cfiCommon0
          CFI Function _ZN12RegisterBaseILj1073872916ELj32E13ReadWriteModeE6ToggleIS0_vEEvj
          CFI NoCalls
        THUMB
// __interwork __vfp void RegisterBase<1073872916U, 32U, ReadWriteMode>::Toggle<ReadWriteMode, void>(uint32_t)
_ZN12RegisterBaseILj1073872916ELj32E13ReadWriteModeE6ToggleIS0_vEEvj:
        LDR.N    R1,??Toggle_1    ;; 0x40020014
        LDR      R2,[R1, #+0]
        EORS     R0,R0,R2
        STR      R0,[R1, #+0]
        BX       LR               ;; return
        Nop      
        DATA
??Toggle_1:
        DATA32
        DC32     0x40020014
          CFI EndBlock cfiBlock57

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN8RegisterILj1073887280ELj32E13ReadWriteModeN3RCC14RCCAHB1ENRBaseEJ10FieldValueI25RCC_AHB1ENR_DMA2EN_ValuesINS1_7AHB1ENRELj2ELj1ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj0ELj1ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvv
          CFI Block cfiBlock58 Using cfiCommon0
          CFI Function _ZN8RegisterILj1073887280ELj32E13ReadWriteModeN3RCC14RCCAHB1ENRBaseEJ10FieldValueI25RCC_AHB1ENR_DMA2EN_ValuesINS1_7AHB1ENRELj2ELj1ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj0ELj1ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvv
          CFI NoCalls
        THUMB
// __interwork __vfp void Register<1073887280U, 32U, ReadWriteMode, RCC::RCCAHB1ENRBase, RCC_AHB1ENR_DMA2EN_Values<RCC::AHB1ENR, 2U, 1U, ReadWriteMode, RCC::RCCAHB1ENRBase>::Enable, RCC_AHB1ENR_DMA2EN_Values<RCC::AHB1ENR, 0U, 1U, ReadWriteMode, RCC::RCCAHB1ENRBase>::Enable>::Set<ReadWriteMode, void>()
_ZN8RegisterILj1073887280ELj32E13ReadWriteModeN3RCC14RCCAHB1ENRBaseEJ10FieldValueI25RCC_AHB1ENR_DMA2EN_ValuesINS1_7AHB1ENRELj2ELj1ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj0ELj1ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvv:
        LDR.N    R1,??Set_4       ;; 0x40023830
        LDR      R0,[R1, #+0]
        BICS     R0,R0,#0x5
        ORRS     R0,R0,#0x5
        STR      R0,[R1, #+0]
        BX       LR               ;; return
        DATA
??Set_4:
        DATA32
        DC32     0x40023830
          CFI EndBlock cfiBlock58

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN8RegisterILj1073874944ELj32E13ReadWriteModeN5GPIOC14GPIOCMODERBaseEJ10FieldValueI26GPIOC_MODER_MODER15_ValuesINS1_5MODERELj10ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj16ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj18ELj2ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvv
          CFI Block cfiBlock59 Using cfiCommon0
          CFI Function _ZN8RegisterILj1073874944ELj32E13ReadWriteModeN5GPIOC14GPIOCMODERBaseEJ10FieldValueI26GPIOC_MODER_MODER15_ValuesINS1_5MODERELj10ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj16ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj18ELj2ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvv
          CFI NoCalls
        THUMB
// __interwork __vfp void Register<1073874944U, 32U, ReadWriteMode, GPIOC::GPIOCMODERBase, GPIOC_MODER_MODER15_Values<GPIOC::MODER, 10U, 2U, ReadWriteMode, GPIOC::GPIOCMODERBase>::Output, GPIOC_MODER_MODER15_Values<GPIOC::MODER, 16U, 2U, ReadWriteMode, GPIOC::GPIOCMODERBase>::Output, GPIOC_MODER_MODER15_Values<GPIOC::MODER, 18U, 2U, ReadWriteMode, GPIOC::GPIOCMODERBase>::Output>::Set<ReadWriteMode, void>()
_ZN8RegisterILj1073874944ELj32E13ReadWriteModeN5GPIOC14GPIOCMODERBaseEJ10FieldValueI26GPIOC_MODER_MODER15_ValuesINS1_5MODERELj10ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj16ELj2ES0_S2_ES2_Lj1EES3_IS4_IS5_Lj18ELj2ES0_S2_ES2_Lj1EEEE3SetIS0_vEEvv:
        LDR.N    R2,??Set_5       ;; 0x40020800
        LDR      R1,[R2, #+0]
        LDR.N    R0,??Set_5+0x4   ;; 0xfff0f3ff
        ANDS     R1,R0,R1
        ORR      R1,R1,#0x40000
        ORRS     R1,R1,#0x10400
        STR      R1,[R2, #+0]
        BX       LR               ;; return
        DATA
??Set_5:
        DATA32
        DC32     0x40020800
        DC32     0xfff0f3ff
          CFI EndBlock cfiBlock59

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3PinI4PortI5GPIOAELh5E12PinWriteableE3SetIS3_vEEvv
          CFI Block cfiBlock60 Using cfiCommon0
          CFI Function _ZN3PinI4PortI5GPIOAELh5E12PinWriteableE3SetIS3_vEEvv
        THUMB
// __interwork __vfp void Pin<Port<GPIOA>, (uint8_t)'\005', PinWriteable>::Set<PinWriteable, void>()
_ZN3PinI4PortI5GPIOAELh5E12PinWriteableE3SetIS3_vEEvv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        MOVS     R0,#+32
          CFI FunCall _ZN4PortI5GPIOAE3SetEj
        BL       _ZN4PortI5GPIOAE3SetEj
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock60

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3PinI4PortI5GPIOCELh9E12PinWriteableE3SetIS3_vEEvv
          CFI Block cfiBlock61 Using cfiCommon0
          CFI Function _ZN3PinI4PortI5GPIOCELh9E12PinWriteableE3SetIS3_vEEvv
        THUMB
// __interwork __vfp void Pin<Port<GPIOC>, (uint8_t)'\t', PinWriteable>::Set<PinWriteable, void>()
_ZN3PinI4PortI5GPIOCELh9E12PinWriteableE3SetIS3_vEEvv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        MOV      R0,#+512
          CFI FunCall _ZN4PortI5GPIOCE3SetEj
        BL       _ZN4PortI5GPIOCE3SetEj
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock61

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3PinI4PortI5GPIOCELh8E12PinWriteableE3SetIS3_vEEvv
          CFI Block cfiBlock62 Using cfiCommon0
          CFI Function _ZN3PinI4PortI5GPIOCELh8E12PinWriteableE3SetIS3_vEEvv
        THUMB
// __interwork __vfp void Pin<Port<GPIOC>, (uint8_t)'\b', PinWriteable>::Set<PinWriteable, void>()
_ZN3PinI4PortI5GPIOCELh8E12PinWriteableE3SetIS3_vEEvv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        MOV      R0,#+256
          CFI FunCall _ZN4PortI5GPIOCE3SetEj
        BL       _ZN4PortI5GPIOCE3SetEj
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock62

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3PinI4PortI5GPIOCELh5E12PinWriteableE3SetIS3_vEEvv
          CFI Block cfiBlock63 Using cfiCommon0
          CFI Function _ZN3PinI4PortI5GPIOCELh5E12PinWriteableE3SetIS3_vEEvv
        THUMB
// __interwork __vfp void Pin<Port<GPIOC>, (uint8_t)'\005', PinWriteable>::Set<PinWriteable, void>()
_ZN3PinI4PortI5GPIOCELh5E12PinWriteableE3SetIS3_vEEvv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        MOVS     R0,#+32
          CFI FunCall _ZN4PortI5GPIOCE3SetEj
        BL       _ZN4PortI5GPIOCE3SetEj
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock63

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3PinI4PortI5GPIOAELh5E12PinWriteableE5ResetIS3_vEEvv
          CFI Block cfiBlock64 Using cfiCommon0
          CFI Function _ZN3PinI4PortI5GPIOAELh5E12PinWriteableE5ResetIS3_vEEvv
        THUMB
// __interwork __vfp void Pin<Port<GPIOA>, (uint8_t)'\005', PinWriteable>::Reset<PinWriteable, void>()
_ZN3PinI4PortI5GPIOAELh5E12PinWriteableE5ResetIS3_vEEvv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        MOVS     R0,#+32
          CFI FunCall _ZN4PortI5GPIOAE5ResetEj
        BL       _ZN4PortI5GPIOAE5ResetEj
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock64

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3PinI4PortI5GPIOCELh9E12PinWriteableE5ResetIS3_vEEvv
          CFI Block cfiBlock65 Using cfiCommon0
          CFI Function _ZN3PinI4PortI5GPIOCELh9E12PinWriteableE5ResetIS3_vEEvv
        THUMB
// __interwork __vfp void Pin<Port<GPIOC>, (uint8_t)'\t', PinWriteable>::Reset<PinWriteable, void>()
_ZN3PinI4PortI5GPIOCELh9E12PinWriteableE5ResetIS3_vEEvv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        MOV      R0,#+512
          CFI FunCall _ZN4PortI5GPIOCE5ResetEj
        BL       _ZN4PortI5GPIOCE5ResetEj
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock65

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3PinI4PortI5GPIOCELh8E12PinWriteableE5ResetIS3_vEEvv
          CFI Block cfiBlock66 Using cfiCommon0
          CFI Function _ZN3PinI4PortI5GPIOCELh8E12PinWriteableE5ResetIS3_vEEvv
        THUMB
// __interwork __vfp void Pin<Port<GPIOC>, (uint8_t)'\b', PinWriteable>::Reset<PinWriteable, void>()
_ZN3PinI4PortI5GPIOCELh8E12PinWriteableE5ResetIS3_vEEvv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        MOV      R0,#+256
          CFI FunCall _ZN4PortI5GPIOCE5ResetEj
        BL       _ZN4PortI5GPIOCE5ResetEj
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock66

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3PinI4PortI5GPIOCELh5E12PinWriteableE5ResetIS3_vEEvv
          CFI Block cfiBlock67 Using cfiCommon0
          CFI Function _ZN3PinI4PortI5GPIOCELh5E12PinWriteableE5ResetIS3_vEEvv
        THUMB
// __interwork __vfp void Pin<Port<GPIOC>, (uint8_t)'\005', PinWriteable>::Reset<PinWriteable, void>()
_ZN3PinI4PortI5GPIOCELh5E12PinWriteableE5ResetIS3_vEEvv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        MOVS     R0,#+32
          CFI FunCall _ZN4PortI5GPIOCE5ResetEj
        BL       _ZN4PortI5GPIOCE5ResetEj
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock67

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3PinI4PortI5GPIOAELh5E12PinWriteableE6ToggleIS3_vEEvv
          CFI Block cfiBlock68 Using cfiCommon0
          CFI Function _ZN3PinI4PortI5GPIOAELh5E12PinWriteableE6ToggleIS3_vEEvv
        THUMB
// __interwork __vfp void Pin<Port<GPIOA>, (uint8_t)'\005', PinWriteable>::Toggle<PinWriteable, void>()
_ZN3PinI4PortI5GPIOAELh5E12PinWriteableE6ToggleIS3_vEEvv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        MOVS     R0,#+32
          CFI FunCall _ZN4PortI5GPIOAE6ToggleEj
        BL       _ZN4PortI5GPIOAE6ToggleEj
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock68

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3PinI4PortI5GPIOCELh9E12PinWriteableE6ToggleIS3_vEEvv
          CFI Block cfiBlock69 Using cfiCommon0
          CFI Function _ZN3PinI4PortI5GPIOCELh9E12PinWriteableE6ToggleIS3_vEEvv
        THUMB
// __interwork __vfp void Pin<Port<GPIOC>, (uint8_t)'\t', PinWriteable>::Toggle<PinWriteable, void>()
_ZN3PinI4PortI5GPIOCELh9E12PinWriteableE6ToggleIS3_vEEvv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        MOV      R0,#+512
          CFI FunCall _ZN4PortI5GPIOCE6ToggleEj
        BL       _ZN4PortI5GPIOCE6ToggleEj
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock69

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3PinI4PortI5GPIOCELh8E12PinWriteableE6ToggleIS3_vEEvv
          CFI Block cfiBlock70 Using cfiCommon0
          CFI Function _ZN3PinI4PortI5GPIOCELh8E12PinWriteableE6ToggleIS3_vEEvv
        THUMB
// __interwork __vfp void Pin<Port<GPIOC>, (uint8_t)'\b', PinWriteable>::Toggle<PinWriteable, void>()
_ZN3PinI4PortI5GPIOCELh8E12PinWriteableE6ToggleIS3_vEEvv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        MOV      R0,#+256
          CFI FunCall _ZN4PortI5GPIOCE6ToggleEj
        BL       _ZN4PortI5GPIOCE6ToggleEj
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock70

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3PinI4PortI5GPIOCELh5E12PinWriteableE6ToggleIS3_vEEvv
          CFI Block cfiBlock71 Using cfiCommon0
          CFI Function _ZN3PinI4PortI5GPIOCELh5E12PinWriteableE6ToggleIS3_vEEvv
        THUMB
// __interwork __vfp void Pin<Port<GPIOC>, (uint8_t)'\005', PinWriteable>::Toggle<PinWriteable, void>()
_ZN3PinI4PortI5GPIOCELh5E12PinWriteableE6ToggleIS3_vEEvv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        MOVS     R0,#+32
          CFI FunCall _ZN4PortI5GPIOCE6ToggleEj
        BL       _ZN4PortI5GPIOCE6ToggleEj
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock71

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN4PortI5GPIOAE3SetEj
          CFI Block cfiBlock72 Using cfiCommon0
          CFI Function _ZN4PortI5GPIOAE3SetEj
        THUMB
// __interwork __vfp void Port<GPIOA>::Set(uint32_t)
_ZN4PortI5GPIOAE3SetEj:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        CMP      R4,#+65537
        BCC.N    ??Set_8
        MOVS     R2,#+19
        LDR.N    R1,??Set_6
        LDR.N    R0,??Set_6+0x4
          CFI FunCall __aeabi_assert
        BL       __aeabi_assert
          CFI FunCall __iar_EmptyStepPoint
        BL       __iar_EmptyStepPoint
??Set_8:
        MOVS     R0,R4
          CFI FunCall _ZN12RegisterBaseILj1073872920ELj32E9WriteModeE5WriteIS0_vEEvj
        BL       _ZN12RegisterBaseILj1073872920ELj32E9WriteModeE5WriteIS0_vEEvj
        POP      {R4,PC}          ;; return
        DATA
??Set_6:
        DATA32
        DC32     _ZZN4PortI5GPIOAE3SetEjEs_0
        DC32     _ZZN4PortI5GPIOAE3SetEjEs
          CFI EndBlock cfiBlock72

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN4PortI5GPIOCE3SetEj
          CFI Block cfiBlock73 Using cfiCommon0
          CFI Function _ZN4PortI5GPIOCE3SetEj
        THUMB
// __interwork __vfp void Port<GPIOC>::Set(uint32_t)
_ZN4PortI5GPIOCE3SetEj:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        CMP      R4,#+65537
        BCC.N    ??Set_9
        MOVS     R2,#+19
        LDR.N    R1,??Set_7
        LDR.N    R0,??Set_7+0x4
          CFI FunCall __aeabi_assert
        BL       __aeabi_assert
          CFI FunCall __iar_EmptyStepPoint
        BL       __iar_EmptyStepPoint
??Set_9:
        MOVS     R0,R4
          CFI FunCall _ZN12RegisterBaseILj1073874968ELj32E9WriteModeE5WriteIS0_vEEvj
        BL       _ZN12RegisterBaseILj1073874968ELj32E9WriteModeE5WriteIS0_vEEvj
        POP      {R4,PC}          ;; return
        DATA
??Set_7:
        DATA32
        DC32     _ZZN4PortI5GPIOCE3SetEjEs_0
        DC32     _ZZN4PortI5GPIOCE3SetEjEs
          CFI EndBlock cfiBlock73

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN4PortI5GPIOAE5ResetEj
          CFI Block cfiBlock74 Using cfiCommon0
          CFI Function _ZN4PortI5GPIOAE5ResetEj
        THUMB
// __interwork __vfp void Port<GPIOA>::Reset(uint32_t)
_ZN4PortI5GPIOAE5ResetEj:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        CMP      R4,#+65537
        BCC.N    ??Reset_6
        MOVS     R2,#+25
        LDR.N    R1,??Reset_0
        LDR.N    R0,??Reset_0+0x4
          CFI FunCall __aeabi_assert
        BL       __aeabi_assert
          CFI FunCall __iar_EmptyStepPoint
        BL       __iar_EmptyStepPoint
??Reset_6:
        LSLS     R4,R4,#+16
        MOVS     R0,R4
          CFI FunCall _ZN12RegisterBaseILj1073872920ELj32E9WriteModeE5WriteIS0_vEEvj
        BL       _ZN12RegisterBaseILj1073872920ELj32E9WriteModeE5WriteIS0_vEEvj
        POP      {R4,PC}          ;; return
        Nop      
        DATA
??Reset_0:
        DATA32
        DC32     _ZZN4PortI5GPIOAE5ResetEjEs_0
        DC32     _ZZN4PortI5GPIOAE5ResetEjEs
          CFI EndBlock cfiBlock74

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN4PortI5GPIOCE5ResetEj
          CFI Block cfiBlock75 Using cfiCommon0
          CFI Function _ZN4PortI5GPIOCE5ResetEj
        THUMB
// __interwork __vfp void Port<GPIOC>::Reset(uint32_t)
_ZN4PortI5GPIOCE5ResetEj:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        CMP      R4,#+65537
        BCC.N    ??Reset_7
        MOVS     R2,#+25
        LDR.N    R1,??Reset_1
        LDR.N    R0,??Reset_1+0x4
          CFI FunCall __aeabi_assert
        BL       __aeabi_assert
          CFI FunCall __iar_EmptyStepPoint
        BL       __iar_EmptyStepPoint
??Reset_7:
        LSLS     R4,R4,#+16
        MOVS     R0,R4
          CFI FunCall _ZN12RegisterBaseILj1073874968ELj32E9WriteModeE5WriteIS0_vEEvj
        BL       _ZN12RegisterBaseILj1073874968ELj32E9WriteModeE5WriteIS0_vEEvj
        POP      {R4,PC}          ;; return
        Nop      
        DATA
??Reset_1:
        DATA32
        DC32     _ZZN4PortI5GPIOCE5ResetEjEs_0
        DC32     _ZZN4PortI5GPIOCE5ResetEjEs
          CFI EndBlock cfiBlock75

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN4PortI5GPIOAE6ToggleEj
          CFI Block cfiBlock76 Using cfiCommon0
          CFI Function _ZN4PortI5GPIOAE6ToggleEj
        THUMB
// __interwork __vfp void Port<GPIOA>::Toggle(uint32_t)
_ZN4PortI5GPIOAE6ToggleEj:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        CMP      R4,#+65537
        BCC.N    ??Toggle_4
        MOVS     R2,#+31
        LDR.N    R1,??Toggle_2
        LDR.N    R0,??Toggle_2+0x4
          CFI FunCall __aeabi_assert
        BL       __aeabi_assert
          CFI FunCall __iar_EmptyStepPoint
        BL       __iar_EmptyStepPoint
??Toggle_4:
        MOVS     R0,R4
          CFI FunCall _ZN12RegisterBaseILj1073872916ELj32E13ReadWriteModeE6ToggleIS0_vEEvj
        BL       _ZN12RegisterBaseILj1073872916ELj32E13ReadWriteModeE6ToggleIS0_vEEvj
        POP      {R4,PC}          ;; return
        DATA
??Toggle_2:
        DATA32
        DC32     _ZZN4PortI5GPIOAE6ToggleEjEs_0
        DC32     _ZZN4PortI5GPIOAE6ToggleEjEs
          CFI EndBlock cfiBlock76

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN4PortI5GPIOCE6ToggleEj
          CFI Block cfiBlock77 Using cfiCommon0
          CFI Function _ZN4PortI5GPIOCE6ToggleEj
        THUMB
// __interwork __vfp void Port<GPIOC>::Toggle(uint32_t)
_ZN4PortI5GPIOCE6ToggleEj:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        CMP      R4,#+65537
        BCC.N    ??Toggle_5
        MOVS     R2,#+31
        LDR.N    R1,??Toggle_3
        LDR.N    R0,??Toggle_3+0x4
          CFI FunCall __aeabi_assert
        BL       __aeabi_assert
          CFI FunCall __iar_EmptyStepPoint
        BL       __iar_EmptyStepPoint
??Toggle_5:
        MOVS     R0,R4
          CFI FunCall _ZN12RegisterBaseILj1073874964ELj32E13ReadWriteModeE6ToggleIS0_vEEvj
        BL       _ZN12RegisterBaseILj1073874964ELj32E13ReadWriteModeE6ToggleIS0_vEEvj
        POP      {R4,PC}          ;; return
        DATA
??Toggle_3:
        DATA32
        DC32     _ZZN4PortI5GPIOCE6ToggleEjEs_0
        DC32     _ZZN4PortI5GPIOCE6ToggleEjEs
          CFI EndBlock cfiBlock77

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN6MyTaskC1ERN9OsWrapper5EventER6ButtonI3PinI4PortI5GPIOCELh13E11PinReadableEE
          CFI Block cfiBlock78 Using cfiCommon0
          CFI Function _ZN6MyTaskC1ERN9OsWrapper5EventER6ButtonI3PinI4PortI5GPIOCELh13E11PinReadableEE
        THUMB
// __code __interwork __vfp MyTask::MyTask(OsWrapper::Event &, UserButton &)
_ZN6MyTaskC1ERN9OsWrapper5EventER6ButtonI3PinI4PortI5GPIOCELh13E11PinReadableEE:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R0,R4
          CFI FunCall _ZN9OsWrapper6ThreadILj128EEC2Ev
        BL       _ZN9OsWrapper6ThreadILj128EEC2Ev
        LDR.N    R0,??MyTask_0
        STR      R0,[R4, #+0]
        STR      R5,[R4, #+604]
        STR      R6,[R4, #+608]
        MOVS     R0,R4
        POP      {R4-R6,PC}       ;; return
        Nop      
        DATA
??MyTask_0:
        DATA32
        DC32     _ZTV6MyTask+0x8
          CFI EndBlock cfiBlock78

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN4ILedC2Ev
          CFI Block cfiBlock79 Using cfiCommon0
          CFI Function _ZN4ILedC2Ev
        THUMB
// __code __interwork __vfp ILed::subobject ILed()
_ZN4ILedC2Ev:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN4ILedC1Ev
        BL       _ZN4ILedC1Ev
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock79

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN4ILedC1Ev
          CFI Block cfiBlock80 Using cfiCommon0
          CFI Function _ZN4ILedC1Ev
          CFI NoCalls
        THUMB
// __code __interwork __vfp ILed::ILed()
_ZN4ILedC1Ev:
        BX       LR               ;; return
          CFI EndBlock cfiBlock80

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE8SwitchOnEv
          CFI Block cfiBlock81 Using cfiCommon0
          CFI Function _ZN3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE8SwitchOnEv
        THUMB
// __interwork __vfp void Led<Pin<Port<GPIOA>, (uint8_t)'\005', PinWriteable>>::SwitchOn()
_ZN3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE8SwitchOnEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN3PinI4PortI5GPIOAELh5E12PinWriteableE3SetIS3_vEEvv
        BL       _ZN3PinI4PortI5GPIOAELh5E12PinWriteableE3SetIS3_vEEvv
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock81

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE8SwitchOnEv
          CFI Block cfiBlock82 Using cfiCommon0
          CFI Function _ZN3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE8SwitchOnEv
        THUMB
// __interwork __vfp void Led<Pin<Port<GPIOC>, (uint8_t)'\t', PinWriteable>>::SwitchOn()
_ZN3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE8SwitchOnEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN3PinI4PortI5GPIOCELh9E12PinWriteableE3SetIS3_vEEvv
        BL       _ZN3PinI4PortI5GPIOCELh9E12PinWriteableE3SetIS3_vEEvv
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock82

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE8SwitchOnEv
          CFI Block cfiBlock83 Using cfiCommon0
          CFI Function _ZN3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE8SwitchOnEv
        THUMB
// __interwork __vfp void Led<Pin<Port<GPIOC>, (uint8_t)'\b', PinWriteable>>::SwitchOn()
_ZN3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE8SwitchOnEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN3PinI4PortI5GPIOCELh8E12PinWriteableE3SetIS3_vEEvv
        BL       _ZN3PinI4PortI5GPIOCELh8E12PinWriteableE3SetIS3_vEEvv
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock83

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE8SwitchOnEv
          CFI Block cfiBlock84 Using cfiCommon0
          CFI Function _ZN3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE8SwitchOnEv
        THUMB
// __interwork __vfp void Led<Pin<Port<GPIOC>, (uint8_t)'\005', PinWriteable>>::SwitchOn()
_ZN3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE8SwitchOnEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN3PinI4PortI5GPIOCELh5E12PinWriteableE3SetIS3_vEEvv
        BL       _ZN3PinI4PortI5GPIOCELh5E12PinWriteableE3SetIS3_vEEvv
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock84

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE9SwitchOffEv
          CFI Block cfiBlock85 Using cfiCommon0
          CFI Function _ZN3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE9SwitchOffEv
        THUMB
// __interwork __vfp void Led<Pin<Port<GPIOA>, (uint8_t)'\005', PinWriteable>>::SwitchOff()
_ZN3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE9SwitchOffEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN3PinI4PortI5GPIOAELh5E12PinWriteableE5ResetIS3_vEEvv
        BL       _ZN3PinI4PortI5GPIOAELh5E12PinWriteableE5ResetIS3_vEEvv
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock85

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE9SwitchOffEv
          CFI Block cfiBlock86 Using cfiCommon0
          CFI Function _ZN3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE9SwitchOffEv
        THUMB
// __interwork __vfp void Led<Pin<Port<GPIOC>, (uint8_t)'\t', PinWriteable>>::SwitchOff()
_ZN3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE9SwitchOffEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN3PinI4PortI5GPIOCELh9E12PinWriteableE5ResetIS3_vEEvv
        BL       _ZN3PinI4PortI5GPIOCELh9E12PinWriteableE5ResetIS3_vEEvv
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock86

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE9SwitchOffEv
          CFI Block cfiBlock87 Using cfiCommon0
          CFI Function _ZN3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE9SwitchOffEv
        THUMB
// __interwork __vfp void Led<Pin<Port<GPIOC>, (uint8_t)'\b', PinWriteable>>::SwitchOff()
_ZN3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE9SwitchOffEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN3PinI4PortI5GPIOCELh8E12PinWriteableE5ResetIS3_vEEvv
        BL       _ZN3PinI4PortI5GPIOCELh8E12PinWriteableE5ResetIS3_vEEvv
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock87

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE9SwitchOffEv
          CFI Block cfiBlock88 Using cfiCommon0
          CFI Function _ZN3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE9SwitchOffEv
        THUMB
// __interwork __vfp void Led<Pin<Port<GPIOC>, (uint8_t)'\005', PinWriteable>>::SwitchOff()
_ZN3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE9SwitchOffEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN3PinI4PortI5GPIOCELh5E12PinWriteableE5ResetIS3_vEEvv
        BL       _ZN3PinI4PortI5GPIOCELh5E12PinWriteableE5ResetIS3_vEEvv
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock88

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE6ToggleEv
          CFI Block cfiBlock89 Using cfiCommon0
          CFI Function _ZN3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE6ToggleEv
        THUMB
// __interwork __vfp void Led<Pin<Port<GPIOA>, (uint8_t)'\005', PinWriteable>>::Toggle()
_ZN3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE6ToggleEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN3PinI4PortI5GPIOAELh5E12PinWriteableE6ToggleIS3_vEEvv
        BL       _ZN3PinI4PortI5GPIOAELh5E12PinWriteableE6ToggleIS3_vEEvv
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock89

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE6ToggleEv
          CFI Block cfiBlock90 Using cfiCommon0
          CFI Function _ZN3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE6ToggleEv
        THUMB
// __interwork __vfp void Led<Pin<Port<GPIOC>, (uint8_t)'\t', PinWriteable>>::Toggle()
_ZN3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE6ToggleEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN3PinI4PortI5GPIOCELh9E12PinWriteableE6ToggleIS3_vEEvv
        BL       _ZN3PinI4PortI5GPIOCELh9E12PinWriteableE6ToggleIS3_vEEvv
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock90

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE6ToggleEv
          CFI Block cfiBlock91 Using cfiCommon0
          CFI Function _ZN3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE6ToggleEv
        THUMB
// __interwork __vfp void Led<Pin<Port<GPIOC>, (uint8_t)'\b', PinWriteable>>::Toggle()
_ZN3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE6ToggleEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN3PinI4PortI5GPIOCELh8E12PinWriteableE6ToggleIS3_vEEvv
        BL       _ZN3PinI4PortI5GPIOCELh8E12PinWriteableE6ToggleIS3_vEEvv
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock91

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE6ToggleEv
          CFI Block cfiBlock92 Using cfiCommon0
          CFI Function _ZN3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE6ToggleEv
        THUMB
// __interwork __vfp void Led<Pin<Port<GPIOC>, (uint8_t)'\005', PinWriteable>>::Toggle()
_ZN3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE6ToggleEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZN3PinI4PortI5GPIOCELh5E12PinWriteableE6ToggleIS3_vEEvv
        BL       _ZN3PinI4PortI5GPIOCELh5E12PinWriteableE6ToggleIS3_vEEvv
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock92

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEC1Ev
          CFI Block cfiBlock93 Using cfiCommon0
          CFI Function _ZN3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEC1Ev
        THUMB
// __code __interwork __vfp Led<Pin<Port<GPIOA>, (uint8_t)'\005', PinWriteable>>::Led()
_ZN3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEC1Ev:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        MOVS     R0,R4
          CFI FunCall _ZN4ILedC2Ev
        BL       _ZN4ILedC2Ev
        LDR.N    R0,??Led_0
        STR      R0,[R4, #+0]
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
        Nop      
        DATA
??Led_0:
        DATA32
        DC32     _ZTV3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE+0x8
          CFI EndBlock cfiBlock93

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEC1Ev
          CFI Block cfiBlock94 Using cfiCommon0
          CFI Function _ZN3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEC1Ev
        THUMB
// __code __interwork __vfp Led<Pin<Port<GPIOC>, (uint8_t)'\t', PinWriteable>>::Led()
_ZN3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEC1Ev:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        MOVS     R0,R4
          CFI FunCall _ZN4ILedC2Ev
        BL       _ZN4ILedC2Ev
        LDR.N    R0,??Led_1
        STR      R0,[R4, #+0]
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
        Nop      
        DATA
??Led_1:
        DATA32
        DC32     _ZTV3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE+0x8
          CFI EndBlock cfiBlock94

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEC1Ev
          CFI Block cfiBlock95 Using cfiCommon0
          CFI Function _ZN3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEC1Ev
        THUMB
// __code __interwork __vfp Led<Pin<Port<GPIOC>, (uint8_t)'\b', PinWriteable>>::Led()
_ZN3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEC1Ev:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        MOVS     R0,R4
          CFI FunCall _ZN4ILedC2Ev
        BL       _ZN4ILedC2Ev
        LDR.N    R0,??Led_2
        STR      R0,[R4, #+0]
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
        Nop      
        DATA
??Led_2:
        DATA32
        DC32     _ZTV3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE+0x8
          CFI EndBlock cfiBlock95

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEC1Ev
          CFI Block cfiBlock96 Using cfiCommon0
          CFI Function _ZN3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEC1Ev
        THUMB
// __code __interwork __vfp Led<Pin<Port<GPIOC>, (uint8_t)'\005', PinWriteable>>::Led()
_ZN3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEC1Ev:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        MOVS     R0,R4
          CFI FunCall _ZN4ILedC2Ev
        BL       _ZN4ILedC2Ev
        LDR.N    R0,??Led_3
        STR      R0,[R4, #+0]
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
        Nop      
        DATA
??Led_3:
        DATA32
        DC32     _ZTV3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE+0x8
          CFI EndBlock cfiBlock96

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN10LedsDriver12SwitchOffAllEv
          CFI Block cfiBlock97 Using cfiCommon0
          CFI Function _ZN10LedsDriver12SwitchOffAllEv
        THUMB
// __interwork __vfp void LedsDriver::SwitchOffAll()
_ZN10LedsDriver12SwitchOffAllEv:
        PUSH     {R0-R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R0,R4
          CFI FunCall _ZNSt5arrayISt17reference_wrapperI4ILedELj4EE5beginEv
        BL       _ZNSt5arrayISt17reference_wrapperI4ILedELj4EE5beginEv
        STR      R0,[SP, #+0]
        MOVS     R0,R4
          CFI FunCall _ZNSt5arrayISt17reference_wrapperI4ILedELj4EE3endEv
        BL       _ZNSt5arrayISt17reference_wrapperI4ILedELj4EE3endEv
        STR      R0,[SP, #+8]
        B.N      ??SwitchOffAll_0
??SwitchOffAll_1:
        MOV      R0,SP
          CFI FunCall _ZNKSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEdeEv
        BL       _ZNKSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEdeEv
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+4]
        ADD      R0,SP,#+4
          CFI FunCall _ZNKSt17reference_wrapperI4ILedE3getEv
        BL       _ZNKSt17reference_wrapperI4ILedE3getEv
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
          CFI FunCall
        BLX      R1
        MOV      R0,SP
          CFI FunCall _ZNSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEppEv
        BL       _ZNSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEppEv
??SwitchOffAll_0:
        ADD      R1,SP,#+8
        MOV      R0,SP
          CFI FunCall _ZNKSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEneERKS3_
        BL       _ZNKSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEneERKS3_
        CMP      R0,#+0
        BNE.N    ??SwitchOffAll_1
        POP      {R0-R4,PC}       ;; return
          CFI EndBlock cfiBlock97

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN10LedsDriver9ToggleAllEv
          CFI Block cfiBlock98 Using cfiCommon0
          CFI Function _ZN10LedsDriver9ToggleAllEv
        THUMB
// __interwork __vfp void LedsDriver::ToggleAll()
_ZN10LedsDriver9ToggleAllEv:
        PUSH     {R0-R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R0,R4
          CFI FunCall _ZNSt5arrayISt17reference_wrapperI4ILedELj4EE5beginEv
        BL       _ZNSt5arrayISt17reference_wrapperI4ILedELj4EE5beginEv
        STR      R0,[SP, #+0]
        MOVS     R0,R4
          CFI FunCall _ZNSt5arrayISt17reference_wrapperI4ILedELj4EE3endEv
        BL       _ZNSt5arrayISt17reference_wrapperI4ILedELj4EE3endEv
        STR      R0,[SP, #+8]
        B.N      ??ToggleAll_0
??ToggleAll_1:
        MOV      R0,SP
          CFI FunCall _ZNKSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEdeEv
        BL       _ZNKSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEdeEv
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+4]
        ADD      R0,SP,#+4
          CFI FunCall _ZNKSt17reference_wrapperI4ILedE3getEv
        BL       _ZNKSt17reference_wrapperI4ILedE3getEv
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+8]
          CFI FunCall
        BLX      R1
        MOV      R0,SP
          CFI FunCall _ZNSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEppEv
        BL       _ZNSt15_Array_iteratorISt17reference_wrapperI4ILedELj4EEppEv
??ToggleAll_0:
        ADD      R1,SP,#+8
        MOV      R0,SP
          CFI FunCall _ZNKSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEneERKS3_
        BL       _ZNKSt21_Array_const_iteratorISt17reference_wrapperI4ILedELj4EEneERKS3_
        CMP      R0,#+0
        BNE.N    ??ToggleAll_1
        POP      {R0-R4,PC}       ;; return
          CFI EndBlock cfiBlock98

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN10LedsDriver12GetLedsCountEv
          CFI Block cfiBlock99 Using cfiCommon0
          CFI Function _ZN10LedsDriver12GetLedsCountEv
        THUMB
// __interwork __vfp size_t LedsDriver::GetLedsCount()
_ZN10LedsDriver12GetLedsCountEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZNKSt5arrayISt17reference_wrapperI4ILedELj4EE4sizeEv
        BL       _ZNKSt5arrayISt17reference_wrapperI4ILedELj4EE4sizeEv
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock99

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN10LedsDriver6GetLedE6LedNum
          CFI Block cfiBlock100 Using cfiCommon0
          CFI Function _ZN10LedsDriver6GetLedE6LedNum
        THUMB
// __interwork __vfp ILed &LedsDriver::GetLed(LedNum)
_ZN10LedsDriver6GetLedE6LedNum:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall _ZNSt5arrayISt17reference_wrapperI4ILedELj4EEixEj
        BL       _ZNSt5arrayISt17reference_wrapperI4ILedELj4EEixEj
          CFI FunCall _ZNKSt17reference_wrapperI4ILedEcvRS0_Ev
        BL       _ZNKSt17reference_wrapperI4ILedEcvRS0_Ev
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock100

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN10LedsDriverC1Ev
          CFI Block cfiBlock101 Using cfiCommon0
          CFI Function _ZN10LedsDriverC1Ev
        THUMB
// __code __interwork __vfp LedsDriver::LedsDriver()
_ZN10LedsDriverC1Ev:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        LDR.N    R1,??LedsDriver_0
        MOVS     R0,R4
          CFI FunCall _ZNSt17reference_wrapperI4ILedEC1ERS0_
        BL       _ZNSt17reference_wrapperI4ILedEC1ERS0_
        LDR.N    R1,??LedsDriver_0+0x4
        ADDS     R0,R4,#+4
          CFI FunCall _ZNSt17reference_wrapperI4ILedEC1ERS0_
        BL       _ZNSt17reference_wrapperI4ILedEC1ERS0_
        LDR.N    R1,??LedsDriver_0+0x8
        ADDS     R0,R4,#+8
          CFI FunCall _ZNSt17reference_wrapperI4ILedEC1ERS0_
        BL       _ZNSt17reference_wrapperI4ILedEC1ERS0_
        LDR.N    R1,??LedsDriver_0+0xC
        ADDS     R0,R4,#+12
          CFI FunCall _ZNSt17reference_wrapperI4ILedEC1ERS0_
        BL       _ZNSt17reference_wrapperI4ILedEC1ERS0_
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
        DATA
??LedsDriver_0:
        DATA32
        DC32     _ZN9SingletonI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEEvJEE8instanceE
        DC32     _ZN9SingletonI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEEvJEE8instanceE
        DC32     _ZN9SingletonI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEEvJEE8instanceE
        DC32     _ZN9SingletonI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEEvJEE8instanceE
          CFI EndBlock cfiBlock101

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN8LedsMode2DoEh
          CFI Block cfiBlock102 Using cfiCommon0
          CFI Function _ZN8LedsMode2DoEh
        THUMB
// __interwork __vfp void LedsMode::Do(uint8_t)
_ZN8LedsMode2DoEh:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        LDR.N    R0,??Do_0
          CFI FunCall _ZN10LedsDriver9ToggleAllEv
        BL       _ZN10LedsDriver9ToggleAllEv
        POP      {R0,PC}          ;; return
        Nop      
        DATA
??Do_0:
        DATA32
        DC32     _ZN9SingletonI10LedsDrivervJEE8instanceE
          CFI EndBlock cfiBlock102

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN8LedsMode5ResetEv
          CFI Block cfiBlock103 Using cfiCommon0
          CFI Function _ZN8LedsMode5ResetEv
        THUMB
// __interwork __vfp void LedsMode::Reset()
_ZN8LedsMode5ResetEv:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        LDR.N    R0,??Reset_2
          CFI FunCall _ZN10LedsDriver12SwitchOffAllEv
        BL       _ZN10LedsDriver12SwitchOffAllEv
        MOVS     R0,#+0
        STR      R0,[R4, #+4]
        POP      {R4,PC}          ;; return
        DATA
??Reset_2:
        DATA32
        DC32     _ZN9SingletonI10LedsDrivervJEE8instanceE
          CFI EndBlock cfiBlock103

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN12LedsModeTree2DoEh
          CFI Block cfiBlock104 Using cfiCommon0
          CFI Function _ZN12LedsModeTree2DoEh
        THUMB
// __interwork __vfp void LedsModeTree::Do(uint8_t)
_ZN12LedsModeTree2DoEh:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        LDR.N    R5,??Do_1
        MOVS     R0,R5
          CFI FunCall _ZN10LedsDriver12GetLedsCountEv
        BL       _ZN10LedsDriver12GetLedsCountEv
        LDR      R1,[R4, #+4]
        CMP      R1,R0
        BCC.N    ??Do_3
        MOVS     R0,#+0
        STR      R0,[R4, #+4]
??Do_3:
        LDR      R1,[R4, #+4]
        MOVS     R0,R5
          CFI FunCall _ZN10LedsDriver6GetLedE6LedNum
        BL       _ZN10LedsDriver6GetLedE6LedNum
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+8]
          CFI FunCall
        BLX      R1
        LDR      R0,[R4, #+4]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+4]
        POP      {R0,R4,R5,PC}    ;; return
        DATA
??Do_1:
        DATA32
        DC32     _ZN9SingletonI10LedsDrivervJEE8instanceE
          CFI EndBlock cfiBlock104

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN13LedsModeChess5ResetEv
          CFI Block cfiBlock105 Using cfiCommon0
          CFI Function _ZN13LedsModeChess5ResetEv
        THUMB
// __interwork __vfp void LedsModeChess::Reset()
_ZN13LedsModeChess5ResetEv:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        LDR.N    R5,??Reset_3
        MOVS     R0,R5
          CFI FunCall _ZN10LedsDriver12SwitchOffAllEv
        BL       _ZN10LedsDriver12SwitchOffAllEv
        MOVS     R1,#+0
        MOVS     R0,R5
          CFI FunCall _ZN10LedsDriver6GetLedE6LedNum
        BL       _ZN10LedsDriver6GetLedE6LedNum
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
          CFI FunCall
        BLX      R1
        MOVS     R1,#+2
        MOVS     R0,R5
          CFI FunCall _ZN10LedsDriver6GetLedE6LedNum
        BL       _ZN10LedsDriver6GetLedE6LedNum
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
          CFI FunCall
        BLX      R1
        MOVS     R0,#+0
        STR      R0,[R4, #+4]
        POP      {R0,R4,R5,PC}    ;; return
        Nop      
        DATA
??Reset_3:
        DATA32
        DC32     _ZN9SingletonI10LedsDrivervJEE8instanceE
          CFI EndBlock cfiBlock105

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN17LedsModeFirstPair5ResetEv
          CFI Block cfiBlock106 Using cfiCommon0
          CFI Function _ZN17LedsModeFirstPair5ResetEv
        THUMB
// __interwork __vfp void LedsModeFirstPair::Reset()
_ZN17LedsModeFirstPair5ResetEv:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        LDR.N    R5,??Reset_4
        MOVS     R0,R5
          CFI FunCall _ZN10LedsDriver12SwitchOffAllEv
        BL       _ZN10LedsDriver12SwitchOffAllEv
        MOVS     R1,#+0
        MOVS     R0,R5
          CFI FunCall _ZN10LedsDriver6GetLedE6LedNum
        BL       _ZN10LedsDriver6GetLedE6LedNum
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
          CFI FunCall
        BLX      R1
        MOVS     R1,#+1
        MOVS     R0,R5
          CFI FunCall _ZN10LedsDriver6GetLedE6LedNum
        BL       _ZN10LedsDriver6GetLedE6LedNum
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
          CFI FunCall
        BLX      R1
        MOVS     R0,#+0
        STR      R0,[R4, #+4]
        POP      {R0,R4,R5,PC}    ;; return
        Nop      
        DATA
??Reset_4:
        DATA32
        DC32     _ZN9SingletonI10LedsDrivervJEE8instanceE
          CFI EndBlock cfiBlock106

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN21LedsModeInsideOutside5ResetEv
          CFI Block cfiBlock107 Using cfiCommon0
          CFI Function _ZN21LedsModeInsideOutside5ResetEv
        THUMB
// __interwork __vfp void LedsModeInsideOutside::Reset()
_ZN21LedsModeInsideOutside5ResetEv:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        LDR.N    R5,??Reset_5
        MOVS     R0,R5
          CFI FunCall _ZN10LedsDriver12SwitchOffAllEv
        BL       _ZN10LedsDriver12SwitchOffAllEv
        MOVS     R1,#+2
        MOVS     R0,R5
          CFI FunCall _ZN10LedsDriver6GetLedE6LedNum
        BL       _ZN10LedsDriver6GetLedE6LedNum
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
          CFI FunCall
        BLX      R1
        MOVS     R1,#+1
        MOVS     R0,R5
          CFI FunCall _ZN10LedsDriver6GetLedE6LedNum
        BL       _ZN10LedsDriver6GetLedE6LedNum
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
          CFI FunCall
        BLX      R1
        MOVS     R0,#+0
        STR      R0,[R4, #+4]
        POP      {R0,R4,R5,PC}    ;; return
        Nop      
        DATA
??Reset_5:
        DATA32
        DC32     _ZN9SingletonI10LedsDrivervJEE8instanceE
          CFI EndBlock cfiBlock107

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN11LedsModeAdc2DoEh
          CFI Block cfiBlock108 Using cfiCommon0
          CFI Function _ZN11LedsModeAdc2DoEh
        THUMB
// __interwork __vfp void LedsModeAdc::Do(uint8_t)
_ZN11LedsModeAdc2DoEh:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R1
        LDR.N    R5,??Do_2
        MOVS     R6,#+0
        B.N      ??Do_4
??Do_5:
        MOVS     R1,R6
        MOVS     R0,R5
          CFI FunCall _ZN10LedsDriver6GetLedE6LedNum
        BL       _ZN10LedsDriver6GetLedE6LedNum
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
          CFI FunCall
        BLX      R1
        B.N      ??Do_6
??Do_7:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R6,R0
        BCS.N    ??Do_5
        MOVS     R1,R6
        MOVS     R0,R5
          CFI FunCall _ZN10LedsDriver6GetLedE6LedNum
        BL       _ZN10LedsDriver6GetLedE6LedNum
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
          CFI FunCall
        BLX      R1
??Do_6:
        ADDS     R6,R6,#+1
??Do_4:
        MOVS     R0,R5
          CFI FunCall _ZN10LedsDriver12GetLedsCountEv
        BL       _ZN10LedsDriver12GetLedsCountEv
        CMP      R6,R0
        BCC.N    ??Do_7
??Do_8:
        POP      {R4-R6,PC}       ;; return
        Nop      
        DATA
??Do_2:
        DATA32
        DC32     _ZN9SingletonI10LedsDrivervJEE8instanceE
          CFI EndBlock cfiBlock108

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN14LedsControllerC1Ev
          CFI Block cfiBlock109 Using cfiCommon0
          CFI Function _ZN14LedsControllerC1Ev
        THUMB
// __code __interwork __vfp LedsController::LedsController()
_ZN14LedsControllerC1Ev:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
        LDR.N    R1,??LedsController_0
        ADDS     R0,R4,#+4
          CFI FunCall _ZNSt17reference_wrapperI8LedsModeEC1ERS0_
        BL       _ZNSt17reference_wrapperI8LedsModeEC1ERS0_
        LDR.N    R1,??LedsController_0+0x4
        ADDS     R0,R4,#+8
          CFI FunCall _ZNSt17reference_wrapperI8LedsModeEC1ERS0_
        BL       _ZNSt17reference_wrapperI8LedsModeEC1ERS0_
        LDR.N    R1,??LedsController_0+0x8
        ADDS     R0,R4,#+12
          CFI FunCall _ZNSt17reference_wrapperI8LedsModeEC1ERS0_
        BL       _ZNSt17reference_wrapperI8LedsModeEC1ERS0_
        LDR.N    R1,??LedsController_0+0xC
        ADDS     R0,R4,#+16
          CFI FunCall _ZNSt17reference_wrapperI8LedsModeEC1ERS0_
        BL       _ZNSt17reference_wrapperI8LedsModeEC1ERS0_
        LDR.N    R1,??LedsController_0+0x10
        ADDS     R0,R4,#+20
          CFI FunCall _ZNSt17reference_wrapperI8LedsModeEC1ERS0_
        BL       _ZNSt17reference_wrapperI8LedsModeEC1ERS0_
        LDR.N    R1,??LedsController_0+0x14
        ADDS     R0,R4,#+24
          CFI FunCall _ZNSt17reference_wrapperI8LedsModeEC1ERS0_
        BL       _ZNSt17reference_wrapperI8LedsModeEC1ERS0_
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
        Nop      
        DATA
??LedsController_0:
        DATA32
        DC32     _ZN9SingletonI12LedsModeTreevJEE8instanceE
        DC32     _ZN9SingletonI13LedsModeChessvJEE8instanceE
        DC32     _ZN9SingletonI11LedsModeAllvJEE8instanceE
        DC32     _ZN9SingletonI17LedsModeFirstPairvJEE8instanceE
        DC32     _ZN9SingletonI21LedsModeInsideOutsidevJEE8instanceE
        DC32     _ZN9SingletonI11LedsModeAdcvJEE8instanceE
          CFI EndBlock cfiBlock109

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN8Led1TaskC1ERN9OsWrapper5EventER14LedsController
          CFI Block cfiBlock110 Using cfiCommon0
          CFI Function _ZN8Led1TaskC1ERN9OsWrapper5EventER14LedsController
        THUMB
// __code __interwork __vfp Led1Task::Led1Task(OsWrapper::Event &, LedsController &)
_ZN8Led1TaskC1ERN9OsWrapper5EventER14LedsController:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R0,R4
          CFI FunCall _ZN9OsWrapper6ThreadILj128EEC2Ev
        BL       _ZN9OsWrapper6ThreadILj128EEC2Ev
        LDR.N    R0,??Led1Task_0
        STR      R0,[R4, #+0]
        STR      R5,[R4, #+604]
        STR      R6,[R4, #+608]
        MOVS     R0,R4
        POP      {R4-R6,PC}       ;; return
        Nop      
        DATA
??Led1Task_0:
        DATA32
        DC32     _ZTV8Led1Task+0x8
          CFI EndBlock cfiBlock110

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN16Exh001ActionBase2DoEv
          CFI Block cfiBlock111 Using cfiCommon0
          CFI Function _ZN16Exh001ActionBase2DoEv
          CFI NoCalls
        THUMB
// __interwork __vfp void Exh001ActionBase::Do()
_ZN16Exh001ActionBase2DoEv:
        BX       LR               ;; return
          CFI EndBlock cfiBlock111

        SECTION `.iar_vfe_vtableinfo_ZTV12LedsModeTree`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP _ZTV12LedsModeTree
        DATA
        DC32    _ZTV12LedsModeTree
        DC32    4
        DC32    2
        DC32    _ZTI12LedsModeTree
        DC32    1
        DC32    2
        DC32    0
        DC32    _ZTI8LedsMode
        DC32    0
        DC32    1
        DC32    _ZTI12LedsModeTree
        DC32    1
        DC32    2
        DC32    0

        SECTION `.iar_vfe_vtableinfo_ZTV13LedsModeChess`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP _ZTV13LedsModeChess
        DATA
        DC32    _ZTV13LedsModeChess
        DC32    4
        DC32    2
        DC32    _ZTI13LedsModeChess
        DC32    1
        DC32    2
        DC32    0
        DC32    _ZTI8LedsMode
        DC32    0
        DC32    1
        DC32    _ZTI13LedsModeChess
        DC32    1
        DC32    2
        DC32    0

        SECTION `.iar_vfe_vtableinfo_ZTV17LedsModeFirstPair`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP _ZTV17LedsModeFirstPair
        DATA
        DC32    _ZTV17LedsModeFirstPair
        DC32    4
        DC32    2
        DC32    _ZTI17LedsModeFirstPair
        DC32    1
        DC32    2
        DC32    0
        DC32    _ZTI8LedsMode
        DC32    0
        DC32    1
        DC32    _ZTI17LedsModeFirstPair
        DC32    1
        DC32    2
        DC32    0

        SECTION `.iar_vfe_vtableinfo_ZTV21LedsModeInsideOutside`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP _ZTV21LedsModeInsideOutside
        DATA
        DC32    _ZTV21LedsModeInsideOutside
        DC32    4
        DC32    2
        DC32    _ZTI21LedsModeInsideOutside
        DC32    1
        DC32    2
        DC32    0
        DC32    _ZTI8LedsMode
        DC32    0
        DC32    1
        DC32    _ZTI21LedsModeInsideOutside
        DC32    1
        DC32    2
        DC32    0

        SECTION `.iar_vfe_vtableinfo_ZTV11LedsModeAdc`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP _ZTV11LedsModeAdc
        DATA
        DC32    _ZTV11LedsModeAdc
        DC32    4
        DC32    2
        DC32    _ZTI11LedsModeAdc
        DC32    1
        DC32    2
        DC32    0
        DC32    _ZTI8LedsMode
        DC32    0
        DC32    1
        DC32    _ZTI11LedsModeAdc
        DC32    1
        DC32    2
        DC32    0

        SECTION `.iar_vfe_vtableinfo_ZTV16Exh001ActionBase`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP _ZTV16Exh001ActionBase
        DATA
        DC32    _ZTV16Exh001ActionBase
        DC32    3
        DC32    2
        DC32    _ZTI16Exh001ActionBase
        DC32    1
        DC32    2
        DC32    0
        DC32    _ZTI6Action
        DC32    0
        DC32    1
        DC32    _ZTI16Exh001ActionBase
        DC32    1
        DC32    2
        DC32    0

        SECTION `.iar_vfe_vtableinfo_ZTV3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP _ZTV3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE
        DATA
        DC32    _ZTV3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE
        DC32    5
        DC32    2
        DC32    _ZTI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE
        DC32    1
        DC32    2
        DC32    0
        DC32    _ZTI4ILed
        DC32    0
        DC32    1
        DC32    _ZTI3LedI3PinI4PortI5GPIOAELh5E12PinWriteableEE
        DC32    1
        DC32    2
        DC32    0

        SECTION `.iar_vfe_vtableinfo_ZTV3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP _ZTV3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE
        DATA
        DC32    _ZTV3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE
        DC32    5
        DC32    2
        DC32    _ZTI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE
        DC32    1
        DC32    2
        DC32    0
        DC32    _ZTI4ILed
        DC32    0
        DC32    1
        DC32    _ZTI3LedI3PinI4PortI5GPIOCELh9E12PinWriteableEE
        DC32    1
        DC32    2
        DC32    0

        SECTION `.iar_vfe_vtableinfo_ZTV3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP _ZTV3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE
        DATA
        DC32    _ZTV3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE
        DC32    5
        DC32    2
        DC32    _ZTI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE
        DC32    1
        DC32    2
        DC32    0
        DC32    _ZTI4ILed
        DC32    0
        DC32    1
        DC32    _ZTI3LedI3PinI4PortI5GPIOCELh8E12PinWriteableEE
        DC32    1
        DC32    2
        DC32    0

        SECTION `.iar_vfe_vtableinfo_ZTV3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP _ZTV3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE
        DATA
        DC32    _ZTV3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE
        DC32    5
        DC32    2
        DC32    _ZTI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE
        DC32    1
        DC32    2
        DC32    0
        DC32    _ZTI4ILed
        DC32    0
        DC32    1
        DC32    _ZTI3LedI3PinI4PortI5GPIOCELh5E12PinWriteableEE
        DC32    1
        DC32    2
        DC32    0

        SECTION `.iar_vfe_vtableinfo_ZTV11LedsModeAll`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP _ZTV11LedsModeAll
        DATA
        DC32    _ZTV11LedsModeAll
        DC32    4
        DC32    1
        DC32    _ZTI8LedsMode
        DC32    0
        DC32    1
        DC32    _ZTI11LedsModeAll
        DC32    1
        DC32    2
        DC32    0

        SECTION `.init_array`:CODE:ROOT(2)
        SECTION_TYPE SHT_INIT_ARRAY, 0
        DATA
        DC32    RELOC_ARM_TARGET1 __sti__routine

        SECTION `.iar_vfe_vcallinfo_ZN9OsWrapper7IThread3RunEv`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP _ZN9OsWrapper7IThread3RunEv
        DATA
        DC32    _ZN9OsWrapper7IThread3RunEv
        DC32    0
        DC32    0
        DC32    1
        DC32    _ZTIN9OsWrapper7IThreadE
        DC32    1
        DC32    1
        DC32    0
        DC32    0

        SECTION `.iar_vfe_vcallinfo_ZN10LedsDriver12SwitchOffAllEv`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP _ZN10LedsDriver12SwitchOffAllEv
        DATA
        DC32    _ZN10LedsDriver12SwitchOffAllEv
        DC32    0
        DC32    0
        DC32    1
        DC32    _ZTI4ILed
        DC32    1
        DC32    2
        DC32    0
        DC32    0

        SECTION `.iar_vfe_vcallinfo_ZN10LedsDriver9ToggleAllEv`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP _ZN10LedsDriver9ToggleAllEv
        DATA
        DC32    _ZN10LedsDriver9ToggleAllEv
        DC32    0
        DC32    0
        DC32    1
        DC32    _ZTI4ILed
        DC32    1
        DC32    4
        DC32    0
        DC32    0

        SECTION `.iar_vfe_vcallinfo_ZN12LedsModeTree2DoEh`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP _ZN12LedsModeTree2DoEh
        DATA
        DC32    _ZN12LedsModeTree2DoEh
        DC32    0
        DC32    0
        DC32    1
        DC32    _ZTI4ILed
        DC32    1
        DC32    4
        DC32    0
        DC32    0

        SECTION `.iar_vfe_vcallinfo_ZN13LedsModeChess5ResetEv`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP _ZN13LedsModeChess5ResetEv
        DATA
        DC32    _ZN13LedsModeChess5ResetEv
        DC32    0
        DC32    0
        DC32    1
        DC32    _ZTI4ILed
        DC32    1
        DC32    1
        DC32    0
        DC32    0

        SECTION `.iar_vfe_vcallinfo_ZN17LedsModeFirstPair5ResetEv`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP _ZN17LedsModeFirstPair5ResetEv
        DATA
        DC32    _ZN17LedsModeFirstPair5ResetEv
        DC32    0
        DC32    0
        DC32    1
        DC32    _ZTI4ILed
        DC32    1
        DC32    1
        DC32    0
        DC32    0

        SECTION `.iar_vfe_vcallinfo_ZN21LedsModeInsideOutside5ResetEv`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP _ZN21LedsModeInsideOutside5ResetEv
        DATA
        DC32    _ZN21LedsModeInsideOutside5ResetEv
        DC32    0
        DC32    0
        DC32    1
        DC32    _ZTI4ILed
        DC32    1
        DC32    1
        DC32    0
        DC32    0

        SECTION `.iar_vfe_vcallinfo_ZN11LedsModeAdc2DoEh`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP _ZN11LedsModeAdc2DoEh
        DATA
        DC32    _ZN11LedsModeAdc2DoEh
        DC32    0
        DC32    0
        DC32    1
        DC32    _ZTI4ILed
        DC32    1
        DC32    3
        DC32    0
        DC32    0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 1'328 bytes in section .bss
//    56 bytes in section .data
//     4 bytes in section .init_array
// 2'195 bytes in section .rodata
// 2'450 bytes in section .text
// 
//   366 bytes of CODE  memory (+ 2'088 bytes shared)
//    28 bytes of CONST memory (+ 2'167 bytes shared)
// 1'264 bytes of DATA  memory (+   120 bytes shared)
//
//Errors: none
//Warnings: none
