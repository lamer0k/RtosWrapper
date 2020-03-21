///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.40.2.214/W32 for ARM        21/Mar/2020  14:05:06
// Copyright 1999-2019 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  C:\GitHub\RtosWrapper\Rtos\FreeRtos\event_groups.c
//    Command line =
//        -f C:\Users\Serge\AppData\Local\Temp\EW66F6.tmp
//        (C:\GitHub\RtosWrapper\Rtos\FreeRtos\event_groups.c -lC
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
//        C:\GitHub\RtosWrapper\..\CortexLib\Common\RomObject\ -Ol)
//    Locale       =  C
//    List file    =  C:\GitHub\RtosWrapper\Debug\List\event_groups.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_full_locale_support", "0"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN uxTaskResetEventItemValue
        EXTERN vListInitialise
        EXTERN vPortEnterCritical
        EXTERN vPortExitCritical
        EXTERN vTaskPlaceOnUnorderedEventList
        EXTERN vTaskSuspendAll
        EXTERN xTaskGetSchedulerState
        EXTERN xTaskRemoveFromUnorderedEventList
        EXTERN xTaskResumeAll

        PUBLIC vEventGroupClearBitsCallback
        PUBLIC vEventGroupDelete
        PUBLIC vEventGroupSetBitsCallback
        PUBLIC xEventGroupClearBits
        PUBLIC xEventGroupCreateStatic
        PUBLIC xEventGroupGetBitsFromISR
        PUBLIC xEventGroupSetBits
        PUBLIC xEventGroupSync
        PUBLIC xEventGroupWaitBits
        
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
        
// C:\GitHub\RtosWrapper\Rtos\FreeRtos\event_groups.c
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
//   70 /* Standard includes. */
//   71 #include <stdlib.h>
//   72 
//   73 /* Defining MPU_WRAPPERS_INCLUDED_FROM_API_FILE prevents task.h from redefining
//   74 all the API functions to use the MPU wrappers.  That should only be done when
//   75 task.h is included from an application file. */
//   76 #define MPU_WRAPPERS_INCLUDED_FROM_API_FILE
//   77 
//   78 /* FreeRTOS includes. */
//   79 #include "FreeRTOS.h"
//   80 #include "task.h"
//   81 #include "timers.h"
//   82 #include "event_groups.h"
//   83 
//   84 /* Lint e961 and e750 are suppressed as a MISRA exception justified because the
//   85 MPU ports require MPU_WRAPPERS_INCLUDED_FROM_API_FILE to be defined for the
//   86 header files above, but not in this file, in order to generate the correct
//   87 privileged Vs unprivileged linkage and placement. */
//   88 #undef MPU_WRAPPERS_INCLUDED_FROM_API_FILE /*lint !e961 !e750. */
//   89 
//   90 /* The following bit fields convey control information in a task's event list
//   91 item value.  It is important they don't clash with the
//   92 taskEVENT_LIST_ITEM_VALUE_IN_USE definition. */
//   93 #if configUSE_16_BIT_TICKS == 1
//   94 	#define eventCLEAR_EVENTS_ON_EXIT_BIT	0x0100U
//   95 	#define eventUNBLOCKED_DUE_TO_BIT_SET	0x0200U
//   96 	#define eventWAIT_FOR_ALL_BITS			0x0400U
//   97 	#define eventEVENT_BITS_CONTROL_BYTES	0xff00U
//   98 #else
//   99 	#define eventCLEAR_EVENTS_ON_EXIT_BIT	0x01000000UL
//  100 	#define eventUNBLOCKED_DUE_TO_BIT_SET	0x02000000UL
//  101 	#define eventWAIT_FOR_ALL_BITS			0x04000000UL
//  102 	#define eventEVENT_BITS_CONTROL_BYTES	0xff000000UL
//  103 #endif
//  104 
//  105 typedef struct xEventGroupDefinition
//  106 {
//  107 	EventBits_t uxEventBits;
//  108 	List_t xTasksWaitingForBits;		/*< List of tasks waiting for a bit to be set. */
//  109 
//  110 	#if( configUSE_TRACE_FACILITY == 1 )
//  111 		UBaseType_t uxEventGroupNumber;
//  112 	#endif
//  113 
//  114 	#if( ( configSUPPORT_STATIC_ALLOCATION == 1 ) && ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) )
//  115 		uint8_t ucStaticallyAllocated; /*< Set to pdTRUE if the event group is statically allocated to ensure no attempt is made to free the memory. */
//  116 	#endif
//  117 } EventGroup_t;
//  118 
//  119 /*-----------------------------------------------------------*/
//  120 
//  121 /*
//  122  * Test the bits set in uxCurrentEventBits to see if the wait condition is met.
//  123  * The wait condition is defined by xWaitForAllBits.  If xWaitForAllBits is
//  124  * pdTRUE then the wait condition is met if all the bits set in uxBitsToWaitFor
//  125  * are also set in uxCurrentEventBits.  If xWaitForAllBits is pdFALSE then the
//  126  * wait condition is met if any of the bits set in uxBitsToWait for are also set
//  127  * in uxCurrentEventBits.
//  128  */
//  129 static BaseType_t prvTestWaitCondition( const EventBits_t uxCurrentEventBits, const EventBits_t uxBitsToWaitFor, const BaseType_t xWaitForAllBits ) PRIVILEGED_FUNCTION;
//  130 
//  131 /*-----------------------------------------------------------*/
//  132 
//  133 #if( configSUPPORT_STATIC_ALLOCATION == 1 )
//  134 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function xEventGroupCreateStatic
        THUMB
//  135 	EventGroupHandle_t xEventGroupCreateStatic( StaticEventGroup_t *pxEventGroupBuffer )
//  136 	{
xEventGroupCreateStatic:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  137 	EventGroup_t *pxEventBits;
//  138 
//  139 		/* A StaticEventGroup_t object must be provided. */
//  140 		configASSERT( pxEventGroupBuffer );
//  141 
//  142 		/* The user has provided a statically allocated event group - use it. */
//  143 		pxEventBits = ( EventGroup_t * ) pxEventGroupBuffer; /*lint !e740 EventGroup_t and StaticEventGroup_t are guaranteed to have the same size and alignment requirement - checked by configASSERT(). */
//  144 
//  145 		if( pxEventBits != NULL )
        CMP      R4,#+0
        BEQ.N    ??xEventGroupCreateStatic_0
