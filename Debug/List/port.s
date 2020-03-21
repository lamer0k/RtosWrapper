///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.40.2.214/W32 for ARM        21/Mar/2020  13:52:35
// Copyright 1999-2019 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =
//        C:\GitHub\KursovoyKarkas\Rtos\FreeRtos\portable\IAR\ARM_CM4F\port.c
//    Command line =
//        -f C:\Users\Serge\AppData\Local\Temp\EWEF62.tmp
//        (C:\GitHub\KursovoyKarkas\Rtos\FreeRtos\portable\IAR\ARM_CM4F\port.c
//        -lC C:\GitHub\KursovoyKarkas\Debug\List -lA
//        C:\GitHub\KursovoyKarkas\Debug\List -o
//        C:\GitHub\KursovoyKarkas\Debug\Obj --no_cse --no_unroll --no_inline
//        --no_code_motion --no_tbaa --no_clustering --no_scheduling --debug
//        --endian=little --cpu=Cortex-M4 -e --fpu=VFPv4_sp --dlib_config
//        "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        8.3\arm\inc\c\DLib_Config_Normal.h" -I C:\GitHub\KursovoyKarkas\Rtos\
//        -I C:\GitHub\KursovoyKarkas\Rtos\wrapper\ -I
//        C:\GitHub\KursovoyKarkas\Rtos\wrapper\FreeRtos\ -I
//        C:\GitHub\KursovoyKarkas\Rtos\FreeRtos\ -I
//        C:\GitHub\KursovoyKarkas\Rtos\FreeRtos\include\ -I
//        C:\GitHub\KursovoyKarkas\Rtos\FreeRtos\portable\ -I
//        C:\GitHub\KursovoyKarkas\Rtos\FreeRtos\portable\Common\ -I
//        C:\GitHub\KursovoyKarkas\Rtos\FreeRtos\portable\IAR\ -I
//        C:\GitHub\KursovoyKarkas\Rtos\FreeRtos\portable\IAR\ARM_CM4F\ -I
//        C:\GitHub\KursovoyKarkas\Rtos\FreeRtos\portable\MemMang\ -I
//        C:\GitHub\KursovoyKarkas\MyTasks\ -I C:\GitHub\KursovoyKarkas\Common\
//        -I C:\GitHub\KursovoyKarkas\CMSIS\ -I
//        C:\GitHub\KursovoyKarkas\Application\ -I
//        C:\GitHub\KursovoyKarkas\Application\Diagnostic\ -I
//        C:\GitHub\KursovoyKarkas\AHardware\ -I
//        C:\GitHub\KursovoyKarkas\AHardware\GpioPort\ -I
//        C:\GitHub\KursovoyKarkas\AHardware\IrqController\ -I
//        C:\GitHub\KursovoyKarkas\..\CortexLib\AbstractHardware\Pin\ -I
//        C:\GitHub\KursovoyKarkas\..\CortexLib\AbstractHardware\Registers\STM32F411\FieldValues\
//        -I
//        C:\GitHub\KursovoyKarkas\..\CortexLib\AbstractHardware\Registers\STM32F411\
//        -I C:\GitHub\KursovoyKarkas\..\CortexLib\AbstractHardware\Registers\
//        -I C:\GitHub\KursovoyKarkas\..\CortexLib\AbstractHardware\Port\ -I
//        C:\GitHub\KursovoyKarkas\..\CortexLib\AbstractHardware\Atomic\ -I
//        C:\GitHub\KursovoyKarkas\..\CortexLib\Common\ -I
//        C:\GitHub\KursovoyKarkas\..\CortexLib\Common\Singleton\ -Ol)
//    Locale       =  C
//    List file    =  C:\GitHub\KursovoyKarkas\Debug\List\port.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN SystemCoreClock
        EXTERN vPortEnableVFP
        EXTERN vPortStartFirstTask
        EXTERN xTaskIncrementTick

        PUBLIC pxPortInitialiseStack
        PUBLIC vPortEndScheduler
        PUBLIC vPortEnterCritical
        PUBLIC vPortExitCritical
        PUBWEAK vPortSetupTimerInterrupt
        PUBLIC vPortValidateInterruptPriority
        PUBLIC xPortStartScheduler
        PUBLIC xPortSysTickHandler
        
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
        