//  146 		{
//  147 			pxEventBits->uxEventBits = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//  148 			vListInitialise( &( pxEventBits->xTasksWaitingForBits ) );
        ADDS     R0,R4,#+4
          CFI FunCall vListInitialise
        BL       vListInitialise
//  149 
//  150 			#if( configSUPPORT_DYNAMIC_ALLOCATION == 1 )
//  151 			{
//  152 				/* Both static and dynamic allocation can be used, so note that
//  153 				this event group was created statically in case the event group
//  154 				is later deleted. */
//  155 				pxEventBits->ucStaticallyAllocated = pdTRUE;
//  156 			}
//  157 			#endif /* configSUPPORT_DYNAMIC_ALLOCATION */
//  158 
//  159 			traceEVENT_GROUP_CREATE( pxEventBits );
//  160 		}
//  161 		else
//  162 		{
//  163 			traceEVENT_GROUP_CREATE_FAILED();
//  164 		}
//  165 
//  166 		return ( EventGroupHandle_t ) pxEventBits;
??xEventGroupCreateStatic_0:
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
//  167 	}
          CFI EndBlock cfiBlock0
//  168 
//  169 #endif /* configSUPPORT_STATIC_ALLOCATION */
//  170 /*-----------------------------------------------------------*/
//  171 
//  172 #if( configSUPPORT_DYNAMIC_ALLOCATION == 1 )
//  173 
//  174 	EventGroupHandle_t xEventGroupCreate( void )
//  175 	{
//  176 	EventGroup_t *pxEventBits;
//  177 
//  178 		/* Allocate the event group. */
//  179 		pxEventBits = ( EventGroup_t * ) pvPortMalloc( sizeof( EventGroup_t ) );
//  180 
//  181 		if( pxEventBits != NULL )
//  182 		{
//  183 			pxEventBits->uxEventBits = 0;
//  184 			vListInitialise( &( pxEventBits->xTasksWaitingForBits ) );
//  185 
//  186 			#if( configSUPPORT_STATIC_ALLOCATION == 1 )
//  187 			{
//  188 				/* Both static and dynamic allocation can be used, so note this
//  189 				event group was allocated statically in case the event group is
//  190 				later deleted. */
//  191 				pxEventBits->ucStaticallyAllocated = pdFALSE;
//  192 			}
//  193 			#endif /* configSUPPORT_STATIC_ALLOCATION */
//  194 
//  195 			traceEVENT_GROUP_CREATE( pxEventBits );
//  196 		}
//  197 		else
//  198 		{
//  199 			traceEVENT_GROUP_CREATE_FAILED();
//  200 		}
//  201 
//  202 		return ( EventGroupHandle_t ) pxEventBits;
//  203 	}
//  204 
//  205 #endif /* configSUPPORT_DYNAMIC_ALLOCATION */
//  206 /*-----------------------------------------------------------*/
//  207 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function xEventGroupSync
        THUMB
//  208 EventBits_t xEventGroupSync( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet, const EventBits_t uxBitsToWaitFor, TickType_t xTicksToWait )
//  209 {
xEventGroupSync:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOV      R8,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R4,R3
//  210 EventBits_t uxOriginalBitValue, uxReturn;
//  211 EventGroup_t *pxEventBits = ( EventGroup_t * ) xEventGroup;
        MOV      R7,R8
//  212 BaseType_t xAlreadyYielded;
//  213 BaseType_t xTimeoutOccurred = pdFALSE;
        MOVS     R0,#+0
//  214 
//  215 	configASSERT( ( uxBitsToWaitFor & eventEVENT_BITS_CONTROL_BYTES ) == 0 );
//  216 	configASSERT( uxBitsToWaitFor != 0 );
//  217 	#if ( ( INCLUDE_xTaskGetSchedulerState == 1 ) || ( configUSE_TIMERS == 1 ) )
//  218 	{
//  219 		configASSERT( !( ( xTaskGetSchedulerState() == taskSCHEDULER_SUSPENDED ) && ( xTicksToWait != 0 ) ) );
          CFI FunCall xTaskGetSchedulerState
        BL       xTaskGetSchedulerState
        CMP      R0,#+0
        BNE.N    ??xEventGroupSync_0
        CMP      R4,#+0
        BNE.N    ??xEventGroupSync_1
??xEventGroupSync_0:
        MOVS     R0,#+1
        B.N      ??xEventGroupSync_2
??xEventGroupSync_1:
        MOVS     R0,#+0
//  220 	}
//  221 	#endif
//  222 
//  223 	vTaskSuspendAll();
??xEventGroupSync_2:
          CFI FunCall vTaskSuspendAll
        BL       vTaskSuspendAll