// C:\GitHub\KursovoyKarkas\Rtos\FreeRtos\portable\IAR\ARM_CM4F\port.c
//    1 /*
//    2     FreeRTOS V9.0.0 - Copyright (C) 2016 Real Time Engineers Ltd.
//    3     All rights reserved
//    4 
//    5     VISIT http://www.FreeRTOS.org TO ENSURE YOU ARE USING THE LATEST VERSION.
//    6 
//    7     This file is part of the FreeRTOS distribution.
//    8 
//    9     FreeRTOS is free software; you can redistribute it and/or modify it under
//   10     the terms of the GNU General Public License (version 2) as published by the
//   11     Free Software Foundation >>>> AND MODIFIED BY <<<< the FreeRTOS exception.
//   12 
//   13     ***************************************************************************
//   14     >>!   NOTE: The modification to the GPL is included to allow you to     !<<
//   15     >>!   distribute a combined work that includes FreeRTOS without being   !<<
//   16     >>!   obliged to provide the source code for proprietary components     !<<
//   17     >>!   outside of the FreeRTOS kernel.                                   !<<
//   18     ***************************************************************************
//   19 
//   20     FreeRTOS is distributed in the hope that it will be useful, but WITHOUT ANY
//   21     WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
//   22     FOR A PARTICULAR PURPOSE.  Full license text is available on the following
//   23     link: http://www.freertos.org/a00114.html
//   24 
//   25     ***************************************************************************
//   26      *                                                                       *
//   27      *    FreeRTOS provides completely free yet professionally developed,    *
//   28      *    robust, strictly quality controlled, supported, and cross          *
//   29      *    platform software that is more than just the market leader, it     *
//   30      *    is the industry's de facto standard.                               *
//   31      *                                                                       *
//   32      *    Help yourself get started quickly while simultaneously helping     *
//   33      *    to support the FreeRTOS project by purchasing a FreeRTOS           *
//   34      *    tutorial book, reference manual, or both:                          *
//   35      *    http://www.FreeRTOS.org/Documentation                              *
//   36      *                                                                       *
//   37     ***************************************************************************
//   38 
//   39     http://www.FreeRTOS.org/FAQHelp.html - Having a problem?  Start by reading
//   40     the FAQ page "My application does not run, what could be wrong?".  Have you
//   41     defined configASSERT()?
//   42 
//   43     http://www.FreeRTOS.org/support - In return for receiving this top quality
//   44     embedded software for free we request you assist our global community by
//   45     participating in the support forum.
//   46 
//   47     http://www.FreeRTOS.org/training - Investing in training allows your team to
//   48     be as productive as possible as early as possible.  Now you can receive
//   49     FreeRTOS training directly from Richard Barry, CEO of Real Time Engineers
//   50     Ltd, and the world's leading authority on the world's leading RTOS.
//   51 
//   52     http://www.FreeRTOS.org/plus - A selection of FreeRTOS ecosystem products,
//   53     including FreeRTOS+Trace - an indispensable productivity tool, a DOS
//   54     compatible FAT file system, and our tiny thread aware UDP/IP stack.
//   55 
//   56     http://www.FreeRTOS.org/labs - Where new FreeRTOS products go to incubate.
//   57     Come and try FreeRTOS+TCP, our new open source TCP/IP stack for FreeRTOS.
//   58 
//   59     http://www.OpenRTOS.com - Real Time Engineers ltd. license FreeRTOS to High
//   60     Integrity Systems ltd. to sell under the OpenRTOS brand.  Low cost OpenRTOS
//   61     licenses offer ticketed support, indemnification and commercial middleware.
//   62 
//   63     http://www.SafeRTOS.com - High Integrity Systems also provide a safety
//   64     engineered and independently SIL3 certified version for use in safety and
//   65     mission critical applications that require provable dependability.
//   66 
//   67     1 tab == 4 spaces!
//   68 */
//   69 
//   70 /*-----------------------------------------------------------
//   71  * Implementation of functions defined in portable.h for the ARM CM4F port.
//   72  *----------------------------------------------------------*/
//   73 
//   74 /* Compiler includes. */
//   75 #include <intrinsics.h>
//   76 
//   77 /* Scheduler includes. */
//   78 #include "FreeRTOS.h"
//   79 #include "task.h"
//   80 
//   81 #ifndef __ARMVFP__
//   82 	#error This port can only be used when the project options are configured to enable hardware floating point support.
//   83 #endif
//   84 
//   85 #if configMAX_SYSCALL_INTERRUPT_PRIORITY == 0
//   86 	#error configMAX_SYSCALL_INTERRUPT_PRIORITY must not be set to 0.  See http://www.FreeRTOS.org/RTOS-Cortex-M3-M4.html
//   87 #endif
//   88 
//   89 #ifndef configSYSTICK_CLOCK_HZ
//   90 	#define configSYSTICK_CLOCK_HZ configCPU_CLOCK_HZ
//   91 	/* Ensure the SysTick is clocked at the same frequency as the core. */
//   92 	#define portNVIC_SYSTICK_CLK_BIT	( 1UL << 2UL )
//   93 #else
//   94 	/* The way the SysTick is clocked is not modified in case it is not the same
//   95 	as the core. */
//   96 	#define portNVIC_SYSTICK_CLK_BIT	( 0 )
//   97 #endif
//   98 
//   99 /* Constants required to manipulate the core.  Registers first... */
//  100 #define portNVIC_SYSTICK_CTRL_REG			( * ( ( volatile uint32_t * ) 0xe000e010 ) )
//  101 #define portNVIC_SYSTICK_LOAD_REG			( * ( ( volatile uint32_t * ) 0xe000e014 ) )
//  102 #define portNVIC_SYSTICK_CURRENT_VALUE_REG	( * ( ( volatile uint32_t * ) 0xe000e018 ) )
//  103 #define portNVIC_SYSPRI2_REG				( * ( ( volatile uint32_t * ) 0xe000ed20 ) )
//  104 /* ...then bits in the registers. */
//  105 #define portNVIC_SYSTICK_INT_BIT			( 1UL << 1UL )
//  106 #define portNVIC_SYSTICK_ENABLE_BIT			( 1UL << 0UL )
//  107 #define portNVIC_SYSTICK_COUNT_FLAG_BIT		( 1UL << 16UL )
//  108 #define portNVIC_PENDSVCLEAR_BIT 			( 1UL << 27UL )
//  109 #define portNVIC_PEND_SYSTICK_CLEAR_BIT		( 1UL << 25UL )
//  110 
//  111 /* Constants used to detect a Cortex-M7 r0p1 core, which should use the ARM_CM7
//  112 r0p1 port. */
//  113 #define portCPUID							( * ( ( volatile uint32_t * ) 0xE000ed00 ) )
//  114 #define portCORTEX_M7_r0p1_ID				( 0x410FC271UL )
//  115 #define portCORTEX_M7_r0p0_ID				( 0x410FC270UL )
//  116 
//  117 #define portNVIC_PENDSV_PRI					( ( ( uint32_t ) configKERNEL_INTERRUPT_PRIORITY ) << 16UL )
//  118 #define portNVIC_SYSTICK_PRI				( ( ( uint32_t ) configKERNEL_INTERRUPT_PRIORITY ) << 24UL )
//  119 
//  120 /* Constants required to check the validity of an interrupt priority. */
//  121 #define portFIRST_USER_INTERRUPT_NUMBER		( 16 )
//  122 #define portNVIC_IP_REGISTERS_OFFSET_16 	( 0xE000E3F0 )
//  123 #define portAIRCR_REG						( * ( ( volatile uint32_t * ) 0xE000ED0C ) )
//  124 #define portMAX_8_BIT_VALUE					( ( uint8_t ) 0xff )
//  125 #define portTOP_BIT_OF_BYTE					( ( uint8_t ) 0x80 )
//  126 #define portMAX_PRIGROUP_BITS				( ( uint8_t ) 7 )
//  127 #define portPRIORITY_GROUP_MASK				( 0x07UL << 8UL )
//  128 #define portPRIGROUP_SHIFT					( 8UL )
//  129 
//  130 /* Masks off all bits but the VECTACTIVE bits in the ICSR register. */
//  131 #define portVECTACTIVE_MASK					( 0xFFUL )
//  132 
//  133 /* Constants required to manipulate the VFP. */
//  134 #define portFPCCR							( ( volatile uint32_t * ) 0xe000ef34 ) /* Floating point context control register. */
//  135 #define portASPEN_AND_LSPEN_BITS			( 0x3UL << 30UL )
//  136 
//  137 /* Constants required to set up the initial stack. */
//  138 #define portINITIAL_XPSR					( 0x01000000 )
//  139 #define portINITIAL_EXEC_RETURN				( 0xfffffffd )
//  140 
//  141 /* The systick is a 24-bit counter. */
//  142 #define portMAX_24_BIT_NUMBER				( 0xffffffUL )
//  143 
//  144 /* A fiddle factor to estimate the number of SysTick counts that would have
//  145 occurred while the SysTick counter is stopped during tickless idle
//  146 calculations. */
//  147 #define portMISSED_COUNTS_FACTOR			( 45UL )
//  148 
//  149 /* For strict compliance with the Cortex-M spec the task start address should
//  150 have bit-0 clear, as it is loaded into the PC on exit from an ISR. */
//  151 #define portSTART_ADDRESS_MASK				( ( StackType_t ) 0xfffffffeUL )
//  152 
//  153 /* Each task maintains its own interrupt status in the critical nesting
//  154 variable. */

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//  155 static UBaseType_t uxCriticalNesting = 0xaaaaaaaaU;
uxCriticalNesting:
        DATA32
        DC32 2'863'311'530