//  224 	{
//  225 		uxOriginalBitValue = pxEventBits->uxEventBits;
        LDR      R9,[R7, #+0]
//  226 
//  227 		( void ) xEventGroupSetBits( xEventGroup, uxBitsToSet );
        MOVS     R1,R5
        MOV      R0,R8
          CFI FunCall xEventGroupSetBits
        BL       xEventGroupSetBits
//  228 
//  229 		if( ( ( uxOriginalBitValue | uxBitsToSet ) & uxBitsToWaitFor ) == uxBitsToWaitFor )
        ORRS     R0,R5,R9
        ANDS     R0,R6,R0
        CMP      R0,R6
        BNE.N    ??xEventGroupSync_3
//  230 		{
//  231 			/* All the rendezvous bits are now set - no need to block. */
//  232 			uxReturn = ( uxOriginalBitValue | uxBitsToSet );
        ORRS     R5,R5,R9
//  233 
//  234 			/* Rendezvous always clear the bits.  They will have been cleared
//  235 			already unless this is the only task in the rendezvous. */
//  236 			pxEventBits->uxEventBits &= ~uxBitsToWaitFor;
        LDR      R0,[R7, #+0]
        BICS     R0,R0,R6
        STR      R0,[R7, #+0]
//  237 
//  238 			xTicksToWait = 0;
        MOVS     R4,#+0
        B.N      ??xEventGroupSync_4
//  239 		}
//  240 		else
//  241 		{
//  242 			if( xTicksToWait != ( TickType_t ) 0 )
??xEventGroupSync_3:
        CMP      R4,#+0
        BEQ.N    ??xEventGroupSync_5
//  243 			{
//  244 				traceEVENT_GROUP_SYNC_BLOCK( xEventGroup, uxBitsToSet, uxBitsToWaitFor );
//  245 
//  246 				/* Store the bits that the calling task is waiting for in the
//  247 				task's event list item so the kernel knows when a match is
//  248 				found.  Then enter the blocked state. */
//  249 				vTaskPlaceOnUnorderedEventList( &( pxEventBits->xTasksWaitingForBits ), ( uxBitsToWaitFor | eventCLEAR_EVENTS_ON_EXIT_BIT | eventWAIT_FOR_ALL_BITS ), xTicksToWait );
        MOVS     R2,R4
        ORRS     R1,R6,#0x5000000
        ADDS     R0,R7,#+4
          CFI FunCall vTaskPlaceOnUnorderedEventList
        BL       vTaskPlaceOnUnorderedEventList
//  250 
//  251 				/* This assignment is obsolete as uxReturn will get set after
//  252 				the task unblocks, but some compilers mistakenly generate a
//  253 				warning about uxReturn being returned without being set if the
//  254 				assignment is omitted. */
//  255 				uxReturn = 0;
        MOVS     R5,#+0
        B.N      ??xEventGroupSync_4
//  256 			}
//  257 			else
//  258 			{
//  259 				/* The rendezvous bits were not set, but no block time was
//  260 				specified - just return the current event bit value. */
//  261 				uxReturn = pxEventBits->uxEventBits;
??xEventGroupSync_5:
        LDR      R5,[R7, #+0]
//  262 			}
//  263 		}
//  264 	}
//  265 	xAlreadyYielded = xTaskResumeAll();
??xEventGroupSync_4:
          CFI FunCall xTaskResumeAll
        BL       xTaskResumeAll
//  266 
//  267 	if( xTicksToWait != ( TickType_t ) 0 )
        CMP      R4,#+0
        BEQ.N    ??xEventGroupSync_6
//  268 	{
//  269 		if( xAlreadyYielded == pdFALSE )
        CMP      R0,#+0
        BNE.N    ??xEventGroupSync_7
//  270 		{
//  271 			portYIELD_WITHIN_API();
        MOVS     R0,#+268435456
        LDR.N    R1,??DataTable2  ;; 0xe000ed04
        STR      R0,[R1, #+0]
        DSB      SY
        ISB      SY
//  272 		}
//  273 		else
//  274 		{
//  275 			mtCOVERAGE_TEST_MARKER();
//  276 		}
//  277 
//  278 		/* The task blocked to wait for its required bits to be set - at this
//  279 		point either the required bits were set or the block time expired.  If
//  280 		the required bits were set they will have been stored in the task's
//  281 		event list item, and they should now be retrieved then cleared. */
//  282 		uxReturn = uxTaskResetEventItemValue();
??xEventGroupSync_7:
          CFI FunCall uxTaskResetEventItemValue
        BL       uxTaskResetEventItemValue
        MOVS     R5,R0
//  283 
//  284 		if( ( uxReturn & eventUNBLOCKED_DUE_TO_BIT_SET ) == ( EventBits_t ) 0 )
        LSLS     R0,R5,#+6
        BMI.N    ??xEventGroupSync_8
//  285 		{
//  286 			/* The task timed out, just return the current event bit value. */
//  287 			taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
//  288 			{
//  289 				uxReturn = pxEventBits->uxEventBits;
        LDR      R5,[R7, #+0]
//  290 
//  291 				/* Although the task got here because it timed out before the
//  292 				bits it was waiting for were set, it is possible that since it
//  293 				unblocked another task has set the bits.  If this is the case
//  294 				then it needs to clear the bits before exiting. */
//  295 				if( ( uxReturn & uxBitsToWaitFor ) == uxBitsToWaitFor )
        ANDS     R0,R6,R5
        CMP      R0,R6
        BNE.N    ??xEventGroupSync_9
//  296 				{
//  297 					pxEventBits->uxEventBits &= ~uxBitsToWaitFor;
        LDR      R0,[R7, #+0]
        BICS     R6,R0,R6
        STR      R6,[R7, #+0]
//  298 				}
//  299 				else
//  300 				{
//  301 					mtCOVERAGE_TEST_MARKER();
//  302 				}
//  303 			}
//  304 			taskEXIT_CRITICAL();
??xEventGroupSync_9:
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
//  305 
//  306 			xTimeoutOccurred = pdTRUE;
        MOVS     R0,#+1
//  307 		}
//  308 		else
//  309 		{
//  310 			/* The task unblocked because the bits were set. */
//  311 		}
//  312 
//  313 		/* Control bits might be set as the task had blocked should not be
//  314 		returned. */
//  315 		uxReturn &= ~eventEVENT_BITS_CONTROL_BYTES;
??xEventGroupSync_8:
        BIC      R5,R5,#0xFF000000
//  316 	}
//  317 
//  318 	traceEVENT_GROUP_SYNC_END( xEventGroup, uxBitsToSet, uxBitsToWaitFor, xTimeoutOccurred );
//  319 
//  320 	return uxReturn;
??xEventGroupSync_6:
        MOVS     R0,R5
        POP      {R1,R4-R9,PC}    ;; return
//  321 }
          CFI EndBlock cfiBlock1
//  322 /*-----------------------------------------------------------*/
//  323 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function xEventGroupWaitBits
        THUMB
//  324 EventBits_t xEventGroupWaitBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToWaitFor, const BaseType_t xClearOnExit, const BaseType_t xWaitForAllBits, TickType_t xTicksToWait )
//  325 {
xEventGroupWaitBits:
        PUSH     {R4-R10,LR}
          CFI R14 Frame(CFA, -4)
          CFI R10 Frame(CFA, -8)
          CFI R9 Frame(CFA, -12)
          CFI R8 Frame(CFA, -16)
          CFI R7 Frame(CFA, -20)
          CFI R6 Frame(CFA, -24)
          CFI R5 Frame(CFA, -28)
          CFI R4 Frame(CFA, -32)
          CFI CFA R13+32
        MOV      R8,R1
        MOVS     R5,R2
        MOVS     R6,R3
        LDR      R4,[SP, #+32]
//  326 EventGroup_t *pxEventBits = ( EventGroup_t * ) xEventGroup;
        MOVS     R7,R0
//  327 EventBits_t uxReturn, uxControlBits = 0;
        MOVS     R10,#+0
//  328 BaseType_t xWaitConditionMet, xAlreadyYielded;
//  329 BaseType_t xTimeoutOccurred = pdFALSE;
        MOVS     R0,#+0
//  330 
//  331 	/* Check the user is not attempting to wait on the bits used by the kernel
//  332 	itself, and that at least one bit is being requested. */
//  333 	configASSERT( xEventGroup );
//  334 	configASSERT( ( uxBitsToWaitFor & eventEVENT_BITS_CONTROL_BYTES ) == 0 );
//  335 	configASSERT( uxBitsToWaitFor != 0 );
//  336 	#if ( ( INCLUDE_xTaskGetSchedulerState == 1 ) || ( configUSE_TIMERS == 1 ) )
//  337 	{
//  338 		configASSERT( !( ( xTaskGetSchedulerState() == taskSCHEDULER_SUSPENDED ) && ( xTicksToWait != 0 ) ) );
          CFI FunCall xTaskGetSchedulerState
        BL       xTaskGetSchedulerState
        CMP      R0,#+0
        BNE.N    ??xEventGroupWaitBits_0
        CMP      R4,#+0
        BNE.N    ??xEventGroupWaitBits_1
??xEventGroupWaitBits_0:
        MOVS     R0,#+1
        B.N      ??xEventGroupWaitBits_2
??xEventGroupWaitBits_1:
        MOVS     R0,#+0
//  339 	}
//  340 	#endif
//  341 
//  342 	vTaskSuspendAll();
??xEventGroupWaitBits_2:
          CFI FunCall vTaskSuspendAll
        BL       vTaskSuspendAll
//  343 	{
//  344 		const EventBits_t uxCurrentEventBits = pxEventBits->uxEventBits;
        LDR      R9,[R7, #+0]
//  345 
//  346 		/* Check to see if the wait condition is already met or not. */
//  347 		xWaitConditionMet = prvTestWaitCondition( uxCurrentEventBits, uxBitsToWaitFor, xWaitForAllBits );
        MOVS     R2,R6
        MOV      R1,R8
        MOV      R0,R9
          CFI FunCall prvTestWaitCondition
        BL       prvTestWaitCondition
//  348 
//  349 		if( xWaitConditionMet != pdFALSE )
        CMP      R0,#+0
        BEQ.N    ??xEventGroupWaitBits_3
//  350 		{
//  351 			/* The wait condition has already been met so there is no need to
//  352 			block. */
//  353 			uxReturn = uxCurrentEventBits;
//  354 			xTicksToWait = ( TickType_t ) 0;
        MOVS     R4,#+0
//  355 
//  356 			/* Clear the wait bits if requested to do so. */
//  357 			if( xClearOnExit != pdFALSE )
        CMP      R5,#+0
        BEQ.N    ??xEventGroupWaitBits_4
//  358 			{
//  359 				pxEventBits->uxEventBits &= ~uxBitsToWaitFor;
        LDR      R0,[R7, #+0]
        BICS     R0,R0,R8
        STR      R0,[R7, #+0]
        B.N      ??xEventGroupWaitBits_4
//  360 			}
//  361 			else
//  362 			{
//  363 				mtCOVERAGE_TEST_MARKER();
//  364 			}
//  365 		}
//  366 		else if( xTicksToWait == ( TickType_t ) 0 )
??xEventGroupWaitBits_3:
        CMP      R4,#+0
        BEQ.N    ??xEventGroupWaitBits_4
//  367 		{
//  368 			/* The wait condition has not been met, but no block time was
//  369 			specified, so just return the current value. */
//  370 			uxReturn = uxCurrentEventBits;
//  371 		}
//  372 		else
//  373 		{
//  374 			/* The task is going to block to wait for its required bits to be
//  375 			set.  uxControlBits are used to remember the specified behaviour of
//  376 			this call to xEventGroupWaitBits() - for use when the event bits
//  377 			unblock the task. */
//  378 			if( xClearOnExit != pdFALSE )
??xEventGroupWaitBits_5:
        CMP      R5,#+0
        BEQ.N    ??xEventGroupWaitBits_6
//  379 			{
//  380 				uxControlBits |= eventCLEAR_EVENTS_ON_EXIT_BIT;
        ORRS     R10,R10,#0x1000000
//  381 			}
//  382 			else
//  383 			{
//  384 				mtCOVERAGE_TEST_MARKER();
//  385 			}
//  386 
//  387 			if( xWaitForAllBits != pdFALSE )
??xEventGroupWaitBits_6:
        CMP      R6,#+0
        BEQ.N    ??xEventGroupWaitBits_7
//  388 			{
//  389 				uxControlBits |= eventWAIT_FOR_ALL_BITS;
        ORRS     R10,R10,#0x4000000
//  390 			}
//  391 			else
//  392 			{
//  393 				mtCOVERAGE_TEST_MARKER();
//  394 			}
//  395 
//  396 			/* Store the bits that the calling task is waiting for in the
//  397 			task's event list item so the kernel knows when a match is
//  398 			found.  Then enter the blocked state. */
//  399 			vTaskPlaceOnUnorderedEventList( &( pxEventBits->xTasksWaitingForBits ), ( uxBitsToWaitFor | uxControlBits ), xTicksToWait );
??xEventGroupWaitBits_7:
        MOVS     R2,R4
        ORRS     R10,R10,R8
        MOV      R1,R10
        ADDS     R0,R7,#+4
          CFI FunCall vTaskPlaceOnUnorderedEventList
        BL       vTaskPlaceOnUnorderedEventList
//  400 
//  401 			/* This is obsolete as it will get set after the task unblocks, but
//  402 			some compilers mistakenly generate a warning about the variable
//  403 			being returned without being set if it is not done. */
//  404 			uxReturn = 0;
        MOVS     R9,#+0
//  405 
//  406 			traceEVENT_GROUP_WAIT_BITS_BLOCK( xEventGroup, uxBitsToWaitFor );
//  407 		}
//  408 	}
//  409 	xAlreadyYielded = xTaskResumeAll();
??xEventGroupWaitBits_4:
          CFI FunCall xTaskResumeAll
        BL       xTaskResumeAll
//  410 
//  411 	if( xTicksToWait != ( TickType_t ) 0 )
        CMP      R4,#+0
        BEQ.N    ??xEventGroupWaitBits_8
//  412 	{
//  413 		if( xAlreadyYielded == pdFALSE )
        CMP      R0,#+0
        BNE.N    ??xEventGroupWaitBits_9
//  414 		{
//  415 			portYIELD_WITHIN_API();
        MOVS     R0,#+268435456
        LDR.N    R1,??DataTable2  ;; 0xe000ed04
        STR      R0,[R1, #+0]
        DSB      SY
        ISB      SY
//  416 		}
//  417 		else
//  418 		{
//  419 			mtCOVERAGE_TEST_MARKER();
//  420 		}
//  421 
//  422 		/* The task blocked to wait for its required bits to be set - at this
//  423 		point either the required bits were set or the block time expired.  If
//  424 		the required bits were set they will have been stored in the task's
//  425 		event list item, and they should now be retrieved then cleared. */
//  426 		uxReturn = uxTaskResetEventItemValue();
??xEventGroupWaitBits_9:
          CFI FunCall uxTaskResetEventItemValue
        BL       uxTaskResetEventItemValue
        MOV      R9,R0
//  427 
//  428 		if( ( uxReturn & eventUNBLOCKED_DUE_TO_BIT_SET ) == ( EventBits_t ) 0 )
        LSLS     R0,R9,#+6
        BMI.N    ??xEventGroupWaitBits_10
//  429 		{
//  430 			taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
//  431 			{
//  432 				/* The task timed out, just return the current event bit value. */
//  433 				uxReturn = pxEventBits->uxEventBits;
        LDR      R9,[R7, #+0]
//  434 
//  435 				/* It is possible that the event bits were updated between this
//  436 				task leaving the Blocked state and running again. */
//  437 				if( prvTestWaitCondition( uxReturn, uxBitsToWaitFor, xWaitForAllBits ) != pdFALSE )
        MOVS     R2,R6
        MOV      R1,R8
        MOV      R0,R9
          CFI FunCall prvTestWaitCondition
        BL       prvTestWaitCondition
        CMP      R0,#+0
        BEQ.N    ??xEventGroupWaitBits_11
//  438 				{
//  439 					if( xClearOnExit != pdFALSE )
        CMP      R5,#+0
        BEQ.N    ??xEventGroupWaitBits_11
//  440 					{
//  441 						pxEventBits->uxEventBits &= ~uxBitsToWaitFor;
        LDR      R0,[R7, #+0]
        BICS     R8,R0,R8
        STR      R8,[R7, #+0]
//  442 					}
//  443 					else
//  444 					{
//  445 						mtCOVERAGE_TEST_MARKER();
//  446 					}
//  447 				}
//  448 				else
//  449 				{
//  450 					mtCOVERAGE_TEST_MARKER();
//  451 				}
//  452 			}
//  453 			taskEXIT_CRITICAL();
??xEventGroupWaitBits_11:
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
//  454 
//  455 			/* Prevent compiler warnings when trace macros are not used. */
//  456 			xTimeoutOccurred = pdFALSE;
        MOVS     R0,#+0
//  457 		}
//  458 		else
//  459 		{
//  460 			/* The task unblocked because the bits were set. */
//  461 		}
//  462 
//  463 		/* The task blocked so control bits may have been set. */
//  464 		uxReturn &= ~eventEVENT_BITS_CONTROL_BYTES;
??xEventGroupWaitBits_10:
        BIC      R9,R9,#0xFF000000
//  465 	}
//  466 	traceEVENT_GROUP_WAIT_BITS_END( xEventGroup, uxBitsToWaitFor, xTimeoutOccurred );
//  467 
//  468 	return uxReturn;
??xEventGroupWaitBits_8:
        MOV      R0,R9
        POP      {R4-R10,PC}      ;; return
//  469 }
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DATA32
        DC32     0xe000ed04
//  470 /*-----------------------------------------------------------*/
//  471 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function xEventGroupClearBits
        THUMB
//  472 EventBits_t xEventGroupClearBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToClear )
//  473 {
xEventGroupClearBits:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  474 EventGroup_t *pxEventBits = ( EventGroup_t * ) xEventGroup;
//  475 EventBits_t uxReturn;
//  476 
//  477 	/* Check the user is not attempting to clear the bits used by the kernel
//  478 	itself. */
//  479 	configASSERT( xEventGroup );
//  480 	configASSERT( ( uxBitsToClear & eventEVENT_BITS_CONTROL_BYTES ) == 0 );
//  481 
//  482 	taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
//  483 	{
//  484 		traceEVENT_GROUP_CLEAR_BITS( xEventGroup, uxBitsToClear );
//  485 
//  486 		/* The value returned is the event group value prior to the bits being
//  487 		cleared. */
//  488 		uxReturn = pxEventBits->uxEventBits;
        LDR      R6,[R4, #+0]
//  489 
//  490 		/* Clear the bits. */
//  491 		pxEventBits->uxEventBits &= ~uxBitsToClear;
        LDR      R0,[R4, #+0]
        BICS     R5,R0,R5
        STR      R5,[R4, #+0]
//  492 	}
//  493 	taskEXIT_CRITICAL();
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
//  494 
//  495 	return uxReturn;
        MOVS     R0,R6
        POP      {R4-R6,PC}       ;; return
//  496 }
          CFI EndBlock cfiBlock3
//  497 /*-----------------------------------------------------------*/
//  498 
//  499 #if ( ( configUSE_TRACE_FACILITY == 1 ) && ( INCLUDE_xTimerPendFunctionCall == 1 ) && ( configUSE_TIMERS == 1 ) )
//  500 
//  501 	BaseType_t xEventGroupClearBitsFromISR( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToClear )
//  502 	{
//  503 		BaseType_t xReturn;
//  504 
//  505 		traceEVENT_GROUP_CLEAR_BITS_FROM_ISR( xEventGroup, uxBitsToClear );
//  506 		xReturn = xTimerPendFunctionCallFromISR( vEventGroupClearBitsCallback, ( void * ) xEventGroup, ( uint32_t ) uxBitsToClear, NULL );
//  507 
//  508 		return xReturn;
//  509 	}
//  510 
//  511 #endif
//  512 /*-----------------------------------------------------------*/
//  513 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function xEventGroupGetBitsFromISR
          CFI NoCalls
        THUMB
//  514 EventBits_t xEventGroupGetBitsFromISR( EventGroupHandle_t xEventGroup )
//  515 {
//  516 UBaseType_t uxSavedInterruptStatus;
//  517 EventGroup_t *pxEventBits = ( EventGroup_t * ) xEventGroup;
//  518 EventBits_t uxReturn;
//  519 
//  520 	uxSavedInterruptStatus = portSET_INTERRUPT_MASK_FROM_ISR();
xEventGroupGetBitsFromISR:
        MRS      R1,BASEPRI
        MOVS     R2,#+80
        MSR      BASEPRI,R2
        DSB      SY
        ISB      SY
//  521 	{
//  522 		uxReturn = pxEventBits->uxEventBits;
        LDR      R0,[R0, #+0]
//  523 	}
//  524 	portCLEAR_INTERRUPT_MASK_FROM_ISR( uxSavedInterruptStatus );
        MSR      BASEPRI,R1
//  525 
//  526 	return uxReturn;
        BX       LR               ;; return
//  527 }
          CFI EndBlock cfiBlock4
//  528 /*-----------------------------------------------------------*/
//  529 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function xEventGroupSetBits
        THUMB
//  530 EventBits_t xEventGroupSetBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet )
//  531 {
xEventGroupSetBits:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R7,R1
//  532 ListItem_t *pxListItem, *pxNext;
//  533 ListItem_t const *pxListEnd;
//  534 List_t *pxList;
//  535 EventBits_t uxBitsToClear = 0, uxBitsWaitedFor, uxControlBits;
        MOVS     R5,#+0
//  536 EventGroup_t *pxEventBits = ( EventGroup_t * ) xEventGroup;
//  537 BaseType_t xMatchFound = pdFALSE;
        MOVS     R0,#+0
//  538 
//  539 	/* Check the user is not attempting to set the bits used by the kernel
//  540 	itself. */
//  541 	configASSERT( xEventGroup );
//  542 	configASSERT( ( uxBitsToSet & eventEVENT_BITS_CONTROL_BYTES ) == 0 );
//  543 
//  544 	pxList = &( pxEventBits->xTasksWaitingForBits );
        ADDS     R8,R4,#+4
//  545 	pxListEnd = listGET_END_MARKER( pxList ); /*lint !e826 !e740 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
        ADDS     R6,R8,#+8
//  546 	vTaskSuspendAll();
          CFI FunCall vTaskSuspendAll
        BL       vTaskSuspendAll
//  547 	{
//  548 		traceEVENT_GROUP_SET_BITS( xEventGroup, uxBitsToSet );
//  549 
//  550 		pxListItem = listGET_HEAD_ENTRY( pxList );
        LDR      R2,[R8, #+12]
//  551 
//  552 		/* Set the bits. */
//  553 		pxEventBits->uxEventBits |= uxBitsToSet;
        LDR      R0,[R4, #+0]
        ORRS     R7,R7,R0
        STR      R7,[R4, #+0]
        B.N      ??xEventGroupSetBits_0
//  554 
//  555 		/* See if the new bit value should unblock any tasks. */
//  556 		while( pxListItem != pxListEnd )
//  557 		{
//  558 			pxNext = listGET_NEXT( pxListItem );
//  559 			uxBitsWaitedFor = listGET_LIST_ITEM_VALUE( pxListItem );
//  560 			xMatchFound = pdFALSE;
//  561 
//  562 			/* Split the bits waited for from the control bits. */
//  563 			uxControlBits = uxBitsWaitedFor & eventEVENT_BITS_CONTROL_BYTES;
//  564 			uxBitsWaitedFor &= ~eventEVENT_BITS_CONTROL_BYTES;
//  565 
//  566 			if( ( uxControlBits & eventWAIT_FOR_ALL_BITS ) == ( EventBits_t ) 0 )
//  567 			{
//  568 				/* Just looking for single bit being set. */
//  569 				if( ( uxBitsWaitedFor & pxEventBits->uxEventBits ) != ( EventBits_t ) 0 )
//  570 				{
//  571 					xMatchFound = pdTRUE;
//  572 				}
//  573 				else
//  574 				{
//  575 					mtCOVERAGE_TEST_MARKER();
//  576 				}
//  577 			}
//  578 			else if( ( uxBitsWaitedFor & pxEventBits->uxEventBits ) == uxBitsWaitedFor )
??xEventGroupSetBits_1:
        LDR      R12,[R4, #+0]
        ANDS     R12,R12,R1
        CMP      R12,R1
        BNE.N    ??xEventGroupSetBits_2
//  579 			{
//  580 				/* All bits are set. */
//  581 				xMatchFound = pdTRUE;
        MOVS     R0,#+1
        B.N      ??xEventGroupSetBits_2
//  582 			}
??xEventGroupSetBits_3:
        LDR      R7,[R2, #+4]
        LDR      R1,[R2, #+0]
        MOVS     R0,#+0
        ANDS     R3,R1,#0xFF000000
        BIC      R1,R1,#0xFF000000
        LSLS     R12,R3,#+5
        BMI.N    ??xEventGroupSetBits_1
        LDR      R12,[R4, #+0]
        TST      R1,R12
        BEQ.N    ??xEventGroupSetBits_2
        MOVS     R0,#+1
//  583 			else
//  584 			{
//  585 				/* Need all bits to be set, but not all the bits were set. */
//  586 			}
//  587 
//  588 			if( xMatchFound != pdFALSE )
??xEventGroupSetBits_2:
        CMP      R0,#+0
        BEQ.N    ??xEventGroupSetBits_4
//  589 			{
//  590 				/* The bits match.  Should the bits be cleared on exit? */
//  591 				if( ( uxControlBits & eventCLEAR_EVENTS_ON_EXIT_BIT ) != ( EventBits_t ) 0 )
        LSLS     R0,R3,#+7
        BPL.N    ??xEventGroupSetBits_5
//  592 				{
//  593 					uxBitsToClear |= uxBitsWaitedFor;
        ORRS     R5,R1,R5
//  594 				}
//  595 				else
//  596 				{
//  597 					mtCOVERAGE_TEST_MARKER();
//  598 				}
//  599 
//  600 				/* Store the actual event flag value in the task's event list
//  601 				item before removing the task from the event list.  The
//  602 				eventUNBLOCKED_DUE_TO_BIT_SET bit is set so the task knows
//  603 				that is was unblocked due to its required bits matching, rather
//  604 				than because it timed out. */
//  605 				( void ) xTaskRemoveFromUnorderedEventList( pxListItem, pxEventBits->uxEventBits | eventUNBLOCKED_DUE_TO_BIT_SET );
??xEventGroupSetBits_5:
        LDR      R1,[R4, #+0]
        ORRS     R1,R1,#0x2000000
        MOVS     R0,R2
          CFI FunCall xTaskRemoveFromUnorderedEventList
        BL       xTaskRemoveFromUnorderedEventList
//  606 			}
//  607 
//  608 			/* Move onto the next list item.  Note pxListItem->pxNext is not
//  609 			used here as the list item may have been removed from the event list
//  610 			and inserted into the ready/pending reading list. */
//  611 			pxListItem = pxNext;
??xEventGroupSetBits_4:
        MOVS     R2,R7
//  612 		}
??xEventGroupSetBits_0:
        CMP      R2,R6
        BNE.N    ??xEventGroupSetBits_3
//  613 
//  614 		/* Clear any bits that matched when the eventCLEAR_EVENTS_ON_EXIT_BIT
//  615 		bit was set in the control word. */
//  616 		pxEventBits->uxEventBits &= ~uxBitsToClear;
??xEventGroupSetBits_6:
        LDR      R0,[R4, #+0]
        BICS     R5,R0,R5
        STR      R5,[R4, #+0]
//  617 	}
//  618 	( void ) xTaskResumeAll();
          CFI FunCall xTaskResumeAll
        BL       xTaskResumeAll
//  619 
//  620 	return pxEventBits->uxEventBits;
        LDR      R0,[R4, #+0]
        POP      {R4-R8,PC}       ;; return
//  621 }
          CFI EndBlock cfiBlock5
//  622 /*-----------------------------------------------------------*/
//  623 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function vEventGroupDelete
        THUMB
//  624 void vEventGroupDelete( EventGroupHandle_t xEventGroup )
//  625 {
vEventGroupDelete:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  626 EventGroup_t *pxEventBits = ( EventGroup_t * ) xEventGroup;
//  627 const List_t *pxTasksWaitingForBits = &( pxEventBits->xTasksWaitingForBits );
        ADDS     R4,R0,#+4
//  628 
//  629 	vTaskSuspendAll();
          CFI FunCall vTaskSuspendAll
        BL       vTaskSuspendAll
        B.N      ??vEventGroupDelete_0
//  630 	{
//  631 		traceEVENT_GROUP_DELETE( xEventGroup );
//  632 
//  633 		while( listCURRENT_LIST_LENGTH( pxTasksWaitingForBits ) > ( UBaseType_t ) 0 )
//  634 		{
//  635 			/* Unblock the task, returning 0 as the event list is being deleted
//  636 			and	cannot therefore have any bits set. */
//  637 			configASSERT( pxTasksWaitingForBits->xListEnd.pxNext != ( ListItem_t * ) &( pxTasksWaitingForBits->xListEnd ) );
//  638 			( void ) xTaskRemoveFromUnorderedEventList( pxTasksWaitingForBits->xListEnd.pxNext, eventUNBLOCKED_DUE_TO_BIT_SET );
??vEventGroupDelete_1:
        MOVS     R1,#+33554432
        LDR      R0,[R4, #+12]
          CFI FunCall xTaskRemoveFromUnorderedEventList
        BL       xTaskRemoveFromUnorderedEventList
//  639 		}
??vEventGroupDelete_0:
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??vEventGroupDelete_1
//  640 
//  641 		#if( ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) && ( configSUPPORT_STATIC_ALLOCATION == 0 ) )
//  642 		{
//  643 			/* The event group can only have been allocated dynamically - free
//  644 			it again. */
//  645 			vPortFree( pxEventBits );
//  646 		}
//  647 		#elif( ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) && ( configSUPPORT_STATIC_ALLOCATION == 1 ) )
//  648 		{
//  649 			/* The event group could have been allocated statically or
//  650 			dynamically, so check before attempting to free the memory. */
//  651 			if( pxEventBits->ucStaticallyAllocated == ( uint8_t ) pdFALSE )
//  652 			{
//  653 				vPortFree( pxEventBits );
//  654 			}
//  655 			else
//  656 			{
//  657 				mtCOVERAGE_TEST_MARKER();
//  658 			}
//  659 		}
//  660 		#endif /* configSUPPORT_DYNAMIC_ALLOCATION */
//  661 	}
//  662 	( void ) xTaskResumeAll();
          CFI FunCall xTaskResumeAll
        BL       xTaskResumeAll
//  663 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock6
//  664 /*-----------------------------------------------------------*/
//  665 
//  666 /* For internal use only - execute a 'set bits' command that was pended from
//  667 an interrupt. */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function vEventGroupSetBitsCallback
        THUMB
//  668 void vEventGroupSetBitsCallback( void *pvEventGroup, const uint32_t ulBitsToSet )
//  669 {
vEventGroupSetBitsCallback:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  670 	( void ) xEventGroupSetBits( pvEventGroup, ( EventBits_t ) ulBitsToSet );
          CFI FunCall xEventGroupSetBits
        BL       xEventGroupSetBits
//  671 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock7
//  672 /*-----------------------------------------------------------*/
//  673 
//  674 /* For internal use only - execute a 'clear bits' command that was pended from
//  675 an interrupt. */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function vEventGroupClearBitsCallback
        THUMB
//  676 void vEventGroupClearBitsCallback( void *pvEventGroup, const uint32_t ulBitsToClear )
//  677 {
vEventGroupClearBitsCallback:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  678 	( void ) xEventGroupClearBits( pvEventGroup, ( EventBits_t ) ulBitsToClear );
          CFI FunCall xEventGroupClearBits
        BL       xEventGroupClearBits
//  679 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock8
//  680 /*-----------------------------------------------------------*/
//  681 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function prvTestWaitCondition
          CFI NoCalls
        THUMB
//  682 static BaseType_t prvTestWaitCondition( const EventBits_t uxCurrentEventBits, const EventBits_t uxBitsToWaitFor, const BaseType_t xWaitForAllBits )
//  683 {
prvTestWaitCondition:
        MOVS     R3,R0
//  684 BaseType_t xWaitConditionMet = pdFALSE;
        MOVS     R0,#+0
//  685 
//  686 	if( xWaitForAllBits == pdFALSE )
        CMP      R2,#+0
        BNE.N    ??prvTestWaitCondition_0
//  687 	{
//  688 		/* Task only has to wait for one bit within uxBitsToWaitFor to be
//  689 		set.  Is one already set? */
//  690 		if( ( uxCurrentEventBits & uxBitsToWaitFor ) != ( EventBits_t ) 0 )
        TST      R3,R1
        BEQ.N    ??prvTestWaitCondition_1
//  691 		{
//  692 			xWaitConditionMet = pdTRUE;
        MOVS     R0,#+1
        B.N      ??prvTestWaitCondition_1
//  693 		}
//  694 		else
//  695 		{
//  696 			mtCOVERAGE_TEST_MARKER();
//  697 		}
//  698 	}
//  699 	else
//  700 	{
//  701 		/* Task has to wait for all the bits in uxBitsToWaitFor to be set.
//  702 		Are they set already? */
//  703 		if( ( uxCurrentEventBits & uxBitsToWaitFor ) == uxBitsToWaitFor )
??prvTestWaitCondition_0:
        ANDS     R3,R1,R3
        CMP      R3,R1
        BNE.N    ??prvTestWaitCondition_1
//  704 		{
//  705 			xWaitConditionMet = pdTRUE;
        MOVS     R0,#+1
//  706 		}
//  707 		else
//  708 		{
//  709 			mtCOVERAGE_TEST_MARKER();
//  710 		}
//  711 	}
//  712 
//  713 	return xWaitConditionMet;
??prvTestWaitCondition_1:
        BX       LR               ;; return
//  714 }
          CFI EndBlock cfiBlock9

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  715 /*-----------------------------------------------------------*/
//  716 
//  717 #if ( ( configUSE_TRACE_FACILITY == 1 ) && ( INCLUDE_xTimerPendFunctionCall == 1 ) && ( configUSE_TIMERS == 1 ) )
//  718 
//  719 	BaseType_t xEventGroupSetBitsFromISR( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet, BaseType_t *pxHigherPriorityTaskWoken )
//  720 	{
//  721 	BaseType_t xReturn;
//  722 
//  723 		traceEVENT_GROUP_SET_BITS_FROM_ISR( xEventGroup, uxBitsToSet );
//  724 		xReturn = xTimerPendFunctionCallFromISR( vEventGroupSetBitsCallback, ( void * ) xEventGroup, ( uint32_t ) uxBitsToSet, pxHigherPriorityTaskWoken );
//  725 
//  726 		return xReturn;
//  727 	}
//  728 
//  729 #endif
//  730 /*-----------------------------------------------------------*/
//  731 
//  732 #if (configUSE_TRACE_FACILITY == 1)
//  733 
//  734 	UBaseType_t uxEventGroupGetNumber( void* xEventGroup )
//  735 	{
//  736 	UBaseType_t xReturn;
//  737 	EventGroup_t *pxEventBits = ( EventGroup_t * ) xEventGroup;
//  738 
//  739 		if( xEventGroup == NULL )
//  740 		{
//  741 			xReturn = 0;
//  742 		}
//  743 		else
//  744 		{
//  745 			xReturn = pxEventBits->uxEventGroupNumber;
//  746 		}
//  747 
//  748 		return xReturn;
//  749 	}
//  750 
//  751 #endif
//  752 
// 
// 662 bytes in section .text
// 
// 662 bytes of CODE memory
//
//Errors: none
//Warnings: none