//  156 
//  157 /*
//  158  * Setup the timer to generate the tick interrupts.  The implementation in this
//  159  * file is weak to allow application writers to change the timer used to
//  160  * generate the tick interrupt.
//  161  */
//  162 void vPortSetupTimerInterrupt( void );
//  163 
//  164 /*
//  165  * Exception handlers.
//  166  */
//  167 void xPortSysTickHandler( void );
//  168 
//  169 /*
//  170  * Start first task is a separate function so it can be tested in isolation.
//  171  */
//  172 extern void vPortStartFirstTask( void );
//  173 
//  174 /*
//  175  * Turn the VFP on.
//  176  */
//  177 extern void vPortEnableVFP( void );
//  178 
//  179 /*
//  180  * Used to catch tasks that attempt to return from their implementing function.
//  181  */
//  182 static void prvTaskExitError( void );
//  183 
//  184 /*-----------------------------------------------------------*/
//  185 
//  186 /*
//  187  * The number of SysTick increments that make up one tick period.
//  188  */
//  189 #if configUSE_TICKLESS_IDLE == 1
//  190 	static uint32_t ulTimerCountsForOneTick = 0;
//  191 #endif /* configUSE_TICKLESS_IDLE */
//  192 
//  193 /*
//  194  * The maximum number of tick periods that can be suppressed is limited by the
//  195  * 24 bit resolution of the SysTick timer.
//  196  */
//  197 #if configUSE_TICKLESS_IDLE == 1
//  198 	static uint32_t xMaximumPossibleSuppressedTicks = 0;
//  199 #endif /* configUSE_TICKLESS_IDLE */
//  200 
//  201 /*
//  202  * Compensate for the CPU cycles that pass while the SysTick is stopped (low
//  203  * power functionality only.
//  204  */
//  205 #if configUSE_TICKLESS_IDLE == 1
//  206 	static uint32_t ulStoppedTimerCompensation = 0;
//  207 #endif /* configUSE_TICKLESS_IDLE */
//  208 
//  209 /*
//  210  * Used by the portASSERT_IF_INTERRUPT_PRIORITY_INVALID() macro to ensure
//  211  * FreeRTOS API functions are not called from interrupts that have been assigned
//  212  * a priority above configMAX_SYSCALL_INTERRUPT_PRIORITY.
//  213  */
//  214 #if ( configASSERT_DEFINED == 1 )

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//  215 	 static uint8_t ucMaxSysCallPriority = 0;
ucMaxSysCallPriority:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  216 	 static uint32_t ulMaxPRIGROUPValue = 0;
ulMaxPRIGROUPValue:
        DS8 4

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//  217 	 static const volatile uint8_t * const pcInterruptPriorityRegisters = ( const volatile uint8_t * const ) portNVIC_IP_REGISTERS_OFFSET_16;
pcInterruptPriorityRegisters:
        DATA32
        DC32 0xe000'e3f0
//  218 #endif /* configASSERT_DEFINED */
//  219 
//  220 /*-----------------------------------------------------------*/
//  221 
//  222 /*
//  223  * See header file for description.
//  224  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function pxPortInitialiseStack
          CFI NoCalls
        THUMB
//  225 StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters )
//  226 {
//  227 	/* Simulate the stack frame as it would be created by a context switch
//  228 	interrupt. */
//  229 
//  230 	/* Offset added to account for the way the MCU uses the stack on entry/exit
//  231 	of interrupts, and to ensure alignment. */
//  232 	pxTopOfStack--;
pxPortInitialiseStack:
        SUBS     R0,R0,#+4
//  233 
//  234 	*pxTopOfStack = portINITIAL_XPSR;	/* xPSR */
        MOVS     R3,#+16777216
        STR      R3,[R0, #+0]
//  235 	pxTopOfStack--;
        SUBS     R0,R0,#+4
//  236 	*pxTopOfStack = ( ( StackType_t ) pxCode ) & portSTART_ADDRESS_MASK;	/* PC */
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        STR      R1,[R0, #+0]
//  237 	pxTopOfStack--;
        SUBS     R0,R0,#+4
//  238 	*pxTopOfStack = ( StackType_t ) prvTaskExitError;	/* LR */
        ADR.W    R1,prvTaskExitError
        STR      R1,[R0, #+0]
//  239 
//  240 	/* Save code space by skipping register initialisation. */
//  241 	pxTopOfStack -= 5;	/* R12, R3, R2 and R1. */
        SUBS     R0,R0,#+20
//  242 	*pxTopOfStack = ( StackType_t ) pvParameters;	/* R0 */
        STR      R2,[R0, #+0]
//  243 
//  244 	/* A save method is being used that requires each task to maintain its
//  245 	own exec return value. */
//  246 	pxTopOfStack--;
        SUBS     R0,R0,#+4
//  247 	*pxTopOfStack = portINITIAL_EXEC_RETURN;
        MVNS     R1,#+2
        STR      R1,[R0, #+0]
//  248 
//  249 	pxTopOfStack -= 8;	/* R11, R10, R9, R8, R7, R6, R5 and R4. */
        SUBS     R0,R0,#+32
//  250 
//  251 	return pxTopOfStack;
        BX       LR               ;; return
//  252 }
          CFI EndBlock cfiBlock0
//  253 /*-----------------------------------------------------------*/
//  254 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function prvTaskExitError
          CFI NoCalls
        THUMB
//  255 static void prvTaskExitError( void )
//  256 {
//  257 	/* A function that implements a task must not exit or attempt to return to
//  258 	its caller as there is nothing to return to.  If a task wants to exit it
//  259 	should instead call vTaskDelete( NULL ).
//  260 
//  261 	Artificially force an assert() to be triggered if configASSERT() is
//  262 	defined, then stop here so application writers can catch the error. */
//  263 	configASSERT( uxCriticalNesting == ~0UL );
//  264 	portDISABLE_INTERRUPTS();
prvTaskExitError:
        MOVS     R0,#+80
        MSR      BASEPRI,R0
        DSB      SY
        ISB      SY
//  265 	for( ;; );
??prvTaskExitError_0:
        B.N      ??prvTaskExitError_0
//  266 }
          CFI EndBlock cfiBlock1
//  267 /*-----------------------------------------------------------*/
//  268 
//  269 /*
//  270  * See header file for description.
//  271  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function xPortStartScheduler
        THUMB
//  272 BaseType_t xPortStartScheduler( void )
//  273 {
xPortStartScheduler:
        PUSH     {R5-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//  274 	/* configMAX_SYSCALL_INTERRUPT_PRIORITY must not be set to 0.
//  275 	See http://www.FreeRTOS.org/RTOS-Cortex-M3-M4.html */
//  276 	configASSERT( configMAX_SYSCALL_INTERRUPT_PRIORITY );
//  277 
//  278 	/* This port can be used on all revisions of the Cortex-M7 core other than
//  279 	the r0p1 parts.  r0p1 parts should use the port from the
//  280 	/source/portable/GCC/ARM_CM7/r0p1 directory. */
//  281 	configASSERT( portCPUID != portCORTEX_M7_r0p1_ID );
        LDR.N    R0,??DataTable5  ;; 0xe000ed00
        LDR      R1,[R0, #+0]
//  282 	configASSERT( portCPUID != portCORTEX_M7_r0p0_ID );
        LDR      R0,[R0, #+0]
//  283 
//  284 	#if( configASSERT_DEFINED == 1 )
//  285 	{
//  286 		volatile uint32_t ulOriginalPriority;
//  287 		volatile uint8_t * const pucFirstUserPriorityRegister = ( volatile uint8_t * const ) ( portNVIC_IP_REGISTERS_OFFSET_16 + portFIRST_USER_INTERRUPT_NUMBER );
        LDR.N    R0,??DataTable5_1  ;; 0xe000e400
//  288 		volatile uint8_t ucMaxPriorityValue;
//  289 
//  290 		/* Determine the maximum priority from which ISR safe FreeRTOS API
//  291 		functions can be called.  ISR safe functions are those that end in
//  292 		"FromISR".  FreeRTOS maintains separate thread and ISR API functions to
//  293 		ensure interrupt entry is as fast and simple as possible.
//  294 
//  295 		Save the interrupt priority value that is about to be clobbered. */
//  296 		ulOriginalPriority = *pucFirstUserPriorityRegister;
        LDRB     R1,[R0, #+0]
        STR      R1,[SP, #+4]
//  297 
//  298 		/* Determine the number of priority bits available.  First write to all
//  299 		possible bits. */
//  300 		*pucFirstUserPriorityRegister = portMAX_8_BIT_VALUE;
        MOVS     R1,#+255
        STRB     R1,[R0, #+0]
//  301 
//  302 		/* Read the value back to see how many bits stuck. */
//  303 		ucMaxPriorityValue = *pucFirstUserPriorityRegister;
        LDRB     R1,[R0, #+0]
        STRB     R1,[SP, #+0]
//  304 
//  305 		/* Use the same mask on the maximum system call priority. */
//  306 		ucMaxSysCallPriority = configMAX_SYSCALL_INTERRUPT_PRIORITY & ucMaxPriorityValue;
        LDRB     R1,[SP, #+0]
        ANDS     R1,R1,#0x50
        LDR.N    R2,??DataTable5_2
        STRB     R1,[R2, #+0]
//  307 
//  308 		/* Calculate the maximum acceptable priority group value for the number
//  309 		of bits read back. */
//  310 		ulMaxPRIGROUPValue = portMAX_PRIGROUP_BITS;
        LDR.N    R1,??DataTable5_3
        MOVS     R2,#+7
        STR      R2,[R1, #+0]
        B.N      ??xPortStartScheduler_0
//  311 		while( ( ucMaxPriorityValue & portTOP_BIT_OF_BYTE ) == portTOP_BIT_OF_BYTE )
//  312 		{
//  313 			ulMaxPRIGROUPValue--;
??xPortStartScheduler_1:
        LDR      R2,[R1, #+0]
        SUBS     R2,R2,#+1
        STR      R2,[R1, #+0]
//  314 			ucMaxPriorityValue <<= ( uint8_t ) 0x01;
        LDRB     R2,[SP, #+0]
        LSLS     R2,R2,#+1
        STRB     R2,[SP, #+0]
//  315 		}
??xPortStartScheduler_0:
        LDRB     R2,[SP, #+0]
        LSLS     R2,R2,#+24
        BMI.N    ??xPortStartScheduler_1
//  316 
//  317 		/* Shift the priority group value back to its position within the AIRCR
//  318 		register. */
//  319 		ulMaxPRIGROUPValue <<= portPRIGROUP_SHIFT;
        LDR      R2,[R1, #+0]
        LSLS     R2,R2,#+8
        STR      R2,[R1, #+0]
//  320 		ulMaxPRIGROUPValue &= portPRIORITY_GROUP_MASK;
        LDR      R2,[R1, #+0]
        ANDS     R2,R2,#0x700
        STR      R2,[R1, #+0]
//  321 
//  322 		/* Restore the clobbered interrupt priority register to its original
//  323 		value. */
//  324 		*pucFirstUserPriorityRegister = ulOriginalPriority;
        LDR      R1,[SP, #+4]
        STRB     R1,[R0, #+0]
//  325 	}
//  326 	#endif /* conifgASSERT_DEFINED */
//  327 
//  328 	/* Make PendSV and SysTick the lowest priority interrupts. */
//  329 	portNVIC_SYSPRI2_REG |= portNVIC_PENDSV_PRI;
        LDR.N    R0,??DataTable5_4  ;; 0xe000ed20
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0xF00000
        STR      R1,[R0, #+0]
//  330 	portNVIC_SYSPRI2_REG |= portNVIC_SYSTICK_PRI;
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0xF0000000
        STR      R1,[R0, #+0]
//  331 
//  332 	/* Start the timer that generates the tick ISR.  Interrupts are disabled
//  333 	here already. */
//  334 	vPortSetupTimerInterrupt();
          CFI FunCall vPortSetupTimerInterrupt
        BL       vPortSetupTimerInterrupt
//  335 
//  336 	/* Initialise the critical nesting count ready for the first task. */
//  337 	uxCriticalNesting = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_5
        STR      R0,[R1, #+0]
//  338 
//  339 	/* Ensure the VFP is enabled - it should be anyway. */
//  340 	vPortEnableVFP();
          CFI FunCall vPortEnableVFP
        BL       vPortEnableVFP
//  341 
//  342 	/* Lazy save always. */
//  343 	*( portFPCCR ) |= portASPEN_AND_LSPEN_BITS;
        LDR.N    R0,??DataTable5_6  ;; 0xe000ef34
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0xC0000000
        STR      R1,[R0, #+0]
//  344 
//  345 	/* Start the first task. */
//  346 	vPortStartFirstTask();
          CFI FunCall vPortStartFirstTask
        BL       vPortStartFirstTask
//  347 
//  348 	/* Should not get here! */
//  349 	return 0;
        MOVS     R0,#+0
        POP      {R1-R3,PC}       ;; return
//  350 }
          CFI EndBlock cfiBlock2
//  351 /*-----------------------------------------------------------*/
//  352 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function vPortEndScheduler
          CFI NoCalls
        THUMB
//  353 void vPortEndScheduler( void )
//  354 {
//  355 	/* Not implemented in ports where there is nothing to return to.
//  356 	Artificially force an assert. */
//  357 	configASSERT( uxCriticalNesting == 1000UL );
//  358 }
vPortEndScheduler:
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  359 /*-----------------------------------------------------------*/
//  360 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function vPortEnterCritical
          CFI NoCalls
        THUMB
//  361 void vPortEnterCritical( void )
//  362 {
//  363 	portDISABLE_INTERRUPTS();
vPortEnterCritical:
        MOVS     R0,#+80
        MSR      BASEPRI,R0
        DSB      SY
        ISB      SY
//  364 	uxCriticalNesting++;
        LDR.N    R0,??DataTable5_5
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
//  365 
//  366 	/* This is not the interrupt safe version of the enter critical function so
//  367 	assert() if it is being called from an interrupt context.  Only API
//  368 	functions that end in "FromISR" can be used in an interrupt.  Only assert if
//  369 	the critical nesting count is 1 to protect against recursive calls if the
//  370 	assert function also uses a critical section. */
//  371 	if( uxCriticalNesting == 1 )
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??vPortEnterCritical_0
//  372 	{
//  373 		configASSERT( ( portNVIC_INT_CTRL_REG & portVECTACTIVE_MASK ) == 0 );
        LDR.N    R0,??DataTable5_7  ;; 0xe000ed04
        LDR      R0,[R0, #+0]
//  374 	}
//  375 }
??vPortEnterCritical_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  376 /*-----------------------------------------------------------*/
//  377 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function vPortExitCritical
          CFI NoCalls
        THUMB
//  378 void vPortExitCritical( void )
//  379 {
//  380 	configASSERT( uxCriticalNesting );
//  381 	uxCriticalNesting--;
vPortExitCritical:
        LDR.N    R0,??DataTable5_5
        LDR      R1,[R0, #+0]
        SUBS     R1,R1,#+1
        STR      R1,[R0, #+0]
//  382 	if( uxCriticalNesting == 0 )
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??vPortExitCritical_0
//  383 	{
//  384 		portENABLE_INTERRUPTS();
        MOVS     R0,#+0
        MSR      BASEPRI,R0
//  385 	}
//  386 }
??vPortExitCritical_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  387 /*-----------------------------------------------------------*/
//  388 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function xPortSysTickHandler
        THUMB
//  389 void xPortSysTickHandler( void )
//  390 {
xPortSysTickHandler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  391 	/* The SysTick runs at the lowest interrupt priority, so when this interrupt
//  392 	executes all interrupts must be unmasked.  There is therefore no need to
//  393 	save and then restore the interrupt mask value as its value is already
//  394 	known. */
//  395 	portDISABLE_INTERRUPTS();
        MOVS     R0,#+80
        MSR      BASEPRI,R0
        DSB      SY
        ISB      SY
//  396 	{
//  397 		/* Increment the RTOS tick. */
//  398 		if( xTaskIncrementTick() != pdFALSE )
          CFI FunCall xTaskIncrementTick
        BL       xTaskIncrementTick
        CMP      R0,#+0
        BEQ.N    ??xPortSysTickHandler_0
//  399 		{
//  400 			/* A context switch is required.  Context switching is performed in
//  401 			the PendSV interrupt.  Pend the PendSV interrupt. */
//  402 			portNVIC_INT_CTRL_REG = portNVIC_PENDSVSET_BIT;
        MOVS     R0,#+268435456
        LDR.N    R1,??DataTable5_7  ;; 0xe000ed04
        STR      R0,[R1, #+0]
//  403 		}
//  404 	}
//  405 	portENABLE_INTERRUPTS();
??xPortSysTickHandler_0:
        MOVS     R0,#+0
        MSR      BASEPRI,R0
//  406 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock6

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function vPortValidateInterruptPriority
          CFI NoCalls
        THUMB
vPortValidateInterruptPriority:
        mrs R0, ipsr
        CMP      R0,#+16
        BCC.N    ??vPortValidateInterruptPriority_0
        LDR.N    R1,??DataTable5_8
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
??vPortValidateInterruptPriority_0:
        LDR.N    R0,??DataTable5_9  ;; 0xe000ed0c
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DATA32
        DC32     0xe000ed00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DATA32
        DC32     0xe000e400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DATA32
        DC32     ucMaxSysCallPriority

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DATA32
        DC32     ulMaxPRIGROUPValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DATA32
        DC32     0xe000ed20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DATA32
        DC32     uxCriticalNesting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DATA32
        DC32     0xe000ef34

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DATA32
        DC32     0xe000ed04

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DATA32
        DC32     pcInterruptPriorityRegisters

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DATA32
        DC32     0xe000ed0c
//  407 /*-----------------------------------------------------------*/
//  408 
//  409 #if configUSE_TICKLESS_IDLE == 1
//  410 
//  411 	__weak void vPortSuppressTicksAndSleep( TickType_t xExpectedIdleTime )
//  412 	{
//  413 	uint32_t ulReloadValue, ulCompleteTickPeriods, ulCompletedSysTickDecrements, ulSysTickCTRL;
//  414 	TickType_t xModifiableIdleTime;
//  415 
//  416 		/* Make sure the SysTick reload value does not overflow the counter. */
//  417 		if( xExpectedIdleTime > xMaximumPossibleSuppressedTicks )
//  418 		{
//  419 			xExpectedIdleTime = xMaximumPossibleSuppressedTicks;
//  420 		}
//  421 
//  422 		/* Stop the SysTick momentarily.  The time the SysTick is stopped for
//  423 		is accounted for as best it can be, but using the tickless mode will
//  424 		inevitably result in some tiny drift of the time maintained by the
//  425 		kernel with respect to calendar time. */
//  426 		portNVIC_SYSTICK_CTRL_REG &= ~portNVIC_SYSTICK_ENABLE_BIT;
//  427 
//  428 		/* Calculate the reload value required to wait xExpectedIdleTime
//  429 		tick periods.  -1 is used because this code will execute part way
//  430 		through one of the tick periods. */
//  431 		ulReloadValue = portNVIC_SYSTICK_CURRENT_VALUE_REG + ( ulTimerCountsForOneTick * ( xExpectedIdleTime - 1UL ) );
//  432 		if( ulReloadValue > ulStoppedTimerCompensation )
//  433 		{
//  434 			ulReloadValue -= ulStoppedTimerCompensation;
//  435 		}
//  436 
//  437 		/* Enter a critical section but don't use the taskENTER_CRITICAL()
//  438 		method as that will mask interrupts that should exit sleep mode. */
//  439 		__disable_interrupt();
//  440 		__DSB();
//  441 		__ISB();
//  442 
//  443 
//  444 		/* If a context switch is pending or a task is waiting for the scheduler
//  445 		to be unsuspended then abandon the low power entry. */
//  446 		if( eTaskConfirmSleepModeStatus() == eAbortSleep )
//  447 		{
//  448 			/* Restart from whatever is left in the count register to complete
//  449 			this tick period. */
//  450 			portNVIC_SYSTICK_LOAD_REG = portNVIC_SYSTICK_CURRENT_VALUE_REG;
//  451 
//  452 			/* Restart SysTick. */
//  453 			portNVIC_SYSTICK_CTRL_REG |= portNVIC_SYSTICK_ENABLE_BIT;
//  454 
//  455 			/* Reset the reload register to the value required for normal tick
//  456 			periods. */
//  457 			portNVIC_SYSTICK_LOAD_REG = ulTimerCountsForOneTick - 1UL;
//  458 
//  459 			/* Re-enable interrupts - see comments above __disable_interrupt()
//  460 			call above. */
//  461 			__enable_interrupt();
//  462 		}
//  463 		else
//  464 		{
//  465 			/* Set the new reload value. */
//  466 			portNVIC_SYSTICK_LOAD_REG = ulReloadValue;
//  467 
//  468 			/* Clear the SysTick count flag and set the count value back to
//  469 			zero. */
//  470 			portNVIC_SYSTICK_CURRENT_VALUE_REG = 0UL;
//  471 
//  472 			/* Restart SysTick. */
//  473 			portNVIC_SYSTICK_CTRL_REG |= portNVIC_SYSTICK_ENABLE_BIT;
//  474 
//  475 			/* Sleep until something happens.  configPRE_SLEEP_PROCESSING() can
//  476 			set its parameter to 0 to indicate that its implementation contains
//  477 			its own wait for interrupt or wait for event instruction, and so wfi
//  478 			should not be executed again.  However, the original expected idle
//  479 			time variable must remain unmodified, so a copy is taken. */
//  480 			xModifiableIdleTime = xExpectedIdleTime;
//  481 			configPRE_SLEEP_PROCESSING( xModifiableIdleTime );
//  482 			if( xModifiableIdleTime > 0 )
//  483 			{
//  484 				__DSB();
//  485 				__WFI();
//  486 				__ISB();
//  487 			}
//  488 			configPOST_SLEEP_PROCESSING( xExpectedIdleTime );
//  489 
//  490 			/* Stop SysTick.  Again, the time the SysTick is stopped for is
//  491 			accounted for as best it can be, but using the tickless mode will
//  492 			inevitably result in some tiny drift of the time maintained by the
//  493 			kernel with respect to calendar time. */
//  494 			ulSysTickCTRL = portNVIC_SYSTICK_CTRL_REG;
//  495 			portNVIC_SYSTICK_CTRL_REG = ( ulSysTickCTRL & ~portNVIC_SYSTICK_ENABLE_BIT );
//  496 
//  497 			/* Re-enable interrupts - see comments above __disable_interrupt()
//  498 			call above. */
//  499 			__enable_interrupt();
//  500 
//  501 			if( ( ulSysTickCTRL & portNVIC_SYSTICK_COUNT_FLAG_BIT ) != 0 )
//  502 			{
//  503 				uint32_t ulCalculatedLoadValue;
//  504 
//  505 				/* The tick interrupt has already executed, and the SysTick
//  506 				count reloaded with ulReloadValue.  Reset the
//  507 				portNVIC_SYSTICK_LOAD_REG with whatever remains of this tick
//  508 				period. */
//  509 				ulCalculatedLoadValue = ( ulTimerCountsForOneTick - 1UL ) - ( ulReloadValue - portNVIC_SYSTICK_CURRENT_VALUE_REG );
//  510 
//  511 				/* Don't allow a tiny value, or values that have somehow
//  512 				underflowed because the post sleep hook did something
//  513 				that took too long. */
//  514 				if( ( ulCalculatedLoadValue < ulStoppedTimerCompensation ) || ( ulCalculatedLoadValue > ulTimerCountsForOneTick ) )
//  515 				{
//  516 					ulCalculatedLoadValue = ( ulTimerCountsForOneTick - 1UL );
//  517 				}
//  518 
//  519 				portNVIC_SYSTICK_LOAD_REG = ulCalculatedLoadValue;
//  520 
//  521 				/* The tick interrupt handler will already have pended the tick
//  522 				processing in the kernel.  As the pending tick will be
//  523 				processed as soon as this function exits, the tick value
//  524 				maintained by the tick is stepped forward by one less than the
//  525 				time spent waiting. */
//  526 				ulCompleteTickPeriods = xExpectedIdleTime - 1UL;
//  527 			}
//  528 			else
//  529 			{
//  530 				/* Something other than the tick interrupt ended the sleep.
//  531 				Work out how long the sleep lasted rounded to complete tick
//  532 				periods (not the ulReload value which accounted for part
//  533 				ticks). */
//  534 				ulCompletedSysTickDecrements = ( xExpectedIdleTime * ulTimerCountsForOneTick ) - portNVIC_SYSTICK_CURRENT_VALUE_REG;
//  535 
//  536 				/* How many complete tick periods passed while the processor
//  537 				was waiting? */
//  538 				ulCompleteTickPeriods = ulCompletedSysTickDecrements / ulTimerCountsForOneTick;
//  539 
//  540 				/* The reload value is set to whatever fraction of a single tick
//  541 				period remains. */
//  542 				portNVIC_SYSTICK_LOAD_REG = ( ( ulCompleteTickPeriods + 1UL ) * ulTimerCountsForOneTick ) - ulCompletedSysTickDecrements;
//  543 			}
//  544 
//  545 			/* Restart SysTick so it runs from portNVIC_SYSTICK_LOAD_REG
//  546 			again, then set portNVIC_SYSTICK_LOAD_REG back to its standard
//  547 			value.  The critical section is used to ensure the tick interrupt
//  548 			can only execute once in the case that the reload register is near
//  549 			zero. */
//  550 			portNVIC_SYSTICK_CURRENT_VALUE_REG = 0UL;
//  551 			portENTER_CRITICAL();
//  552 			{
//  553 				portNVIC_SYSTICK_CTRL_REG |= portNVIC_SYSTICK_ENABLE_BIT;
//  554 				vTaskStepTick( ulCompleteTickPeriods );
//  555 				portNVIC_SYSTICK_LOAD_REG = ulTimerCountsForOneTick - 1UL;
//  556 			}
//  557 			portEXIT_CRITICAL();
//  558 		}
//  559 	}
//  560 
//  561 #endif /* #if configUSE_TICKLESS_IDLE */
//  562 /*-----------------------------------------------------------*/
//  563 
//  564 /*
//  565  * Setup the systick timer to generate the tick interrupts at the required
//  566  * frequency.
//  567  */

        SECTION `.text`:CODE:REORDER:NOROOT(2)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function vPortSetupTimerInterrupt
          CFI NoCalls
        THUMB
//  568 __weak void vPortSetupTimerInterrupt( void )
//  569 {
//  570 	/* Calculate the constants required to configure the tick interrupt. */
//  571 	#if( configUSE_TICKLESS_IDLE == 1 )
//  572 	{
//  573 		ulTimerCountsForOneTick = ( configSYSTICK_CLOCK_HZ / configTICK_RATE_HZ );
//  574 		xMaximumPossibleSuppressedTicks = portMAX_24_BIT_NUMBER / ulTimerCountsForOneTick;
//  575 		ulStoppedTimerCompensation = portMISSED_COUNTS_FACTOR / ( configCPU_CLOCK_HZ / configSYSTICK_CLOCK_HZ );
//  576 	}
//  577 	#endif /* configUSE_TICKLESS_IDLE */
//  578 
//  579 	/* Configure SysTick to interrupt at the requested rate. */
//  580 	portNVIC_SYSTICK_LOAD_REG = ( configSYSTICK_CLOCK_HZ / configTICK_RATE_HZ ) - 1UL;
vPortSetupTimerInterrupt:
        LDR.N    R0,??vPortSetupTimerInterrupt_0
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        UDIV     R0,R0,R1
        SUBS     R0,R0,#+1
        LDR.N    R1,??vPortSetupTimerInterrupt_0+0x4  ;; 0xe000e014
        STR      R0,[R1, #+0]
//  581 	portNVIC_SYSTICK_CTRL_REG = ( portNVIC_SYSTICK_CLK_BIT | portNVIC_SYSTICK_INT_BIT | portNVIC_SYSTICK_ENABLE_BIT );
        MOVS     R0,#+7
        LDR.N    R1,??vPortSetupTimerInterrupt_0+0x8  ;; 0xe000e010
        STR      R0,[R1, #+0]
//  582 }
        BX       LR               ;; return
        DATA
??vPortSetupTimerInterrupt_0:
        DATA32
        DC32     SystemCoreClock
        DC32     0xe000e014
        DC32     0xe000e010
          CFI EndBlock cfiBlock8

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  583 /*-----------------------------------------------------------*/
//  584 
//  585 #if( configASSERT_DEFINED == 1 )
//  586 
//  587 	void vPortValidateInterruptPriority( void )
//  588 	{
//  589 	uint32_t ulCurrentInterrupt;
//  590 	uint8_t ucCurrentPriority;
//  591 
//  592 		/* Obtain the number of the currently executing interrupt. */
//  593 		__asm volatile( "mrs %0, ipsr" : "=r"( ulCurrentInterrupt ) );
//  594 
//  595 		/* Is the interrupt number a user defined interrupt? */
//  596 		if( ulCurrentInterrupt >= portFIRST_USER_INTERRUPT_NUMBER )
//  597 		{
//  598 			/* Look up the interrupt's priority. */
//  599 			ucCurrentPriority = pcInterruptPriorityRegisters[ ulCurrentInterrupt ];
//  600 
//  601 			/* The following assertion will fail if a service routine (ISR) for
//  602 			an interrupt that has been assigned a priority above
//  603 			configMAX_SYSCALL_INTERRUPT_PRIORITY calls an ISR safe FreeRTOS API
//  604 			function.  ISR safe FreeRTOS API functions must *only* be called
//  605 			from interrupts that have been assigned a priority at or below
//  606 			configMAX_SYSCALL_INTERRUPT_PRIORITY.
//  607 
//  608 			Numerically low interrupt priority numbers represent logically high
//  609 			interrupt priorities, therefore the priority of the interrupt must
//  610 			be set to a value equal to or numerically *higher* than
//  611 			configMAX_SYSCALL_INTERRUPT_PRIORITY.
//  612 
//  613 			Interrupts that	use the FreeRTOS API must not be left at their
//  614 			default priority of	zero as that is the highest possible priority,
//  615 			which is guaranteed to be above configMAX_SYSCALL_INTERRUPT_PRIORITY,
//  616 			and	therefore also guaranteed to be invalid.
//  617 
//  618 			FreeRTOS maintains separate thread and ISR API functions to ensure
//  619 			interrupt entry is as fast and simple as possible.
//  620 
//  621 			The following links provide detailed information:
//  622 			http://www.freertos.org/RTOS-Cortex-M3-M4.html
//  623 			http://www.freertos.org/FAQHelp.html */
//  624 			configASSERT( ucCurrentPriority >= ucMaxSysCallPriority );
//  625 		}
//  626 
//  627 		/* Priority grouping:  The interrupt controller (NVIC) allows the bits
//  628 		that define each interrupt's priority to be split between bits that
//  629 		define the interrupt's pre-emption priority bits and bits that define
//  630 		the interrupt's sub-priority.  For simplicity all bits must be defined
//  631 		to be pre-emption priority bits.  The following assertion will fail if
//  632 		this is not the case (if some bits represent a sub-priority).
//  633 
//  634 		If the application only uses CMSIS libraries for interrupt
//  635 		configuration then the correct setting can be achieved on all Cortex-M
//  636 		devices by calling NVIC_SetPriorityGrouping( 0 ); before starting the
//  637 		scheduler.  Note however that some vendor specific peripheral libraries
//  638 		assume a non-zero priority group setting, in which cases using a value
//  639 		of zero will result in unpredicable behaviour. */
//  640 		configASSERT( ( portAIRCR_REG & portPRIORITY_GROUP_MASK ) <= ulMaxPRIGROUPValue );
//  641 	}
//  642 
//  643 #endif /* configASSERT_DEFINED */
//  644 
//  645 
//  646 
//  647 
//  648 
//  649 
//  650 
//  651 
//  652 
//  653 
//  654 
//  655 
//  656 
//  657 
//  658 
//  659 
//  660 
//  661 
//  662 
//  663 
//  664 
// 
//   5 bytes in section .bss
//   4 bytes in section .data
//   4 bytes in section .rodata
// 386 bytes in section .text
// 
// 350 bytes of CODE  memory (+ 36 bytes shared)
//   4 bytes of CONST memory
//   9 bytes of DATA  memory
//
//Errors: none
//Warnings: none
