///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.40.2.214/W32 for ARM        21/Mar/2020  13:38:56
// Copyright 1999-2019 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  C:\GitHub\KursovoyKarkas\Rtos\FreeRtos\tasks.c
//    Command line =
//        -f C:\Users\Serge\AppData\Local\Temp\EW706E.tmp
//        (C:\GitHub\KursovoyKarkas\Rtos\FreeRtos\tasks.c -lC
//        C:\GitHub\KursovoyKarkas\Debug\List -lA
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
//    List file    =  C:\GitHub\KursovoyKarkas\Debug\List\tasks.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_full_locale_support", "0"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN pxPortInitialiseStack
        EXTERN uxListRemove
        EXTERN vListInitialise
        EXTERN vListInitialiseItem
        EXTERN vListInsert
        EXTERN vListInsertEnd
        EXTERN vPortEndScheduler
        EXTERN vPortEnterCritical
        EXTERN vPortExitCritical
        EXTERN vPortValidateInterruptPriority
        EXTERN xPortStartScheduler
        EXTERN xTimerCreateTimerTask

        PUBLIC pcTaskGetName
        PUBLIC pvTaskIncrementMutexHeldCount
        PUBLIC pxCurrentTCB
        PUBLIC ulTaskNotifyTake
        PUBLIC uxTaskGetNumberOfTasks
        PUBLIC uxTaskResetEventItemValue
        PUBLIC vApplicationGetIdleTaskMemory
        PUBLIC vApplicationGetTimerTaskMemory
        PUBLIC vTaskDelay
        PUBLIC vTaskDelayUntil
        PUBLIC vTaskEndScheduler
        PUBLIC vTaskMissedYield
        PUBLIC vTaskNotifyGiveFromISR
        PUBLIC vTaskPlaceOnEventList
        PUBLIC vTaskPlaceOnEventListRestricted
        PUBLIC vTaskPlaceOnUnorderedEventList
        PUBLIC vTaskPriorityInherit
        PUBLIC vTaskResume
        PUBLIC vTaskSetTimeOutState
        PUBLIC vTaskStartScheduler
        PUBLIC vTaskSuspend
        PUBLIC vTaskSuspendAll
        PUBLIC vTaskSwitchContext
        PUBLIC xTaskCheckForTimeOut
        PUBLIC xTaskCreateStatic
        PUBLIC xTaskGenericNotify
        PUBLIC xTaskGenericNotifyFromISR
        PUBLIC xTaskGetCurrentTaskHandle
        PUBLIC xTaskGetSchedulerState
        PUBLIC xTaskGetTickCount
        PUBLIC xTaskGetTickCountFromISR
        PUBLIC xTaskIncrementTick
        PUBLIC xTaskNotifyStateClear
        PUBLIC xTaskNotifyWait
        PUBLIC xTaskPriorityDisinherit
        PUBLIC xTaskRemoveFromEventList
        PUBLIC xTaskRemoveFromUnorderedEventList
        PUBLIC xTaskResumeAll
        PUBLIC xTaskResumeFromISR
        
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
        
// C:\GitHub\KursovoyKarkas\Rtos\FreeRtos\tasks.c
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
//   72 #include <string.h>
//   73 
//   74 /* Defining MPU_WRAPPERS_INCLUDED_FROM_API_FILE prevents task.h from redefining
//   75 all the API functions to use the MPU wrappers.  That should only be done when
//   76 task.h is included from an application file. */
//   77 #define MPU_WRAPPERS_INCLUDED_FROM_API_FILE
//   78 
//   79 /* FreeRTOS includes. */
//   80 #include "FreeRTOS.h"
//   81 #include "task.h"
//   82 #include "timers.h"
//   83 #include "StackMacros.h"
//   84 
//   85 /* Lint e961 and e750 are suppressed as a MISRA exception justified because the
//   86 MPU ports require MPU_WRAPPERS_INCLUDED_FROM_API_FILE to be defined for the
//   87 header files above, but not in this file, in order to generate the correct
//   88 privileged Vs unprivileged linkage and placement. */
//   89 #undef MPU_WRAPPERS_INCLUDED_FROM_API_FILE /*lint !e961 !e750. */
//   90 
//   91 /* Set configUSE_STATS_FORMATTING_FUNCTIONS to 2 to include the stats formatting
//   92 functions but without including stdio.h here. */
//   93 #if ( configUSE_STATS_FORMATTING_FUNCTIONS == 1 )
//   94 	/* At the bottom of this file are two optional functions that can be used
//   95 	to generate human readable text from the raw data generated by the
//   96 	uxTaskGetSystemState() function.  Note the formatting functions are provided
//   97 	for convenience only, and are NOT considered part of the kernel. */
//   98 	#include <stdio.h>
//   99 #endif /* configUSE_STATS_FORMATTING_FUNCTIONS == 1 ) */
//  100 
//  101 #if( configUSE_PREEMPTION == 0 )
//  102 	/* If the cooperative scheduler is being used then a yield should not be
//  103 	performed just because a higher priority task has been woken. */
//  104 	#define taskYIELD_IF_USING_PREEMPTION()
//  105 #else
//  106 	#define taskYIELD_IF_USING_PREEMPTION() portYIELD_WITHIN_API()
//  107 #endif
//  108 
//  109 /* Values that can be assigned to the ucNotifyState member of the TCB. */
//  110 #define taskNOT_WAITING_NOTIFICATION	( ( uint8_t ) 0 )
//  111 #define taskWAITING_NOTIFICATION		( ( uint8_t ) 1 )
//  112 #define taskNOTIFICATION_RECEIVED		( ( uint8_t ) 2 )
//  113 
//  114 /*
//  115  * The value used to fill the stack of a task when the task is created.  This
//  116  * is used purely for checking the high water mark for tasks.
//  117  */
//  118 #define tskSTACK_FILL_BYTE	( 0xa5U )
//  119 
//  120 /* Sometimes the FreeRTOSConfig.h settings only allow a task to be created using
//  121 dynamically allocated RAM, in which case when any task is deleted it is known
//  122 that both the task's stack and TCB need to be freed.  Sometimes the
//  123 FreeRTOSConfig.h settings only allow a task to be created using statically
//  124 allocated RAM, in which case when any task is deleted it is known that neither
//  125 the task's stack or TCB should be freed.  Sometimes the FreeRTOSConfig.h
//  126 settings allow a task to be created using either statically or dynamically
//  127 allocated RAM, in which case a member of the TCB is used to record whether the
//  128 stack and/or TCB were allocated statically or dynamically, so when a task is
//  129 deleted the RAM that was allocated dynamically is freed again and no attempt is
//  130 made to free the RAM that was allocated statically.
//  131 tskSTATIC_AND_DYNAMIC_ALLOCATION_POSSIBLE is only true if it is possible for a
//  132 task to be created using either statically or dynamically allocated RAM.  Note
//  133 that if portUSING_MPU_WRAPPERS is 1 then a protected task can be created with
//  134 a statically allocated stack and a dynamically allocated TCB. */
//  135 #define tskSTATIC_AND_DYNAMIC_ALLOCATION_POSSIBLE ( ( ( configSUPPORT_STATIC_ALLOCATION == 1 ) && ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) ) || ( portUSING_MPU_WRAPPERS == 1 ) )
//  136 #define tskDYNAMICALLY_ALLOCATED_STACK_AND_TCB 		( ( uint8_t ) 0 )
//  137 #define tskSTATICALLY_ALLOCATED_STACK_ONLY 			( ( uint8_t ) 1 )
//  138 #define tskSTATICALLY_ALLOCATED_STACK_AND_TCB		( ( uint8_t ) 2 )
//  139 
//  140 /*
//  141  * Macros used by vListTask to indicate which state a task is in.
//  142  */
//  143 #define tskBLOCKED_CHAR		( 'B' )
//  144 #define tskREADY_CHAR		( 'R' )
//  145 #define tskDELETED_CHAR		( 'D' )
//  146 #define tskSUSPENDED_CHAR	( 'S' )
//  147 
//  148 /*
//  149  * Some kernel aware debuggers require the data the debugger needs access to be
//  150  * global, rather than file scope.
//  151  */
//  152 #ifdef portREMOVE_STATIC_QUALIFIER
//  153 	#define static
//  154 #endif
//  155 
//  156 #if ( configUSE_PORT_OPTIMISED_TASK_SELECTION == 0 )
//  157 
//  158 	/* If configUSE_PORT_OPTIMISED_TASK_SELECTION is 0 then task selection is
//  159 	performed in a generic way that is not optimised to any particular
//  160 	microcontroller architecture. */
//  161 
//  162 	/* uxTopReadyPriority holds the priority of the highest priority ready
//  163 	state task. */
//  164 	#define taskRECORD_READY_PRIORITY( uxPriority )														\ 
//  165 	{																									\ 
//  166 		if( ( uxPriority ) > uxTopReadyPriority )														\ 
//  167 		{																								\ 
//  168 			uxTopReadyPriority = ( uxPriority );														\ 
//  169 		}																								\ 
//  170 	} /* taskRECORD_READY_PRIORITY */
//  171 
//  172 	/*-----------------------------------------------------------*/
//  173 
//  174 	#define taskSELECT_HIGHEST_PRIORITY_TASK()															\ 
//  175 	{																									\ 
//  176 	UBaseType_t uxTopPriority = uxTopReadyPriority;														\ 
//  177 																										\ 
//  178 		/* Find the highest priority queue that contains ready tasks. */								\ 
//  179 		while( listLIST_IS_EMPTY( &( pxReadyTasksLists[ uxTopPriority ] ) ) )							\ 
//  180 		{																								\ 
//  181 			configASSERT( uxTopPriority );																\ 
//  182 			--uxTopPriority;																			\ 
//  183 		}																								\ 
//  184 																										\ 
//  185 		/* listGET_OWNER_OF_NEXT_ENTRY indexes through the list, so the tasks of						\ 
//  186 		the	same priority get an equal share of the processor time. */									\ 
//  187 		listGET_OWNER_OF_NEXT_ENTRY( pxCurrentTCB, &( pxReadyTasksLists[ uxTopPriority ] ) );			\ 
//  188 		uxTopReadyPriority = uxTopPriority;																\ 
//  189 	} /* taskSELECT_HIGHEST_PRIORITY_TASK */
//  190 
//  191 	/*-----------------------------------------------------------*/
//  192 
//  193 	/* Define away taskRESET_READY_PRIORITY() and portRESET_READY_PRIORITY() as
//  194 	they are only required when a port optimised method of task selection is
//  195 	being used. */
//  196 	#define taskRESET_READY_PRIORITY( uxPriority )
//  197 	#define portRESET_READY_PRIORITY( uxPriority, uxTopReadyPriority )
//  198 
//  199 #else /* configUSE_PORT_OPTIMISED_TASK_SELECTION */
//  200 
//  201 	/* If configUSE_PORT_OPTIMISED_TASK_SELECTION is 1 then task selection is
//  202 	performed in a way that is tailored to the particular microcontroller
//  203 	architecture being used. */
//  204 
//  205 	/* A port optimised version is provided.  Call the port defined macros. */
//  206 	#define taskRECORD_READY_PRIORITY( uxPriority )	portRECORD_READY_PRIORITY( uxPriority, uxTopReadyPriority )
//  207 
//  208 	/*-----------------------------------------------------------*/
//  209 
//  210 	#define taskSELECT_HIGHEST_PRIORITY_TASK()														\ 
//  211 	{																								\ 
//  212 	UBaseType_t uxTopPriority;																		\ 
//  213 																									\ 
//  214 		/* Find the highest priority list that contains ready tasks. */								\ 
//  215 		portGET_HIGHEST_PRIORITY( uxTopPriority, uxTopReadyPriority );								\ 
//  216 		configASSERT( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ uxTopPriority ] ) ) > 0 );		\ 
//  217 		listGET_OWNER_OF_NEXT_ENTRY( pxCurrentTCB, &( pxReadyTasksLists[ uxTopPriority ] ) );		\ 
//  218 	} /* taskSELECT_HIGHEST_PRIORITY_TASK() */
//  219 
//  220 	/*-----------------------------------------------------------*/
//  221 
//  222 	/* A port optimised version is provided, call it only if the TCB being reset
//  223 	is being referenced from a ready list.  If it is referenced from a delayed
//  224 	or suspended list then it won't be in a ready list. */
//  225 	#define taskRESET_READY_PRIORITY( uxPriority )														\ 
//  226 	{																									\ 
//  227 		if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ ( uxPriority ) ] ) ) == ( UBaseType_t ) 0 )	\ 
//  228 		{																								\ 
//  229 			portRESET_READY_PRIORITY( ( uxPriority ), ( uxTopReadyPriority ) );							\ 
//  230 		}																								\ 
//  231 	}
//  232 
//  233 #endif /* configUSE_PORT_OPTIMISED_TASK_SELECTION */
//  234 
//  235 /*-----------------------------------------------------------*/
//  236 
//  237 /* pxDelayedTaskList and pxOverflowDelayedTaskList are switched when the tick
//  238 count overflows. */
//  239 #define taskSWITCH_DELAYED_LISTS()																	\ 
//  240 {																									\ 
//  241 	List_t *pxTemp;																					\ 
//  242 																									\ 
//  243 	/* The delayed tasks list should be empty when the lists are switched. */						\ 
//  244 	configASSERT( ( listLIST_IS_EMPTY( pxDelayedTaskList ) ) );										\ 
//  245 																									\ 
//  246 	pxTemp = pxDelayedTaskList;																		\ 
//  247 	pxDelayedTaskList = pxOverflowDelayedTaskList;													\ 
//  248 	pxOverflowDelayedTaskList = pxTemp;																\ 
//  249 	xNumOfOverflows++;																				\ 
//  250 	prvResetNextTaskUnblockTime();																	\ 
//  251 }
//  252 
//  253 /*-----------------------------------------------------------*/
//  254 
//  255 /*
//  256  * Place the task represented by pxTCB into the appropriate ready list for
//  257  * the task.  It is inserted at the end of the list.
//  258  */
//  259 #define prvAddTaskToReadyList( pxTCB )																\ 
//  260 	traceMOVED_TASK_TO_READY_STATE( pxTCB );														\ 
//  261 	taskRECORD_READY_PRIORITY( ( pxTCB )->uxPriority );												\ 
//  262 	vListInsertEnd( &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xStateListItem ) ); \ 
//  263 	tracePOST_MOVED_TASK_TO_READY_STATE( pxTCB )
//  264 /*-----------------------------------------------------------*/
//  265 
//  266 /*
//  267  * Several functions take an TaskHandle_t parameter that can optionally be NULL,
//  268  * where NULL is used to indicate that the handle of the currently executing
//  269  * task should be used in place of the parameter.  This macro simply checks to
//  270  * see if the parameter is NULL and returns a pointer to the appropriate TCB.
//  271  */
//  272 #define prvGetTCBFromHandle( pxHandle ) ( ( ( pxHandle ) == NULL ) ? ( TCB_t * ) pxCurrentTCB : ( TCB_t * ) ( pxHandle ) )
//  273 
//  274 /* The item value of the event list item is normally used to hold the priority
//  275 of the task to which it belongs (coded to allow it to be held in reverse
//  276 priority order).  However, it is occasionally borrowed for other purposes.  It
//  277 is important its value is not updated due to a task priority change while it is
//  278 being used for another purpose.  The following bit definition is used to inform
//  279 the scheduler that the value should not be changed - in which case it is the
//  280 responsibility of whichever module is using the value to ensure it gets set back
//  281 to its original value when it is released. */
//  282 #if( configUSE_16_BIT_TICKS == 1 )
//  283 	#define taskEVENT_LIST_ITEM_VALUE_IN_USE	0x8000U
//  284 #else
//  285 	#define taskEVENT_LIST_ITEM_VALUE_IN_USE	0x80000000UL
//  286 #endif
//  287 
//  288 /*
//  289  * Task control block.  A task control block (TCB) is allocated for each task,
//  290  * and stores task state information, including a pointer to the task's context
//  291  * (the task's run time environment, including register values)
//  292  */
//  293 typedef struct tskTaskControlBlock
//  294 {
//  295 	volatile StackType_t	*pxTopOfStack;	/*< Points to the location of the last item placed on the tasks stack.  THIS MUST BE THE FIRST MEMBER OF THE TCB STRUCT. */
//  296 
//  297 	#if ( portUSING_MPU_WRAPPERS == 1 )
//  298 		xMPU_SETTINGS	xMPUSettings;		/*< The MPU settings are defined as part of the port layer.  THIS MUST BE THE SECOND MEMBER OF THE TCB STRUCT. */
//  299 	#endif
//  300 
//  301 	ListItem_t			xStateListItem;	/*< The list that the state list item of a task is reference from denotes the state of that task (Ready, Blocked, Suspended ). */
//  302 	ListItem_t			xEventListItem;		/*< Used to reference a task from an event list. */
//  303 	UBaseType_t			uxPriority;			/*< The priority of the task.  0 is the lowest priority. */
//  304 	StackType_t			*pxStack;			/*< Points to the start of the stack. */
//  305 	char				pcTaskName[ configMAX_TASK_NAME_LEN ];/*< Descriptive name given to the task when created.  Facilitates debugging only. */ /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
//  306 
//  307 	#if ( portSTACK_GROWTH > 0 )
//  308 		StackType_t		*pxEndOfStack;		/*< Points to the end of the stack on architectures where the stack grows up from low memory. */
//  309 	#endif
//  310 
//  311 	#if ( portCRITICAL_NESTING_IN_TCB == 1 )
//  312 		UBaseType_t		uxCriticalNesting;	/*< Holds the critical section nesting depth for ports that do not maintain their own count in the port layer. */
//  313 	#endif
//  314 
//  315 	#if ( configUSE_TRACE_FACILITY == 1 )
//  316 		UBaseType_t		uxTCBNumber;		/*< Stores a number that increments each time a TCB is created.  It allows debuggers to determine when a task has been deleted and then recreated. */
//  317 		UBaseType_t		uxTaskNumber;		/*< Stores a number specifically for use by third party trace code. */
//  318 	#endif
//  319 
//  320 	#if ( configUSE_MUTEXES == 1 )
//  321 		UBaseType_t		uxBasePriority;		/*< The priority last assigned to the task - used by the priority inheritance mechanism. */
//  322 		UBaseType_t		uxMutexesHeld;
//  323 	#endif
//  324 
//  325 	#if ( configUSE_APPLICATION_TASK_TAG == 1 )
//  326 		TaskHookFunction_t pxTaskTag;
//  327 	#endif
//  328 
//  329 	#if( configNUM_THREAD_LOCAL_STORAGE_POINTERS > 0 )
//  330 		void *pvThreadLocalStoragePointers[ configNUM_THREAD_LOCAL_STORAGE_POINTERS ];
//  331 	#endif
//  332 
//  333 	#if( configGENERATE_RUN_TIME_STATS == 1 )
//  334 		uint32_t		ulRunTimeCounter;	/*< Stores the amount of time the task has spent in the Running state. */
//  335 	#endif
//  336 
//  337 	#if ( configUSE_NEWLIB_REENTRANT == 1 )
//  338 		/* Allocate a Newlib reent structure that is specific to this task.
//  339 		Note Newlib support has been included by popular demand, but is not
//  340 		used by the FreeRTOS maintainers themselves.  FreeRTOS is not
//  341 		responsible for resulting newlib operation.  User must be familiar with
//  342 		newlib and must provide system-wide implementations of the necessary
//  343 		stubs. Be warned that (at the time of writing) the current newlib design
//  344 		implements a system-wide malloc() that must be provided with locks. */
//  345 		struct	_reent xNewLib_reent;
//  346 	#endif
//  347 
//  348 	#if( configUSE_TASK_NOTIFICATIONS == 1 )
//  349 		volatile uint32_t ulNotifiedValue;
//  350 		volatile uint8_t ucNotifyState;
//  351 	#endif
//  352 
//  353 	/* See the comments above the definition of
//  354 	tskSTATIC_AND_DYNAMIC_ALLOCATION_POSSIBLE. */
//  355 	#if( tskSTATIC_AND_DYNAMIC_ALLOCATION_POSSIBLE != 0 )
//  356 		uint8_t	ucStaticallyAllocated; 		/*< Set to pdTRUE if the task is a statically allocated to ensure no attempt is made to free the memory. */
//  357 	#endif
//  358 
//  359 	#if( INCLUDE_xTaskAbortDelay == 1 )
//  360 		uint8_t ucDelayAborted;
//  361 	#endif
//  362 
//  363 } tskTCB;
//  364 
//  365 /* The old tskTCB name is maintained above then typedefed to the new TCB_t name
//  366 below to enable the use of older kernel aware debuggers. */
//  367 typedef tskTCB TCB_t;
//  368 
//  369 /*lint -e956 A manual analysis and inspection has been used to determine which
//  370 static variables must be declared volatile. */
//  371 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  372 PRIVILEGED_DATA TCB_t * volatile pxCurrentTCB = NULL;
pxCurrentTCB:
        DS8 4
//  373 
//  374 /* Lists for ready and blocked tasks. --------------------*/

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  375 PRIVILEGED_DATA static List_t pxReadyTasksLists[ configMAX_PRIORITIES ];/*< Prioritised ready tasks. */
pxReadyTasksLists:
        DS8 100

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  376 PRIVILEGED_DATA static List_t xDelayedTaskList1;						/*< Delayed tasks. */
xDelayedTaskList1:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  377 PRIVILEGED_DATA static List_t xDelayedTaskList2;						/*< Delayed tasks (two lists are used - one for delays that have overflowed the current tick count. */
xDelayedTaskList2:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  378 PRIVILEGED_DATA static List_t * volatile pxDelayedTaskList;				/*< Points to the delayed task list currently being used. */
pxDelayedTaskList:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  379 PRIVILEGED_DATA static List_t * volatile pxOverflowDelayedTaskList;		/*< Points to the delayed task list currently being used to hold tasks that have overflowed the current tick count. */
pxOverflowDelayedTaskList:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  380 PRIVILEGED_DATA static List_t xPendingReadyList;						/*< Tasks that have been readied while the scheduler was suspended.  They will be moved to the ready list when the scheduler is resumed. */
xPendingReadyList:
        DS8 20
//  381 
//  382 #if( INCLUDE_vTaskDelete == 1 )
//  383 
//  384 	PRIVILEGED_DATA static List_t xTasksWaitingTermination;				/*< Tasks that have been deleted - but their memory not yet freed. */
//  385 	PRIVILEGED_DATA static volatile UBaseType_t uxDeletedTasksWaitingCleanUp = ( UBaseType_t ) 0U;
//  386 
//  387 #endif
//  388 
//  389 #if ( INCLUDE_vTaskSuspend == 1 )
//  390 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  391 	PRIVILEGED_DATA static List_t xSuspendedTaskList;					/*< Tasks that are currently suspended. */
xSuspendedTaskList:
        DS8 20
//  392 
//  393 #endif
//  394 
//  395 /* Other file private variables. --------------------------------*/

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  396 PRIVILEGED_DATA static volatile UBaseType_t uxCurrentNumberOfTasks 	= ( UBaseType_t ) 0U;
uxCurrentNumberOfTasks:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  397 PRIVILEGED_DATA static volatile TickType_t xTickCount 				= ( TickType_t ) 0U;
xTickCount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  398 PRIVILEGED_DATA static volatile UBaseType_t uxTopReadyPriority 		= tskIDLE_PRIORITY;
uxTopReadyPriority:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  399 PRIVILEGED_DATA static volatile BaseType_t xSchedulerRunning 		= pdFALSE;
xSchedulerRunning:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  400 PRIVILEGED_DATA static volatile UBaseType_t uxPendedTicks 			= ( UBaseType_t ) 0U;
uxPendedTicks:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  401 PRIVILEGED_DATA static volatile BaseType_t xYieldPending 			= pdFALSE;
xYieldPending:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  402 PRIVILEGED_DATA static volatile BaseType_t xNumOfOverflows 			= ( BaseType_t ) 0;
xNumOfOverflows:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  403 PRIVILEGED_DATA static UBaseType_t uxTaskNumber 					= ( UBaseType_t ) 0U;
uxTaskNumber:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  404 PRIVILEGED_DATA static volatile TickType_t xNextTaskUnblockTime		= ( TickType_t ) 0U; /* Initialised to portMAX_DELAY before the scheduler starts. */
xNextTaskUnblockTime:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  405 PRIVILEGED_DATA static TaskHandle_t xIdleTaskHandle					= NULL;			/*< Holds the handle of the idle task.  The idle task is created automatically when the scheduler is started. */
xIdleTaskHandle:
        DS8 4
//  406 
//  407 /* Context switches are held pending while the scheduler is suspended.  Also,
//  408 interrupts must not manipulate the xStateListItem of a TCB, or any of the
//  409 lists the xStateListItem can be referenced from, if the scheduler is suspended.
//  410 If an interrupt needs to unblock a task while the scheduler is suspended then it
//  411 moves the task's event list item into the xPendingReadyList, ready for the
//  412 kernel to move the task from the pending ready list into the real ready list
//  413 when the scheduler is unsuspended.  The pending ready list itself can only be
//  414 accessed from a critical section. */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  415 PRIVILEGED_DATA static volatile UBaseType_t uxSchedulerSuspended	= ( UBaseType_t ) pdFALSE;
uxSchedulerSuspended:
        DS8 4
//  416 
//  417 #if ( configGENERATE_RUN_TIME_STATS == 1 )
//  418 
//  419 	PRIVILEGED_DATA static uint32_t ulTaskSwitchedInTime = 0UL;	/*< Holds the value of a timer/counter the last time a task was switched in. */
//  420 	PRIVILEGED_DATA static uint32_t ulTotalRunTime = 0UL;		/*< Holds the total amount of execution time as defined by the run time counter clock. */
//  421 
//  422 #endif
//  423 
//  424 /*lint +e956 */
//  425 
//  426 /*-----------------------------------------------------------*/
//  427 
//  428 /* Callback function prototypes. --------------------------*/
//  429 #if(  configCHECK_FOR_STACK_OVERFLOW > 0 )
//  430 	extern void vApplicationStackOverflowHook( TaskHandle_t xTask, char *pcTaskName );
//  431 #endif
//  432 
//  433 #if( configUSE_TICK_HOOK > 0 )
//  434 	extern void vApplicationTickHook( void );
//  435 #endif
//  436 
//  437 #if( configSUPPORT_STATIC_ALLOCATION == 1 )
//  438 	extern void vApplicationGetIdleTaskMemory( StaticTask_t **ppxIdleTaskTCBBuffer, StackType_t **ppxIdleTaskStackBuffer, uint32_t *pulIdleTaskStackSize );
//  439 #endif
//  440 
//  441 /* File private functions. --------------------------------*/
//  442 
//  443 /**
//  444  * Utility task that simply returns pdTRUE if the task referenced by xTask is
//  445  * currently in the Suspended state, or pdFALSE if the task referenced by xTask
//  446  * is in any other state.
//  447  */
//  448 #if ( INCLUDE_vTaskSuspend == 1 )
//  449 	static BaseType_t prvTaskIsTaskSuspended( const TaskHandle_t xTask ) PRIVILEGED_FUNCTION;
//  450 #endif /* INCLUDE_vTaskSuspend */
//  451 
//  452 /*
//  453  * Utility to ready all the lists used by the scheduler.  This is called
//  454  * automatically upon the creation of the first task.
//  455  */
//  456 static void prvInitialiseTaskLists( void ) PRIVILEGED_FUNCTION;
//  457 
//  458 /*
//  459  * The idle task, which as all tasks is implemented as a never ending loop.
//  460  * The idle task is automatically created and added to the ready lists upon
//  461  * creation of the first user task.
//  462  *
//  463  * The portTASK_FUNCTION_PROTO() macro is used to allow port/compiler specific
//  464  * language extensions.  The equivalent prototype for this function is:
//  465  *
//  466  * void prvIdleTask( void *pvParameters );
//  467  *
//  468  */
//  469 static portTASK_FUNCTION_PROTO( prvIdleTask, pvParameters );
//  470 
//  471 /*
//  472  * Utility to free all memory allocated by the scheduler to hold a TCB,
//  473  * including the stack pointed to by the TCB.
//  474  *
//  475  * This does not free memory allocated by the task itself (i.e. memory
//  476  * allocated by calls to pvPortMalloc from within the tasks application code).
//  477  */
//  478 #if ( INCLUDE_vTaskDelete == 1 )
//  479 
//  480 	static void prvDeleteTCB( TCB_t *pxTCB ) PRIVILEGED_FUNCTION;
//  481 
//  482 #endif
//  483 
//  484 /*
//  485  * Used only by the idle task.  This checks to see if anything has been placed
//  486  * in the list of tasks waiting to be deleted.  If so the task is cleaned up
//  487  * and its TCB deleted.
//  488  */
//  489 static void prvCheckTasksWaitingTermination( void ) PRIVILEGED_FUNCTION;
//  490 
//  491 /*
//  492  * The currently executing task is entering the Blocked state.  Add the task to
//  493  * either the current or the overflow delayed task list.
//  494  */
//  495 static void prvAddCurrentTaskToDelayedList( TickType_t xTicksToWait, const BaseType_t xCanBlockIndefinitely ) PRIVILEGED_FUNCTION;
//  496 
//  497 /*
//  498  * Fills an TaskStatus_t structure with information on each task that is
//  499  * referenced from the pxList list (which may be a ready list, a delayed list,
//  500  * a suspended list, etc.).
//  501  *
//  502  * THIS FUNCTION IS INTENDED FOR DEBUGGING ONLY, AND SHOULD NOT BE CALLED FROM
//  503  * NORMAL APPLICATION CODE.
//  504  */
//  505 #if ( configUSE_TRACE_FACILITY == 1 )
//  506 
//  507 	static UBaseType_t prvListTasksWithinSingleList( TaskStatus_t *pxTaskStatusArray, List_t *pxList, eTaskState eState ) PRIVILEGED_FUNCTION;
//  508 
//  509 #endif
//  510 
//  511 /*
//  512  * Searches pxList for a task with name pcNameToQuery - returning a handle to
//  513  * the task if it is found, or NULL if the task is not found.
//  514  */
//  515 #if ( INCLUDE_xTaskGetHandle == 1 )
//  516 
//  517 	static TCB_t *prvSearchForNameWithinSingleList( List_t *pxList, const char pcNameToQuery[] ) PRIVILEGED_FUNCTION;
//  518 
//  519 #endif
//  520 
//  521 /*
//  522  * When a task is created, the stack of the task is filled with a known value.
//  523  * This function determines the 'high water mark' of the task stack by
//  524  * determining how much of the stack remains at the original preset value.
//  525  */
//  526 #if ( ( configUSE_TRACE_FACILITY == 1 ) || ( INCLUDE_uxTaskGetStackHighWaterMark == 1 ) )
//  527 
//  528 	static uint16_t prvTaskCheckFreeStackSpace( const uint8_t * pucStackByte ) PRIVILEGED_FUNCTION;
//  529 
//  530 #endif
//  531 
//  532 /*
//  533  * Return the amount of time, in ticks, that will pass before the kernel will
//  534  * next move a task from the Blocked state to the Running state.
//  535  *
//  536  * This conditional compilation should use inequality to 0, not equality to 1.
//  537  * This is to ensure portSUPPRESS_TICKS_AND_SLEEP() can be called when user
//  538  * defined low power mode implementations require configUSE_TICKLESS_IDLE to be
//  539  * set to a value other than 1.
//  540  */
//  541 #if ( configUSE_TICKLESS_IDLE != 0 )
//  542 
//  543 	static TickType_t prvGetExpectedIdleTime( void ) PRIVILEGED_FUNCTION;
//  544 
//  545 #endif
//  546 
//  547 /*
//  548  * Set xNextTaskUnblockTime to the time at which the next Blocked state task
//  549  * will exit the Blocked state.
//  550  */
//  551 static void prvResetNextTaskUnblockTime( void );
//  552 
//  553 #if ( ( configUSE_TRACE_FACILITY == 1 ) && ( configUSE_STATS_FORMATTING_FUNCTIONS > 0 ) )
//  554 
//  555 	/*
//  556 	 * Helper function used to pad task names with spaces when printing out
//  557 	 * human readable tables of task information.
//  558 	 */
//  559 	static char *prvWriteNameToBuffer( char *pcBuffer, const char *pcTaskName ) PRIVILEGED_FUNCTION;
//  560 
//  561 #endif
//  562 
//  563 /*
//  564  * Called after a Task_t structure has been allocated either statically or
//  565  * dynamically to fill in the structure's members.
//  566  */
//  567 static void prvInitialiseNewTask( 	TaskFunction_t pxTaskCode,
//  568 									const char * const pcName,
//  569 									const uint32_t ulStackDepth,
//  570 									void * const pvParameters,
//  571 									UBaseType_t uxPriority,
//  572 									TaskHandle_t * const pxCreatedTask,
//  573 									TCB_t *pxNewTCB,
//  574 									const MemoryRegion_t * const xRegions ) PRIVILEGED_FUNCTION; /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
//  575 
//  576 /*
//  577  * Called after a new task has been created and initialised to place the task
//  578  * under the control of the scheduler.
//  579  */
//  580 static void prvAddNewTaskToReadyList( TCB_t *pxNewTCB ) PRIVILEGED_FUNCTION;
//  581 
//  582 /*-----------------------------------------------------------*/
//  583 
//  584 #if( configSUPPORT_STATIC_ALLOCATION == 1 )
//  585 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function xTaskCreateStatic
        THUMB
//  586 	TaskHandle_t xTaskCreateStatic(	TaskFunction_t pxTaskCode,
//  587 									const char * const pcName,
//  588 									const uint32_t ulStackDepth,
//  589 									void * const pvParameters,
//  590 									UBaseType_t uxPriority,
//  591 									StackType_t * const puxStackBuffer,
//  592 									StaticTask_t * const pxTaskBuffer ) /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
//  593 	{
xTaskCreateStatic:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        SUB      SP,SP,#+20
          CFI CFA R13+32
        LDR      R4,[SP, #+40]
//  594 	TCB_t *pxNewTCB;
//  595 	TaskHandle_t xReturn;
//  596 
//  597 		configASSERT( puxStackBuffer != NULL );
//  598 		configASSERT( pxTaskBuffer != NULL );
//  599 
//  600 		if( ( pxTaskBuffer != NULL ) && ( puxStackBuffer != NULL ) )
        CMP      R4,#+0
        BEQ.N    ??xTaskCreateStatic_0
        LDR      R5,[SP, #+36]
        CMP      R5,#+0
        BEQ.N    ??xTaskCreateStatic_0
//  601 		{
//  602 			/* The memory used for the task's TCB and stack are passed into this
//  603 			function - use them. */
//  604 			pxNewTCB = ( TCB_t * ) pxTaskBuffer; /*lint !e740 Unusual cast is ok as the structures are designed to have the same alignment, and the size is checked by an assert. */
//  605 			pxNewTCB->pxStack = ( StackType_t * ) puxStackBuffer;
        STR      R5,[R4, #+48]
//  606 
//  607 			#if( tskSTATIC_AND_DYNAMIC_ALLOCATION_POSSIBLE != 0 )
//  608 			{
//  609 				/* Tasks can be created statically or dynamically, so note this
//  610 				task was created statically in case the task is later deleted. */
//  611 				pxNewTCB->ucStaticallyAllocated = tskSTATICALLY_ALLOCATED_STACK_AND_TCB;
//  612 			}
//  613 			#endif /* configSUPPORT_DYNAMIC_ALLOCATION */
//  614 
//  615 			prvInitialiseNewTask( pxTaskCode, pcName, ulStackDepth, pvParameters, uxPriority, &xReturn, pxNewTCB, NULL );
        MOVS     R5,#+0
        STR      R5,[SP, #+12]
        STR      R4,[SP, #+8]
        ADD      R5,SP,#+16
        STR      R5,[SP, #+4]
        LDR      R5,[SP, #+32]
        STR      R5,[SP, #+0]
          CFI FunCall prvInitialiseNewTask
        BL       prvInitialiseNewTask
//  616 			prvAddNewTaskToReadyList( pxNewTCB );
        MOVS     R0,R4
          CFI FunCall prvAddNewTaskToReadyList
        BL       prvAddNewTaskToReadyList
        B.N      ??xTaskCreateStatic_1
//  617 		}
//  618 		else
//  619 		{
//  620 			xReturn = NULL;
??xTaskCreateStatic_0:
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//  621 		}
//  622 
//  623 		return xReturn;
??xTaskCreateStatic_1:
        LDR      R0,[SP, #+16]
        ADD      SP,SP,#+20
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
//  624 	}
          CFI EndBlock cfiBlock0
//  625 
//  626 #endif /* SUPPORT_STATIC_ALLOCATION */
//  627 /*-----------------------------------------------------------*/
//  628 
//  629 #if( portUSING_MPU_WRAPPERS == 1 )
//  630 
//  631 	BaseType_t xTaskCreateRestricted( const TaskParameters_t * const pxTaskDefinition, TaskHandle_t *pxCreatedTask )
//  632 	{
//  633 	TCB_t *pxNewTCB;
//  634 	BaseType_t xReturn = errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY;
//  635 
//  636 		configASSERT( pxTaskDefinition->puxStackBuffer );
//  637 
//  638 		if( pxTaskDefinition->puxStackBuffer != NULL )
//  639 		{
//  640 			/* Allocate space for the TCB.  Where the memory comes from depends
//  641 			on the implementation of the port malloc function and whether or
//  642 			not static allocation is being used. */
//  643 			pxNewTCB = ( TCB_t * ) pvPortMalloc( sizeof( TCB_t ) );
//  644 
//  645 			if( pxNewTCB != NULL )
//  646 			{
//  647 				/* Store the stack location in the TCB. */
//  648 				pxNewTCB->pxStack = pxTaskDefinition->puxStackBuffer;
//  649 
//  650 				/* Tasks can be created statically or dynamically, so note
//  651 				this task had a statically allocated stack in case it is
//  652 				later deleted.  The TCB was allocated dynamically. */
//  653 				pxNewTCB->ucStaticallyAllocated = tskSTATICALLY_ALLOCATED_STACK_ONLY;
//  654 
//  655 				prvInitialiseNewTask(	pxTaskDefinition->pvTaskCode,
//  656 										pxTaskDefinition->pcName,
//  657 										( uint32_t ) pxTaskDefinition->usStackDepth,
//  658 										pxTaskDefinition->pvParameters,
//  659 										pxTaskDefinition->uxPriority,
//  660 										pxCreatedTask, pxNewTCB,
//  661 										pxTaskDefinition->xRegions );
//  662 
//  663 				prvAddNewTaskToReadyList( pxNewTCB );
//  664 				xReturn = pdPASS;
//  665 			}
//  666 		}
//  667 
//  668 		return xReturn;
//  669 	}
//  670 
//  671 #endif /* portUSING_MPU_WRAPPERS */
//  672 /*-----------------------------------------------------------*/
//  673 
//  674 #if( configSUPPORT_DYNAMIC_ALLOCATION == 1 )
//  675 
//  676 	BaseType_t xTaskCreate(	TaskFunction_t pxTaskCode,
//  677 							const char * const pcName,
//  678 							const uint16_t usStackDepth,
//  679 							void * const pvParameters,
//  680 							UBaseType_t uxPriority,
//  681 							TaskHandle_t * const pxCreatedTask ) /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
//  682 	{
//  683 	TCB_t *pxNewTCB;
//  684 	BaseType_t xReturn;
//  685 
//  686 		/* If the stack grows down then allocate the stack then the TCB so the stack
//  687 		does not grow into the TCB.  Likewise if the stack grows up then allocate
//  688 		the TCB then the stack. */
//  689 		#if( portSTACK_GROWTH > 0 )
//  690 		{
//  691 			/* Allocate space for the TCB.  Where the memory comes from depends on
//  692 			the implementation of the port malloc function and whether or not static
//  693 			allocation is being used. */
//  694 			pxNewTCB = ( TCB_t * ) pvPortMalloc( sizeof( TCB_t ) );
//  695 
//  696 			if( pxNewTCB != NULL )
//  697 			{
//  698 				/* Allocate space for the stack used by the task being created.
//  699 				The base of the stack memory stored in the TCB so the task can
//  700 				be deleted later if required. */
//  701 				pxNewTCB->pxStack = ( StackType_t * ) pvPortMalloc( ( ( ( size_t ) usStackDepth ) * sizeof( StackType_t ) ) ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
//  702 
//  703 				if( pxNewTCB->pxStack == NULL )
//  704 				{
//  705 					/* Could not allocate the stack.  Delete the allocated TCB. */
//  706 					vPortFree( pxNewTCB );
//  707 					pxNewTCB = NULL;
//  708 				}
//  709 			}
//  710 		}
//  711 		#else /* portSTACK_GROWTH */
//  712 		{
//  713 		StackType_t *pxStack;
//  714 
//  715 			/* Allocate space for the stack used by the task being created. */
//  716 			pxStack = ( StackType_t * ) pvPortMalloc( ( ( ( size_t ) usStackDepth ) * sizeof( StackType_t ) ) ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
//  717 
//  718 			if( pxStack != NULL )
//  719 			{
//  720 				/* Allocate space for the TCB. */
//  721 				pxNewTCB = ( TCB_t * ) pvPortMalloc( sizeof( TCB_t ) ); /*lint !e961 MISRA exception as the casts are only redundant for some paths. */
//  722 
//  723 				if( pxNewTCB != NULL )
//  724 				{
//  725 					/* Store the stack location in the TCB. */
//  726 					pxNewTCB->pxStack = pxStack;
//  727 				}
//  728 				else
//  729 				{
//  730 					/* The stack cannot be used as the TCB was not created.  Free
//  731 					it again. */
//  732 					vPortFree( pxStack );
//  733 				}
//  734 			}
//  735 			else
//  736 			{
//  737 				pxNewTCB = NULL;
//  738 			}
//  739 		}
//  740 		#endif /* portSTACK_GROWTH */
//  741 
//  742 		if( pxNewTCB != NULL )
//  743 		{
//  744 			#if( tskSTATIC_AND_DYNAMIC_ALLOCATION_POSSIBLE != 0 )
//  745 			{
//  746 				/* Tasks can be created statically or dynamically, so note this
//  747 				task was created dynamically in case it is later deleted. */
//  748 				pxNewTCB->ucStaticallyAllocated = tskDYNAMICALLY_ALLOCATED_STACK_AND_TCB;
//  749 			}
//  750 			#endif /* configSUPPORT_STATIC_ALLOCATION */
//  751 
//  752 			prvInitialiseNewTask( pxTaskCode, pcName, ( uint32_t ) usStackDepth, pvParameters, uxPriority, pxCreatedTask, pxNewTCB, NULL );
//  753 			prvAddNewTaskToReadyList( pxNewTCB );
//  754 			xReturn = pdPASS;
//  755 		}
//  756 		else
//  757 		{
//  758 			xReturn = errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY;
//  759 		}
//  760 
//  761 		return xReturn;
//  762 	}
//  763 
//  764 #endif /* configSUPPORT_DYNAMIC_ALLOCATION */
//  765 /*-----------------------------------------------------------*/
//  766 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function prvInitialiseNewTask
        THUMB
//  767 static void prvInitialiseNewTask( 	TaskFunction_t pxTaskCode,
//  768 									const char * const pcName,
//  769 									const uint32_t ulStackDepth,
//  770 									void * const pvParameters,
//  771 									UBaseType_t uxPriority,
//  772 									TaskHandle_t * const pxCreatedTask,
//  773 									TCB_t *pxNewTCB,
//  774 									const MemoryRegion_t * const xRegions ) /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
//  775 {
prvInitialiseNewTask:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOVS     R5,R0
        MOVS     R6,R3
        LDR      R7,[SP, #+40]
//  776 StackType_t *pxTopOfStack;
//  777 UBaseType_t x;
//  778 
//  779 	#if( portUSING_MPU_WRAPPERS == 1 )
//  780 		/* Should the task be created in privileged mode? */
//  781 		BaseType_t xRunPrivileged;
//  782 		if( ( uxPriority & portPRIVILEGE_BIT ) != 0U )
//  783 		{
//  784 			xRunPrivileged = pdTRUE;
//  785 		}
//  786 		else
//  787 		{
//  788 			xRunPrivileged = pdFALSE;
//  789 		}
//  790 		uxPriority &= ~portPRIVILEGE_BIT;
//  791 	#endif /* portUSING_MPU_WRAPPERS == 1 */
//  792 
//  793 	/* Avoid dependency on memset() if it is not required. */
//  794 	#if( ( configCHECK_FOR_STACK_OVERFLOW > 1 ) || ( configUSE_TRACE_FACILITY == 1 ) || ( INCLUDE_uxTaskGetStackHighWaterMark == 1 ) )
//  795 	{
//  796 		/* Fill the stack with a known value to assist debugging. */
//  797 		( void ) memset( pxNewTCB->pxStack, ( int ) tskSTACK_FILL_BYTE, ( size_t ) ulStackDepth * sizeof( StackType_t ) );
//  798 	}
//  799 	#endif /* ( ( configCHECK_FOR_STACK_OVERFLOW > 1 ) || ( ( configUSE_TRACE_FACILITY == 1 ) || ( INCLUDE_uxTaskGetStackHighWaterMark == 1 ) ) ) */
//  800 
//  801 	/* Calculate the top of stack address.  This depends on whether the stack
//  802 	grows from high memory to low (as per the 80x86) or vice versa.
//  803 	portSTACK_GROWTH is used to make the result positive or negative as required
//  804 	by the port. */
//  805 	#if( portSTACK_GROWTH < 0 )
//  806 	{
//  807 		pxTopOfStack = pxNewTCB->pxStack + ( ulStackDepth - ( uint32_t ) 1 );
        LDR      R0,[R7, #+48]
        ADD      R0,R0,R2, LSL #+2
        SUBS     R8,R0,#+4
//  808 		pxTopOfStack = ( StackType_t * ) ( ( ( portPOINTER_SIZE_TYPE ) pxTopOfStack ) & ( ~( ( portPOINTER_SIZE_TYPE ) portBYTE_ALIGNMENT_MASK ) ) ); /*lint !e923 MISRA exception.  Avoiding casts between pointers and integers is not practical.  Size differences accounted for using portPOINTER_SIZE_TYPE type. */
        LSRS     R8,R8,#+3
        LSLS     R8,R8,#+3
//  809 
//  810 		/* Check the alignment of the calculated top of stack is correct. */
//  811 		configASSERT( ( ( ( portPOINTER_SIZE_TYPE ) pxTopOfStack & ( portPOINTER_SIZE_TYPE ) portBYTE_ALIGNMENT_MASK ) == 0UL ) );
//  812 	}
//  813 	#else /* portSTACK_GROWTH */
//  814 	{
//  815 		pxTopOfStack = pxNewTCB->pxStack;
//  816 
//  817 		/* Check the alignment of the stack buffer is correct. */
//  818 		configASSERT( ( ( ( portPOINTER_SIZE_TYPE ) pxNewTCB->pxStack & ( portPOINTER_SIZE_TYPE ) portBYTE_ALIGNMENT_MASK ) == 0UL ) );
//  819 
//  820 		/* The other extreme of the stack space is required if stack checking is
//  821 		performed. */
//  822 		pxNewTCB->pxEndOfStack = pxNewTCB->pxStack + ( ulStackDepth - ( uint32_t ) 1 );
//  823 	}
//  824 	#endif /* portSTACK_GROWTH */
//  825 
//  826 	/* Store the task name in the TCB. */
//  827 	for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) configMAX_TASK_NAME_LEN; x++ )
        MOVS     R2,#+0
        B.N      ??prvInitialiseNewTask_0
??prvInitialiseNewTask_1:
        ADDS     R2,R2,#+1
??prvInitialiseNewTask_0:
        CMP      R2,#+10
        BCS.N    ??prvInitialiseNewTask_2
//  828 	{
//  829 		pxNewTCB->pcTaskName[ x ] = pcName[ x ];
        LDRB     R0,[R1, R2]
        ADD      R3,R7,R2
        STRB     R0,[R3, #+52]
//  830 
//  831 		/* Don't copy all configMAX_TASK_NAME_LEN if the string is shorter than
//  832 		configMAX_TASK_NAME_LEN characters just in case the memory after the
//  833 		string is not accessible (extremely unlikely). */
//  834 		if( pcName[ x ] == 0x00 )
        LDRB     R0,[R1, R2]
        CMP      R0,#+0
        BNE.N    ??prvInitialiseNewTask_1
//  835 		{
//  836 			break;
??prvInitialiseNewTask_2:
        LDR      R9,[SP, #+32]
//  837 		}
//  838 		else
//  839 		{
//  840 			mtCOVERAGE_TEST_MARKER();
//  841 		}
//  842 	}
//  843 
//  844 	/* Ensure the name string is terminated in the case that the string length
//  845 	was greater or equal to configMAX_TASK_NAME_LEN. */
//  846 	pxNewTCB->pcTaskName[ configMAX_TASK_NAME_LEN - 1 ] = '\0';
        MOVS     R0,#+0
        STRB     R0,[R7, #+61]
//  847 
//  848 	/* This is used as an array index so must ensure it's not too large.  First
//  849 	remove the privilege bit if one is present. */
//  850 	if( uxPriority >= ( UBaseType_t ) configMAX_PRIORITIES )
        CMP      R9,#+5
        BCC.N    ??prvInitialiseNewTask_3
//  851 	{
//  852 		uxPriority = ( UBaseType_t ) configMAX_PRIORITIES - ( UBaseType_t ) 1U;
        MOVS     R9,#+4
??prvInitialiseNewTask_3:
        LDR      R4,[SP, #+36]
//  853 	}
//  854 	else
//  855 	{
//  856 		mtCOVERAGE_TEST_MARKER();
//  857 	}
//  858 
//  859 	pxNewTCB->uxPriority = uxPriority;
        STR      R9,[R7, #+44]
//  860 	#if ( configUSE_MUTEXES == 1 )
//  861 	{
//  862 		pxNewTCB->uxBasePriority = uxPriority;
        STR      R9,[R7, #+64]
//  863 		pxNewTCB->uxMutexesHeld = 0;
        MOVS     R0,#+0
        STR      R0,[R7, #+68]
//  864 	}
//  865 	#endif /* configUSE_MUTEXES */
//  866 
//  867 	vListInitialiseItem( &( pxNewTCB->xStateListItem ) );
        ADDS     R0,R7,#+4
          CFI FunCall vListInitialiseItem
        BL       vListInitialiseItem
//  868 	vListInitialiseItem( &( pxNewTCB->xEventListItem ) );
        ADDS     R0,R7,#+24
          CFI FunCall vListInitialiseItem
        BL       vListInitialiseItem
//  869 
//  870 	/* Set the pxNewTCB as a link back from the ListItem_t.  This is so we can get
//  871 	back to	the containing TCB from a generic item in a list. */
//  872 	listSET_LIST_ITEM_OWNER( &( pxNewTCB->xStateListItem ), pxNewTCB );
        STR      R7,[R7, #+16]
//  873 
//  874 	/* Event lists are always in priority order. */
//  875 	listSET_LIST_ITEM_VALUE( &( pxNewTCB->xEventListItem ), ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) uxPriority ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
        RSBS     R9,R9,#+5
        STR      R9,[R7, #+24]
//  876 	listSET_LIST_ITEM_OWNER( &( pxNewTCB->xEventListItem ), pxNewTCB );
        STR      R7,[R7, #+36]
//  877 
//  878 	#if ( portCRITICAL_NESTING_IN_TCB == 1 )
//  879 	{
//  880 		pxNewTCB->uxCriticalNesting = ( UBaseType_t ) 0U;
//  881 	}
//  882 	#endif /* portCRITICAL_NESTING_IN_TCB */
//  883 
//  884 	#if ( configUSE_APPLICATION_TASK_TAG == 1 )
//  885 	{
//  886 		pxNewTCB->pxTaskTag = NULL;
//  887 	}
//  888 	#endif /* configUSE_APPLICATION_TASK_TAG */
//  889 
//  890 	#if ( configGENERATE_RUN_TIME_STATS == 1 )
//  891 	{
//  892 		pxNewTCB->ulRunTimeCounter = 0UL;
//  893 	}
//  894 	#endif /* configGENERATE_RUN_TIME_STATS */
//  895 
//  896 	#if ( portUSING_MPU_WRAPPERS == 1 )
//  897 	{
//  898 		vPortStoreTaskMPUSettings( &( pxNewTCB->xMPUSettings ), xRegions, pxNewTCB->pxStack, ulStackDepth );
//  899 	}
//  900 	#else
//  901 	{
//  902 		/* Avoid compiler warning about unreferenced parameter. */
//  903 		( void ) xRegions;
//  904 	}
//  905 	#endif
//  906 
//  907 	#if( configNUM_THREAD_LOCAL_STORAGE_POINTERS != 0 )
//  908 	{
//  909 		for( x = 0; x < ( UBaseType_t ) configNUM_THREAD_LOCAL_STORAGE_POINTERS; x++ )
//  910 		{
//  911 			pxNewTCB->pvThreadLocalStoragePointers[ x ] = NULL;
//  912 		}
//  913 	}
//  914 	#endif
//  915 
//  916 	#if ( configUSE_TASK_NOTIFICATIONS == 1 )
//  917 	{
//  918 		pxNewTCB->ulNotifiedValue = 0;
        MOVS     R0,#+0
        STR      R0,[R7, #+72]
//  919 		pxNewTCB->ucNotifyState = taskNOT_WAITING_NOTIFICATION;
        MOVS     R0,#+0
        STRB     R0,[R7, #+76]
//  920 	}
//  921 	#endif
//  922 
//  923 	#if ( configUSE_NEWLIB_REENTRANT == 1 )
//  924 	{
//  925 		/* Initialise this task's Newlib reent structure. */
//  926 		_REENT_INIT_PTR( ( &( pxNewTCB->xNewLib_reent ) ) );
//  927 	}
//  928 	#endif
//  929 
//  930 	#if( INCLUDE_xTaskAbortDelay == 1 )
//  931 	{
//  932 		pxNewTCB->ucDelayAborted = pdFALSE;
//  933 	}
//  934 	#endif
//  935 
//  936 	/* Initialize the TCB stack to look as if the task was already running,
//  937 	but had been interrupted by the scheduler.  The return address is set
//  938 	to the start of the task function. Once the stack has been initialised
//  939 	the	top of stack variable is updated. */
//  940 	#if( portUSING_MPU_WRAPPERS == 1 )
//  941 	{
//  942 		pxNewTCB->pxTopOfStack = pxPortInitialiseStack( pxTopOfStack, pxTaskCode, pvParameters, xRunPrivileged );
//  943 	}
//  944 	#else /* portUSING_MPU_WRAPPERS */
//  945 	{
//  946 		pxNewTCB->pxTopOfStack = pxPortInitialiseStack( pxTopOfStack, pxTaskCode, pvParameters );
        MOVS     R2,R6
        MOVS     R1,R5
        MOV      R0,R8
          CFI FunCall pxPortInitialiseStack
        BL       pxPortInitialiseStack
        STR      R0,[R7, #+0]
//  947 	}
//  948 	#endif /* portUSING_MPU_WRAPPERS */
//  949 
//  950 	if( ( void * ) pxCreatedTask != NULL )
        CMP      R4,#+0
        BEQ.N    ??prvInitialiseNewTask_4
//  951 	{
//  952 		/* Pass the handle out in an anonymous way.  The handle can be used to
//  953 		change the created task's priority, delete the created task, etc.*/
//  954 		*pxCreatedTask = ( TaskHandle_t ) pxNewTCB;
        STR      R7,[R4, #+0]
//  955 	}
//  956 	else
//  957 	{
//  958 		mtCOVERAGE_TEST_MARKER();
//  959 	}
//  960 }
??prvInitialiseNewTask_4:
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock1
//  961 /*-----------------------------------------------------------*/
//  962 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function prvAddNewTaskToReadyList
        THUMB
//  963 static void prvAddNewTaskToReadyList( TCB_t *pxNewTCB )
//  964 {
prvAddNewTaskToReadyList:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//  965 	/* Ensure interrupts don't access the task lists while the lists are being
//  966 	updated. */
//  967 	taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
//  968 	{
//  969 		uxCurrentNumberOfTasks++;
        LDR.W    R1,??DataTable35
        LDR      R0,[R1, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R1, #+0]
//  970 		if( pxCurrentTCB == NULL )
        LDR.W    R5,??DataTable35_1
        LDR      R0,[R5, #+0]
        CMP      R0,#+0
        BNE.N    ??prvAddNewTaskToReadyList_0
//  971 		{
//  972 			/* There are no other tasks, or all the other tasks are in
//  973 			the suspended state - make this the current task. */
//  974 			pxCurrentTCB = pxNewTCB;
        STR      R4,[R5, #+0]
//  975 
//  976 			if( uxCurrentNumberOfTasks == ( UBaseType_t ) 1 )
        LDR      R0,[R1, #+0]
        CMP      R0,#+1
        BNE.N    ??prvAddNewTaskToReadyList_1
//  977 			{
//  978 				/* This is the first task to be created so do the preliminary
//  979 				initialisation required.  We will not recover if this call
//  980 				fails, but we will report the failure. */
//  981 				prvInitialiseTaskLists();
          CFI FunCall prvInitialiseTaskLists
        BL       prvInitialiseTaskLists
        B.N      ??prvAddNewTaskToReadyList_1
//  982 			}
//  983 			else
//  984 			{
//  985 				mtCOVERAGE_TEST_MARKER();
//  986 			}
//  987 		}
//  988 		else
//  989 		{
//  990 			/* If the scheduler is not already running, make this task the
//  991 			current task if it is the highest priority task to be created
//  992 			so far. */
//  993 			if( xSchedulerRunning == pdFALSE )
??prvAddNewTaskToReadyList_0:
        LDR.W    R0,??DataTable35_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??prvAddNewTaskToReadyList_1
//  994 			{
//  995 				if( pxCurrentTCB->uxPriority <= pxNewTCB->uxPriority )
        LDR      R0,[R4, #+44]
        LDR      R1,[R5, #+0]
        LDR      R1,[R1, #+44]
        CMP      R0,R1
        BCC.N    ??prvAddNewTaskToReadyList_1
//  996 				{
//  997 					pxCurrentTCB = pxNewTCB;
        STR      R4,[R5, #+0]
//  998 				}
//  999 				else
// 1000 				{
// 1001 					mtCOVERAGE_TEST_MARKER();
// 1002 				}
// 1003 			}
// 1004 			else
// 1005 			{
// 1006 				mtCOVERAGE_TEST_MARKER();
// 1007 			}
// 1008 		}
// 1009 
// 1010 		uxTaskNumber++;
??prvAddNewTaskToReadyList_1:
        LDR.W    R0,??DataTable35_3
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
// 1011 
// 1012 		#if ( configUSE_TRACE_FACILITY == 1 )
// 1013 		{
// 1014 			/* Add a counter into the TCB for tracing only. */
// 1015 			pxNewTCB->uxTCBNumber = uxTaskNumber;
// 1016 		}
// 1017 		#endif /* configUSE_TRACE_FACILITY */
// 1018 		traceTASK_CREATE( pxNewTCB );
// 1019 
// 1020 		prvAddTaskToReadyList( pxNewTCB );
        LDR.W    R1,??DataTable35_4
        LDR      R2,[R1, #+0]
        MOVS     R3,#+1
        LDR      R0,[R4, #+44]
        LSLS     R3,R3,R0
        ORRS     R2,R3,R2
        STR      R2,[R1, #+0]
        ADDS     R1,R4,#+4
        LDR.W    R2,??DataTable36
        LDR      R3,[R4, #+44]
        MOVS     R0,#+20
        MULS     R3,R0,R3
        ADD      R0,R2,R3
          CFI FunCall vListInsertEnd
        BL       vListInsertEnd
// 1021 
// 1022 		portSETUP_TCB( pxNewTCB );
// 1023 	}
// 1024 	taskEXIT_CRITICAL();
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
// 1025 
// 1026 	if( xSchedulerRunning != pdFALSE )
        LDR.W    R0,??DataTable35_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??prvAddNewTaskToReadyList_2
// 1027 	{
// 1028 		/* If the created task is of a higher priority than the current task
// 1029 		then it should run now. */
// 1030 		if( pxCurrentTCB->uxPriority < pxNewTCB->uxPriority )
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+44]
        LDR      R1,[R4, #+44]
        CMP      R0,R1
        BCS.N    ??prvAddNewTaskToReadyList_2
// 1031 		{
// 1032 			taskYIELD_IF_USING_PREEMPTION();
        MOVS     R0,#+268435456
        LDR.W    R1,??DataTable37  ;; 0xe000ed04
        STR      R0,[R1, #+0]
        DSB      SY
        ISB      SY
// 1033 		}
// 1034 		else
// 1035 		{
// 1036 			mtCOVERAGE_TEST_MARKER();
// 1037 		}
// 1038 	}
// 1039 	else
// 1040 	{
// 1041 		mtCOVERAGE_TEST_MARKER();
// 1042 	}
// 1043 }
??prvAddNewTaskToReadyList_2:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock2
// 1044 /*-----------------------------------------------------------*/
// 1045 
// 1046 #if ( INCLUDE_vTaskDelete == 1 )
// 1047 
// 1048 	void vTaskDelete( TaskHandle_t xTaskToDelete )
// 1049 	{
// 1050 	TCB_t *pxTCB;
// 1051 
// 1052 		taskENTER_CRITICAL();
// 1053 		{
// 1054 			/* If null is passed in here then it is the calling task that is
// 1055 			being deleted. */
// 1056 			pxTCB = prvGetTCBFromHandle( xTaskToDelete );
// 1057 
// 1058 			/* Remove task from the ready list. */
// 1059 			if( uxListRemove( &( pxTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
// 1060 			{
// 1061 				taskRESET_READY_PRIORITY( pxTCB->uxPriority );
// 1062 			}
// 1063 			else
// 1064 			{
// 1065 				mtCOVERAGE_TEST_MARKER();
// 1066 			}
// 1067 
// 1068 			/* Is the task waiting on an event also? */
// 1069 			if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) != NULL )
// 1070 			{
// 1071 				( void ) uxListRemove( &( pxTCB->xEventListItem ) );
// 1072 			}
// 1073 			else
// 1074 			{
// 1075 				mtCOVERAGE_TEST_MARKER();
// 1076 			}
// 1077 
// 1078 			/* Increment the uxTaskNumber also so kernel aware debuggers can
// 1079 			detect that the task lists need re-generating.  This is done before
// 1080 			portPRE_TASK_DELETE_HOOK() as in the Windows port that macro will
// 1081 			not return. */
// 1082 			uxTaskNumber++;
// 1083 
// 1084 			if( pxTCB == pxCurrentTCB )
// 1085 			{
// 1086 				/* A task is deleting itself.  This cannot complete within the
// 1087 				task itself, as a context switch to another task is required.
// 1088 				Place the task in the termination list.  The idle task will
// 1089 				check the termination list and free up any memory allocated by
// 1090 				the scheduler for the TCB and stack of the deleted task. */
// 1091 				vListInsertEnd( &xTasksWaitingTermination, &( pxTCB->xStateListItem ) );
// 1092 
// 1093 				/* Increment the ucTasksDeleted variable so the idle task knows
// 1094 				there is a task that has been deleted and that it should therefore
// 1095 				check the xTasksWaitingTermination list. */
// 1096 				++uxDeletedTasksWaitingCleanUp;
// 1097 
// 1098 				/* The pre-delete hook is primarily for the Windows simulator,
// 1099 				in which Windows specific clean up operations are performed,
// 1100 				after which it is not possible to yield away from this task -
// 1101 				hence xYieldPending is used to latch that a context switch is
// 1102 				required. */
// 1103 				portPRE_TASK_DELETE_HOOK( pxTCB, &xYieldPending );
// 1104 			}
// 1105 			else
// 1106 			{
// 1107 				--uxCurrentNumberOfTasks;
// 1108 				prvDeleteTCB( pxTCB );
// 1109 
// 1110 				/* Reset the next expected unblock time in case it referred to
// 1111 				the task that has just been deleted. */
// 1112 				prvResetNextTaskUnblockTime();
// 1113 			}
// 1114 
// 1115 			traceTASK_DELETE( pxTCB );
// 1116 		}
// 1117 		taskEXIT_CRITICAL();
// 1118 
// 1119 		/* Force a reschedule if it is the currently running task that has just
// 1120 		been deleted. */
// 1121 		if( xSchedulerRunning != pdFALSE )
// 1122 		{
// 1123 			if( pxTCB == pxCurrentTCB )
// 1124 			{
// 1125 				configASSERT( uxSchedulerSuspended == 0 );
// 1126 				portYIELD_WITHIN_API();
// 1127 			}
// 1128 			else
// 1129 			{
// 1130 				mtCOVERAGE_TEST_MARKER();
// 1131 			}
// 1132 		}
// 1133 	}
// 1134 
// 1135 #endif /* INCLUDE_vTaskDelete */
// 1136 /*-----------------------------------------------------------*/
// 1137 
// 1138 #if ( INCLUDE_vTaskDelayUntil == 1 )
// 1139 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function vTaskDelayUntil
        THUMB
// 1140 	void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement )
// 1141 	{
vTaskDelayUntil:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R5,R0
        MOVS     R6,R1
// 1142 	TickType_t xTimeToWake;
// 1143 	BaseType_t xAlreadyYielded, xShouldDelay = pdFALSE;
        MOVS     R4,#+0
// 1144 
// 1145 		configASSERT( pxPreviousWakeTime );
// 1146 		configASSERT( ( xTimeIncrement > 0U ) );
// 1147 		configASSERT( uxSchedulerSuspended == 0 );
        LDR.W    R0,??DataTable39
        LDR      R0,[R0, #+0]
// 1148 
// 1149 		vTaskSuspendAll();
          CFI FunCall vTaskSuspendAll
        BL       vTaskSuspendAll
// 1150 		{
// 1151 			/* Minor optimisation.  The tick count cannot change in this
// 1152 			block. */
// 1153 			const TickType_t xConstTickCount = xTickCount;
        LDR.W    R0,??DataTable36_1
        LDR      R0,[R0, #+0]
// 1154 
// 1155 			/* Generate the tick time at which the task wants to wake. */
// 1156 			xTimeToWake = *pxPreviousWakeTime + xTimeIncrement;
        LDR      R1,[R5, #+0]
        ADDS     R6,R6,R1
// 1157 
// 1158 			if( xConstTickCount < *pxPreviousWakeTime )
        LDR      R1,[R5, #+0]
        CMP      R0,R1
        BCS.N    ??vTaskDelayUntil_0
// 1159 			{
// 1160 				/* The tick count has overflowed since this function was
// 1161 				lasted called.  In this case the only time we should ever
// 1162 				actually delay is if the wake time has also	overflowed,
// 1163 				and the wake time is greater than the tick time.  When this
// 1164 				is the case it is as if neither time had overflowed. */
// 1165 				if( ( xTimeToWake < *pxPreviousWakeTime ) && ( xTimeToWake > xConstTickCount ) )
        LDR      R1,[R5, #+0]
        CMP      R6,R1
        BCS.N    ??vTaskDelayUntil_1
        CMP      R0,R6
        BCS.N    ??vTaskDelayUntil_1
// 1166 				{
// 1167 					xShouldDelay = pdTRUE;
        MOVS     R4,#+1
        B.N      ??vTaskDelayUntil_1
// 1168 				}
// 1169 				else
// 1170 				{
// 1171 					mtCOVERAGE_TEST_MARKER();
// 1172 				}
// 1173 			}
// 1174 			else
// 1175 			{
// 1176 				/* The tick time has not overflowed.  In this case we will
// 1177 				delay if either the wake time has overflowed, and/or the
// 1178 				tick time is less than the wake time. */
// 1179 				if( ( xTimeToWake < *pxPreviousWakeTime ) || ( xTimeToWake > xConstTickCount ) )
??vTaskDelayUntil_0:
        LDR      R1,[R5, #+0]
        CMP      R6,R1
        BCC.N    ??vTaskDelayUntil_2
        CMP      R0,R6
        BCS.N    ??vTaskDelayUntil_1
// 1180 				{
// 1181 					xShouldDelay = pdTRUE;
??vTaskDelayUntil_2:
        MOVS     R4,#+1
// 1182 				}
// 1183 				else
// 1184 				{
// 1185 					mtCOVERAGE_TEST_MARKER();
// 1186 				}
// 1187 			}
// 1188 
// 1189 			/* Update the wake time ready for the next call. */
// 1190 			*pxPreviousWakeTime = xTimeToWake;
??vTaskDelayUntil_1:
        STR      R6,[R5, #+0]
// 1191 
// 1192 			if( xShouldDelay != pdFALSE )
        CMP      R4,#+0
        BEQ.N    ??vTaskDelayUntil_3
// 1193 			{
// 1194 				traceTASK_DELAY_UNTIL( xTimeToWake );
// 1195 
// 1196 				/* prvAddCurrentTaskToDelayedList() needs the block time, not
// 1197 				the time to wake, so subtract the current tick count. */
// 1198 				prvAddCurrentTaskToDelayedList( xTimeToWake - xConstTickCount, pdFALSE );
        MOVS     R1,#+0
        SUBS     R6,R6,R0
        MOVS     R0,R6
          CFI FunCall prvAddCurrentTaskToDelayedList
        BL       prvAddCurrentTaskToDelayedList
// 1199 			}
// 1200 			else
// 1201 			{
// 1202 				mtCOVERAGE_TEST_MARKER();
// 1203 			}
// 1204 		}
// 1205 		xAlreadyYielded = xTaskResumeAll();
??vTaskDelayUntil_3:
          CFI FunCall xTaskResumeAll
        BL       xTaskResumeAll
// 1206 
// 1207 		/* Force a reschedule if xTaskResumeAll has not already done so, we may
// 1208 		have put ourselves to sleep. */
// 1209 		if( xAlreadyYielded == pdFALSE )
        CMP      R0,#+0
        BNE.N    ??vTaskDelayUntil_4
// 1210 		{
// 1211 			portYIELD_WITHIN_API();
        MOVS     R0,#+268435456
        LDR.W    R1,??DataTable37  ;; 0xe000ed04
        STR      R0,[R1, #+0]
        DSB      SY
        ISB      SY
// 1212 		}
// 1213 		else
// 1214 		{
// 1215 			mtCOVERAGE_TEST_MARKER();
// 1216 		}
// 1217 	}
??vTaskDelayUntil_4:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock3
// 1218 
// 1219 #endif /* INCLUDE_vTaskDelayUntil */
// 1220 /*-----------------------------------------------------------*/
// 1221 
// 1222 #if ( INCLUDE_vTaskDelay == 1 )
// 1223 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function vTaskDelay
        THUMB
// 1224 	void vTaskDelay( const TickType_t xTicksToDelay )
// 1225 	{
vTaskDelay:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
// 1226 	BaseType_t xAlreadyYielded = pdFALSE;
        MOVS     R0,#+0
// 1227 
// 1228 		/* A delay time of zero just forces a reschedule. */
// 1229 		if( xTicksToDelay > ( TickType_t ) 0U )
        CMP      R4,#+0
        BEQ.N    ??vTaskDelay_0
// 1230 		{
// 1231 			configASSERT( uxSchedulerSuspended == 0 );
        LDR.W    R0,??DataTable39
        LDR      R0,[R0, #+0]
// 1232 			vTaskSuspendAll();
          CFI FunCall vTaskSuspendAll
        BL       vTaskSuspendAll
// 1233 			{
// 1234 				traceTASK_DELAY();
// 1235 
// 1236 				/* A task that is removed from the event list while the
// 1237 				scheduler is suspended will not get placed in the ready
// 1238 				list or removed from the blocked list until the scheduler
// 1239 				is resumed.
// 1240 
// 1241 				This task cannot be in an event list as it is the currently
// 1242 				executing task. */
// 1243 				prvAddCurrentTaskToDelayedList( xTicksToDelay, pdFALSE );
        MOVS     R1,#+0
        MOVS     R0,R4
          CFI FunCall prvAddCurrentTaskToDelayedList
        BL       prvAddCurrentTaskToDelayedList
// 1244 			}
// 1245 			xAlreadyYielded = xTaskResumeAll();
          CFI FunCall xTaskResumeAll
        BL       xTaskResumeAll
// 1246 		}
// 1247 		else
// 1248 		{
// 1249 			mtCOVERAGE_TEST_MARKER();
// 1250 		}
// 1251 
// 1252 		/* Force a reschedule if xTaskResumeAll has not already done so, we may
// 1253 		have put ourselves to sleep. */
// 1254 		if( xAlreadyYielded == pdFALSE )
??vTaskDelay_0:
        CMP      R0,#+0
        BNE.N    ??vTaskDelay_1
// 1255 		{
// 1256 			portYIELD_WITHIN_API();
        MOVS     R0,#+268435456
        LDR.W    R1,??DataTable37  ;; 0xe000ed04
        STR      R0,[R1, #+0]
        DSB      SY
        ISB      SY
// 1257 		}
// 1258 		else
// 1259 		{
// 1260 			mtCOVERAGE_TEST_MARKER();
// 1261 		}
// 1262 	}
??vTaskDelay_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock4
// 1263 
// 1264 #endif /* INCLUDE_vTaskDelay */
// 1265 /*-----------------------------------------------------------*/
// 1266 
// 1267 #if( ( INCLUDE_eTaskGetState == 1 ) || ( configUSE_TRACE_FACILITY == 1 ) )
// 1268 
// 1269 	eTaskState eTaskGetState( TaskHandle_t xTask )
// 1270 	{
// 1271 	eTaskState eReturn;
// 1272 	List_t *pxStateList;
// 1273 	const TCB_t * const pxTCB = ( TCB_t * ) xTask;
// 1274 
// 1275 		configASSERT( pxTCB );
// 1276 
// 1277 		if( pxTCB == pxCurrentTCB )
// 1278 		{
// 1279 			/* The task calling this function is querying its own state. */
// 1280 			eReturn = eRunning;
// 1281 		}
// 1282 		else
// 1283 		{
// 1284 			taskENTER_CRITICAL();
// 1285 			{
// 1286 				pxStateList = ( List_t * ) listLIST_ITEM_CONTAINER( &( pxTCB->xStateListItem ) );
// 1287 			}
// 1288 			taskEXIT_CRITICAL();
// 1289 
// 1290 			if( ( pxStateList == pxDelayedTaskList ) || ( pxStateList == pxOverflowDelayedTaskList ) )
// 1291 			{
// 1292 				/* The task being queried is referenced from one of the Blocked
// 1293 				lists. */
// 1294 				eReturn = eBlocked;
// 1295 			}
// 1296 
// 1297 			#if ( INCLUDE_vTaskSuspend == 1 )
// 1298 				else if( pxStateList == &xSuspendedTaskList )
// 1299 				{
// 1300 					/* The task being queried is referenced from the suspended
// 1301 					list.  Is it genuinely suspended or is it block
// 1302 					indefinitely? */
// 1303 					if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) == NULL )
// 1304 					{
// 1305 						eReturn = eSuspended;
// 1306 					}
// 1307 					else
// 1308 					{
// 1309 						eReturn = eBlocked;
// 1310 					}
// 1311 				}
// 1312 			#endif
// 1313 
// 1314 			#if ( INCLUDE_vTaskDelete == 1 )
// 1315 				else if( ( pxStateList == &xTasksWaitingTermination ) || ( pxStateList == NULL ) )
// 1316 				{
// 1317 					/* The task being queried is referenced from the deleted
// 1318 					tasks list, or it is not referenced from any lists at
// 1319 					all. */
// 1320 					eReturn = eDeleted;
// 1321 				}
// 1322 			#endif
// 1323 
// 1324 			else /*lint !e525 Negative indentation is intended to make use of pre-processor clearer. */
// 1325 			{
// 1326 				/* If the task is not in any other state, it must be in the
// 1327 				Ready (including pending ready) state. */
// 1328 				eReturn = eReady;
// 1329 			}
// 1330 		}
// 1331 
// 1332 		return eReturn;
// 1333 	} /*lint !e818 xTask cannot be a pointer to const because it is a typedef. */
// 1334 
// 1335 #endif /* INCLUDE_eTaskGetState */
// 1336 /*-----------------------------------------------------------*/
// 1337 
// 1338 #if ( INCLUDE_uxTaskPriorityGet == 1 )
// 1339 
// 1340 	UBaseType_t uxTaskPriorityGet( TaskHandle_t xTask )
// 1341 	{
// 1342 	TCB_t *pxTCB;
// 1343 	UBaseType_t uxReturn;
// 1344 
// 1345 		taskENTER_CRITICAL();
// 1346 		{
// 1347 			/* If null is passed in here then it is the priority of the that
// 1348 			called uxTaskPriorityGet() that is being queried. */
// 1349 			pxTCB = prvGetTCBFromHandle( xTask );
// 1350 			uxReturn = pxTCB->uxPriority;
// 1351 		}
// 1352 		taskEXIT_CRITICAL();
// 1353 
// 1354 		return uxReturn;
// 1355 	}
// 1356 
// 1357 #endif /* INCLUDE_uxTaskPriorityGet */
// 1358 /*-----------------------------------------------------------*/
// 1359 
// 1360 #if ( INCLUDE_uxTaskPriorityGet == 1 )
// 1361 
// 1362 	UBaseType_t uxTaskPriorityGetFromISR( TaskHandle_t xTask )
// 1363 	{
// 1364 	TCB_t *pxTCB;
// 1365 	UBaseType_t uxReturn, uxSavedInterruptState;
// 1366 
// 1367 		/* RTOS ports that support interrupt nesting have the concept of a
// 1368 		maximum	system call (or maximum API call) interrupt priority.
// 1369 		Interrupts that are	above the maximum system call priority are keep
// 1370 		permanently enabled, even when the RTOS kernel is in a critical section,
// 1371 		but cannot make any calls to FreeRTOS API functions.  If configASSERT()
// 1372 		is defined in FreeRTOSConfig.h then
// 1373 		portASSERT_IF_INTERRUPT_PRIORITY_INVALID() will result in an assertion
// 1374 		failure if a FreeRTOS API function is called from an interrupt that has
// 1375 		been assigned a priority above the configured maximum system call
// 1376 		priority.  Only FreeRTOS functions that end in FromISR can be called
// 1377 		from interrupts	that have been assigned a priority at or (logically)
// 1378 		below the maximum system call interrupt priority.  FreeRTOS maintains a
// 1379 		separate interrupt safe API to ensure interrupt entry is as fast and as
// 1380 		simple as possible.  More information (albeit Cortex-M specific) is
// 1381 		provided on the following link:
// 1382 		http://www.freertos.org/RTOS-Cortex-M3-M4.html */
// 1383 		portASSERT_IF_INTERRUPT_PRIORITY_INVALID();
// 1384 
// 1385 		uxSavedInterruptState = portSET_INTERRUPT_MASK_FROM_ISR();
// 1386 		{
// 1387 			/* If null is passed in here then it is the priority of the calling
// 1388 			task that is being queried. */
// 1389 			pxTCB = prvGetTCBFromHandle( xTask );
// 1390 			uxReturn = pxTCB->uxPriority;
// 1391 		}
// 1392 		portCLEAR_INTERRUPT_MASK_FROM_ISR( uxSavedInterruptState );
// 1393 
// 1394 		return uxReturn;
// 1395 	}
// 1396 
// 1397 #endif /* INCLUDE_uxTaskPriorityGet */
// 1398 /*-----------------------------------------------------------*/
// 1399 
// 1400 #if ( INCLUDE_vTaskPrioritySet == 1 )
// 1401 
// 1402 	void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority )
// 1403 	{
// 1404 	TCB_t *pxTCB;
// 1405 	UBaseType_t uxCurrentBasePriority, uxPriorityUsedOnEntry;
// 1406 	BaseType_t xYieldRequired = pdFALSE;
// 1407 
// 1408 		configASSERT( ( uxNewPriority < configMAX_PRIORITIES ) );
// 1409 
// 1410 		/* Ensure the new priority is valid. */
// 1411 		if( uxNewPriority >= ( UBaseType_t ) configMAX_PRIORITIES )
// 1412 		{
// 1413 			uxNewPriority = ( UBaseType_t ) configMAX_PRIORITIES - ( UBaseType_t ) 1U;
// 1414 		}
// 1415 		else
// 1416 		{
// 1417 			mtCOVERAGE_TEST_MARKER();
// 1418 		}
// 1419 
// 1420 		taskENTER_CRITICAL();
// 1421 		{
// 1422 			/* If null is passed in here then it is the priority of the calling
// 1423 			task that is being changed. */
// 1424 			pxTCB = prvGetTCBFromHandle( xTask );
// 1425 
// 1426 			traceTASK_PRIORITY_SET( pxTCB, uxNewPriority );
// 1427 
// 1428 			#if ( configUSE_MUTEXES == 1 )
// 1429 			{
// 1430 				uxCurrentBasePriority = pxTCB->uxBasePriority;
// 1431 			}
// 1432 			#else
// 1433 			{
// 1434 				uxCurrentBasePriority = pxTCB->uxPriority;
// 1435 			}
// 1436 			#endif
// 1437 
// 1438 			if( uxCurrentBasePriority != uxNewPriority )
// 1439 			{
// 1440 				/* The priority change may have readied a task of higher
// 1441 				priority than the calling task. */
// 1442 				if( uxNewPriority > uxCurrentBasePriority )
// 1443 				{
// 1444 					if( pxTCB != pxCurrentTCB )
// 1445 					{
// 1446 						/* The priority of a task other than the currently
// 1447 						running task is being raised.  Is the priority being
// 1448 						raised above that of the running task? */
// 1449 						if( uxNewPriority >= pxCurrentTCB->uxPriority )
// 1450 						{
// 1451 							xYieldRequired = pdTRUE;
// 1452 						}
// 1453 						else
// 1454 						{
// 1455 							mtCOVERAGE_TEST_MARKER();
// 1456 						}
// 1457 					}
// 1458 					else
// 1459 					{
// 1460 						/* The priority of the running task is being raised,
// 1461 						but the running task must already be the highest
// 1462 						priority task able to run so no yield is required. */
// 1463 					}
// 1464 				}
// 1465 				else if( pxTCB == pxCurrentTCB )
// 1466 				{
// 1467 					/* Setting the priority of the running task down means
// 1468 					there may now be another task of higher priority that
// 1469 					is ready to execute. */
// 1470 					xYieldRequired = pdTRUE;
// 1471 				}
// 1472 				else
// 1473 				{
// 1474 					/* Setting the priority of any other task down does not
// 1475 					require a yield as the running task must be above the
// 1476 					new priority of the task being modified. */
// 1477 				}
// 1478 
// 1479 				/* Remember the ready list the task might be referenced from
// 1480 				before its uxPriority member is changed so the
// 1481 				taskRESET_READY_PRIORITY() macro can function correctly. */
// 1482 				uxPriorityUsedOnEntry = pxTCB->uxPriority;
// 1483 
// 1484 				#if ( configUSE_MUTEXES == 1 )
// 1485 				{
// 1486 					/* Only change the priority being used if the task is not
// 1487 					currently using an inherited priority. */
// 1488 					if( pxTCB->uxBasePriority == pxTCB->uxPriority )
// 1489 					{
// 1490 						pxTCB->uxPriority = uxNewPriority;
// 1491 					}
// 1492 					else
// 1493 					{
// 1494 						mtCOVERAGE_TEST_MARKER();
// 1495 					}
// 1496 
// 1497 					/* The base priority gets set whatever. */
// 1498 					pxTCB->uxBasePriority = uxNewPriority;
// 1499 				}
// 1500 				#else
// 1501 				{
// 1502 					pxTCB->uxPriority = uxNewPriority;
// 1503 				}
// 1504 				#endif
// 1505 
// 1506 				/* Only reset the event list item value if the value is not
// 1507 				being used for anything else. */
// 1508 				if( ( listGET_LIST_ITEM_VALUE( &( pxTCB->xEventListItem ) ) & taskEVENT_LIST_ITEM_VALUE_IN_USE ) == 0UL )
// 1509 				{
// 1510 					listSET_LIST_ITEM_VALUE( &( pxTCB->xEventListItem ), ( ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) uxNewPriority ) ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
// 1511 				}
// 1512 				else
// 1513 				{
// 1514 					mtCOVERAGE_TEST_MARKER();
// 1515 				}
// 1516 
// 1517 				/* If the task is in the blocked or suspended list we need do
// 1518 				nothing more than change it's priority variable. However, if
// 1519 				the task is in a ready list it needs to be removed and placed
// 1520 				in the list appropriate to its new priority. */
// 1521 				if( listIS_CONTAINED_WITHIN( &( pxReadyTasksLists[ uxPriorityUsedOnEntry ] ), &( pxTCB->xStateListItem ) ) != pdFALSE )
// 1522 				{
// 1523 					/* The task is currently in its ready list - remove before adding
// 1524 					it to it's new ready list.  As we are in a critical section we
// 1525 					can do this even if the scheduler is suspended. */
// 1526 					if( uxListRemove( &( pxTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
// 1527 					{
// 1528 						/* It is known that the task is in its ready list so
// 1529 						there is no need to check again and the port level
// 1530 						reset macro can be called directly. */
// 1531 						portRESET_READY_PRIORITY( uxPriorityUsedOnEntry, uxTopReadyPriority );
// 1532 					}
// 1533 					else
// 1534 					{
// 1535 						mtCOVERAGE_TEST_MARKER();
// 1536 					}
// 1537 					prvAddTaskToReadyList( pxTCB );
// 1538 				}
// 1539 				else
// 1540 				{
// 1541 					mtCOVERAGE_TEST_MARKER();
// 1542 				}
// 1543 
// 1544 				if( xYieldRequired != pdFALSE )
// 1545 				{
// 1546 					taskYIELD_IF_USING_PREEMPTION();
// 1547 				}
// 1548 				else
// 1549 				{
// 1550 					mtCOVERAGE_TEST_MARKER();
// 1551 				}
// 1552 
// 1553 				/* Remove compiler warning about unused variables when the port
// 1554 				optimised task selection is not being used. */
// 1555 				( void ) uxPriorityUsedOnEntry;
// 1556 			}
// 1557 		}
// 1558 		taskEXIT_CRITICAL();
// 1559 	}
// 1560 
// 1561 #endif /* INCLUDE_vTaskPrioritySet */
// 1562 /*-----------------------------------------------------------*/
// 1563 
// 1564 #if ( INCLUDE_vTaskSuspend == 1 )
// 1565 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function vTaskSuspend
        THUMB
// 1566 	void vTaskSuspend( TaskHandle_t xTaskToSuspend )
// 1567 	{
vTaskSuspend:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
// 1568 	TCB_t *pxTCB;
// 1569 
// 1570 		taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
// 1571 		{
// 1572 			/* If null is passed in here then it is the running task that is
// 1573 			being suspended. */
// 1574 			pxTCB = prvGetTCBFromHandle( xTaskToSuspend );
        CMP      R4,#+0
        BNE.N    ??vTaskSuspend_0
        LDR.W    R0,??DataTable35_1
        LDR      R4,[R0, #+0]
        B.N      ??vTaskSuspend_1
// 1575 
// 1576 			traceTASK_SUSPEND( pxTCB );
// 1577 
// 1578 			/* Remove task from the ready/delayed list and place in the
// 1579 			suspended list. */
// 1580 			if( uxListRemove( &( pxTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
??vTaskSuspend_0:
??vTaskSuspend_1:
        ADDS     R0,R4,#+4
          CFI FunCall uxListRemove
        BL       uxListRemove
        CMP      R0,#+0
        BNE.N    ??vTaskSuspend_2
// 1581 			{
// 1582 				taskRESET_READY_PRIORITY( pxTCB->uxPriority );
        LDR.W    R1,??DataTable36
        LDR      R2,[R4, #+44]
        MOVS     R0,#+20
        MULS     R2,R0,R2
        LDR      R0,[R1, R2]
        CMP      R0,#+0
        BNE.N    ??vTaskSuspend_2
        LDR.W    R1,??DataTable35_4
        LDR      R2,[R1, #+0]
        MOVS     R3,#+1
        LDR      R0,[R4, #+44]
        LSLS     R3,R3,R0
        BICS     R2,R2,R3
        STR      R2,[R1, #+0]
// 1583 			}
// 1584 			else
// 1585 			{
// 1586 				mtCOVERAGE_TEST_MARKER();
// 1587 			}
// 1588 
// 1589 			/* Is the task waiting on an event also? */
// 1590 			if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) != NULL )
??vTaskSuspend_2:
        LDR      R0,[R4, #+40]
        CMP      R0,#+0
        BEQ.N    ??vTaskSuspend_3
// 1591 			{
// 1592 				( void ) uxListRemove( &( pxTCB->xEventListItem ) );
        ADDS     R0,R4,#+24
          CFI FunCall uxListRemove
        BL       uxListRemove
// 1593 			}
// 1594 			else
// 1595 			{
// 1596 				mtCOVERAGE_TEST_MARKER();
// 1597 			}
// 1598 
// 1599 			vListInsertEnd( &xSuspendedTaskList, &( pxTCB->xStateListItem ) );
??vTaskSuspend_3:
        LDR.W    R5,??DataTable37_1
        ADDS     R1,R4,#+4
        MOVS     R0,R5
          CFI FunCall vListInsertEnd
        BL       vListInsertEnd
// 1600 		}
// 1601 		taskEXIT_CRITICAL();
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
// 1602 
// 1603 		if( xSchedulerRunning != pdFALSE )
        LDR.W    R6,??DataTable35_2
        LDR      R0,[R6, #+0]
        CMP      R0,#+0
        BEQ.N    ??vTaskSuspend_4
// 1604 		{
// 1605 			/* Reset the next expected unblock time in case it referred to the
// 1606 			task that is now in the Suspended state. */
// 1607 			taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
// 1608 			{
// 1609 				prvResetNextTaskUnblockTime();
          CFI FunCall prvResetNextTaskUnblockTime
        BL       prvResetNextTaskUnblockTime
// 1610 			}
// 1611 			taskEXIT_CRITICAL();
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
// 1612 		}
// 1613 		else
// 1614 		{
// 1615 			mtCOVERAGE_TEST_MARKER();
// 1616 		}
// 1617 
// 1618 		if( pxTCB == pxCurrentTCB )
??vTaskSuspend_4:
        LDR.W    R1,??DataTable35_1
        LDR      R0,[R1, #+0]
        CMP      R4,R0
        BNE.N    ??vTaskSuspend_5
// 1619 		{
// 1620 			if( xSchedulerRunning != pdFALSE )
        LDR      R0,[R6, #+0]
        CMP      R0,#+0
        BEQ.N    ??vTaskSuspend_6
// 1621 			{
// 1622 				/* The current task has just been suspended. */
// 1623 				configASSERT( uxSchedulerSuspended == 0 );
        LDR.W    R0,??DataTable38
        LDR      R0,[R0, #+0]
// 1624 				portYIELD_WITHIN_API();
        MOVS     R0,#+268435456
        LDR.W    R1,??DataTable37  ;; 0xe000ed04
        STR      R0,[R1, #+0]
        DSB      SY
        ISB      SY
        B.N      ??vTaskSuspend_5
// 1625 			}
// 1626 			else
// 1627 			{
// 1628 				/* The scheduler is not running, but the task that was pointed
// 1629 				to by pxCurrentTCB has just been suspended and pxCurrentTCB
// 1630 				must be adjusted to point to a different task. */
// 1631 				if( listCURRENT_LIST_LENGTH( &xSuspendedTaskList ) == uxCurrentNumberOfTasks )
??vTaskSuspend_6:
        LDR      R0,[R5, #+0]
        LDR.W    R2,??DataTable35
        LDR      R2,[R2, #+0]
        CMP      R0,R2
        BNE.N    ??vTaskSuspend_7
// 1632 				{
// 1633 					/* No other tasks are ready, so set pxCurrentTCB back to
// 1634 					NULL so when the next task is created pxCurrentTCB will
// 1635 					be set to point to it no matter what its relative priority
// 1636 					is. */
// 1637 					pxCurrentTCB = NULL;
        MOVS     R0,#+0
        STR      R0,[R1, #+0]
        B.N      ??vTaskSuspend_5
// 1638 				}
// 1639 				else
// 1640 				{
// 1641 					vTaskSwitchContext();
??vTaskSuspend_7:
          CFI FunCall vTaskSwitchContext
        BL       vTaskSwitchContext
// 1642 				}
// 1643 			}
// 1644 		}
// 1645 		else
// 1646 		{
// 1647 			mtCOVERAGE_TEST_MARKER();
// 1648 		}
// 1649 	}
??vTaskSuspend_5:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock5
// 1650 
// 1651 #endif /* INCLUDE_vTaskSuspend */
// 1652 /*-----------------------------------------------------------*/
// 1653 
// 1654 #if ( INCLUDE_vTaskSuspend == 1 )
// 1655 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function prvTaskIsTaskSuspended
          CFI NoCalls
        THUMB
// 1656 	static BaseType_t prvTaskIsTaskSuspended( const TaskHandle_t xTask )
// 1657 	{
prvTaskIsTaskSuspended:
        MOVS     R1,R0
// 1658 	BaseType_t xReturn = pdFALSE;
        MOVS     R0,#+0
// 1659 	const TCB_t * const pxTCB = ( TCB_t * ) xTask;
// 1660 
// 1661 		/* Accesses xPendingReadyList so must be called from a critical
// 1662 		section. */
// 1663 
// 1664 		/* It does not make sense to check if the calling task is suspended. */
// 1665 		configASSERT( xTask );
// 1666 
// 1667 		/* Is the task being resumed actually in the suspended list? */
// 1668 		if( listIS_CONTAINED_WITHIN( &xSuspendedTaskList, &( pxTCB->xStateListItem ) ) != pdFALSE )
        LDR      R2,[R1, #+20]
        LDR.W    R3,??DataTable37_1
        CMP      R2,R3
        BNE.N    ??prvTaskIsTaskSuspended_0
// 1669 		{
// 1670 			/* Has the task already been resumed from within an ISR? */
// 1671 			if( listIS_CONTAINED_WITHIN( &xPendingReadyList, &( pxTCB->xEventListItem ) ) == pdFALSE )
        LDR      R2,[R1, #+40]
        LDR.W    R3,??DataTable42
        CMP      R2,R3
        BEQ.N    ??prvTaskIsTaskSuspended_0
// 1672 			{
// 1673 				/* Is it in the suspended list because it is in the	Suspended
// 1674 				state, or because is is blocked with no timeout? */
// 1675 				if( listIS_CONTAINED_WITHIN( NULL, &( pxTCB->xEventListItem ) ) != pdFALSE )
        LDR      R1,[R1, #+40]
        CMP      R1,#+0
        BNE.N    ??prvTaskIsTaskSuspended_0
// 1676 				{
// 1677 					xReturn = pdTRUE;
        MOVS     R0,#+1
// 1678 				}
// 1679 				else
// 1680 				{
// 1681 					mtCOVERAGE_TEST_MARKER();
// 1682 				}
// 1683 			}
// 1684 			else
// 1685 			{
// 1686 				mtCOVERAGE_TEST_MARKER();
// 1687 			}
// 1688 		}
// 1689 		else
// 1690 		{
// 1691 			mtCOVERAGE_TEST_MARKER();
// 1692 		}
// 1693 
// 1694 		return xReturn;
??prvTaskIsTaskSuspended_0:
        BX       LR               ;; return
// 1695 	} /*lint !e818 xTask cannot be a pointer to const because it is a typedef. */
          CFI EndBlock cfiBlock6
// 1696 
// 1697 #endif /* INCLUDE_vTaskSuspend */
// 1698 /*-----------------------------------------------------------*/
// 1699 
// 1700 #if ( INCLUDE_vTaskSuspend == 1 )
// 1701 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function vTaskResume
        THUMB
// 1702 	void vTaskResume( TaskHandle_t xTaskToResume )
// 1703 	{
vTaskResume:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
// 1704 	TCB_t * const pxTCB = ( TCB_t * ) xTaskToResume;
// 1705 
// 1706 		/* It does not make sense to resume the calling task. */
// 1707 		configASSERT( xTaskToResume );
// 1708 
// 1709 		/* The parameter cannot be NULL as it is impossible to resume the
// 1710 		currently executing task. */
// 1711 		if( ( pxTCB != NULL ) && ( pxTCB != pxCurrentTCB ) )
        CMP      R4,#+0
        BEQ.N    ??vTaskResume_0
        LDR.W    R5,??DataTable35_1
        LDR      R0,[R5, #+0]
        CMP      R4,R0
        BEQ.N    ??vTaskResume_0
// 1712 		{
// 1713 			taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
// 1714 			{
// 1715 				if( prvTaskIsTaskSuspended( pxTCB ) != pdFALSE )
        MOVS     R0,R4
          CFI FunCall prvTaskIsTaskSuspended
        BL       prvTaskIsTaskSuspended
        CMP      R0,#+0
        BEQ.N    ??vTaskResume_1
// 1716 				{
// 1717 					traceTASK_RESUME( pxTCB );
// 1718 
// 1719 					/* As we are in a critical section we can access the ready
// 1720 					lists even if the scheduler is suspended. */
// 1721 					( void ) uxListRemove(  &( pxTCB->xStateListItem ) );
        ADDS     R0,R4,#+4
          CFI FunCall uxListRemove
        BL       uxListRemove
// 1722 					prvAddTaskToReadyList( pxTCB );
        LDR.W    R1,??DataTable35_4
        LDR      R2,[R1, #+0]
        MOVS     R3,#+1
        LDR      R0,[R4, #+44]
        LSLS     R3,R3,R0
        ORRS     R2,R3,R2
        STR      R2,[R1, #+0]
        ADDS     R1,R4,#+4
        LDR.W    R2,??DataTable36
        LDR      R3,[R4, #+44]
        MOVS     R0,#+20
        MULS     R3,R0,R3
        ADD      R0,R2,R3
          CFI FunCall vListInsertEnd
        BL       vListInsertEnd
// 1723 
// 1724 					/* We may have just resumed a higher priority task. */
// 1725 					if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
        LDR      R0,[R4, #+44]
        LDR      R1,[R5, #+0]
        LDR      R1,[R1, #+44]
        CMP      R0,R1
        BCC.N    ??vTaskResume_1
// 1726 					{
// 1727 						/* This yield may not cause the task just resumed to run,
// 1728 						but will leave the lists in the correct state for the
// 1729 						next yield. */
// 1730 						taskYIELD_IF_USING_PREEMPTION();
        MOVS     R0,#+268435456
        LDR.W    R1,??DataTable37  ;; 0xe000ed04
        STR      R0,[R1, #+0]
        DSB      SY
        ISB      SY
// 1731 					}
// 1732 					else
// 1733 					{
// 1734 						mtCOVERAGE_TEST_MARKER();
// 1735 					}
// 1736 				}
// 1737 				else
// 1738 				{
// 1739 					mtCOVERAGE_TEST_MARKER();
// 1740 				}
// 1741 			}
// 1742 			taskEXIT_CRITICAL();
??vTaskResume_1:
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
// 1743 		}
// 1744 		else
// 1745 		{
// 1746 			mtCOVERAGE_TEST_MARKER();
// 1747 		}
// 1748 	}
??vTaskResume_0:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock7
// 1749 
// 1750 #endif /* INCLUDE_vTaskSuspend */
// 1751 
// 1752 /*-----------------------------------------------------------*/
// 1753 
// 1754 #if ( ( INCLUDE_xTaskResumeFromISR == 1 ) && ( INCLUDE_vTaskSuspend == 1 ) )
// 1755 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function xTaskResumeFromISR
        THUMB
// 1756 	BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume )
// 1757 	{
xTaskResumeFromISR:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R6,R0
// 1758 	BaseType_t xYieldRequired = pdFALSE;
        MOVS     R4,#+0
// 1759 	TCB_t * const pxTCB = ( TCB_t * ) xTaskToResume;
// 1760 	UBaseType_t uxSavedInterruptStatus;
// 1761 
// 1762 		configASSERT( xTaskToResume );
// 1763 
// 1764 		/* RTOS ports that support interrupt nesting have the concept of a
// 1765 		maximum	system call (or maximum API call) interrupt priority.
// 1766 		Interrupts that are	above the maximum system call priority are keep
// 1767 		permanently enabled, even when the RTOS kernel is in a critical section,
// 1768 		but cannot make any calls to FreeRTOS API functions.  If configASSERT()
// 1769 		is defined in FreeRTOSConfig.h then
// 1770 		portASSERT_IF_INTERRUPT_PRIORITY_INVALID() will result in an assertion
// 1771 		failure if a FreeRTOS API function is called from an interrupt that has
// 1772 		been assigned a priority above the configured maximum system call
// 1773 		priority.  Only FreeRTOS functions that end in FromISR can be called
// 1774 		from interrupts	that have been assigned a priority at or (logically)
// 1775 		below the maximum system call interrupt priority.  FreeRTOS maintains a
// 1776 		separate interrupt safe API to ensure interrupt entry is as fast and as
// 1777 		simple as possible.  More information (albeit Cortex-M specific) is
// 1778 		provided on the following link:
// 1779 		http://www.freertos.org/RTOS-Cortex-M3-M4.html */
// 1780 		portASSERT_IF_INTERRUPT_PRIORITY_INVALID();
          CFI FunCall vPortValidateInterruptPriority
        BL       vPortValidateInterruptPriority
// 1781 
// 1782 		uxSavedInterruptStatus = portSET_INTERRUPT_MASK_FROM_ISR();
        MRS      R5,BASEPRI
        MOVS     R0,#+80
        MSR      BASEPRI,R0
        DSB      SY
        ISB      SY
// 1783 		{
// 1784 			if( prvTaskIsTaskSuspended( pxTCB ) != pdFALSE )
        MOVS     R0,R6
          CFI FunCall prvTaskIsTaskSuspended
        BL       prvTaskIsTaskSuspended
        CMP      R0,#+0
        BEQ.N    ??xTaskResumeFromISR_0
// 1785 			{
// 1786 				traceTASK_RESUME_FROM_ISR( pxTCB );
// 1787 
// 1788 				/* Check the ready lists can be accessed. */
// 1789 				if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
        LDR.W    R0,??DataTable38
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??xTaskResumeFromISR_1
// 1790 				{
// 1791 					/* Ready lists can be accessed so move the task from the
// 1792 					suspended list to the ready list directly. */
// 1793 					if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
        LDR      R0,[R6, #+44]
        LDR.W    R1,??DataTable35_1
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+44]
        CMP      R0,R1
        BCC.N    ??xTaskResumeFromISR_2
// 1794 					{
// 1795 						xYieldRequired = pdTRUE;
        MOVS     R4,#+1
// 1796 					}
// 1797 					else
// 1798 					{
// 1799 						mtCOVERAGE_TEST_MARKER();
// 1800 					}
// 1801 
// 1802 					( void ) uxListRemove( &( pxTCB->xStateListItem ) );
??xTaskResumeFromISR_2:
        ADDS     R0,R6,#+4
          CFI FunCall uxListRemove
        BL       uxListRemove
// 1803 					prvAddTaskToReadyList( pxTCB );
        LDR.W    R1,??DataTable35_4
        LDR      R2,[R1, #+0]
        MOVS     R3,#+1
        LDR      R0,[R6, #+44]
        LSLS     R3,R3,R0
        ORRS     R2,R3,R2
        STR      R2,[R1, #+0]
        ADDS     R1,R6,#+4
        LDR.W    R2,??DataTable36
        LDR      R3,[R6, #+44]
        MOVS     R0,#+20
        MULS     R3,R0,R3
        ADD      R0,R2,R3
          CFI FunCall vListInsertEnd
        BL       vListInsertEnd
        B.N      ??xTaskResumeFromISR_0
// 1804 				}
// 1805 				else
// 1806 				{
// 1807 					/* The delayed or ready lists cannot be accessed so the task
// 1808 					is held in the pending ready list until the scheduler is
// 1809 					unsuspended. */
// 1810 					vListInsertEnd( &( xPendingReadyList ), &( pxTCB->xEventListItem ) );
??xTaskResumeFromISR_1:
        ADDS     R1,R6,#+24
        LDR.W    R0,??DataTable42
          CFI FunCall vListInsertEnd
        BL       vListInsertEnd
// 1811 				}
// 1812 			}
// 1813 			else
// 1814 			{
// 1815 				mtCOVERAGE_TEST_MARKER();
// 1816 			}
// 1817 		}
// 1818 		portCLEAR_INTERRUPT_MASK_FROM_ISR( uxSavedInterruptStatus );
??xTaskResumeFromISR_0:
        MSR      BASEPRI,R5
// 1819 
// 1820 		return xYieldRequired;
        MOVS     R0,R4
        POP      {R4-R6,PC}       ;; return
// 1821 	}
          CFI EndBlock cfiBlock8
// 1822 
// 1823 #endif /* ( ( INCLUDE_xTaskResumeFromISR == 1 ) && ( INCLUDE_vTaskSuspend == 1 ) ) */
// 1824 /*-----------------------------------------------------------*/
// 1825 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function vTaskStartScheduler
        THUMB
// 1826 void vTaskStartScheduler( void )
// 1827 {
vTaskStartScheduler:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+24
          CFI CFA R13+32
// 1828 BaseType_t xReturn;
// 1829 
// 1830 	/* Add the idle task at the lowest priority. */
// 1831 	#if( configSUPPORT_STATIC_ALLOCATION == 1 )
// 1832 	{
// 1833 		StaticTask_t *pxIdleTaskTCBBuffer = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
// 1834 		StackType_t *pxIdleTaskStackBuffer = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
// 1835 		uint32_t ulIdleTaskStackSize;
// 1836 
// 1837 		/* The Idle task is created using user provided RAM - obtain the
// 1838 		address of the RAM then create the idle task. */
// 1839 		vApplicationGetIdleTaskMemory( &pxIdleTaskTCBBuffer, &pxIdleTaskStackBuffer, &ulIdleTaskStackSize );
        ADD      R2,SP,#+20
        ADD      R1,SP,#+12
        ADD      R0,SP,#+16
          CFI FunCall vApplicationGetIdleTaskMemory
        BL       vApplicationGetIdleTaskMemory
// 1840 		xIdleTaskHandle = xTaskCreateStatic(	prvIdleTask,
// 1841 												"IDLE",
// 1842 												ulIdleTaskStackSize,
// 1843 												( void * ) NULL,
// 1844 												( tskIDLE_PRIORITY | portPRIVILEGE_BIT ),
// 1845 												pxIdleTaskStackBuffer,
// 1846 												pxIdleTaskTCBBuffer ); /*lint !e961 MISRA exception, justified as it is not a redundant explicit cast to all supported compilers. */
        LDR.W    R4,??DataTable42_1
        LDR      R0,[SP, #+16]
        STR      R0,[SP, #+8]
        LDR      R0,[SP, #+12]
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        LDR      R2,[SP, #+20]
        LDR.W    R1,??DataTable42_2
        ADR.W    R0,prvIdleTask
          CFI FunCall xTaskCreateStatic
        BL       xTaskCreateStatic
        STR      R0,[R4, #+0]
// 1847 
// 1848 		if( xIdleTaskHandle != NULL )
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??vTaskStartScheduler_0
// 1849 		{
// 1850 			xReturn = pdPASS;
        MOVS     R0,#+1
        B.N      ??vTaskStartScheduler_1
// 1851 		}
// 1852 		else
// 1853 		{
// 1854 			xReturn = pdFAIL;
??vTaskStartScheduler_0:
        MOVS     R0,#+0
// 1855 		}
// 1856 	}
// 1857 	#else
// 1858 	{
// 1859 		/* The Idle task is being created using dynamically allocated RAM. */
// 1860 		xReturn = xTaskCreate(	prvIdleTask,
// 1861 								"IDLE", configMINIMAL_STACK_SIZE,
// 1862 								( void * ) NULL,
// 1863 								( tskIDLE_PRIORITY | portPRIVILEGE_BIT ),
// 1864 								&xIdleTaskHandle ); /*lint !e961 MISRA exception, justified as it is not a redundant explicit cast to all supported compilers. */
// 1865 	}
// 1866 	#endif /* configSUPPORT_STATIC_ALLOCATION */
// 1867 
// 1868 	#if ( configUSE_TIMERS == 1 )
// 1869 	{
// 1870 		if( xReturn == pdPASS )
??vTaskStartScheduler_1:
        CMP      R0,#+1
        BNE.N    ??vTaskStartScheduler_2
// 1871 		{
// 1872 			xReturn = xTimerCreateTimerTask();
          CFI FunCall xTimerCreateTimerTask
        BL       xTimerCreateTimerTask
// 1873 		}
// 1874 		else
// 1875 		{
// 1876 			mtCOVERAGE_TEST_MARKER();
// 1877 		}
// 1878 	}
// 1879 	#endif /* configUSE_TIMERS */
// 1880 
// 1881 	if( xReturn == pdPASS )
??vTaskStartScheduler_2:
        CMP      R0,#+1
        BNE.N    ??vTaskStartScheduler_3
// 1882 	{
// 1883 		/* Interrupts are turned off here, to ensure a tick does not occur
// 1884 		before or during the call to xPortStartScheduler().  The stacks of
// 1885 		the created tasks contain a status word with interrupts switched on
// 1886 		so interrupts will automatically get re-enabled when the first task
// 1887 		starts to run. */
// 1888 		portDISABLE_INTERRUPTS();
        MOVS     R0,#+80
        MSR      BASEPRI,R0
        DSB      SY
        ISB      SY
// 1889 
// 1890 		#if ( configUSE_NEWLIB_REENTRANT == 1 )
// 1891 		{
// 1892 			/* Switch Newlib's _impure_ptr variable to point to the _reent
// 1893 			structure specific to the task that will run first. */
// 1894 			_impure_ptr = &( pxCurrentTCB->xNewLib_reent );
// 1895 		}
// 1896 		#endif /* configUSE_NEWLIB_REENTRANT */
// 1897 
// 1898 		xNextTaskUnblockTime = portMAX_DELAY;
        MOVS     R0,#-1
        LDR.W    R1,??DataTable42_3
        STR      R0,[R1, #+0]
// 1899 		xSchedulerRunning = pdTRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable35_2
        STR      R0,[R1, #+0]
// 1900 		xTickCount = ( TickType_t ) 0U;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable42_4
        STR      R0,[R1, #+0]
// 1901 
// 1902 		/* If configGENERATE_RUN_TIME_STATS is defined then the following
// 1903 		macro must be defined to configure the timer/counter used to generate
// 1904 		the run time counter time base. */
// 1905 		portCONFIGURE_TIMER_FOR_RUN_TIME_STATS();
// 1906 
// 1907 		/* Setting up the timer tick is hardware specific and thus in the
// 1908 		portable interface. */
// 1909 		if( xPortStartScheduler() != pdFALSE )
          CFI FunCall xPortStartScheduler
        BL       xPortStartScheduler
        B.N      ??vTaskStartScheduler_4
// 1910 		{
// 1911 			/* Should not reach here as if the scheduler is running the
// 1912 			function will not return. */
// 1913 		}
// 1914 		else
// 1915 		{
// 1916 			/* Should only reach here if a task calls xTaskEndScheduler(). */
// 1917 		}
// 1918 	}
// 1919 	else
// 1920 	{
// 1921 		/* This line will only be reached if the kernel could not be started,
// 1922 		because there was not enough FreeRTOS heap to create the idle task
// 1923 		or the timer task. */
// 1924 		configASSERT( xReturn != errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY );
// 1925 	}
// 1926 
// 1927 	/* Prevent compiler warnings if INCLUDE_xTaskGetIdleTaskHandle is set to 0,
// 1928 	meaning xIdleTaskHandle is not used anywhere else. */
// 1929 	( void ) xIdleTaskHandle;
// 1930 }
??vTaskStartScheduler_3:
??vTaskStartScheduler_4:
        ADD      SP,SP,#+24
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock9
// 1931 /*-----------------------------------------------------------*/
// 1932 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function vTaskEndScheduler
        THUMB
// 1933 void vTaskEndScheduler( void )
// 1934 {
vTaskEndScheduler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 1935 	/* Stop the scheduler interrupts and call the portable scheduler end
// 1936 	routine so the original ISRs can be restored if necessary.  The port
// 1937 	layer must ensure interrupts enable	bit is left in the correct state. */
// 1938 	portDISABLE_INTERRUPTS();
        MOVS     R0,#+80
        MSR      BASEPRI,R0
        DSB      SY
        ISB      SY
// 1939 	xSchedulerRunning = pdFALSE;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable35_2
        STR      R0,[R1, #+0]
// 1940 	vPortEndScheduler();
          CFI FunCall vPortEndScheduler
        BL       vPortEndScheduler
// 1941 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock10
// 1942 /*----------------------------------------------------------*/
// 1943 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function vTaskSuspendAll
          CFI NoCalls
        THUMB
// 1944 void vTaskSuspendAll( void )
// 1945 {
// 1946 	/* A critical section is not required as the variable is of type
// 1947 	BaseType_t.  Please read Richard Barry's reply in the following link to a
// 1948 	post in the FreeRTOS support forum before reporting this as a bug! -
// 1949 	http://goo.gl/wu4acr */
// 1950 	++uxSchedulerSuspended;
vTaskSuspendAll:
        LDR.W    R0,??DataTable39
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
// 1951 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
// 1952 /*----------------------------------------------------------*/
// 1953 
// 1954 #if ( configUSE_TICKLESS_IDLE != 0 )
// 1955 
// 1956 	static TickType_t prvGetExpectedIdleTime( void )
// 1957 	{
// 1958 	TickType_t xReturn;
// 1959 	UBaseType_t uxHigherPriorityReadyTasks = pdFALSE;
// 1960 
// 1961 		/* uxHigherPriorityReadyTasks takes care of the case where
// 1962 		configUSE_PREEMPTION is 0, so there may be tasks above the idle priority
// 1963 		task that are in the Ready state, even though the idle task is
// 1964 		running. */
// 1965 		#if( configUSE_PORT_OPTIMISED_TASK_SELECTION == 0 )
// 1966 		{
// 1967 			if( uxTopReadyPriority > tskIDLE_PRIORITY )
// 1968 			{
// 1969 				uxHigherPriorityReadyTasks = pdTRUE;
// 1970 			}
// 1971 		}
// 1972 		#else
// 1973 		{
// 1974 			const UBaseType_t uxLeastSignificantBit = ( UBaseType_t ) 0x01;
// 1975 
// 1976 			/* When port optimised task selection is used the uxTopReadyPriority
// 1977 			variable is used as a bit map.  If bits other than the least
// 1978 			significant bit are set then there are tasks that have a priority
// 1979 			above the idle priority that are in the Ready state.  This takes
// 1980 			care of the case where the co-operative scheduler is in use. */
// 1981 			if( uxTopReadyPriority > uxLeastSignificantBit )
// 1982 			{
// 1983 				uxHigherPriorityReadyTasks = pdTRUE;
// 1984 			}
// 1985 		}
// 1986 		#endif
// 1987 
// 1988 		if( pxCurrentTCB->uxPriority > tskIDLE_PRIORITY )
// 1989 		{
// 1990 			xReturn = 0;
// 1991 		}
// 1992 		else if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ tskIDLE_PRIORITY ] ) ) > 1 )
// 1993 		{
// 1994 			/* There are other idle priority tasks in the ready state.  If
// 1995 			time slicing is used then the very next tick interrupt must be
// 1996 			processed. */
// 1997 			xReturn = 0;
// 1998 		}
// 1999 		else if( uxHigherPriorityReadyTasks != pdFALSE )
// 2000 		{
// 2001 			/* There are tasks in the Ready state that have a priority above the
// 2002 			idle priority.  This path can only be reached if
// 2003 			configUSE_PREEMPTION is 0. */
// 2004 			xReturn = 0;
// 2005 		}
// 2006 		else
// 2007 		{
// 2008 			xReturn = xNextTaskUnblockTime - xTickCount;
// 2009 		}
// 2010 
// 2011 		return xReturn;
// 2012 	}
// 2013 
// 2014 #endif /* configUSE_TICKLESS_IDLE */
// 2015 /*----------------------------------------------------------*/
// 2016 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function xTaskResumeAll
        THUMB
// 2017 BaseType_t xTaskResumeAll( void )
// 2018 {
xTaskResumeAll:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
// 2019 TCB_t *pxTCB = NULL;
        MOVS     R4,#+0
// 2020 BaseType_t xAlreadyYielded = pdFALSE;
        MOVS     R5,#+0
// 2021 
// 2022 	/* If uxSchedulerSuspended is zero then this function does not match a
// 2023 	previous call to vTaskSuspendAll(). */
// 2024 	configASSERT( uxSchedulerSuspended );
        LDR.W    R6,??DataTable38
        LDR      R0,[R6, #+0]
// 2025 
// 2026 	/* It is possible that an ISR caused a task to be removed from an event
// 2027 	list while the scheduler was suspended.  If this was the case then the
// 2028 	removed task will have been added to the xPendingReadyList.  Once the
// 2029 	scheduler has been resumed it is safe to move all the pending ready
// 2030 	tasks from this list into their appropriate ready list. */
// 2031 	taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
// 2032 	{
// 2033 		--uxSchedulerSuspended;
        LDR      R0,[R6, #+0]
        SUBS     R0,R0,#+1
        STR      R0,[R6, #+0]
// 2034 
// 2035 		if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
        LDR      R0,[R6, #+0]
        CMP      R0,#+0
        BNE.N    ??xTaskResumeAll_0
// 2036 		{
// 2037 			if( uxCurrentNumberOfTasks > ( UBaseType_t ) 0U )
        LDR.W    R0,??DataTable35
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??xTaskResumeAll_1
        B.N      ??xTaskResumeAll_0
// 2038 			{
// 2039 				/* Move any readied tasks from the pending list into the
// 2040 				appropriate ready list. */
// 2041 				while( listLIST_IS_EMPTY( &xPendingReadyList ) == pdFALSE )
// 2042 				{
// 2043 					pxTCB = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( ( &xPendingReadyList ) );
??xTaskResumeAll_2:
        LDR      R0,[R1, #+12]
        LDR      R4,[R0, #+12]
// 2044 					( void ) uxListRemove( &( pxTCB->xEventListItem ) );
        ADDS     R0,R4,#+24
          CFI FunCall uxListRemove
        BL       uxListRemove
// 2045 					( void ) uxListRemove( &( pxTCB->xStateListItem ) );
        ADDS     R0,R4,#+4
          CFI FunCall uxListRemove
        BL       uxListRemove
// 2046 					prvAddTaskToReadyList( pxTCB );
        LDR.W    R1,??DataTable35_4
        LDR      R2,[R1, #+0]
        MOVS     R3,#+1
        LDR      R0,[R4, #+44]
        LSLS     R3,R3,R0
        ORRS     R2,R3,R2
        STR      R2,[R1, #+0]
        ADDS     R1,R4,#+4
        LDR.W    R2,??DataTable36
        LDR      R3,[R4, #+44]
        MOVS     R0,#+20
        MULS     R3,R0,R3
        ADD      R0,R2,R3
          CFI FunCall vListInsertEnd
        BL       vListInsertEnd
// 2047 
// 2048 					/* If the moved task has a priority higher than the current
// 2049 					task then a yield must be performed. */
// 2050 					if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
        LDR      R0,[R4, #+44]
        LDR.W    R1,??DataTable35_1
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+44]
        CMP      R0,R1
        BCC.N    ??xTaskResumeAll_1
// 2051 					{
// 2052 						xYieldPending = pdTRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable42_5
        STR      R0,[R1, #+0]
// 2053 					}
// 2054 					else
// 2055 					{
// 2056 						mtCOVERAGE_TEST_MARKER();
// 2057 					}
// 2058 				}
??xTaskResumeAll_1:
        LDR.W    R1,??DataTable42
        LDR      R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??xTaskResumeAll_2
// 2059 
// 2060 				if( pxTCB != NULL )
        CMP      R4,#+0
        BEQ.N    ??xTaskResumeAll_3
// 2061 				{
// 2062 					/* A task was unblocked while the scheduler was suspended,
// 2063 					which may have prevented the next unblock time from being
// 2064 					re-calculated, in which case re-calculate it now.  Mainly
// 2065 					important for low power tickless implementations, where
// 2066 					this can prevent an unnecessary exit from low power
// 2067 					state. */
// 2068 					prvResetNextTaskUnblockTime();
          CFI FunCall prvResetNextTaskUnblockTime
        BL       prvResetNextTaskUnblockTime
// 2069 				}
// 2070 
// 2071 				/* If any ticks occurred while the scheduler was suspended then
// 2072 				they should be processed now.  This ensures the tick count does
// 2073 				not	slip, and that any delayed tasks are resumed at the correct
// 2074 				time. */
// 2075 				{
// 2076 					UBaseType_t uxPendedCounts = uxPendedTicks; /* Non-volatile copy. */
??xTaskResumeAll_3:
        LDR.W    R6,??DataTable42_6
        LDR      R4,[R6, #+0]
// 2077 
// 2078 					if( uxPendedCounts > ( UBaseType_t ) 0U )
        CMP      R4,#+0
        BEQ.N    ??xTaskResumeAll_4
// 2079 					{
// 2080 						do
// 2081 						{
// 2082 							if( xTaskIncrementTick() != pdFALSE )
??xTaskResumeAll_5:
          CFI FunCall xTaskIncrementTick
        BL       xTaskIncrementTick
        CMP      R0,#+0
        BEQ.N    ??xTaskResumeAll_6
// 2083 							{
// 2084 								xYieldPending = pdTRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable42_5
        STR      R0,[R1, #+0]
// 2085 							}
// 2086 							else
// 2087 							{
// 2088 								mtCOVERAGE_TEST_MARKER();
// 2089 							}
// 2090 							--uxPendedCounts;
??xTaskResumeAll_6:
        SUBS     R4,R4,#+1
// 2091 						} while( uxPendedCounts > ( UBaseType_t ) 0U );
        CMP      R4,#+0
        BNE.N    ??xTaskResumeAll_5
// 2092 
// 2093 						uxPendedTicks = 0;
        MOVS     R0,#+0
        STR      R0,[R6, #+0]
// 2094 					}
// 2095 					else
// 2096 					{
// 2097 						mtCOVERAGE_TEST_MARKER();
// 2098 					}
// 2099 				}
// 2100 
// 2101 				if( xYieldPending != pdFALSE )
??xTaskResumeAll_4:
        LDR.W    R0,??DataTable42_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??xTaskResumeAll_0
// 2102 				{
// 2103 					#if( configUSE_PREEMPTION != 0 )
// 2104 					{
// 2105 						xAlreadyYielded = pdTRUE;
        MOVS     R5,#+1
// 2106 					}
// 2107 					#endif
// 2108 					taskYIELD_IF_USING_PREEMPTION();
        MOVS     R0,#+268435456
        LDR.W    R1,??DataTable37  ;; 0xe000ed04
        STR      R0,[R1, #+0]
        DSB      SY
        ISB      SY
// 2109 				}
// 2110 				else
// 2111 				{
// 2112 					mtCOVERAGE_TEST_MARKER();
// 2113 				}
// 2114 			}
// 2115 		}
// 2116 		else
// 2117 		{
// 2118 			mtCOVERAGE_TEST_MARKER();
// 2119 		}
// 2120 	}
// 2121 	taskEXIT_CRITICAL();
??xTaskResumeAll_0:
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
// 2122 
// 2123 	return xAlreadyYielded;
        MOVS     R0,R5
        POP      {R4-R6,PC}       ;; return
// 2124 }
          CFI EndBlock cfiBlock12
// 2125 /*-----------------------------------------------------------*/
// 2126 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function xTaskGetTickCount
          CFI NoCalls
        THUMB
// 2127 TickType_t xTaskGetTickCount( void )
// 2128 {
// 2129 TickType_t xTicks;
// 2130 
// 2131 	/* Critical section required if running on a 16 bit processor. */
// 2132 	portTICK_TYPE_ENTER_CRITICAL();
// 2133 	{
// 2134 		xTicks = xTickCount;
xTaskGetTickCount:
        LDR.W    R0,??DataTable42_4
        LDR      R0,[R0, #+0]
// 2135 	}
// 2136 	portTICK_TYPE_EXIT_CRITICAL();
// 2137 
// 2138 	return xTicks;
        BX       LR               ;; return
// 2139 }
          CFI EndBlock cfiBlock13
// 2140 /*-----------------------------------------------------------*/
// 2141 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function xTaskGetTickCountFromISR
        THUMB
// 2142 TickType_t xTaskGetTickCountFromISR( void )
// 2143 {
xTaskGetTickCountFromISR:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 2144 TickType_t xReturn;
// 2145 UBaseType_t uxSavedInterruptStatus;
// 2146 
// 2147 	/* RTOS ports that support interrupt nesting have the concept of a maximum
// 2148 	system call (or maximum API call) interrupt priority.  Interrupts that are
// 2149 	above the maximum system call priority are kept permanently enabled, even
// 2150 	when the RTOS kernel is in a critical section, but cannot make any calls to
// 2151 	FreeRTOS API functions.  If configASSERT() is defined in FreeRTOSConfig.h
// 2152 	then portASSERT_IF_INTERRUPT_PRIORITY_INVALID() will result in an assertion
// 2153 	failure if a FreeRTOS API function is called from an interrupt that has been
// 2154 	assigned a priority above the configured maximum system call priority.
// 2155 	Only FreeRTOS functions that end in FromISR can be called from interrupts
// 2156 	that have been assigned a priority at or (logically) below the maximum
// 2157 	system call	interrupt priority.  FreeRTOS maintains a separate interrupt
// 2158 	safe API to ensure interrupt entry is as fast and as simple as possible.
// 2159 	More information (albeit Cortex-M specific) is provided on the following
// 2160 	link: http://www.freertos.org/RTOS-Cortex-M3-M4.html */
// 2161 	portASSERT_IF_INTERRUPT_PRIORITY_INVALID();
          CFI FunCall vPortValidateInterruptPriority
        BL       vPortValidateInterruptPriority
// 2162 
// 2163 	uxSavedInterruptStatus = portTICK_TYPE_SET_INTERRUPT_MASK_FROM_ISR();
        MOVS     R0,#+0
// 2164 	{
// 2165 		xReturn = xTickCount;
        LDR.W    R0,??DataTable42_4
        LDR      R0,[R0, #+0]
// 2166 	}
// 2167 	portTICK_TYPE_CLEAR_INTERRUPT_MASK_FROM_ISR( uxSavedInterruptStatus );
// 2168 
// 2169 	return xReturn;
        POP      {R1,PC}          ;; return
// 2170 }
          CFI EndBlock cfiBlock14
// 2171 /*-----------------------------------------------------------*/
// 2172 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function uxTaskGetNumberOfTasks
          CFI NoCalls
        THUMB
// 2173 UBaseType_t uxTaskGetNumberOfTasks( void )
// 2174 {
// 2175 	/* A critical section is not required because the variables are of type
// 2176 	BaseType_t. */
// 2177 	return uxCurrentNumberOfTasks;
uxTaskGetNumberOfTasks:
        LDR.W    R0,??DataTable35
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
// 2178 }
          CFI EndBlock cfiBlock15
// 2179 /*-----------------------------------------------------------*/
// 2180 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function pcTaskGetName
          CFI NoCalls
        THUMB
// 2181 char *pcTaskGetName( TaskHandle_t xTaskToQuery ) /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
// 2182 {
// 2183 TCB_t *pxTCB;
// 2184 
// 2185 	/* If null is passed in here then the name of the calling task is being
// 2186 	queried. */
// 2187 	pxTCB = prvGetTCBFromHandle( xTaskToQuery );
pcTaskGetName:
        CMP      R0,#+0
        BNE.N    ??pcTaskGetName_0
        LDR.W    R0,??DataTable42_7
        LDR      R0,[R0, #+0]
        B.N      ??pcTaskGetName_1
// 2188 	configASSERT( pxTCB );
// 2189 	return &( pxTCB->pcTaskName[ 0 ] );
??pcTaskGetName_0:
??pcTaskGetName_1:
        ADDS     R0,R0,#+52
        BX       LR               ;; return
// 2190 }
          CFI EndBlock cfiBlock16
// 2191 /*-----------------------------------------------------------*/
// 2192 
// 2193 #if ( INCLUDE_xTaskGetHandle == 1 )
// 2194 
// 2195 	static TCB_t *prvSearchForNameWithinSingleList( List_t *pxList, const char pcNameToQuery[] )
// 2196 	{
// 2197 	TCB_t *pxNextTCB, *pxFirstTCB, *pxReturn = NULL;
// 2198 	UBaseType_t x;
// 2199 	char cNextChar;
// 2200 
// 2201 		/* This function is called with the scheduler suspended. */
// 2202 
// 2203 		if( listCURRENT_LIST_LENGTH( pxList ) > ( UBaseType_t ) 0 )
// 2204 		{
// 2205 			listGET_OWNER_OF_NEXT_ENTRY( pxFirstTCB, pxList );
// 2206 
// 2207 			do
// 2208 			{
// 2209 				listGET_OWNER_OF_NEXT_ENTRY( pxNextTCB, pxList );
// 2210 
// 2211 				/* Check each character in the name looking for a match or
// 2212 				mismatch. */
// 2213 				for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) configMAX_TASK_NAME_LEN; x++ )
// 2214 				{
// 2215 					cNextChar = pxNextTCB->pcTaskName[ x ];
// 2216 
// 2217 					if( cNextChar != pcNameToQuery[ x ] )
// 2218 					{
// 2219 						/* Characters didn't match. */
// 2220 						break;
// 2221 					}
// 2222 					else if( cNextChar == 0x00 )
// 2223 					{
// 2224 						/* Both strings terminated, a match must have been
// 2225 						found. */
// 2226 						pxReturn = pxNextTCB;
// 2227 						break;
// 2228 					}
// 2229 					else
// 2230 					{
// 2231 						mtCOVERAGE_TEST_MARKER();
// 2232 					}
// 2233 				}
// 2234 
// 2235 				if( pxReturn != NULL )
// 2236 				{
// 2237 					/* The handle has been found. */
// 2238 					break;
// 2239 				}
// 2240 
// 2241 			} while( pxNextTCB != pxFirstTCB );
// 2242 		}
// 2243 		else
// 2244 		{
// 2245 			mtCOVERAGE_TEST_MARKER();
// 2246 		}
// 2247 
// 2248 		return pxReturn;
// 2249 	}
// 2250 
// 2251 #endif /* INCLUDE_xTaskGetHandle */
// 2252 /*-----------------------------------------------------------*/
// 2253 
// 2254 #if ( INCLUDE_xTaskGetHandle == 1 )
// 2255 
// 2256 	TaskHandle_t xTaskGetHandle( const char *pcNameToQuery ) /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
// 2257 	{
// 2258 	UBaseType_t uxQueue = configMAX_PRIORITIES;
// 2259 	TCB_t* pxTCB;
// 2260 
// 2261 		/* Task names will be truncated to configMAX_TASK_NAME_LEN - 1 bytes. */
// 2262 		configASSERT( strlen( pcNameToQuery ) < configMAX_TASK_NAME_LEN );
// 2263 
// 2264 		vTaskSuspendAll();
// 2265 		{
// 2266 			/* Search the ready lists. */
// 2267 			do
// 2268 			{
// 2269 				uxQueue--;
// 2270 				pxTCB = prvSearchForNameWithinSingleList( ( List_t * ) &( pxReadyTasksLists[ uxQueue ] ), pcNameToQuery );
// 2271 
// 2272 				if( pxTCB != NULL )
// 2273 				{
// 2274 					/* Found the handle. */
// 2275 					break;
// 2276 				}
// 2277 
// 2278 			} while( uxQueue > ( UBaseType_t ) tskIDLE_PRIORITY ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
// 2279 
// 2280 			/* Search the delayed lists. */
// 2281 			if( pxTCB == NULL )
// 2282 			{
// 2283 				pxTCB = prvSearchForNameWithinSingleList( ( List_t * ) pxDelayedTaskList, pcNameToQuery );
// 2284 			}
// 2285 
// 2286 			if( pxTCB == NULL )
// 2287 			{
// 2288 				pxTCB = prvSearchForNameWithinSingleList( ( List_t * ) pxOverflowDelayedTaskList, pcNameToQuery );
// 2289 			}
// 2290 
// 2291 			#if ( INCLUDE_vTaskSuspend == 1 )
// 2292 			{
// 2293 				if( pxTCB == NULL )
// 2294 				{
// 2295 					/* Search the suspended list. */
// 2296 					pxTCB = prvSearchForNameWithinSingleList( &xSuspendedTaskList, pcNameToQuery );
// 2297 				}
// 2298 			}
// 2299 			#endif
// 2300 
// 2301 			#if( INCLUDE_vTaskDelete == 1 )
// 2302 			{
// 2303 				if( pxTCB == NULL )
// 2304 				{
// 2305 					/* Search the deleted list. */
// 2306 					pxTCB = prvSearchForNameWithinSingleList( &xTasksWaitingTermination, pcNameToQuery );
// 2307 				}
// 2308 			}
// 2309 			#endif
// 2310 		}
// 2311 		( void ) xTaskResumeAll();
// 2312 
// 2313 		return ( TaskHandle_t ) pxTCB;
// 2314 	}
// 2315 
// 2316 #endif /* INCLUDE_xTaskGetHandle */
// 2317 /*-----------------------------------------------------------*/
// 2318 
// 2319 #if ( configUSE_TRACE_FACILITY == 1 )
// 2320 
// 2321 	UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime )
// 2322 	{
// 2323 	UBaseType_t uxTask = 0, uxQueue = configMAX_PRIORITIES;
// 2324 
// 2325 		vTaskSuspendAll();
// 2326 		{
// 2327 			/* Is there a space in the array for each task in the system? */
// 2328 			if( uxArraySize >= uxCurrentNumberOfTasks )
// 2329 			{
// 2330 				/* Fill in an TaskStatus_t structure with information on each
// 2331 				task in the Ready state. */
// 2332 				do
// 2333 				{
// 2334 					uxQueue--;
// 2335 					uxTask += prvListTasksWithinSingleList( &( pxTaskStatusArray[ uxTask ] ), &( pxReadyTasksLists[ uxQueue ] ), eReady );
// 2336 
// 2337 				} while( uxQueue > ( UBaseType_t ) tskIDLE_PRIORITY ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
// 2338 
// 2339 				/* Fill in an TaskStatus_t structure with information on each
// 2340 				task in the Blocked state. */
// 2341 				uxTask += prvListTasksWithinSingleList( &( pxTaskStatusArray[ uxTask ] ), ( List_t * ) pxDelayedTaskList, eBlocked );
// 2342 				uxTask += prvListTasksWithinSingleList( &( pxTaskStatusArray[ uxTask ] ), ( List_t * ) pxOverflowDelayedTaskList, eBlocked );
// 2343 
// 2344 				#if( INCLUDE_vTaskDelete == 1 )
// 2345 				{
// 2346 					/* Fill in an TaskStatus_t structure with information on
// 2347 					each task that has been deleted but not yet cleaned up. */
// 2348 					uxTask += prvListTasksWithinSingleList( &( pxTaskStatusArray[ uxTask ] ), &xTasksWaitingTermination, eDeleted );
// 2349 				}
// 2350 				#endif
// 2351 
// 2352 				#if ( INCLUDE_vTaskSuspend == 1 )
// 2353 				{
// 2354 					/* Fill in an TaskStatus_t structure with information on
// 2355 					each task in the Suspended state. */
// 2356 					uxTask += prvListTasksWithinSingleList( &( pxTaskStatusArray[ uxTask ] ), &xSuspendedTaskList, eSuspended );
// 2357 				}
// 2358 				#endif
// 2359 
// 2360 				#if ( configGENERATE_RUN_TIME_STATS == 1)
// 2361 				{
// 2362 					if( pulTotalRunTime != NULL )
// 2363 					{
// 2364 						#ifdef portALT_GET_RUN_TIME_COUNTER_VALUE
// 2365 							portALT_GET_RUN_TIME_COUNTER_VALUE( ( *pulTotalRunTime ) );
// 2366 						#else
// 2367 							*pulTotalRunTime = portGET_RUN_TIME_COUNTER_VALUE();
// 2368 						#endif
// 2369 					}
// 2370 				}
// 2371 				#else
// 2372 				{
// 2373 					if( pulTotalRunTime != NULL )
// 2374 					{
// 2375 						*pulTotalRunTime = 0;
// 2376 					}
// 2377 				}
// 2378 				#endif
// 2379 			}
// 2380 			else
// 2381 			{
// 2382 				mtCOVERAGE_TEST_MARKER();
// 2383 			}
// 2384 		}
// 2385 		( void ) xTaskResumeAll();
// 2386 
// 2387 		return uxTask;
// 2388 	}
// 2389 
// 2390 #endif /* configUSE_TRACE_FACILITY */
// 2391 /*----------------------------------------------------------*/
// 2392 
// 2393 #if ( INCLUDE_xTaskGetIdleTaskHandle == 1 )
// 2394 
// 2395 	TaskHandle_t xTaskGetIdleTaskHandle( void )
// 2396 	{
// 2397 		/* If xTaskGetIdleTaskHandle() is called before the scheduler has been
// 2398 		started, then xIdleTaskHandle will be NULL. */
// 2399 		configASSERT( ( xIdleTaskHandle != NULL ) );
// 2400 		return xIdleTaskHandle;
// 2401 	}
// 2402 
// 2403 #endif /* INCLUDE_xTaskGetIdleTaskHandle */
// 2404 /*----------------------------------------------------------*/
// 2405 
// 2406 /* This conditional compilation should use inequality to 0, not equality to 1.
// 2407 This is to ensure vTaskStepTick() is available when user defined low power mode
// 2408 implementations require configUSE_TICKLESS_IDLE to be set to a value other than
// 2409 1. */
// 2410 #if ( configUSE_TICKLESS_IDLE != 0 )
// 2411 
// 2412 	void vTaskStepTick( const TickType_t xTicksToJump )
// 2413 	{
// 2414 		/* Correct the tick count value after a period during which the tick
// 2415 		was suppressed.  Note this does *not* call the tick hook function for
// 2416 		each stepped tick. */
// 2417 		configASSERT( ( xTickCount + xTicksToJump ) <= xNextTaskUnblockTime );
// 2418 		xTickCount += xTicksToJump;
// 2419 		traceINCREASE_TICK_COUNT( xTicksToJump );
// 2420 	}
// 2421 
// 2422 #endif /* configUSE_TICKLESS_IDLE */
// 2423 /*----------------------------------------------------------*/
// 2424 
// 2425 #if ( INCLUDE_xTaskAbortDelay == 1 )
// 2426 
// 2427 	BaseType_t xTaskAbortDelay( TaskHandle_t xTask )
// 2428 	{
// 2429 	TCB_t *pxTCB = ( TCB_t * ) xTask;
// 2430 	BaseType_t xReturn = pdFALSE;
// 2431 
// 2432 		configASSERT( pxTCB );
// 2433 
// 2434 		vTaskSuspendAll();
// 2435 		{
// 2436 			/* A task can only be prematurely removed from the Blocked state if
// 2437 			it is actually in the Blocked state. */
// 2438 			if( eTaskGetState( xTask ) == eBlocked )
// 2439 			{
// 2440 				/* Remove the reference to the task from the blocked list.  An
// 2441 				interrupt won't touch the xStateListItem because the
// 2442 				scheduler is suspended. */
// 2443 				( void ) uxListRemove( &( pxTCB->xStateListItem ) );
// 2444 
// 2445 				/* Is the task waiting on an event also?  If so remove it from
// 2446 				the event list too.  Interrupts can touch the event list item,
// 2447 				even though the scheduler is suspended, so a critical section
// 2448 				is used. */
// 2449 				taskENTER_CRITICAL();
// 2450 				{
// 2451 					if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) != NULL )
// 2452 					{
// 2453 						( void ) uxListRemove( &( pxTCB->xEventListItem ) );
// 2454 						pxTCB->ucDelayAborted = pdTRUE;
// 2455 					}
// 2456 					else
// 2457 					{
// 2458 						mtCOVERAGE_TEST_MARKER();
// 2459 					}
// 2460 				}
// 2461 				taskEXIT_CRITICAL();
// 2462 
// 2463 				/* Place the unblocked task into the appropriate ready list. */
// 2464 				prvAddTaskToReadyList( pxTCB );
// 2465 
// 2466 				/* A task being unblocked cannot cause an immediate context
// 2467 				switch if preemption is turned off. */
// 2468 				#if (  configUSE_PREEMPTION == 1 )
// 2469 				{
// 2470 					/* Preemption is on, but a context switch should only be
// 2471 					performed if the unblocked task has a priority that is
// 2472 					equal to or higher than the currently executing task. */
// 2473 					if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
// 2474 					{
// 2475 						/* Pend the yield to be performed when the scheduler
// 2476 						is unsuspended. */
// 2477 						xYieldPending = pdTRUE;
// 2478 					}
// 2479 					else
// 2480 					{
// 2481 						mtCOVERAGE_TEST_MARKER();
// 2482 					}
// 2483 				}
// 2484 				#endif /* configUSE_PREEMPTION */
// 2485 			}
// 2486 			else
// 2487 			{
// 2488 				mtCOVERAGE_TEST_MARKER();
// 2489 			}
// 2490 		}
// 2491 		xTaskResumeAll();
// 2492 
// 2493 		return xReturn;
// 2494 	}
// 2495 
// 2496 #endif /* INCLUDE_xTaskAbortDelay */
// 2497 /*----------------------------------------------------------*/
// 2498 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function xTaskIncrementTick
        THUMB
// 2499 BaseType_t xTaskIncrementTick( void )
// 2500 {
xTaskIncrementTick:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
// 2501 TCB_t * pxTCB;
// 2502 TickType_t xItemValue;
// 2503 BaseType_t xSwitchRequired = pdFALSE;
        MOVS     R5,#+0
// 2504 
// 2505 	/* Called by the portable layer each time a tick interrupt occurs.
// 2506 	Increments the tick then checks to see if the new tick value will cause any
// 2507 	tasks to be unblocked. */
// 2508 	traceTASK_INCREMENT_TICK( xTickCount );
// 2509 	if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
        LDR.W    R0,??DataTable38
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??xTaskIncrementTick_0
// 2510 	{
// 2511 		/* Minor optimisation.  The tick count cannot change in this
// 2512 		block. */
// 2513 		const TickType_t xConstTickCount = xTickCount + 1;
        LDR.W    R0,??DataTable36_1
        LDR      R4,[R0, #+0]
        ADDS     R4,R4,#+1
// 2514 
// 2515 		/* Increment the RTOS tick, switching the delayed and overflowed
// 2516 		delayed lists if it wraps to 0. */
// 2517 		xTickCount = xConstTickCount;
        STR      R4,[R0, #+0]
// 2518 
// 2519 		if( xConstTickCount == ( TickType_t ) 0U )
        CMP      R4,#+0
        BNE.N    ??xTaskIncrementTick_1
// 2520 		{
// 2521 			taskSWITCH_DELAYED_LISTS();
        LDR.W    R0,??DataTable42_8
        LDR      R1,[R0, #+0]
        LDR      R1,[R0, #+0]
        LDR.W    R2,??DataTable42_9
        LDR      R3,[R2, #+0]
        STR      R3,[R0, #+0]
        STR      R1,[R2, #+0]
        LDR.W    R0,??DataTable42_10
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
          CFI FunCall prvResetNextTaskUnblockTime
        BL       prvResetNextTaskUnblockTime
// 2522 		}
// 2523 		else
// 2524 		{
// 2525 			mtCOVERAGE_TEST_MARKER();
// 2526 		}
// 2527 
// 2528 		/* See if this tick has made a timeout expire.  Tasks are stored in
// 2529 		the	queue in the order of their wake time - meaning once one task
// 2530 		has been found whose block time has not expired there is no need to
// 2531 		look any further down the list. */
// 2532 		if( xConstTickCount >= xNextTaskUnblockTime )
??xTaskIncrementTick_1:
        LDR.W    R6,??DataTable42_3
        LDR      R0,[R6, #+0]
        CMP      R4,R0
        BCC.N    ??xTaskIncrementTick_2
        B.N      ??xTaskIncrementTick_3
// 2533 		{
// 2534 			for( ;; )
// 2535 			{
// 2536 				if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
// 2537 				{
// 2538 					/* The delayed list is empty.  Set xNextTaskUnblockTime
// 2539 					to the maximum possible value so it is extremely
// 2540 					unlikely that the
// 2541 					if( xTickCount >= xNextTaskUnblockTime ) test will pass
// 2542 					next time through. */
// 2543 					xNextTaskUnblockTime = portMAX_DELAY; /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
// 2544 					break;
// 2545 				}
// 2546 				else
// 2547 				{
// 2548 					/* The delayed list is not empty, get the value of the
// 2549 					item at the head of the delayed list.  This is the time
// 2550 					at which the task at the head of the delayed list must
// 2551 					be removed from the Blocked state. */
// 2552 					pxTCB = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxDelayedTaskList );
// 2553 					xItemValue = listGET_LIST_ITEM_VALUE( &( pxTCB->xStateListItem ) );
// 2554 
// 2555 					if( xConstTickCount < xItemValue )
// 2556 					{
// 2557 						/* It is not time to unblock this item yet, but the
// 2558 						item value is the time at which the task at the head
// 2559 						of the blocked list must be removed from the Blocked
// 2560 						state -	so record the item value in
// 2561 						xNextTaskUnblockTime. */
// 2562 						xNextTaskUnblockTime = xItemValue;
// 2563 						break;
// 2564 					}
// 2565 					else
// 2566 					{
// 2567 						mtCOVERAGE_TEST_MARKER();
// 2568 					}
// 2569 
// 2570 					/* It is time to remove the item from the Blocked state. */
// 2571 					( void ) uxListRemove( &( pxTCB->xStateListItem ) );
??xTaskIncrementTick_4:
        ADDS     R0,R7,#+4
          CFI FunCall uxListRemove
        BL       uxListRemove
// 2572 
// 2573 					/* Is the task waiting on an event also?  If so remove
// 2574 					it from the event list. */
// 2575 					if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) != NULL )
        LDR      R0,[R7, #+40]
        CMP      R0,#+0
        BEQ.N    ??xTaskIncrementTick_5
// 2576 					{
// 2577 						( void ) uxListRemove( &( pxTCB->xEventListItem ) );
        ADDS     R0,R7,#+24
          CFI FunCall uxListRemove
        BL       uxListRemove
// 2578 					}
// 2579 					else
// 2580 					{
// 2581 						mtCOVERAGE_TEST_MARKER();
// 2582 					}
// 2583 
// 2584 					/* Place the unblocked task into the appropriate ready
// 2585 					list. */
// 2586 					prvAddTaskToReadyList( pxTCB );
??xTaskIncrementTick_5:
        LDR.W    R1,??DataTable35_4
        LDR      R2,[R1, #+0]
        MOVS     R3,#+1
        LDR      R0,[R7, #+44]
        LSLS     R3,R3,R0
        ORRS     R2,R3,R2
        STR      R2,[R1, #+0]
        ADDS     R1,R7,#+4
        LDR.W    R2,??DataTable36
        LDR      R3,[R7, #+44]
        MOVS     R0,#+20
        MULS     R3,R0,R3
        ADD      R0,R2,R3
          CFI FunCall vListInsertEnd
        BL       vListInsertEnd
// 2587 
// 2588 					/* A task being unblocked cannot cause an immediate
// 2589 					context switch if preemption is turned off. */
// 2590 					#if (  configUSE_PREEMPTION == 1 )
// 2591 					{
// 2592 						/* Preemption is on, but a context switch should
// 2593 						only be performed if the unblocked task has a
// 2594 						priority that is equal to or higher than the
// 2595 						currently executing task. */
// 2596 						if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
        LDR      R0,[R7, #+44]
        LDR.W    R1,??DataTable35_1
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+44]
        CMP      R0,R1
        BCC.N    ??xTaskIncrementTick_3
// 2597 						{
// 2598 							xSwitchRequired = pdTRUE;
        MOVS     R5,#+1
// 2599 						}
// 2600 						else
// 2601 						{
// 2602 							mtCOVERAGE_TEST_MARKER();
// 2603 						}
// 2604 					}
??xTaskIncrementTick_3:
        LDR.W    R1,??DataTable42_8
        LDR      R0,[R1, #+0]
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??xTaskIncrementTick_6
??xTaskIncrementTick_7:
        LDR      R0,[R1, #+0]
        LDR      R0,[R0, #+12]
        LDR      R7,[R0, #+12]
        LDR      R0,[R7, #+4]
        CMP      R4,R0
        BCS.N    ??xTaskIncrementTick_4
        STR      R0,[R6, #+0]
// 2605 					#endif /* configUSE_PREEMPTION */
// 2606 				}
// 2607 			}
// 2608 		}
// 2609 
// 2610 		/* Tasks of equal priority to the currently running task will share
// 2611 		processing time (time slice) if preemption is on, and the application
// 2612 		writer has not explicitly turned time slicing off. */
// 2613 		#if ( ( configUSE_PREEMPTION == 1 ) && ( configUSE_TIME_SLICING == 1 ) )
// 2614 		{
// 2615 			if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ pxCurrentTCB->uxPriority ] ) ) > ( UBaseType_t ) 1 )
??xTaskIncrementTick_2:
        LDR.W    R1,??DataTable36
        LDR.W    R0,??DataTable35_1
        LDR      R0,[R0, #+0]
        LDR      R2,[R0, #+44]
        MOVS     R0,#+20
        MULS     R2,R0,R2
        LDR      R0,[R1, R2]
        CMP      R0,#+2
        BCC.N    ??xTaskIncrementTick_8
// 2616 			{
// 2617 				xSwitchRequired = pdTRUE;
        MOVS     R5,#+1
        B.N      ??xTaskIncrementTick_8
// 2618 			}
// 2619 			else
// 2620 			{
// 2621 				mtCOVERAGE_TEST_MARKER();
// 2622 			}
// 2623 		}
??xTaskIncrementTick_6:
        MOVS     R0,#-1
        STR      R0,[R6, #+0]
        B.N      ??xTaskIncrementTick_2
// 2624 		#endif /* ( ( configUSE_PREEMPTION == 1 ) && ( configUSE_TIME_SLICING == 1 ) ) */
// 2625 
// 2626 		#if ( configUSE_TICK_HOOK == 1 )
// 2627 		{
// 2628 			/* Guard against the tick hook being called when the pended tick
// 2629 			count is being unwound (when the scheduler is being unlocked). */
// 2630 			if( uxPendedTicks == ( UBaseType_t ) 0U )
// 2631 			{
// 2632 				vApplicationTickHook();
// 2633 			}
// 2634 			else
// 2635 			{
// 2636 				mtCOVERAGE_TEST_MARKER();
// 2637 			}
// 2638 		}
// 2639 		#endif /* configUSE_TICK_HOOK */
// 2640 	}
// 2641 	else
// 2642 	{
// 2643 		++uxPendedTicks;
??xTaskIncrementTick_0:
        LDR.W    R0,??DataTable42_6
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
// 2644 
// 2645 		/* The tick hook gets called at regular intervals, even if the
// 2646 		scheduler is locked. */
// 2647 		#if ( configUSE_TICK_HOOK == 1 )
// 2648 		{
// 2649 			vApplicationTickHook();
// 2650 		}
// 2651 		#endif
// 2652 	}
// 2653 
// 2654 	#if ( configUSE_PREEMPTION == 1 )
// 2655 	{
// 2656 		if( xYieldPending != pdFALSE )
??xTaskIncrementTick_8:
        LDR.W    R0,??DataTable42_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??xTaskIncrementTick_9
// 2657 		{
// 2658 			xSwitchRequired = pdTRUE;
        MOVS     R5,#+1
// 2659 		}
// 2660 		else
// 2661 		{
// 2662 			mtCOVERAGE_TEST_MARKER();
// 2663 		}
// 2664 	}
// 2665 	#endif /* configUSE_PREEMPTION */
// 2666 
// 2667 	return xSwitchRequired;
??xTaskIncrementTick_9:
        MOVS     R0,R5
        POP      {R1,R4-R7,PC}    ;; return
// 2668 }
          CFI EndBlock cfiBlock17
// 2669 /*-----------------------------------------------------------*/
// 2670 
// 2671 #if ( configUSE_APPLICATION_TASK_TAG == 1 )
// 2672 
// 2673 	void vTaskSetApplicationTaskTag( TaskHandle_t xTask, TaskHookFunction_t pxHookFunction )
// 2674 	{
// 2675 	TCB_t *xTCB;
// 2676 
// 2677 		/* If xTask is NULL then it is the task hook of the calling task that is
// 2678 		getting set. */
// 2679 		if( xTask == NULL )
// 2680 		{
// 2681 			xTCB = ( TCB_t * ) pxCurrentTCB;
// 2682 		}
// 2683 		else
// 2684 		{
// 2685 			xTCB = ( TCB_t * ) xTask;
// 2686 		}
// 2687 
// 2688 		/* Save the hook function in the TCB.  A critical section is required as
// 2689 		the value can be accessed from an interrupt. */
// 2690 		taskENTER_CRITICAL();
// 2691 			xTCB->pxTaskTag = pxHookFunction;
// 2692 		taskEXIT_CRITICAL();
// 2693 	}
// 2694 
// 2695 #endif /* configUSE_APPLICATION_TASK_TAG */
// 2696 /*-----------------------------------------------------------*/
// 2697 
// 2698 #if ( configUSE_APPLICATION_TASK_TAG == 1 )
// 2699 
// 2700 	TaskHookFunction_t xTaskGetApplicationTaskTag( TaskHandle_t xTask )
// 2701 	{
// 2702 	TCB_t *xTCB;
// 2703 	TaskHookFunction_t xReturn;
// 2704 
// 2705 		/* If xTask is NULL then we are setting our own task hook. */
// 2706 		if( xTask == NULL )
// 2707 		{
// 2708 			xTCB = ( TCB_t * ) pxCurrentTCB;
// 2709 		}
// 2710 		else
// 2711 		{
// 2712 			xTCB = ( TCB_t * ) xTask;
// 2713 		}
// 2714 
// 2715 		/* Save the hook function in the TCB.  A critical section is required as
// 2716 		the value can be accessed from an interrupt. */
// 2717 		taskENTER_CRITICAL();
// 2718 		{
// 2719 			xReturn = xTCB->pxTaskTag;
// 2720 		}
// 2721 		taskEXIT_CRITICAL();
// 2722 
// 2723 		return xReturn;
// 2724 	}
// 2725 
// 2726 #endif /* configUSE_APPLICATION_TASK_TAG */
// 2727 /*-----------------------------------------------------------*/
// 2728 
// 2729 #if ( configUSE_APPLICATION_TASK_TAG == 1 )
// 2730 
// 2731 	BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter )
// 2732 	{
// 2733 	TCB_t *xTCB;
// 2734 	BaseType_t xReturn;
// 2735 
// 2736 		/* If xTask is NULL then we are calling our own task hook. */
// 2737 		if( xTask == NULL )
// 2738 		{
// 2739 			xTCB = ( TCB_t * ) pxCurrentTCB;
// 2740 		}
// 2741 		else
// 2742 		{
// 2743 			xTCB = ( TCB_t * ) xTask;
// 2744 		}
// 2745 
// 2746 		if( xTCB->pxTaskTag != NULL )
// 2747 		{
// 2748 			xReturn = xTCB->pxTaskTag( pvParameter );
// 2749 		}
// 2750 		else
// 2751 		{
// 2752 			xReturn = pdFAIL;
// 2753 		}
// 2754 
// 2755 		return xReturn;
// 2756 	}
// 2757 
// 2758 #endif /* configUSE_APPLICATION_TASK_TAG */
// 2759 /*-----------------------------------------------------------*/
// 2760 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function vTaskSwitchContext
          CFI NoCalls
        THUMB
// 2761 void vTaskSwitchContext( void )
// 2762 {
// 2763 	if( uxSchedulerSuspended != ( UBaseType_t ) pdFALSE )
vTaskSwitchContext:
        LDR.W    R0,??DataTable38
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??vTaskSwitchContext_0
// 2764 	{
// 2765 		/* The scheduler is currently suspended - do not allow a context
// 2766 		switch. */
// 2767 		xYieldPending = pdTRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable42_5
        STR      R0,[R1, #+0]
        B.N      ??vTaskSwitchContext_1
// 2768 	}
// 2769 	else
// 2770 	{
// 2771 		xYieldPending = pdFALSE;
??vTaskSwitchContext_0:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable42_5
        STR      R0,[R1, #+0]
// 2772 		traceTASK_SWITCHED_OUT();
// 2773 
// 2774 		#if ( configGENERATE_RUN_TIME_STATS == 1 )
// 2775 		{
// 2776 				#ifdef portALT_GET_RUN_TIME_COUNTER_VALUE
// 2777 					portALT_GET_RUN_TIME_COUNTER_VALUE( ulTotalRunTime );
// 2778 				#else
// 2779 					ulTotalRunTime = portGET_RUN_TIME_COUNTER_VALUE();
// 2780 				#endif
// 2781 
// 2782 				/* Add the amount of time the task has been running to the
// 2783 				accumulated time so far.  The time the task started running was
// 2784 				stored in ulTaskSwitchedInTime.  Note that there is no overflow
// 2785 				protection here so count values are only valid until the timer
// 2786 				overflows.  The guard against negative values is to protect
// 2787 				against suspect run time stat counter implementations - which
// 2788 				are provided by the application, not the kernel. */
// 2789 				if( ulTotalRunTime > ulTaskSwitchedInTime )
// 2790 				{
// 2791 					pxCurrentTCB->ulRunTimeCounter += ( ulTotalRunTime - ulTaskSwitchedInTime );
// 2792 				}
// 2793 				else
// 2794 				{
// 2795 					mtCOVERAGE_TEST_MARKER();
// 2796 				}
// 2797 				ulTaskSwitchedInTime = ulTotalRunTime;
// 2798 		}
// 2799 		#endif /* configGENERATE_RUN_TIME_STATS */
// 2800 
// 2801 		/* Check for stack overflow, if configured. */
// 2802 		taskCHECK_FOR_STACK_OVERFLOW();
// 2803 
// 2804 		/* Select a new task to run using either the generic C or port
// 2805 		optimised asm code. */
// 2806 		taskSELECT_HIGHEST_PRIORITY_TASK();
        LDR.W    R0,??DataTable35_4
        LDR      R0,[R0, #+0]
        CLZ      R1,R0
        RSBS     R1,R1,#+31
        LDR.W    R2,??DataTable36
        MOVS     R0,#+20
        MULS     R1,R0,R1
        ADD      R0,R2,R1
        LDR      R1,[R0, #+4]
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+4]
        LDR      R1,[R0, #+4]
        ADDS     R2,R0,#+8
        CMP      R1,R2
        BNE.N    ??vTaskSwitchContext_2
        LDR      R1,[R0, #+4]
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+4]
??vTaskSwitchContext_2:
        LDR      R0,[R0, #+4]
        LDR      R0,[R0, #+12]
        LDR.W    R1,??DataTable35_1
        STR      R0,[R1, #+0]
// 2807 		traceTASK_SWITCHED_IN();
// 2808 
// 2809 		#if ( configUSE_NEWLIB_REENTRANT == 1 )
// 2810 		{
// 2811 			/* Switch Newlib's _impure_ptr variable to point to the _reent
// 2812 			structure specific to this task. */
// 2813 			_impure_ptr = &( pxCurrentTCB->xNewLib_reent );
// 2814 		}
// 2815 		#endif /* configUSE_NEWLIB_REENTRANT */
// 2816 	}
// 2817 }
??vTaskSwitchContext_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock18
// 2818 /*-----------------------------------------------------------*/
// 2819 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function vTaskPlaceOnEventList
        THUMB
// 2820 void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait )
// 2821 {
vTaskPlaceOnEventList:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R1
// 2822 	configASSERT( pxEventList );
// 2823 
// 2824 	/* THIS FUNCTION MUST BE CALLED WITH EITHER INTERRUPTS DISABLED OR THE
// 2825 	SCHEDULER SUSPENDED AND THE QUEUE BEING ACCESSED LOCKED. */
// 2826 
// 2827 	/* Place the event list item of the TCB in the appropriate event list.
// 2828 	This is placed in the list in priority order so the highest priority task
// 2829 	is the first to be woken by the event.  The queue that contains the event
// 2830 	list is locked, preventing simultaneous access from interrupts. */
// 2831 	vListInsert( pxEventList, &( pxCurrentTCB->xEventListItem ) );
        LDR.W    R1,??DataTable42_7
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+24
          CFI FunCall vListInsert
        BL       vListInsert
// 2832 
// 2833 	prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
        MOVS     R1,#+1
        MOVS     R0,R4
          CFI FunCall prvAddCurrentTaskToDelayedList
        BL       prvAddCurrentTaskToDelayedList
// 2834 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock19
// 2835 /*-----------------------------------------------------------*/
// 2836 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function vTaskPlaceOnUnorderedEventList
        THUMB
// 2837 void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait )
// 2838 {
vTaskPlaceOnUnorderedEventList:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R2
// 2839 	configASSERT( pxEventList );
// 2840 
// 2841 	/* THIS FUNCTION MUST BE CALLED WITH THE SCHEDULER SUSPENDED.  It is used by
// 2842 	the event groups implementation. */
// 2843 	configASSERT( uxSchedulerSuspended != 0 );
        LDR.W    R2,??DataTable39
        LDR      R2,[R2, #+0]
// 2844 
// 2845 	/* Store the item value in the event list item.  It is safe to access the
// 2846 	event list item here as interrupts won't access the event list item of a
// 2847 	task that is not in the Blocked state. */
// 2848 	listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xEventListItem ), xItemValue | taskEVENT_LIST_ITEM_VALUE_IN_USE );
        LDR.W    R2,??DataTable42_7
        ORRS     R1,R1,#0x80000000
        LDR      R3,[R2, #+0]
        STR      R1,[R3, #+24]
// 2849 
// 2850 	/* Place the event list item of the TCB at the end of the appropriate event
// 2851 	list.  It is safe to access the event list here because it is part of an
// 2852 	event group implementation - and interrupts don't access event groups
// 2853 	directly (instead they access them indirectly by pending function calls to
// 2854 	the task level). */
// 2855 	vListInsertEnd( pxEventList, &( pxCurrentTCB->xEventListItem ) );
        LDR      R1,[R2, #+0]
        ADDS     R1,R1,#+24
          CFI FunCall vListInsertEnd
        BL       vListInsertEnd
// 2856 
// 2857 	prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
        MOVS     R1,#+1
        MOVS     R0,R4
          CFI FunCall prvAddCurrentTaskToDelayedList
        BL       prvAddCurrentTaskToDelayedList
// 2858 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock20
// 2859 /*-----------------------------------------------------------*/
// 2860 
// 2861 #if( configUSE_TIMERS == 1 )
// 2862 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function vTaskPlaceOnEventListRestricted
        THUMB
// 2863 	void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely )
// 2864 	{
vTaskPlaceOnEventListRestricted:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R5,R1
        MOVS     R4,R2
// 2865 		configASSERT( pxEventList );
// 2866 
// 2867 		/* This function should not be called by application code hence the
// 2868 		'Restricted' in its name.  It is not part of the public API.  It is
// 2869 		designed for use by kernel code, and has special calling requirements -
// 2870 		it should be called with the scheduler suspended. */
// 2871 
// 2872 
// 2873 		/* Place the event list item of the TCB in the appropriate event list.
// 2874 		In this case it is assume that this is the only task that is going to
// 2875 		be waiting on this event list, so the faster vListInsertEnd() function
// 2876 		can be used in place of vListInsert. */
// 2877 		vListInsertEnd( pxEventList, &( pxCurrentTCB->xEventListItem ) );
        LDR.W    R1,??DataTable42_7
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+24
          CFI FunCall vListInsertEnd
        BL       vListInsertEnd
// 2878 
// 2879 		/* If the task should block indefinitely then set the block time to a
// 2880 		value that will be recognised as an indefinite delay inside the
// 2881 		prvAddCurrentTaskToDelayedList() function. */
// 2882 		if( xWaitIndefinitely != pdFALSE )
        CMP      R4,#+0
        BEQ.N    ??vTaskPlaceOnEventListRestricted_0
// 2883 		{
// 2884 			xTicksToWait = portMAX_DELAY;
        MOVS     R5,#-1
// 2885 		}
// 2886 
// 2887 		traceTASK_DELAY_UNTIL( ( xTickCount + xTicksToWait ) );
// 2888 		prvAddCurrentTaskToDelayedList( xTicksToWait, xWaitIndefinitely );
??vTaskPlaceOnEventListRestricted_0:
        MOVS     R1,R4
        MOVS     R0,R5
          CFI FunCall prvAddCurrentTaskToDelayedList
        BL       prvAddCurrentTaskToDelayedList
// 2889 	}
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock21
// 2890 
// 2891 #endif /* configUSE_TIMERS */
// 2892 /*-----------------------------------------------------------*/
// 2893 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function xTaskRemoveFromEventList
        THUMB
// 2894 BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList )
// 2895 {
xTaskRemoveFromEventList:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
// 2896 TCB_t *pxUnblockedTCB;
// 2897 BaseType_t xReturn;
// 2898 
// 2899 	/* THIS FUNCTION MUST BE CALLED FROM A CRITICAL SECTION.  It can also be
// 2900 	called from a critical section within an ISR. */
// 2901 
// 2902 	/* The event list is sorted in priority order, so the first in the list can
// 2903 	be removed as it is known to be the highest priority.  Remove the TCB from
// 2904 	the delayed list, and add it to the ready list.
// 2905 
// 2906 	If an event is for a queue that is locked then this function will never
// 2907 	get called - the lock count on the queue will get modified instead.  This
// 2908 	means exclusive access to the event list is guaranteed here.
// 2909 
// 2910 	This function assumes that a check has already been made to ensure that
// 2911 	pxEventList is not empty. */
// 2912 	pxUnblockedTCB = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxEventList );
        LDR      R0,[R0, #+12]
        LDR      R4,[R0, #+12]
// 2913 	configASSERT( pxUnblockedTCB );
// 2914 	( void ) uxListRemove( &( pxUnblockedTCB->xEventListItem ) );
        ADDS     R0,R4,#+24
          CFI FunCall uxListRemove
        BL       uxListRemove
// 2915 
// 2916 	if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
        LDR.W    R0,??DataTable39
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??xTaskRemoveFromEventList_0
// 2917 	{
// 2918 		( void ) uxListRemove( &( pxUnblockedTCB->xStateListItem ) );
        ADDS     R0,R4,#+4
          CFI FunCall uxListRemove
        BL       uxListRemove
// 2919 		prvAddTaskToReadyList( pxUnblockedTCB );
        LDR.W    R1,??DataTable35_4
        LDR      R2,[R1, #+0]
        MOVS     R3,#+1
        LDR      R0,[R4, #+44]
        LSLS     R3,R3,R0
        ORRS     R2,R3,R2
        STR      R2,[R1, #+0]
        ADDS     R1,R4,#+4
        LDR.W    R2,??DataTable36
        LDR      R3,[R4, #+44]
        MOVS     R0,#+20
        MULS     R3,R0,R3
        ADD      R0,R2,R3
          CFI FunCall vListInsertEnd
        BL       vListInsertEnd
        B.N      ??xTaskRemoveFromEventList_1
// 2920 	}
// 2921 	else
// 2922 	{
// 2923 		/* The delayed and ready lists cannot be accessed, so hold this task
// 2924 		pending until the scheduler is resumed. */
// 2925 		vListInsertEnd( &( xPendingReadyList ), &( pxUnblockedTCB->xEventListItem ) );
??xTaskRemoveFromEventList_0:
        ADDS     R1,R4,#+24
        LDR.W    R0,??DataTable42
          CFI FunCall vListInsertEnd
        BL       vListInsertEnd
// 2926 	}
// 2927 
// 2928 	if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
??xTaskRemoveFromEventList_1:
        LDR.W    R0,??DataTable35_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+44]
        LDR      R1,[R4, #+44]
        CMP      R0,R1
        BCS.N    ??xTaskRemoveFromEventList_2
// 2929 	{
// 2930 		/* Return true if the task removed from the event list has a higher
// 2931 		priority than the calling task.  This allows the calling task to know if
// 2932 		it should force a context switch now. */
// 2933 		xReturn = pdTRUE;
        MOVS     R0,#+1
// 2934 
// 2935 		/* Mark that a yield is pending in case the user is not using the
// 2936 		"xHigherPriorityTaskWoken" parameter to an ISR safe FreeRTOS function. */
// 2937 		xYieldPending = pdTRUE;
        MOVS     R1,#+1
        LDR.W    R2,??DataTable42_5
        STR      R1,[R2, #+0]
        B.N      ??xTaskRemoveFromEventList_3
// 2938 	}
// 2939 	else
// 2940 	{
// 2941 		xReturn = pdFALSE;
??xTaskRemoveFromEventList_2:
        MOVS     R0,#+0
// 2942 	}
// 2943 
// 2944 	#if( configUSE_TICKLESS_IDLE != 0 )
// 2945 	{
// 2946 		/* If a task is blocked on a kernel object then xNextTaskUnblockTime
// 2947 		might be set to the blocked task's time out time.  If the task is
// 2948 		unblocked for a reason other than a timeout xNextTaskUnblockTime is
// 2949 		normally left unchanged, because it is automatically reset to a new
// 2950 		value when the tick count equals xNextTaskUnblockTime.  However if
// 2951 		tickless idling is used it might be more important to enter sleep mode
// 2952 		at the earliest possible time - so reset xNextTaskUnblockTime here to
// 2953 		ensure it is updated at the earliest possible time. */
// 2954 		prvResetNextTaskUnblockTime();
// 2955 	}
// 2956 	#endif
// 2957 
// 2958 	return xReturn;
??xTaskRemoveFromEventList_3:
        POP      {R4,PC}          ;; return
// 2959 }
          CFI EndBlock cfiBlock22
// 2960 /*-----------------------------------------------------------*/
// 2961 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function xTaskRemoveFromUnorderedEventList
        THUMB
// 2962 BaseType_t xTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue )
// 2963 {
xTaskRemoveFromUnorderedEventList:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
// 2964 TCB_t *pxUnblockedTCB;
// 2965 BaseType_t xReturn;
// 2966 
// 2967 	/* THIS FUNCTION MUST BE CALLED WITH THE SCHEDULER SUSPENDED.  It is used by
// 2968 	the event flags implementation. */
// 2969 	configASSERT( uxSchedulerSuspended != pdFALSE );
        LDR.W    R2,??DataTable39
        LDR      R2,[R2, #+0]
// 2970 
// 2971 	/* Store the new item value in the event list. */
// 2972 	listSET_LIST_ITEM_VALUE( pxEventListItem, xItemValue | taskEVENT_LIST_ITEM_VALUE_IN_USE );
        ORRS     R1,R1,#0x80000000
        STR      R1,[R0, #+0]
// 2973 
// 2974 	/* Remove the event list form the event flag.  Interrupts do not access
// 2975 	event flags. */
// 2976 	pxUnblockedTCB = ( TCB_t * ) listGET_LIST_ITEM_OWNER( pxEventListItem );
        LDR      R4,[R0, #+12]
// 2977 	configASSERT( pxUnblockedTCB );
// 2978 	( void ) uxListRemove( pxEventListItem );
          CFI FunCall uxListRemove
        BL       uxListRemove
// 2979 
// 2980 	/* Remove the task from the delayed list and add it to the ready list.  The
// 2981 	scheduler is suspended so interrupts will not be accessing the ready
// 2982 	lists. */
// 2983 	( void ) uxListRemove( &( pxUnblockedTCB->xStateListItem ) );
        ADDS     R0,R4,#+4
          CFI FunCall uxListRemove
        BL       uxListRemove
// 2984 	prvAddTaskToReadyList( pxUnblockedTCB );
        LDR.W    R1,??DataTable35_4
        LDR      R2,[R1, #+0]
        MOVS     R3,#+1
        LDR      R0,[R4, #+44]
        LSLS     R3,R3,R0
        ORRS     R2,R3,R2
        STR      R2,[R1, #+0]
        ADDS     R1,R4,#+4
        LDR.W    R2,??DataTable36
        LDR      R3,[R4, #+44]
        MOVS     R0,#+20
        MULS     R3,R0,R3
        ADD      R0,R2,R3
          CFI FunCall vListInsertEnd
        BL       vListInsertEnd
// 2985 
// 2986 	if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
        LDR.W    R0,??DataTable35_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+44]
        LDR      R1,[R4, #+44]
        CMP      R0,R1
        BCS.N    ??xTaskRemoveFromUnorderedEventList_0
// 2987 	{
// 2988 		/* Return true if the task removed from the event list has
// 2989 		a higher priority than the calling task.  This allows
// 2990 		the calling task to know if it should force a context
// 2991 		switch now. */
// 2992 		xReturn = pdTRUE;
        MOVS     R0,#+1
// 2993 
// 2994 		/* Mark that a yield is pending in case the user is not using the
// 2995 		"xHigherPriorityTaskWoken" parameter to an ISR safe FreeRTOS function. */
// 2996 		xYieldPending = pdTRUE;
        MOVS     R1,#+1
        LDR.W    R2,??DataTable42_5
        STR      R1,[R2, #+0]
        B.N      ??xTaskRemoveFromUnorderedEventList_1
// 2997 	}
// 2998 	else
// 2999 	{
// 3000 		xReturn = pdFALSE;
??xTaskRemoveFromUnorderedEventList_0:
        MOVS     R0,#+0
// 3001 	}
// 3002 
// 3003 	return xReturn;
??xTaskRemoveFromUnorderedEventList_1:
        POP      {R4,PC}          ;; return
// 3004 }
          CFI EndBlock cfiBlock23
// 3005 /*-----------------------------------------------------------*/
// 3006 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function vTaskSetTimeOutState
          CFI NoCalls
        THUMB
// 3007 void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut )
// 3008 {
// 3009 	configASSERT( pxTimeOut );
// 3010 	pxTimeOut->xOverflowCount = xNumOfOverflows;
vTaskSetTimeOutState:
        LDR.W    R1,??DataTable42_10
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
// 3011 	pxTimeOut->xTimeOnEntering = xTickCount;
        LDR.W    R1,??DataTable42_4
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+4]
// 3012 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock24
// 3013 /*-----------------------------------------------------------*/
// 3014 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function xTaskCheckForTimeOut
        THUMB
// 3015 BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait )
// 3016 {
xTaskCheckForTimeOut:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R5,R0
        MOVS     R4,R1
// 3017 BaseType_t xReturn;
// 3018 
// 3019 	configASSERT( pxTimeOut );
// 3020 	configASSERT( pxTicksToWait );
// 3021 
// 3022 	taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
// 3023 	{
// 3024 		/* Minor optimisation.  The tick count cannot change in this block. */
// 3025 		const TickType_t xConstTickCount = xTickCount;
        LDR.W    R0,??DataTable36_1
        LDR      R1,[R0, #+0]
// 3026 
// 3027 		#if( INCLUDE_xTaskAbortDelay == 1 )
// 3028 			if( pxCurrentTCB->ucDelayAborted != pdFALSE )
// 3029 			{
// 3030 				/* The delay was aborted, which is not the same as a time out,
// 3031 				but has the same result. */
// 3032 				pxCurrentTCB->ucDelayAborted = pdFALSE;
// 3033 				xReturn = pdTRUE;
// 3034 			}
// 3035 			else
// 3036 		#endif
// 3037 
// 3038 		#if ( INCLUDE_vTaskSuspend == 1 )
// 3039 			if( *pxTicksToWait == portMAX_DELAY )
        LDR      R0,[R4, #+0]
        CMN      R0,#+1
        BNE.N    ??xTaskCheckForTimeOut_0
// 3040 			{
// 3041 				/* If INCLUDE_vTaskSuspend is set to 1 and the block time
// 3042 				specified is the maximum block time then the task should block
// 3043 				indefinitely, and therefore never time out. */
// 3044 				xReturn = pdFALSE;
        MOVS     R4,#+0
        B.N      ??xTaskCheckForTimeOut_1
// 3045 			}
// 3046 			else
// 3047 		#endif
// 3048 
// 3049 		if( ( xNumOfOverflows != pxTimeOut->xOverflowCount ) && ( xConstTickCount >= pxTimeOut->xTimeOnEntering ) ) /*lint !e525 Indentation preferred as is to make code within pre-processor directives clearer. */
??xTaskCheckForTimeOut_0:
        LDR.W    R0,??DataTable42_10
        LDR      R0,[R0, #+0]
        LDR      R2,[R5, #+0]
        CMP      R0,R2
        BEQ.N    ??xTaskCheckForTimeOut_2
        LDR      R0,[R5, #+4]
        CMP      R1,R0
        BCC.N    ??xTaskCheckForTimeOut_2
// 3050 		{
// 3051 			/* The tick count is greater than the time at which
// 3052 			vTaskSetTimeout() was called, but has also overflowed since
// 3053 			vTaskSetTimeOut() was called.  It must have wrapped all the way
// 3054 			around and gone past again. This passed since vTaskSetTimeout()
// 3055 			was called. */
// 3056 			xReturn = pdTRUE;
        MOVS     R4,#+1
        B.N      ??xTaskCheckForTimeOut_1
// 3057 		}
// 3058 		else if( ( ( TickType_t ) ( xConstTickCount - pxTimeOut->xTimeOnEntering ) ) < *pxTicksToWait ) /*lint !e961 Explicit casting is only redundant with some compilers, whereas others require it to prevent integer conversion errors. */
??xTaskCheckForTimeOut_2:
        LDR      R0,[R5, #+4]
        SUBS     R0,R1,R0
        LDR      R2,[R4, #+0]
        CMP      R0,R2
        BCS.N    ??xTaskCheckForTimeOut_3
// 3059 		{
// 3060 			/* Not a genuine timeout. Adjust parameters for time remaining. */
// 3061 			*pxTicksToWait -= ( xConstTickCount - pxTimeOut->xTimeOnEntering );
        LDR      R0,[R4, #+0]
        SUBS     R1,R0,R1
        LDR      R0,[R5, #+4]
        ADDS     R1,R0,R1
        STR      R1,[R4, #+0]
// 3062 			vTaskSetTimeOutState( pxTimeOut );
        MOVS     R0,R5
          CFI FunCall vTaskSetTimeOutState
        BL       vTaskSetTimeOutState
// 3063 			xReturn = pdFALSE;
        MOVS     R4,#+0
        B.N      ??xTaskCheckForTimeOut_1
// 3064 		}
// 3065 		else
// 3066 		{
// 3067 			xReturn = pdTRUE;
??xTaskCheckForTimeOut_3:
        MOVS     R4,#+1
// 3068 		}
// 3069 	}
// 3070 	taskEXIT_CRITICAL();
??xTaskCheckForTimeOut_1:
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
// 3071 
// 3072 	return xReturn;
        MOVS     R0,R4
        POP      {R1,R4,R5,PC}    ;; return
// 3073 }
          CFI EndBlock cfiBlock25
// 3074 /*-----------------------------------------------------------*/
// 3075 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function vTaskMissedYield
          CFI NoCalls
        THUMB
// 3076 void vTaskMissedYield( void )
// 3077 {
// 3078 	xYieldPending = pdTRUE;
vTaskMissedYield:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable42_5
        STR      R0,[R1, #+0]
// 3079 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock26
// 3080 /*-----------------------------------------------------------*/
// 3081 
// 3082 #if ( configUSE_TRACE_FACILITY == 1 )
// 3083 
// 3084 	UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask )
// 3085 	{
// 3086 	UBaseType_t uxReturn;
// 3087 	TCB_t *pxTCB;
// 3088 
// 3089 		if( xTask != NULL )
// 3090 		{
// 3091 			pxTCB = ( TCB_t * ) xTask;
// 3092 			uxReturn = pxTCB->uxTaskNumber;
// 3093 		}
// 3094 		else
// 3095 		{
// 3096 			uxReturn = 0U;
// 3097 		}
// 3098 
// 3099 		return uxReturn;
// 3100 	}
// 3101 
// 3102 #endif /* configUSE_TRACE_FACILITY */
// 3103 /*-----------------------------------------------------------*/
// 3104 
// 3105 #if ( configUSE_TRACE_FACILITY == 1 )
// 3106 
// 3107 	void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle )
// 3108 	{
// 3109 	TCB_t *pxTCB;
// 3110 
// 3111 		if( xTask != NULL )
// 3112 		{
// 3113 			pxTCB = ( TCB_t * ) xTask;
// 3114 			pxTCB->uxTaskNumber = uxHandle;
// 3115 		}
// 3116 	}
// 3117 
// 3118 #endif /* configUSE_TRACE_FACILITY */
// 3119 
// 3120 /*
// 3121  * -----------------------------------------------------------
// 3122  * The Idle task.
// 3123  * ----------------------------------------------------------
// 3124  *
// 3125  * The portTASK_FUNCTION() macro is used to allow port/compiler specific
// 3126  * language extensions.  The equivalent prototype for this function is:
// 3127  *
// 3128  * void prvIdleTask( void *pvParameters );
// 3129  *
// 3130  */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function prvIdleTask
        THUMB
// 3131 static portTASK_FUNCTION( prvIdleTask, pvParameters )
// 3132 {
prvIdleTask:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 3133 	/* Stop warnings. */
// 3134 	( void ) pvParameters;
// 3135 
// 3136 	/** THIS IS THE RTOS IDLE TASK - WHICH IS CREATED AUTOMATICALLY WHEN THE
// 3137 	SCHEDULER IS STARTED. **/
// 3138 
// 3139 	for( ;; )
// 3140 	{
// 3141 		/* See if any tasks have deleted themselves - if so then the idle task
// 3142 		is responsible for freeing the deleted task's TCB and stack. */
// 3143 		prvCheckTasksWaitingTermination();
??prvIdleTask_0:
          CFI FunCall prvCheckTasksWaitingTermination
        BL       prvCheckTasksWaitingTermination
        B.N      ??prvIdleTask_0
// 3144 
// 3145 		#if ( configUSE_PREEMPTION == 0 )
// 3146 		{
// 3147 			/* If we are not using preemption we keep forcing a task switch to
// 3148 			see if any other task has become available.  If we are using
// 3149 			preemption we don't need to do this as any task becoming available
// 3150 			will automatically get the processor anyway. */
// 3151 			taskYIELD();
// 3152 		}
// 3153 		#endif /* configUSE_PREEMPTION */
// 3154 
// 3155 		#if ( ( configUSE_PREEMPTION == 1 ) && ( configIDLE_SHOULD_YIELD == 1 ) )
// 3156 		{
// 3157 			/* When using preemption tasks of equal priority will be
// 3158 			timesliced.  If a task that is sharing the idle priority is ready
// 3159 			to run then the idle task should yield before the end of the
// 3160 			timeslice.
// 3161 
// 3162 			A critical region is not required here as we are just reading from
// 3163 			the list, and an occasional incorrect value will not matter.  If
// 3164 			the ready list at the idle priority contains more than one task
// 3165 			then a task other than the idle task is ready to execute. */
// 3166 			if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ tskIDLE_PRIORITY ] ) ) > ( UBaseType_t ) 1 )
// 3167 			{
// 3168 				taskYIELD();
// 3169 			}
// 3170 			else
// 3171 			{
// 3172 				mtCOVERAGE_TEST_MARKER();
// 3173 			}
// 3174 		}
// 3175 		#endif /* ( ( configUSE_PREEMPTION == 1 ) && ( configIDLE_SHOULD_YIELD == 1 ) ) */
// 3176 
// 3177 		#if ( configUSE_IDLE_HOOK == 1 )
// 3178 		{
// 3179 			extern void vApplicationIdleHook( void );
// 3180 
// 3181 			/* Call the user defined function from within the idle task.  This
// 3182 			allows the application designer to add background functionality
// 3183 			without the overhead of a separate task.
// 3184 			NOTE: vApplicationIdleHook() MUST NOT, UNDER ANY CIRCUMSTANCES,
// 3185 			CALL A FUNCTION THAT MIGHT BLOCK. */
// 3186 			vApplicationIdleHook();
// 3187 		}
// 3188 		#endif /* configUSE_IDLE_HOOK */
// 3189 
// 3190 		/* This conditional compilation should use inequality to 0, not equality
// 3191 		to 1.  This is to ensure portSUPPRESS_TICKS_AND_SLEEP() is called when
// 3192 		user defined low power mode	implementations require
// 3193 		configUSE_TICKLESS_IDLE to be set to a value other than 1. */
// 3194 		#if ( configUSE_TICKLESS_IDLE != 0 )
// 3195 		{
// 3196 		TickType_t xExpectedIdleTime;
// 3197 
// 3198 			/* It is not desirable to suspend then resume the scheduler on
// 3199 			each iteration of the idle task.  Therefore, a preliminary
// 3200 			test of the expected idle time is performed without the
// 3201 			scheduler suspended.  The result here is not necessarily
// 3202 			valid. */
// 3203 			xExpectedIdleTime = prvGetExpectedIdleTime();
// 3204 
// 3205 			if( xExpectedIdleTime >= configEXPECTED_IDLE_TIME_BEFORE_SLEEP )
// 3206 			{
// 3207 				vTaskSuspendAll();
// 3208 				{
// 3209 					/* Now the scheduler is suspended, the expected idle
// 3210 					time can be sampled again, and this time its value can
// 3211 					be used. */
// 3212 					configASSERT( xNextTaskUnblockTime >= xTickCount );
// 3213 					xExpectedIdleTime = prvGetExpectedIdleTime();
// 3214 
// 3215 					if( xExpectedIdleTime >= configEXPECTED_IDLE_TIME_BEFORE_SLEEP )
// 3216 					{
// 3217 						traceLOW_POWER_IDLE_BEGIN();
// 3218 						portSUPPRESS_TICKS_AND_SLEEP( xExpectedIdleTime );
// 3219 						traceLOW_POWER_IDLE_END();
// 3220 					}
// 3221 					else
// 3222 					{
// 3223 						mtCOVERAGE_TEST_MARKER();
// 3224 					}
// 3225 				}
// 3226 				( void ) xTaskResumeAll();
// 3227 			}
// 3228 			else
// 3229 			{
// 3230 				mtCOVERAGE_TEST_MARKER();
// 3231 			}
// 3232 		}
// 3233 		#endif /* configUSE_TICKLESS_IDLE */
// 3234 	}
// 3235 }
          CFI EndBlock cfiBlock27
// 3236 /*-----------------------------------------------------------*/
// 3237 
// 3238 #if( configUSE_TICKLESS_IDLE != 0 )
// 3239 
// 3240 	eSleepModeStatus eTaskConfirmSleepModeStatus( void )
// 3241 	{
// 3242 	/* The idle task exists in addition to the application tasks. */
// 3243 	const UBaseType_t uxNonApplicationTasks = 1;
// 3244 	eSleepModeStatus eReturn = eStandardSleep;
// 3245 
// 3246 		if( listCURRENT_LIST_LENGTH( &xPendingReadyList ) != 0 )
// 3247 		{
// 3248 			/* A task was made ready while the scheduler was suspended. */
// 3249 			eReturn = eAbortSleep;
// 3250 		}
// 3251 		else if( xYieldPending != pdFALSE )
// 3252 		{
// 3253 			/* A yield was pended while the scheduler was suspended. */
// 3254 			eReturn = eAbortSleep;
// 3255 		}
// 3256 		else
// 3257 		{
// 3258 			/* If all the tasks are in the suspended list (which might mean they
// 3259 			have an infinite block time rather than actually being suspended)
// 3260 			then it is safe to turn all clocks off and just wait for external
// 3261 			interrupts. */
// 3262 			if( listCURRENT_LIST_LENGTH( &xSuspendedTaskList ) == ( uxCurrentNumberOfTasks - uxNonApplicationTasks ) )
// 3263 			{
// 3264 				eReturn = eNoTasksWaitingTimeout;
// 3265 			}
// 3266 			else
// 3267 			{
// 3268 				mtCOVERAGE_TEST_MARKER();
// 3269 			}
// 3270 		}
// 3271 
// 3272 		return eReturn;
// 3273 	}
// 3274 
// 3275 #endif /* configUSE_TICKLESS_IDLE */
// 3276 /*-----------------------------------------------------------*/
// 3277 
// 3278 #if ( configNUM_THREAD_LOCAL_STORAGE_POINTERS != 0 )
// 3279 
// 3280 	void vTaskSetThreadLocalStoragePointer( TaskHandle_t xTaskToSet, BaseType_t xIndex, void *pvValue )
// 3281 	{
// 3282 	TCB_t *pxTCB;
// 3283 
// 3284 		if( xIndex < configNUM_THREAD_LOCAL_STORAGE_POINTERS )
// 3285 		{
// 3286 			pxTCB = prvGetTCBFromHandle( xTaskToSet );
// 3287 			pxTCB->pvThreadLocalStoragePointers[ xIndex ] = pvValue;
// 3288 		}
// 3289 	}
// 3290 
// 3291 #endif /* configNUM_THREAD_LOCAL_STORAGE_POINTERS */
// 3292 /*-----------------------------------------------------------*/
// 3293 
// 3294 #if ( configNUM_THREAD_LOCAL_STORAGE_POINTERS != 0 )
// 3295 
// 3296 	void *pvTaskGetThreadLocalStoragePointer( TaskHandle_t xTaskToQuery, BaseType_t xIndex )
// 3297 	{
// 3298 	void *pvReturn = NULL;
// 3299 	TCB_t *pxTCB;
// 3300 
// 3301 		if( xIndex < configNUM_THREAD_LOCAL_STORAGE_POINTERS )
// 3302 		{
// 3303 			pxTCB = prvGetTCBFromHandle( xTaskToQuery );
// 3304 			pvReturn = pxTCB->pvThreadLocalStoragePointers[ xIndex ];
// 3305 		}
// 3306 		else
// 3307 		{
// 3308 			pvReturn = NULL;
// 3309 		}
// 3310 
// 3311 		return pvReturn;
// 3312 	}
// 3313 
// 3314 #endif /* configNUM_THREAD_LOCAL_STORAGE_POINTERS */
// 3315 /*-----------------------------------------------------------*/
// 3316 
// 3317 #if ( portUSING_MPU_WRAPPERS == 1 )
// 3318 
// 3319 	void vTaskAllocateMPURegions( TaskHandle_t xTaskToModify, const MemoryRegion_t * const xRegions )
// 3320 	{
// 3321 	TCB_t *pxTCB;
// 3322 
// 3323 		/* If null is passed in here then we are modifying the MPU settings of
// 3324 		the calling task. */
// 3325 		pxTCB = prvGetTCBFromHandle( xTaskToModify );
// 3326 
// 3327 		vPortStoreTaskMPUSettings( &( pxTCB->xMPUSettings ), xRegions, NULL, 0 );
// 3328 	}
// 3329 
// 3330 #endif /* portUSING_MPU_WRAPPERS */
// 3331 /*-----------------------------------------------------------*/
// 3332 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function prvInitialiseTaskLists
        THUMB
// 3333 static void prvInitialiseTaskLists( void )
// 3334 {
prvInitialiseTaskLists:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
// 3335 UBaseType_t uxPriority;
// 3336 
// 3337 	for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
        MOVS     R4,#+0
        B.N      ??prvInitialiseTaskLists_0
// 3338 	{
// 3339 		vListInitialise( &( pxReadyTasksLists[ uxPriority ] ) );
??prvInitialiseTaskLists_1:
        LDR.W    R0,??DataTable36
        MOVS     R1,#+20
        MUL      R1,R1,R4
        ADD      R0,R0,R1
          CFI FunCall vListInitialise
        BL       vListInitialise
// 3340 	}
        ADDS     R4,R4,#+1
??prvInitialiseTaskLists_0:
        CMP      R4,#+5
        BCC.N    ??prvInitialiseTaskLists_1
// 3341 
// 3342 	vListInitialise( &xDelayedTaskList1 );
        LDR.W    R4,??DataTable42_11
        MOVS     R0,R4
          CFI FunCall vListInitialise
        BL       vListInitialise
// 3343 	vListInitialise( &xDelayedTaskList2 );
        LDR.W    R5,??DataTable42_12
        MOVS     R0,R5
          CFI FunCall vListInitialise
        BL       vListInitialise
// 3344 	vListInitialise( &xPendingReadyList );
        LDR.W    R0,??DataTable42
          CFI FunCall vListInitialise
        BL       vListInitialise
// 3345 
// 3346 	#if ( INCLUDE_vTaskDelete == 1 )
// 3347 	{
// 3348 		vListInitialise( &xTasksWaitingTermination );
// 3349 	}
// 3350 	#endif /* INCLUDE_vTaskDelete */
// 3351 
// 3352 	#if ( INCLUDE_vTaskSuspend == 1 )
// 3353 	{
// 3354 		vListInitialise( &xSuspendedTaskList );
        LDR.W    R0,??DataTable37_1
          CFI FunCall vListInitialise
        BL       vListInitialise
// 3355 	}
// 3356 	#endif /* INCLUDE_vTaskSuspend */
// 3357 
// 3358 	/* Start with pxDelayedTaskList using list1 and the pxOverflowDelayedTaskList
// 3359 	using list2. */
// 3360 	pxDelayedTaskList = &xDelayedTaskList1;
        LDR.W    R0,??DataTable42_8
        STR      R4,[R0, #+0]
// 3361 	pxOverflowDelayedTaskList = &xDelayedTaskList2;
        LDR.W    R0,??DataTable42_9
        STR      R5,[R0, #+0]
// 3362 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock28
// 3363 /*-----------------------------------------------------------*/
// 3364 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock29 Using cfiCommon0
          CFI Function prvCheckTasksWaitingTermination
          CFI NoCalls
        THUMB
// 3365 static void prvCheckTasksWaitingTermination( void )
// 3366 {
// 3367 
// 3368 	/** THIS FUNCTION IS CALLED FROM THE RTOS IDLE TASK **/
// 3369 
// 3370 	#if ( INCLUDE_vTaskDelete == 1 )
// 3371 	{
// 3372 		BaseType_t xListIsEmpty;
// 3373 
// 3374 		/* ucTasksDeleted is used to prevent vTaskSuspendAll() being called
// 3375 		too often in the idle task. */
// 3376 		while( uxDeletedTasksWaitingCleanUp > ( UBaseType_t ) 0U )
// 3377 		{
// 3378 			vTaskSuspendAll();
// 3379 			{
// 3380 				xListIsEmpty = listLIST_IS_EMPTY( &xTasksWaitingTermination );
// 3381 			}
// 3382 			( void ) xTaskResumeAll();
// 3383 
// 3384 			if( xListIsEmpty == pdFALSE )
// 3385 			{
// 3386 				TCB_t *pxTCB;
// 3387 
// 3388 				taskENTER_CRITICAL();
// 3389 				{
// 3390 					pxTCB = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( ( &xTasksWaitingTermination ) );
// 3391 					( void ) uxListRemove( &( pxTCB->xStateListItem ) );
// 3392 					--uxCurrentNumberOfTasks;
// 3393 					--uxDeletedTasksWaitingCleanUp;
// 3394 				}
// 3395 				taskEXIT_CRITICAL();
// 3396 
// 3397 				prvDeleteTCB( pxTCB );
// 3398 			}
// 3399 			else
// 3400 			{
// 3401 				mtCOVERAGE_TEST_MARKER();
// 3402 			}
// 3403 		}
// 3404 	}
// 3405 	#endif /* INCLUDE_vTaskDelete */
// 3406 }
prvCheckTasksWaitingTermination:
        BX       LR               ;; return
          CFI EndBlock cfiBlock29
// 3407 /*-----------------------------------------------------------*/
// 3408 
// 3409 #if( configUSE_TRACE_FACILITY == 1 )
// 3410 
// 3411 	void vTaskGetInfo( TaskHandle_t xTask, TaskStatus_t *pxTaskStatus, BaseType_t xGetFreeStackSpace, eTaskState eState )
// 3412 	{
// 3413 	TCB_t *pxTCB;
// 3414 
// 3415 		/* xTask is NULL then get the state of the calling task. */
// 3416 		pxTCB = prvGetTCBFromHandle( xTask );
// 3417 
// 3418 		pxTaskStatus->xHandle = ( TaskHandle_t ) pxTCB;
// 3419 		pxTaskStatus->pcTaskName = ( const char * ) &( pxTCB->pcTaskName [ 0 ] );
// 3420 		pxTaskStatus->uxCurrentPriority = pxTCB->uxPriority;
// 3421 		pxTaskStatus->pxStackBase = pxTCB->pxStack;
// 3422 		pxTaskStatus->xTaskNumber = pxTCB->uxTCBNumber;
// 3423 
// 3424 		#if ( INCLUDE_vTaskSuspend == 1 )
// 3425 		{
// 3426 			/* If the task is in the suspended list then there is a chance it is
// 3427 			actually just blocked indefinitely - so really it should be reported as
// 3428 			being in the Blocked state. */
// 3429 			if( pxTaskStatus->eCurrentState == eSuspended )
// 3430 			{
// 3431 				vTaskSuspendAll();
// 3432 				{
// 3433 					if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) != NULL )
// 3434 					{
// 3435 						pxTaskStatus->eCurrentState = eBlocked;
// 3436 					}
// 3437 				}
// 3438 				xTaskResumeAll();
// 3439 			}
// 3440 		}
// 3441 		#endif /* INCLUDE_vTaskSuspend */
// 3442 
// 3443 		#if ( configUSE_MUTEXES == 1 )
// 3444 		{
// 3445 			pxTaskStatus->uxBasePriority = pxTCB->uxBasePriority;
// 3446 		}
// 3447 		#else
// 3448 		{
// 3449 			pxTaskStatus->uxBasePriority = 0;
// 3450 		}
// 3451 		#endif
// 3452 
// 3453 		#if ( configGENERATE_RUN_TIME_STATS == 1 )
// 3454 		{
// 3455 			pxTaskStatus->ulRunTimeCounter = pxTCB->ulRunTimeCounter;
// 3456 		}
// 3457 		#else
// 3458 		{
// 3459 			pxTaskStatus->ulRunTimeCounter = 0;
// 3460 		}
// 3461 		#endif
// 3462 
// 3463 		/* Obtaining the task state is a little fiddly, so is only done if the value
// 3464 		of eState passed into this function is eInvalid - otherwise the state is
// 3465 		just set to whatever is passed in. */
// 3466 		if( eState != eInvalid )
// 3467 		{
// 3468 			pxTaskStatus->eCurrentState = eState;
// 3469 		}
// 3470 		else
// 3471 		{
// 3472 			pxTaskStatus->eCurrentState = eTaskGetState( xTask );
// 3473 		}
// 3474 
// 3475 		/* Obtaining the stack space takes some time, so the xGetFreeStackSpace
// 3476 		parameter is provided to allow it to be skipped. */
// 3477 		if( xGetFreeStackSpace != pdFALSE )
// 3478 		{
// 3479 			#if ( portSTACK_GROWTH > 0 )
// 3480 			{
// 3481 				pxTaskStatus->usStackHighWaterMark = prvTaskCheckFreeStackSpace( ( uint8_t * ) pxTCB->pxEndOfStack );
// 3482 			}
// 3483 			#else
// 3484 			{
// 3485 				pxTaskStatus->usStackHighWaterMark = prvTaskCheckFreeStackSpace( ( uint8_t * ) pxTCB->pxStack );
// 3486 			}
// 3487 			#endif
// 3488 		}
// 3489 		else
// 3490 		{
// 3491 			pxTaskStatus->usStackHighWaterMark = 0;
// 3492 		}
// 3493 	}
// 3494 
// 3495 #endif /* configUSE_TRACE_FACILITY */
// 3496 /*-----------------------------------------------------------*/
// 3497 
// 3498 #if ( configUSE_TRACE_FACILITY == 1 )
// 3499 
// 3500 	static UBaseType_t prvListTasksWithinSingleList( TaskStatus_t *pxTaskStatusArray, List_t *pxList, eTaskState eState )
// 3501 	{
// 3502 	volatile TCB_t *pxNextTCB, *pxFirstTCB;
// 3503 	UBaseType_t uxTask = 0;
// 3504 
// 3505 		if( listCURRENT_LIST_LENGTH( pxList ) > ( UBaseType_t ) 0 )
// 3506 		{
// 3507 			listGET_OWNER_OF_NEXT_ENTRY( pxFirstTCB, pxList );
// 3508 
// 3509 			/* Populate an TaskStatus_t structure within the
// 3510 			pxTaskStatusArray array for each task that is referenced from
// 3511 			pxList.  See the definition of TaskStatus_t in task.h for the
// 3512 			meaning of each TaskStatus_t structure member. */
// 3513 			do
// 3514 			{
// 3515 				listGET_OWNER_OF_NEXT_ENTRY( pxNextTCB, pxList );
// 3516 				vTaskGetInfo( ( TaskHandle_t ) pxNextTCB, &( pxTaskStatusArray[ uxTask ] ), pdTRUE, eState );
// 3517 				uxTask++;
// 3518 			} while( pxNextTCB != pxFirstTCB );
// 3519 		}
// 3520 		else
// 3521 		{
// 3522 			mtCOVERAGE_TEST_MARKER();
// 3523 		}
// 3524 
// 3525 		return uxTask;
// 3526 	}
// 3527 
// 3528 #endif /* configUSE_TRACE_FACILITY */
// 3529 /*-----------------------------------------------------------*/
// 3530 
// 3531 #if ( ( configUSE_TRACE_FACILITY == 1 ) || ( INCLUDE_uxTaskGetStackHighWaterMark == 1 ) )
// 3532 
// 3533 	static uint16_t prvTaskCheckFreeStackSpace( const uint8_t * pucStackByte )
// 3534 	{
// 3535 	uint32_t ulCount = 0U;
// 3536 
// 3537 		while( *pucStackByte == ( uint8_t ) tskSTACK_FILL_BYTE )
// 3538 		{
// 3539 			pucStackByte -= portSTACK_GROWTH;
// 3540 			ulCount++;
// 3541 		}
// 3542 
// 3543 		ulCount /= ( uint32_t ) sizeof( StackType_t ); /*lint !e961 Casting is not redundant on smaller architectures. */
// 3544 
// 3545 		return ( uint16_t ) ulCount;
// 3546 	}
// 3547 
// 3548 #endif /* ( ( configUSE_TRACE_FACILITY == 1 ) || ( INCLUDE_uxTaskGetStackHighWaterMark == 1 ) ) */
// 3549 /*-----------------------------------------------------------*/
// 3550 
// 3551 #if ( INCLUDE_uxTaskGetStackHighWaterMark == 1 )
// 3552 
// 3553 	UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask )
// 3554 	{
// 3555 	TCB_t *pxTCB;
// 3556 	uint8_t *pucEndOfStack;
// 3557 	UBaseType_t uxReturn;
// 3558 
// 3559 		pxTCB = prvGetTCBFromHandle( xTask );
// 3560 
// 3561 		#if portSTACK_GROWTH < 0
// 3562 		{
// 3563 			pucEndOfStack = ( uint8_t * ) pxTCB->pxStack;
// 3564 		}
// 3565 		#else
// 3566 		{
// 3567 			pucEndOfStack = ( uint8_t * ) pxTCB->pxEndOfStack;
// 3568 		}
// 3569 		#endif
// 3570 
// 3571 		uxReturn = ( UBaseType_t ) prvTaskCheckFreeStackSpace( pucEndOfStack );
// 3572 
// 3573 		return uxReturn;
// 3574 	}
// 3575 
// 3576 #endif /* INCLUDE_uxTaskGetStackHighWaterMark */
// 3577 /*-----------------------------------------------------------*/
// 3578 
// 3579 #if ( INCLUDE_vTaskDelete == 1 )
// 3580 
// 3581 	static void prvDeleteTCB( TCB_t *pxTCB )
// 3582 	{
// 3583 		/* This call is required specifically for the TriCore port.  It must be
// 3584 		above the vPortFree() calls.  The call is also used by ports/demos that
// 3585 		want to allocate and clean RAM statically. */
// 3586 		portCLEAN_UP_TCB( pxTCB );
// 3587 
// 3588 		/* Free up the memory allocated by the scheduler for the task.  It is up
// 3589 		to the task to free any memory allocated at the application level. */
// 3590 		#if ( configUSE_NEWLIB_REENTRANT == 1 )
// 3591 		{
// 3592 			_reclaim_reent( &( pxTCB->xNewLib_reent ) );
// 3593 		}
// 3594 		#endif /* configUSE_NEWLIB_REENTRANT */
// 3595 
// 3596 		#if( ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) && ( configSUPPORT_STATIC_ALLOCATION == 0 ) && ( portUSING_MPU_WRAPPERS == 0 ) )
// 3597 		{
// 3598 			/* The task can only have been allocated dynamically - free both
// 3599 			the stack and TCB. */
// 3600 			vPortFree( pxTCB->pxStack );
// 3601 			vPortFree( pxTCB );
// 3602 		}
// 3603 		#elif( tskSTATIC_AND_DYNAMIC_ALLOCATION_POSSIBLE == 1 )
// 3604 		{
// 3605 			/* The task could have been allocated statically or dynamically, so
// 3606 			check what was statically allocated before trying to free the
// 3607 			memory. */
// 3608 			if( pxTCB->ucStaticallyAllocated == tskDYNAMICALLY_ALLOCATED_STACK_AND_TCB )
// 3609 			{
// 3610 				/* Both the stack and TCB were allocated dynamically, so both
// 3611 				must be freed. */
// 3612 				vPortFree( pxTCB->pxStack );
// 3613 				vPortFree( pxTCB );
// 3614 			}
// 3615 			else if( pxTCB->ucStaticallyAllocated == tskSTATICALLY_ALLOCATED_STACK_ONLY )
// 3616 			{
// 3617 				/* Only the stack was statically allocated, so the TCB is the
// 3618 				only memory that must be freed. */
// 3619 				vPortFree( pxTCB );
// 3620 			}
// 3621 			else
// 3622 			{
// 3623 				/* Neither the stack nor the TCB were allocated dynamically, so
// 3624 				nothing needs to be freed. */
// 3625 				configASSERT( pxTCB->ucStaticallyAllocated == tskSTATICALLY_ALLOCATED_STACK_AND_TCB	)
// 3626 				mtCOVERAGE_TEST_MARKER();
// 3627 			}
// 3628 		}
// 3629 		#endif /* configSUPPORT_DYNAMIC_ALLOCATION */
// 3630 	}
// 3631 
// 3632 #endif /* INCLUDE_vTaskDelete */
// 3633 /*-----------------------------------------------------------*/
// 3634 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock30 Using cfiCommon0
          CFI Function prvResetNextTaskUnblockTime
          CFI NoCalls
        THUMB
// 3635 static void prvResetNextTaskUnblockTime( void )
// 3636 {
// 3637 TCB_t *pxTCB;
// 3638 
// 3639 	if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
prvResetNextTaskUnblockTime:
        LDR.W    R1,??DataTable42_8
        LDR      R0,[R1, #+0]
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??prvResetNextTaskUnblockTime_0
// 3640 	{
// 3641 		/* The new current delayed list is empty.  Set xNextTaskUnblockTime to
// 3642 		the maximum possible value so it is	extremely unlikely that the
// 3643 		if( xTickCount >= xNextTaskUnblockTime ) test will pass until
// 3644 		there is an item in the delayed list. */
// 3645 		xNextTaskUnblockTime = portMAX_DELAY;
        MOVS     R0,#-1
        LDR.W    R1,??DataTable42_3
        STR      R0,[R1, #+0]
        B.N      ??prvResetNextTaskUnblockTime_1
// 3646 	}
// 3647 	else
// 3648 	{
// 3649 		/* The new current delayed list is not empty, get the value of
// 3650 		the item at the head of the delayed list.  This is the time at
// 3651 		which the task at the head of the delayed list should be removed
// 3652 		from the Blocked state. */
// 3653 		( pxTCB ) = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxDelayedTaskList );
??prvResetNextTaskUnblockTime_0:
        LDR      R0,[R1, #+0]
        LDR      R0,[R0, #+12]
        LDR      R0,[R0, #+12]
// 3654 		xNextTaskUnblockTime = listGET_LIST_ITEM_VALUE( &( ( pxTCB )->xStateListItem ) );
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable42_3
        STR      R0,[R1, #+0]
// 3655 	}
// 3656 }
??prvResetNextTaskUnblockTime_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock30
// 3657 /*-----------------------------------------------------------*/
// 3658 
// 3659 #if ( ( INCLUDE_xTaskGetCurrentTaskHandle == 1 ) || ( configUSE_MUTEXES == 1 ) )
// 3660 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock31 Using cfiCommon0
          CFI Function xTaskGetCurrentTaskHandle
          CFI NoCalls
        THUMB
// 3661 	TaskHandle_t xTaskGetCurrentTaskHandle( void )
// 3662 	{
// 3663 	TaskHandle_t xReturn;
// 3664 
// 3665 		/* A critical section is not required as this is not called from
// 3666 		an interrupt and the current TCB will always be the same for any
// 3667 		individual execution thread. */
// 3668 		xReturn = pxCurrentTCB;
xTaskGetCurrentTaskHandle:
        LDR.W    R0,??DataTable42_7
        LDR      R0,[R0, #+0]
// 3669 
// 3670 		return xReturn;
        BX       LR               ;; return
// 3671 	}
          CFI EndBlock cfiBlock31
// 3672 
// 3673 #endif /* ( ( INCLUDE_xTaskGetCurrentTaskHandle == 1 ) || ( configUSE_MUTEXES == 1 ) ) */
// 3674 /*-----------------------------------------------------------*/
// 3675 
// 3676 #if ( ( INCLUDE_xTaskGetSchedulerState == 1 ) || ( configUSE_TIMERS == 1 ) )
// 3677 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock32 Using cfiCommon0
          CFI Function xTaskGetSchedulerState
          CFI NoCalls
        THUMB
// 3678 	BaseType_t xTaskGetSchedulerState( void )
// 3679 	{
// 3680 	BaseType_t xReturn;
// 3681 
// 3682 		if( xSchedulerRunning == pdFALSE )
xTaskGetSchedulerState:
        LDR.N    R0,??DataTable35_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??xTaskGetSchedulerState_0
// 3683 		{
// 3684 			xReturn = taskSCHEDULER_NOT_STARTED;
        MOVS     R0,#+1
        B.N      ??xTaskGetSchedulerState_1
// 3685 		}
// 3686 		else
// 3687 		{
// 3688 			if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
??xTaskGetSchedulerState_0:
        LDR.W    R0,??DataTable39
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??xTaskGetSchedulerState_2
// 3689 			{
// 3690 				xReturn = taskSCHEDULER_RUNNING;
        MOVS     R0,#+2
        B.N      ??xTaskGetSchedulerState_1
// 3691 			}
// 3692 			else
// 3693 			{
// 3694 				xReturn = taskSCHEDULER_SUSPENDED;
??xTaskGetSchedulerState_2:
        MOVS     R0,#+0
// 3695 			}
// 3696 		}
// 3697 
// 3698 		return xReturn;
??xTaskGetSchedulerState_1:
        BX       LR               ;; return
// 3699 	}
          CFI EndBlock cfiBlock32
// 3700 
// 3701 #endif /* ( ( INCLUDE_xTaskGetSchedulerState == 1 ) || ( configUSE_TIMERS == 1 ) ) */
// 3702 /*-----------------------------------------------------------*/
// 3703 
// 3704 #if ( configUSE_MUTEXES == 1 )
// 3705 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock33 Using cfiCommon0
          CFI Function vTaskPriorityInherit
        THUMB
// 3706 	void vTaskPriorityInherit( TaskHandle_t const pxMutexHolder )
// 3707 	{
vTaskPriorityInherit:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
// 3708 	TCB_t * const pxTCB = ( TCB_t * ) pxMutexHolder;
        MOVS     R4,R0
// 3709 
// 3710 		/* If the mutex was given back by an interrupt while the queue was
// 3711 		locked then the mutex holder might now be NULL. */
// 3712 		if( pxMutexHolder != NULL )
        CMP      R0,#+0
        BEQ.N    ??vTaskPriorityInherit_0
// 3713 		{
// 3714 			/* If the holder of the mutex has a priority below the priority of
// 3715 			the task attempting to obtain the mutex then it will temporarily
// 3716 			inherit the priority of the task attempting to obtain the mutex. */
// 3717 			if( pxTCB->uxPriority < pxCurrentTCB->uxPriority )
        LDR.N    R7,??DataTable35_1
        LDR      R0,[R4, #+44]
        LDR      R1,[R7, #+0]
        LDR      R1,[R1, #+44]
        CMP      R0,R1
        BCS.N    ??vTaskPriorityInherit_0
// 3718 			{
// 3719 				/* Adjust the mutex holder state to account for its new
// 3720 				priority.  Only reset the event list item value if the value is
// 3721 				not	being used for anything else. */
// 3722 				if( ( listGET_LIST_ITEM_VALUE( &( pxTCB->xEventListItem ) ) & taskEVENT_LIST_ITEM_VALUE_IN_USE ) == 0UL )
        LDR      R0,[R4, #+24]
        CMP      R0,#+0
        BMI.N    ??vTaskPriorityInherit_1
// 3723 				{
// 3724 					listSET_LIST_ITEM_VALUE( &( pxTCB->xEventListItem ), ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) pxCurrentTCB->uxPriority ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
        LDR      R0,[R7, #+0]
        LDR      R0,[R0, #+44]
        RSBS     R0,R0,#+5
        STR      R0,[R4, #+24]
// 3725 				}
// 3726 				else
// 3727 				{
// 3728 					mtCOVERAGE_TEST_MARKER();
// 3729 				}
// 3730 
// 3731 				/* If the task being modified is in the ready state it will need
// 3732 				to be moved into a new list. */
// 3733 				if( listIS_CONTAINED_WITHIN( &( pxReadyTasksLists[ pxTCB->uxPriority ] ), &( pxTCB->xStateListItem ) ) != pdFALSE )
??vTaskPriorityInherit_1:
        LDR.W    R5,??DataTable39_1
        MOVS     R6,#+20
        LDR      R0,[R4, #+20]
        LDR      R1,[R4, #+44]
        MULS     R1,R6,R1
        ADD      R1,R5,R1
        CMP      R0,R1
        BNE.N    ??vTaskPriorityInherit_2
// 3734 				{
// 3735 					if( uxListRemove( &( pxTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
        ADDS     R0,R4,#+4
          CFI FunCall uxListRemove
        BL       uxListRemove
        CMP      R0,#+0
        BNE.N    ??vTaskPriorityInherit_3
// 3736 					{
// 3737 						taskRESET_READY_PRIORITY( pxTCB->uxPriority );
        LDR      R0,[R4, #+44]
        MULS     R0,R6,R0
        LDR      R0,[R5, R0]
        CMP      R0,#+0
        BNE.N    ??vTaskPriorityInherit_3
        LDR.W    R1,??DataTable42_13
        LDR      R2,[R1, #+0]
        MOVS     R3,#+1
        LDR      R0,[R4, #+44]
        LSLS     R3,R3,R0
        BICS     R2,R2,R3
        STR      R2,[R1, #+0]
// 3738 					}
// 3739 					else
// 3740 					{
// 3741 						mtCOVERAGE_TEST_MARKER();
// 3742 					}
// 3743 
// 3744 					/* Inherit the priority before being moved into the new list. */
// 3745 					pxTCB->uxPriority = pxCurrentTCB->uxPriority;
??vTaskPriorityInherit_3:
        LDR      R0,[R7, #+0]
        LDR      R0,[R0, #+44]
        STR      R0,[R4, #+44]
// 3746 					prvAddTaskToReadyList( pxTCB );
        LDR.W    R1,??DataTable42_13
        LDR      R2,[R1, #+0]
        MOVS     R3,#+1
        LDR      R0,[R4, #+44]
        LSLS     R3,R3,R0
        ORRS     R2,R3,R2
        STR      R2,[R1, #+0]
        ADDS     R1,R4,#+4
        LDR      R0,[R4, #+44]
        MUL      R6,R6,R0
        ADD      R0,R5,R6
          CFI FunCall vListInsertEnd
        BL       vListInsertEnd
        B.N      ??vTaskPriorityInherit_0
// 3747 				}
// 3748 				else
// 3749 				{
// 3750 					/* Just inherit the priority. */
// 3751 					pxTCB->uxPriority = pxCurrentTCB->uxPriority;
??vTaskPriorityInherit_2:
        LDR      R0,[R7, #+0]
        LDR      R0,[R0, #+44]
        STR      R0,[R4, #+44]
// 3752 				}
// 3753 
// 3754 				traceTASK_PRIORITY_INHERIT( pxTCB, pxCurrentTCB->uxPriority );
// 3755 			}
// 3756 			else
// 3757 			{
// 3758 				mtCOVERAGE_TEST_MARKER();
// 3759 			}
// 3760 		}
// 3761 		else
// 3762 		{
// 3763 			mtCOVERAGE_TEST_MARKER();
// 3764 		}
// 3765 	}
??vTaskPriorityInherit_0:
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock33
// 3766 
// 3767 #endif /* configUSE_MUTEXES */
// 3768 /*-----------------------------------------------------------*/
// 3769 
// 3770 #if ( configUSE_MUTEXES == 1 )
// 3771 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock34 Using cfiCommon0
          CFI Function xTaskPriorityDisinherit
        THUMB
// 3772 	BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder )
// 3773 	{
xTaskPriorityDisinherit:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
// 3774 	TCB_t * const pxTCB = ( TCB_t * ) pxMutexHolder;
        MOVS     R4,R0
// 3775 	BaseType_t xReturn = pdFALSE;
        MOVS     R1,#+0
// 3776 
// 3777 		if( pxMutexHolder != NULL )
        CMP      R0,#+0
        BEQ.N    ??xTaskPriorityDisinherit_0
// 3778 		{
// 3779 			/* A task can only have an inherited priority if it holds the mutex.
// 3780 			If the mutex is held by a task then it cannot be given from an
// 3781 			interrupt, and if a mutex is given by the holding task then it must
// 3782 			be the running state task. */
// 3783 			configASSERT( pxTCB == pxCurrentTCB );
        LDR.N    R0,??DataTable35_1
        LDR      R0,[R0, #+0]
// 3784 
// 3785 			configASSERT( pxTCB->uxMutexesHeld );
// 3786 			( pxTCB->uxMutexesHeld )--;
        LDR      R0,[R4, #+68]
        SUBS     R0,R0,#+1
        STR      R0,[R4, #+68]
// 3787 
// 3788 			/* Has the holder of the mutex inherited the priority of another
// 3789 			task? */
// 3790 			if( pxTCB->uxPriority != pxTCB->uxBasePriority )
        LDR      R0,[R4, #+44]
        LDR      R2,[R4, #+64]
        CMP      R0,R2
        BEQ.N    ??xTaskPriorityDisinherit_0
// 3791 			{
// 3792 				/* Only disinherit if no other mutexes are held. */
// 3793 				if( pxTCB->uxMutexesHeld == ( UBaseType_t ) 0 )
        LDR      R0,[R4, #+68]
        CMP      R0,#+0
        BNE.N    ??xTaskPriorityDisinherit_0
// 3794 				{
// 3795 					/* A task can only have an inherited priority if it holds
// 3796 					the mutex.  If the mutex is held by a task then it cannot be
// 3797 					given from an interrupt, and if a mutex is given by the
// 3798 					holding	task then it must be the running state task.  Remove
// 3799 					the	holding task from the ready	list. */
// 3800 					if( uxListRemove( &( pxTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
        ADDS     R0,R4,#+4
          CFI FunCall uxListRemove
        BL       uxListRemove
        CMP      R0,#+0
        BNE.N    ??xTaskPriorityDisinherit_1
// 3801 					{
// 3802 						taskRESET_READY_PRIORITY( pxTCB->uxPriority );
        LDR.W    R1,??DataTable39_1
        LDR      R2,[R4, #+44]
        MOVS     R0,#+20
        MULS     R2,R0,R2
        LDR      R0,[R1, R2]
        CMP      R0,#+0
        BNE.N    ??xTaskPriorityDisinherit_1
        LDR.N    R1,??DataTable35_4
        LDR      R2,[R1, #+0]
        MOVS     R3,#+1
        LDR      R0,[R4, #+44]
        LSLS     R3,R3,R0
        BICS     R2,R2,R3
        STR      R2,[R1, #+0]
// 3803 					}
// 3804 					else
// 3805 					{
// 3806 						mtCOVERAGE_TEST_MARKER();
// 3807 					}
// 3808 
// 3809 					/* Disinherit the priority before adding the task into the
// 3810 					new	ready list. */
// 3811 					traceTASK_PRIORITY_DISINHERIT( pxTCB, pxTCB->uxBasePriority );
// 3812 					pxTCB->uxPriority = pxTCB->uxBasePriority;
??xTaskPriorityDisinherit_1:
        LDR      R0,[R4, #+64]
        STR      R0,[R4, #+44]
// 3813 
// 3814 					/* Reset the event list item value.  It cannot be in use for
// 3815 					any other purpose if this task is running, and it must be
// 3816 					running to give back the mutex. */
// 3817 					listSET_LIST_ITEM_VALUE( &( pxTCB->xEventListItem ), ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) pxTCB->uxPriority ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
        LDR      R0,[R4, #+44]
        RSBS     R0,R0,#+5
        STR      R0,[R4, #+24]
// 3818 					prvAddTaskToReadyList( pxTCB );
        LDR.N    R1,??DataTable35_4
        LDR      R2,[R1, #+0]
        MOVS     R3,#+1
        LDR      R0,[R4, #+44]
        LSLS     R3,R3,R0
        ORRS     R2,R3,R2
        STR      R2,[R1, #+0]
        ADDS     R1,R4,#+4
        LDR.W    R2,??DataTable39_1
        LDR      R3,[R4, #+44]
        MOVS     R0,#+20
        MULS     R3,R0,R3
        ADD      R0,R2,R3
          CFI FunCall vListInsertEnd
        BL       vListInsertEnd
// 3819 
// 3820 					/* Return true to indicate that a context switch is required.
// 3821 					This is only actually required in the corner case whereby
// 3822 					multiple mutexes were held and the mutexes were given back
// 3823 					in an order different to that in which they were taken.
// 3824 					If a context switch did not occur when the first mutex was
// 3825 					returned, even if a task was waiting on it, then a context
// 3826 					switch should occur when the last mutex is returned whether
// 3827 					a task is waiting on it or not. */
// 3828 					xReturn = pdTRUE;
        MOVS     R1,#+1
// 3829 				}
// 3830 				else
// 3831 				{
// 3832 					mtCOVERAGE_TEST_MARKER();
// 3833 				}
// 3834 			}
// 3835 			else
// 3836 			{
// 3837 				mtCOVERAGE_TEST_MARKER();
// 3838 			}
// 3839 		}
// 3840 		else
// 3841 		{
// 3842 			mtCOVERAGE_TEST_MARKER();
// 3843 		}
// 3844 
// 3845 		return xReturn;
??xTaskPriorityDisinherit_0:
        MOVS     R0,R1
        POP      {R4,PC}          ;; return
// 3846 	}
          CFI EndBlock cfiBlock34
// 3847 
// 3848 #endif /* configUSE_MUTEXES */
// 3849 /*-----------------------------------------------------------*/
// 3850 
// 3851 #if ( portCRITICAL_NESTING_IN_TCB == 1 )
// 3852 
// 3853 	void vTaskEnterCritical( void )
// 3854 	{
// 3855 		portDISABLE_INTERRUPTS();
// 3856 
// 3857 		if( xSchedulerRunning != pdFALSE )
// 3858 		{
// 3859 			( pxCurrentTCB->uxCriticalNesting )++;
// 3860 
// 3861 			/* This is not the interrupt safe version of the enter critical
// 3862 			function so	assert() if it is being called from an interrupt
// 3863 			context.  Only API functions that end in "FromISR" can be used in an
// 3864 			interrupt.  Only assert if the critical nesting count is 1 to
// 3865 			protect against recursive calls if the assert function also uses a
// 3866 			critical section. */
// 3867 			if( pxCurrentTCB->uxCriticalNesting == 1 )
// 3868 			{
// 3869 				portASSERT_IF_IN_ISR();
// 3870 			}
// 3871 		}
// 3872 		else
// 3873 		{
// 3874 			mtCOVERAGE_TEST_MARKER();
// 3875 		}
// 3876 	}
// 3877 
// 3878 #endif /* portCRITICAL_NESTING_IN_TCB */
// 3879 /*-----------------------------------------------------------*/
// 3880 
// 3881 #if ( portCRITICAL_NESTING_IN_TCB == 1 )
// 3882 
// 3883 	void vTaskExitCritical( void )
// 3884 	{
// 3885 		if( xSchedulerRunning != pdFALSE )
// 3886 		{
// 3887 			if( pxCurrentTCB->uxCriticalNesting > 0U )
// 3888 			{
// 3889 				( pxCurrentTCB->uxCriticalNesting )--;
// 3890 
// 3891 				if( pxCurrentTCB->uxCriticalNesting == 0U )
// 3892 				{
// 3893 					portENABLE_INTERRUPTS();
// 3894 				}
// 3895 				else
// 3896 				{
// 3897 					mtCOVERAGE_TEST_MARKER();
// 3898 				}
// 3899 			}
// 3900 			else
// 3901 			{
// 3902 				mtCOVERAGE_TEST_MARKER();
// 3903 			}
// 3904 		}
// 3905 		else
// 3906 		{
// 3907 			mtCOVERAGE_TEST_MARKER();
// 3908 		}
// 3909 	}
// 3910 
// 3911 #endif /* portCRITICAL_NESTING_IN_TCB */
// 3912 /*-----------------------------------------------------------*/
// 3913 
// 3914 #if ( ( configUSE_TRACE_FACILITY == 1 ) && ( configUSE_STATS_FORMATTING_FUNCTIONS > 0 ) )
// 3915 
// 3916 	static char *prvWriteNameToBuffer( char *pcBuffer, const char *pcTaskName )
// 3917 	{
// 3918 	size_t x;
// 3919 
// 3920 		/* Start by copying the entire string. */
// 3921 		strcpy( pcBuffer, pcTaskName );
// 3922 
// 3923 		/* Pad the end of the string with spaces to ensure columns line up when
// 3924 		printed out. */
// 3925 		for( x = strlen( pcBuffer ); x < ( size_t ) ( configMAX_TASK_NAME_LEN - 1 ); x++ )
// 3926 		{
// 3927 			pcBuffer[ x ] = ' ';
// 3928 		}
// 3929 
// 3930 		/* Terminate. */
// 3931 		pcBuffer[ x ] = 0x00;
// 3932 
// 3933 		/* Return the new end of string. */
// 3934 		return &( pcBuffer[ x ] );
// 3935 	}
// 3936 
// 3937 #endif /* ( configUSE_TRACE_FACILITY == 1 ) && ( configUSE_STATS_FORMATTING_FUNCTIONS > 0 ) */
// 3938 /*-----------------------------------------------------------*/
// 3939 
// 3940 #if ( ( configUSE_TRACE_FACILITY == 1 ) && ( configUSE_STATS_FORMATTING_FUNCTIONS > 0 ) )
// 3941 
// 3942 	void vTaskList( char * pcWriteBuffer )
// 3943 	{
// 3944 	TaskStatus_t *pxTaskStatusArray;
// 3945 	volatile UBaseType_t uxArraySize, x;
// 3946 	char cStatus;
// 3947 
// 3948 		/*
// 3949 		 * PLEASE NOTE:
// 3950 		 *
// 3951 		 * This function is provided for convenience only, and is used by many
// 3952 		 * of the demo applications.  Do not consider it to be part of the
// 3953 		 * scheduler.
// 3954 		 *
// 3955 		 * vTaskList() calls uxTaskGetSystemState(), then formats part of the
// 3956 		 * uxTaskGetSystemState() output into a human readable table that
// 3957 		 * displays task names, states and stack usage.
// 3958 		 *
// 3959 		 * vTaskList() has a dependency on the sprintf() C library function that
// 3960 		 * might bloat the code size, use a lot of stack, and provide different
// 3961 		 * results on different platforms.  An alternative, tiny, third party,
// 3962 		 * and limited functionality implementation of sprintf() is provided in
// 3963 		 * many of the FreeRTOS/Demo sub-directories in a file called
// 3964 		 * printf-stdarg.c (note printf-stdarg.c does not provide a full
// 3965 		 * snprintf() implementation!).
// 3966 		 *
// 3967 		 * It is recommended that production systems call uxTaskGetSystemState()
// 3968 		 * directly to get access to raw stats data, rather than indirectly
// 3969 		 * through a call to vTaskList().
// 3970 		 */
// 3971 
// 3972 
// 3973 		/* Make sure the write buffer does not contain a string. */
// 3974 		*pcWriteBuffer = 0x00;
// 3975 
// 3976 		/* Take a snapshot of the number of tasks in case it changes while this
// 3977 		function is executing. */
// 3978 		uxArraySize = uxCurrentNumberOfTasks;
// 3979 
// 3980 		/* Allocate an array index for each task.  NOTE!  if
// 3981 		configSUPPORT_DYNAMIC_ALLOCATION is set to 0 then pvPortMalloc() will
// 3982 		equate to NULL. */
// 3983 		pxTaskStatusArray = pvPortMalloc( uxCurrentNumberOfTasks * sizeof( TaskStatus_t ) );
// 3984 
// 3985 		if( pxTaskStatusArray != NULL )
// 3986 		{
// 3987 			/* Generate the (binary) data. */
// 3988 			uxArraySize = uxTaskGetSystemState( pxTaskStatusArray, uxArraySize, NULL );
// 3989 
// 3990 			/* Create a human readable table from the binary data. */
// 3991 			for( x = 0; x < uxArraySize; x++ )
// 3992 			{
// 3993 				switch( pxTaskStatusArray[ x ].eCurrentState )
// 3994 				{
// 3995 					case eReady:		cStatus = tskREADY_CHAR;
// 3996 										break;
// 3997 
// 3998 					case eBlocked:		cStatus = tskBLOCKED_CHAR;
// 3999 										break;
// 4000 
// 4001 					case eSuspended:	cStatus = tskSUSPENDED_CHAR;
// 4002 										break;
// 4003 
// 4004 					case eDeleted:		cStatus = tskDELETED_CHAR;
// 4005 										break;
// 4006 
// 4007 					default:			/* Should not get here, but it is included
// 4008 										to prevent static checking errors. */
// 4009 										cStatus = 0x00;
// 4010 										break;
// 4011 				}
// 4012 
// 4013 				/* Write the task name to the string, padding with spaces so it
// 4014 				can be printed in tabular form more easily. */
// 4015 				pcWriteBuffer = prvWriteNameToBuffer( pcWriteBuffer, pxTaskStatusArray[ x ].pcTaskName );
// 4016 
// 4017 				/* Write the rest of the string. */
// 4018 				sprintf( pcWriteBuffer, "\t%c\t%u\t%u\t%u\r\n", cStatus, ( unsigned int ) pxTaskStatusArray[ x ].uxCurrentPriority, ( unsigned int ) pxTaskStatusArray[ x ].usStackHighWaterMark, ( unsigned int ) pxTaskStatusArray[ x ].xTaskNumber );
// 4019 				pcWriteBuffer += strlen( pcWriteBuffer );
// 4020 			}
// 4021 
// 4022 			/* Free the array again.  NOTE!  If configSUPPORT_DYNAMIC_ALLOCATION
// 4023 			is 0 then vPortFree() will be #defined to nothing. */
// 4024 			vPortFree( pxTaskStatusArray );
// 4025 		}
// 4026 		else
// 4027 		{
// 4028 			mtCOVERAGE_TEST_MARKER();
// 4029 		}
// 4030 	}
// 4031 
// 4032 #endif /* ( ( configUSE_TRACE_FACILITY == 1 ) && ( configUSE_STATS_FORMATTING_FUNCTIONS > 0 ) ) */
// 4033 /*----------------------------------------------------------*/
// 4034 
// 4035 #if ( ( configGENERATE_RUN_TIME_STATS == 1 ) && ( configUSE_STATS_FORMATTING_FUNCTIONS > 0 ) )
// 4036 
// 4037 	void vTaskGetRunTimeStats( char *pcWriteBuffer )
// 4038 	{
// 4039 	TaskStatus_t *pxTaskStatusArray;
// 4040 	volatile UBaseType_t uxArraySize, x;
// 4041 	uint32_t ulTotalTime, ulStatsAsPercentage;
// 4042 
// 4043 		#if( configUSE_TRACE_FACILITY != 1 )
// 4044 		{
// 4045 			#error configUSE_TRACE_FACILITY must also be set to 1 in FreeRTOSConfig.h to use vTaskGetRunTimeStats().
// 4046 		}
// 4047 		#endif
// 4048 
// 4049 		/*
// 4050 		 * PLEASE NOTE:
// 4051 		 *
// 4052 		 * This function is provided for convenience only, and is used by many
// 4053 		 * of the demo applications.  Do not consider it to be part of the
// 4054 		 * scheduler.
// 4055 		 *
// 4056 		 * vTaskGetRunTimeStats() calls uxTaskGetSystemState(), then formats part
// 4057 		 * of the uxTaskGetSystemState() output into a human readable table that
// 4058 		 * displays the amount of time each task has spent in the Running state
// 4059 		 * in both absolute and percentage terms.
// 4060 		 *
// 4061 		 * vTaskGetRunTimeStats() has a dependency on the sprintf() C library
// 4062 		 * function that might bloat the code size, use a lot of stack, and
// 4063 		 * provide different results on different platforms.  An alternative,
// 4064 		 * tiny, third party, and limited functionality implementation of
// 4065 		 * sprintf() is provided in many of the FreeRTOS/Demo sub-directories in
// 4066 		 * a file called printf-stdarg.c (note printf-stdarg.c does not provide
// 4067 		 * a full snprintf() implementation!).
// 4068 		 *
// 4069 		 * It is recommended that production systems call uxTaskGetSystemState()
// 4070 		 * directly to get access to raw stats data, rather than indirectly
// 4071 		 * through a call to vTaskGetRunTimeStats().
// 4072 		 */
// 4073 
// 4074 		/* Make sure the write buffer does not contain a string. */
// 4075 		*pcWriteBuffer = 0x00;
// 4076 
// 4077 		/* Take a snapshot of the number of tasks in case it changes while this
// 4078 		function is executing. */
// 4079 		uxArraySize = uxCurrentNumberOfTasks;
// 4080 
// 4081 		/* Allocate an array index for each task.  NOTE!  If
// 4082 		configSUPPORT_DYNAMIC_ALLOCATION is set to 0 then pvPortMalloc() will
// 4083 		equate to NULL. */
// 4084 		pxTaskStatusArray = pvPortMalloc( uxCurrentNumberOfTasks * sizeof( TaskStatus_t ) );
// 4085 
// 4086 		if( pxTaskStatusArray != NULL )
// 4087 		{
// 4088 			/* Generate the (binary) data. */
// 4089 			uxArraySize = uxTaskGetSystemState( pxTaskStatusArray, uxArraySize, &ulTotalTime );
// 4090 
// 4091 			/* For percentage calculations. */
// 4092 			ulTotalTime /= 100UL;
// 4093 
// 4094 			/* Avoid divide by zero errors. */
// 4095 			if( ulTotalTime > 0 )
// 4096 			{
// 4097 				/* Create a human readable table from the binary data. */
// 4098 				for( x = 0; x < uxArraySize; x++ )
// 4099 				{
// 4100 					/* What percentage of the total run time has the task used?
// 4101 					This will always be rounded down to the nearest integer.
// 4102 					ulTotalRunTimeDiv100 has already been divided by 100. */
// 4103 					ulStatsAsPercentage = pxTaskStatusArray[ x ].ulRunTimeCounter / ulTotalTime;
// 4104 
// 4105 					/* Write the task name to the string, padding with
// 4106 					spaces so it can be printed in tabular form more
// 4107 					easily. */
// 4108 					pcWriteBuffer = prvWriteNameToBuffer( pcWriteBuffer, pxTaskStatusArray[ x ].pcTaskName );
// 4109 
// 4110 					if( ulStatsAsPercentage > 0UL )
// 4111 					{
// 4112 						#ifdef portLU_PRINTF_SPECIFIER_REQUIRED
// 4113 						{
// 4114 							sprintf( pcWriteBuffer, "\t%lu\t\t%lu%%\r\n", pxTaskStatusArray[ x ].ulRunTimeCounter, ulStatsAsPercentage );
// 4115 						}
// 4116 						#else
// 4117 						{
// 4118 							/* sizeof( int ) == sizeof( long ) so a smaller
// 4119 							printf() library can be used. */
// 4120 							sprintf( pcWriteBuffer, "\t%u\t\t%u%%\r\n", ( unsigned int ) pxTaskStatusArray[ x ].ulRunTimeCounter, ( unsigned int ) ulStatsAsPercentage );
// 4121 						}
// 4122 						#endif
// 4123 					}
// 4124 					else
// 4125 					{
// 4126 						/* If the percentage is zero here then the task has
// 4127 						consumed less than 1% of the total run time. */
// 4128 						#ifdef portLU_PRINTF_SPECIFIER_REQUIRED
// 4129 						{
// 4130 							sprintf( pcWriteBuffer, "\t%lu\t\t<1%%\r\n", pxTaskStatusArray[ x ].ulRunTimeCounter );
// 4131 						}
// 4132 						#else
// 4133 						{
// 4134 							/* sizeof( int ) == sizeof( long ) so a smaller
// 4135 							printf() library can be used. */
// 4136 							sprintf( pcWriteBuffer, "\t%u\t\t<1%%\r\n", ( unsigned int ) pxTaskStatusArray[ x ].ulRunTimeCounter );
// 4137 						}
// 4138 						#endif
// 4139 					}
// 4140 
// 4141 					pcWriteBuffer += strlen( pcWriteBuffer );
// 4142 				}
// 4143 			}
// 4144 			else
// 4145 			{
// 4146 				mtCOVERAGE_TEST_MARKER();
// 4147 			}
// 4148 
// 4149 			/* Free the array again.  NOTE!  If configSUPPORT_DYNAMIC_ALLOCATION
// 4150 			is 0 then vPortFree() will be #defined to nothing. */
// 4151 			vPortFree( pxTaskStatusArray );
// 4152 		}
// 4153 		else
// 4154 		{
// 4155 			mtCOVERAGE_TEST_MARKER();
// 4156 		}
// 4157 	}
// 4158 
// 4159 #endif /* ( ( configGENERATE_RUN_TIME_STATS == 1 ) && ( configUSE_STATS_FORMATTING_FUNCTIONS > 0 ) ) */
// 4160 /*-----------------------------------------------------------*/
// 4161 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock35 Using cfiCommon0
          CFI Function uxTaskResetEventItemValue
          CFI NoCalls
        THUMB
// 4162 TickType_t uxTaskResetEventItemValue( void )
// 4163 {
// 4164 TickType_t uxReturn;
// 4165 
// 4166 	uxReturn = listGET_LIST_ITEM_VALUE( &( pxCurrentTCB->xEventListItem ) );
uxTaskResetEventItemValue:
        LDR.W    R1,??DataTable42_7
        LDR      R0,[R1, #+0]
        LDR      R0,[R0, #+24]
// 4167 
// 4168 	/* Reset the event list item to its normal value - so it can be used with
// 4169 	queues and semaphores. */
// 4170 	listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xEventListItem ), ( ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) pxCurrentTCB->uxPriority ) ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
        LDR      R2,[R1, #+0]
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+44]
        RSBS     R1,R1,#+5
        STR      R1,[R2, #+24]
// 4171 
// 4172 	return uxReturn;
        BX       LR               ;; return
// 4173 }
          CFI EndBlock cfiBlock35
// 4174 /*-----------------------------------------------------------*/
// 4175 
// 4176 #if ( configUSE_MUTEXES == 1 )
// 4177 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock36 Using cfiCommon0
          CFI Function pvTaskIncrementMutexHeldCount
          CFI NoCalls
        THUMB
// 4178 	void *pvTaskIncrementMutexHeldCount( void )
// 4179 	{
// 4180 		/* If xSemaphoreCreateMutex() is called before any tasks have been created
// 4181 		then pxCurrentTCB will be NULL. */
// 4182 		if( pxCurrentTCB != NULL )
pvTaskIncrementMutexHeldCount:
        LDR.W    R1,??DataTable42_7
        LDR      R0,[R1, #+0]
        CMP      R0,#+0
        BEQ.N    ??pvTaskIncrementMutexHeldCount_0
// 4183 		{
// 4184 			( pxCurrentTCB->uxMutexesHeld )++;
        LDR      R0,[R1, #+0]
        LDR      R2,[R0, #+68]
        ADDS     R2,R2,#+1
        STR      R2,[R0, #+68]
// 4185 		}
// 4186 
// 4187 		return pxCurrentTCB;
??pvTaskIncrementMutexHeldCount_0:
        LDR      R0,[R1, #+0]
        BX       LR               ;; return
// 4188 	}
          CFI EndBlock cfiBlock36
// 4189 
// 4190 #endif /* configUSE_MUTEXES */
// 4191 /*-----------------------------------------------------------*/
// 4192 
// 4193 #if( configUSE_TASK_NOTIFICATIONS == 1 )
// 4194 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock37 Using cfiCommon0
          CFI Function ulTaskNotifyTake
        THUMB
// 4195 	uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait )
// 4196 	{
ulTaskNotifyTake:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
// 4197 	uint32_t ulReturn;
// 4198 
// 4199 		taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
// 4200 		{
// 4201 			/* Only block if the notification count is not already non-zero. */
// 4202 			if( pxCurrentTCB->ulNotifiedValue == 0UL )
        LDR.N    R6,??DataTable35_1
        LDR      R0,[R6, #+0]
        LDR      R0,[R0, #+72]
        CMP      R0,#+0
        BNE.N    ??ulTaskNotifyTake_0
// 4203 			{
// 4204 				/* Mark this task as waiting for a notification. */
// 4205 				pxCurrentTCB->ucNotifyState = taskWAITING_NOTIFICATION;
        MOVS     R0,#+1
        LDR      R1,[R6, #+0]
        STRB     R0,[R1, #+76]
// 4206 
// 4207 				if( xTicksToWait > ( TickType_t ) 0 )
        CMP      R5,#+0
        BEQ.N    ??ulTaskNotifyTake_0
// 4208 				{
// 4209 					prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
        MOVS     R1,#+1
        MOVS     R0,R5
          CFI FunCall prvAddCurrentTaskToDelayedList
        BL       prvAddCurrentTaskToDelayedList
// 4210 					traceTASK_NOTIFY_TAKE_BLOCK();
// 4211 
// 4212 					/* All ports are written to allow a yield in a critical
// 4213 					section (some will yield immediately, others wait until the
// 4214 					critical section exits) - but it is not something that
// 4215 					application code should ever do. */
// 4216 					portYIELD_WITHIN_API();
        MOVS     R0,#+268435456
        LDR.N    R1,??DataTable37  ;; 0xe000ed04
        STR      R0,[R1, #+0]
        DSB      SY
        ISB      SY
// 4217 				}
// 4218 				else
// 4219 				{
// 4220 					mtCOVERAGE_TEST_MARKER();
// 4221 				}
// 4222 			}
// 4223 			else
// 4224 			{
// 4225 				mtCOVERAGE_TEST_MARKER();
// 4226 			}
// 4227 		}
// 4228 		taskEXIT_CRITICAL();
??ulTaskNotifyTake_0:
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
// 4229 
// 4230 		taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
// 4231 		{
// 4232 			traceTASK_NOTIFY_TAKE();
// 4233 			ulReturn = pxCurrentTCB->ulNotifiedValue;
        LDR      R0,[R6, #+0]
        LDR      R5,[R0, #+72]
// 4234 
// 4235 			if( ulReturn != 0UL )
        CMP      R5,#+0
        BEQ.N    ??ulTaskNotifyTake_1
// 4236 			{
// 4237 				if( xClearCountOnExit != pdFALSE )
        CMP      R4,#+0
        BEQ.N    ??ulTaskNotifyTake_2
// 4238 				{
// 4239 					pxCurrentTCB->ulNotifiedValue = 0UL;
        MOVS     R0,#+0
        LDR      R1,[R6, #+0]
        STR      R0,[R1, #+72]
        B.N      ??ulTaskNotifyTake_1
// 4240 				}
// 4241 				else
// 4242 				{
// 4243 					pxCurrentTCB->ulNotifiedValue = ulReturn - 1;
??ulTaskNotifyTake_2:
        SUBS     R0,R5,#+1
        LDR      R1,[R6, #+0]
        STR      R0,[R1, #+72]
// 4244 				}
// 4245 			}
// 4246 			else
// 4247 			{
// 4248 				mtCOVERAGE_TEST_MARKER();
// 4249 			}
// 4250 
// 4251 			pxCurrentTCB->ucNotifyState = taskNOT_WAITING_NOTIFICATION;
??ulTaskNotifyTake_1:
        MOVS     R0,#+0
        LDR      R1,[R6, #+0]
        STRB     R0,[R1, #+76]
// 4252 		}
// 4253 		taskEXIT_CRITICAL();
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
// 4254 
// 4255 		return ulReturn;
        MOVS     R0,R5
        POP      {R4-R6,PC}       ;; return
// 4256 	}
          CFI EndBlock cfiBlock37
// 4257 
// 4258 #endif /* configUSE_TASK_NOTIFICATIONS */
// 4259 /*-----------------------------------------------------------*/
// 4260 
// 4261 #if( configUSE_TASK_NOTIFICATIONS == 1 )
// 4262 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock38 Using cfiCommon0
          CFI Function xTaskNotifyWait
        THUMB
// 4263 	BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait )
// 4264 	{
xTaskNotifyWait:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOV      R8,R0
        MOVS     R7,R1
        MOVS     R4,R2
        MOVS     R5,R3
// 4265 	BaseType_t xReturn;
// 4266 
// 4267 		taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
// 4268 		{
// 4269 			/* Only block if a notification is not already pending. */
// 4270 			if( pxCurrentTCB->ucNotifyState != taskNOTIFICATION_RECEIVED )
        LDR.N    R6,??DataTable35_1
        LDR      R0,[R6, #+0]
        LDRB     R0,[R0, #+76]
        CMP      R0,#+2
        BEQ.N    ??xTaskNotifyWait_0
// 4271 			{
// 4272 				/* Clear bits in the task's notification value as bits may get
// 4273 				set	by the notifying task or interrupt.  This can be used to
// 4274 				clear the value to zero. */
// 4275 				pxCurrentTCB->ulNotifiedValue &= ~ulBitsToClearOnEntry;
        LDR      R0,[R6, #+0]
        LDR      R1,[R0, #+72]
        BICS     R8,R1,R8
        STR      R8,[R0, #+72]
// 4276 
// 4277 				/* Mark this task as waiting for a notification. */
// 4278 				pxCurrentTCB->ucNotifyState = taskWAITING_NOTIFICATION;
        MOVS     R0,#+1
        LDR      R1,[R6, #+0]
        STRB     R0,[R1, #+76]
// 4279 
// 4280 				if( xTicksToWait > ( TickType_t ) 0 )
        CMP      R5,#+0
        BEQ.N    ??xTaskNotifyWait_0
// 4281 				{
// 4282 					prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
        MOVS     R1,#+1
        MOVS     R0,R5
          CFI FunCall prvAddCurrentTaskToDelayedList
        BL       prvAddCurrentTaskToDelayedList
// 4283 					traceTASK_NOTIFY_WAIT_BLOCK();
// 4284 
// 4285 					/* All ports are written to allow a yield in a critical
// 4286 					section (some will yield immediately, others wait until the
// 4287 					critical section exits) - but it is not something that
// 4288 					application code should ever do. */
// 4289 					portYIELD_WITHIN_API();
        MOVS     R0,#+268435456
        LDR.N    R1,??DataTable37  ;; 0xe000ed04
        STR      R0,[R1, #+0]
        DSB      SY
        ISB      SY
// 4290 				}
// 4291 				else
// 4292 				{
// 4293 					mtCOVERAGE_TEST_MARKER();
// 4294 				}
// 4295 			}
// 4296 			else
// 4297 			{
// 4298 				mtCOVERAGE_TEST_MARKER();
// 4299 			}
// 4300 		}
// 4301 		taskEXIT_CRITICAL();
??xTaskNotifyWait_0:
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
// 4302 
// 4303 		taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
// 4304 		{
// 4305 			traceTASK_NOTIFY_WAIT();
// 4306 
// 4307 			if( pulNotificationValue != NULL )
        CMP      R4,#+0
        BEQ.N    ??xTaskNotifyWait_1
// 4308 			{
// 4309 				/* Output the current notification value, which may or may not
// 4310 				have changed. */
// 4311 				*pulNotificationValue = pxCurrentTCB->ulNotifiedValue;
        LDR      R0,[R6, #+0]
        LDR      R0,[R0, #+72]
        STR      R0,[R4, #+0]
// 4312 			}
// 4313 
// 4314 			/* If ucNotifyValue is set then either the task never entered the
// 4315 			blocked state (because a notification was already pending) or the
// 4316 			task unblocked because of a notification.  Otherwise the task
// 4317 			unblocked because of a timeout. */
// 4318 			if( pxCurrentTCB->ucNotifyState == taskWAITING_NOTIFICATION )
??xTaskNotifyWait_1:
        LDR      R0,[R6, #+0]
        LDRB     R0,[R0, #+76]
        CMP      R0,#+1
        BNE.N    ??xTaskNotifyWait_2
// 4319 			{
// 4320 				/* A notification was not received. */
// 4321 				xReturn = pdFALSE;
        MOVS     R4,#+0
        B.N      ??xTaskNotifyWait_3
// 4322 			}
// 4323 			else
// 4324 			{
// 4325 				/* A notification was already pending or a notification was
// 4326 				received while the task was waiting. */
// 4327 				pxCurrentTCB->ulNotifiedValue &= ~ulBitsToClearOnExit;
??xTaskNotifyWait_2:
        LDR      R0,[R6, #+0]
        LDR      R1,[R0, #+72]
        BICS     R7,R1,R7
        STR      R7,[R0, #+72]
// 4328 				xReturn = pdTRUE;
        MOVS     R4,#+1
// 4329 			}
// 4330 
// 4331 			pxCurrentTCB->ucNotifyState = taskNOT_WAITING_NOTIFICATION;
??xTaskNotifyWait_3:
        MOVS     R0,#+0
        LDR      R1,[R6, #+0]
        STRB     R0,[R1, #+76]
// 4332 		}
// 4333 		taskEXIT_CRITICAL();
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
// 4334 
// 4335 		return xReturn;
        MOVS     R0,R4
        POP      {R4-R8,PC}       ;; return
// 4336 	}
          CFI EndBlock cfiBlock38

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35:
        DATA32
        DC32     uxCurrentNumberOfTasks

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35_1:
        DATA32
        DC32     pxCurrentTCB

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35_2:
        DATA32
        DC32     xSchedulerRunning

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35_3:
        DATA32
        DC32     uxTaskNumber

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35_4:
        DATA32
        DC32     uxTopReadyPriority
// 4337 
// 4338 #endif /* configUSE_TASK_NOTIFICATIONS */
// 4339 /*-----------------------------------------------------------*/
// 4340 
// 4341 #if( configUSE_TASK_NOTIFICATIONS == 1 )
// 4342 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock39 Using cfiCommon0
          CFI Function xTaskGenericNotify
        THUMB
// 4343 	BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue )
// 4344 	{
xTaskGenericNotify:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOVS     R6,R0
        MOVS     R7,R1
        MOV      R8,R2
        MOVS     R4,R3
// 4345 	TCB_t * pxTCB;
// 4346 	BaseType_t xReturn = pdPASS;
        MOVS     R5,#+1
// 4347 	uint8_t ucOriginalNotifyState;
// 4348 
// 4349 		configASSERT( xTaskToNotify );
// 4350 		pxTCB = ( TCB_t * ) xTaskToNotify;
// 4351 
// 4352 		taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
// 4353 		{
// 4354 			if( pulPreviousNotificationValue != NULL )
        CMP      R4,#+0
        BEQ.N    ??xTaskGenericNotify_0
// 4355 			{
// 4356 				*pulPreviousNotificationValue = pxTCB->ulNotifiedValue;
        LDR      R0,[R6, #+72]
        STR      R0,[R4, #+0]
// 4357 			}
// 4358 
// 4359 			ucOriginalNotifyState = pxTCB->ucNotifyState;
??xTaskGenericNotify_0:
        LDRB     R0,[R6, #+76]
// 4360 
// 4361 			pxTCB->ucNotifyState = taskNOTIFICATION_RECEIVED;
        MOVS     R1,#+2
        STRB     R1,[R6, #+76]
// 4362 
// 4363 			switch( eAction )
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??xTaskGenericNotify_1
        CMP      R8,#+2
        BEQ.N    ??xTaskGenericNotify_2
        BCC.N    ??xTaskGenericNotify_3
        CMP      R8,#+4
        BEQ.N    ??xTaskGenericNotify_4
        BCC.N    ??xTaskGenericNotify_5
        B.N      ??xTaskGenericNotify_6
// 4364 			{
// 4365 				case eSetBits	:
// 4366 					pxTCB->ulNotifiedValue |= ulValue;
??xTaskGenericNotify_3:
        LDR      R1,[R6, #+72]
        ORRS     R7,R7,R1
        STR      R7,[R6, #+72]
// 4367 					break;
        B.N      ??xTaskGenericNotify_6
// 4368 
// 4369 				case eIncrement	:
// 4370 					( pxTCB->ulNotifiedValue )++;
??xTaskGenericNotify_2:
        LDR      R1,[R6, #+72]
        ADDS     R1,R1,#+1
        STR      R1,[R6, #+72]
// 4371 					break;
        B.N      ??xTaskGenericNotify_6
// 4372 
// 4373 				case eSetValueWithOverwrite	:
// 4374 					pxTCB->ulNotifiedValue = ulValue;
??xTaskGenericNotify_5:
        STR      R7,[R6, #+72]
// 4375 					break;
        B.N      ??xTaskGenericNotify_6
// 4376 
// 4377 				case eSetValueWithoutOverwrite :
// 4378 					if( ucOriginalNotifyState != taskNOTIFICATION_RECEIVED )
??xTaskGenericNotify_4:
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+2
        BEQ.N    ??xTaskGenericNotify_7
// 4379 					{
// 4380 						pxTCB->ulNotifiedValue = ulValue;
        STR      R7,[R6, #+72]
        B.N      ??xTaskGenericNotify_8
// 4381 					}
// 4382 					else
// 4383 					{
// 4384 						/* The value could not be written to the task. */
// 4385 						xReturn = pdFAIL;
??xTaskGenericNotify_7:
        MOVS     R5,#+0
// 4386 					}
// 4387 					break;
??xTaskGenericNotify_8:
        B.N      ??xTaskGenericNotify_6
// 4388 
// 4389 				case eNoAction:
// 4390 					/* The task is being notified without its notify value being
// 4391 					updated. */
// 4392 					break;
// 4393 			}
// 4394 
// 4395 			traceTASK_NOTIFY();
// 4396 
// 4397 			/* If the task is in the blocked state specifically to wait for a
// 4398 			notification then unblock it now. */
// 4399 			if( ucOriginalNotifyState == taskWAITING_NOTIFICATION )
??xTaskGenericNotify_1:
??xTaskGenericNotify_6:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??xTaskGenericNotify_9
// 4400 			{
// 4401 				( void ) uxListRemove( &( pxTCB->xStateListItem ) );
        ADDS     R0,R6,#+4
          CFI FunCall uxListRemove
        BL       uxListRemove
// 4402 				prvAddTaskToReadyList( pxTCB );
        LDR.N    R1,??DataTable42_13
        LDR      R2,[R1, #+0]
        MOVS     R3,#+1
        LDR      R0,[R6, #+44]
        LSLS     R3,R3,R0
        ORRS     R2,R3,R2
        STR      R2,[R1, #+0]
        ADDS     R1,R6,#+4
        LDR.N    R2,??DataTable39_1
        LDR      R3,[R6, #+44]
        MOVS     R0,#+20
        MULS     R3,R0,R3
        ADD      R0,R2,R3
          CFI FunCall vListInsertEnd
        BL       vListInsertEnd
// 4403 
// 4404 				/* The task should not have been on an event list. */
// 4405 				configASSERT( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) == NULL );
// 4406 
// 4407 				#if( configUSE_TICKLESS_IDLE != 0 )
// 4408 				{
// 4409 					/* If a task is blocked waiting for a notification then
// 4410 					xNextTaskUnblockTime might be set to the blocked task's time
// 4411 					out time.  If the task is unblocked for a reason other than
// 4412 					a timeout xNextTaskUnblockTime is normally left unchanged,
// 4413 					because it will automatically get reset to a new value when
// 4414 					the tick count equals xNextTaskUnblockTime.  However if
// 4415 					tickless idling is used it might be more important to enter
// 4416 					sleep mode at the earliest possible time - so reset
// 4417 					xNextTaskUnblockTime here to ensure it is updated at the
// 4418 					earliest possible time. */
// 4419 					prvResetNextTaskUnblockTime();
// 4420 				}
// 4421 				#endif
// 4422 
// 4423 				if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
        LDR.N    R0,??DataTable42_7
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+44]
        LDR      R1,[R6, #+44]
        CMP      R0,R1
        BCS.N    ??xTaskGenericNotify_9
// 4424 				{
// 4425 					/* The notified task has a priority above the currently
// 4426 					executing task so a yield is required. */
// 4427 					taskYIELD_IF_USING_PREEMPTION();
        MOVS     R0,#+268435456
        LDR.N    R1,??DataTable37  ;; 0xe000ed04
        STR      R0,[R1, #+0]
        DSB      SY
        ISB      SY
// 4428 				}
// 4429 				else
// 4430 				{
// 4431 					mtCOVERAGE_TEST_MARKER();
// 4432 				}
// 4433 			}
// 4434 			else
// 4435 			{
// 4436 				mtCOVERAGE_TEST_MARKER();
// 4437 			}
// 4438 		}
// 4439 		taskEXIT_CRITICAL();
??xTaskGenericNotify_9:
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
// 4440 
// 4441 		return xReturn;
        MOVS     R0,R5
        POP      {R4-R8,PC}       ;; return
// 4442 	}
          CFI EndBlock cfiBlock39

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable36:
        DATA32
        DC32     pxReadyTasksLists

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable36_1:
        DATA32
        DC32     xTickCount
// 4443 
// 4444 #endif /* configUSE_TASK_NOTIFICATIONS */
// 4445 /*-----------------------------------------------------------*/
// 4446 
// 4447 #if( configUSE_TASK_NOTIFICATIONS == 1 )
// 4448 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock40 Using cfiCommon0
          CFI Function xTaskGenericNotifyFromISR
        THUMB
// 4449 	BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue, BaseType_t *pxHigherPriorityTaskWoken )
// 4450 	{
xTaskGenericNotifyFromISR:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOVS     R7,R0
        MOV      R8,R1
        MOV      R9,R2
        MOVS     R4,R3
// 4451 	TCB_t * pxTCB;
// 4452 	uint8_t ucOriginalNotifyState;
// 4453 	BaseType_t xReturn = pdPASS;
        MOVS     R5,#+1
// 4454 	UBaseType_t uxSavedInterruptStatus;
// 4455 
// 4456 		configASSERT( xTaskToNotify );
// 4457 
// 4458 		/* RTOS ports that support interrupt nesting have the concept of a
// 4459 		maximum	system call (or maximum API call) interrupt priority.
// 4460 		Interrupts that are	above the maximum system call priority are keep
// 4461 		permanently enabled, even when the RTOS kernel is in a critical section,
// 4462 		but cannot make any calls to FreeRTOS API functions.  If configASSERT()
// 4463 		is defined in FreeRTOSConfig.h then
// 4464 		portASSERT_IF_INTERRUPT_PRIORITY_INVALID() will result in an assertion
// 4465 		failure if a FreeRTOS API function is called from an interrupt that has
// 4466 		been assigned a priority above the configured maximum system call
// 4467 		priority.  Only FreeRTOS functions that end in FromISR can be called
// 4468 		from interrupts	that have been assigned a priority at or (logically)
// 4469 		below the maximum system call interrupt priority.  FreeRTOS maintains a
// 4470 		separate interrupt safe API to ensure interrupt entry is as fast and as
// 4471 		simple as possible.  More information (albeit Cortex-M specific) is
// 4472 		provided on the following link:
// 4473 		http://www.freertos.org/RTOS-Cortex-M3-M4.html */
// 4474 		portASSERT_IF_INTERRUPT_PRIORITY_INVALID();
          CFI FunCall vPortValidateInterruptPriority
        BL       vPortValidateInterruptPriority
// 4475 
// 4476 		pxTCB = ( TCB_t * ) xTaskToNotify;
// 4477 
// 4478 		uxSavedInterruptStatus = portSET_INTERRUPT_MASK_FROM_ISR();
        MRS      R6,BASEPRI
        MOVS     R0,#+80
        MSR      BASEPRI,R0
        DSB      SY
        ISB      SY
// 4479 		{
// 4480 			if( pulPreviousNotificationValue != NULL )
        CMP      R4,#+0
        BEQ.N    ??xTaskGenericNotifyFromISR_0
// 4481 			{
// 4482 				*pulPreviousNotificationValue = pxTCB->ulNotifiedValue;
        LDR      R0,[R7, #+72]
        STR      R0,[R4, #+0]
// 4483 			}
// 4484 
// 4485 			ucOriginalNotifyState = pxTCB->ucNotifyState;
??xTaskGenericNotifyFromISR_0:
        LDRB     R0,[R7, #+76]
// 4486 			pxTCB->ucNotifyState = taskNOTIFICATION_RECEIVED;
        MOVS     R1,#+2
        STRB     R1,[R7, #+76]
// 4487 
// 4488 			switch( eAction )
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BEQ.N    ??xTaskGenericNotifyFromISR_1
        CMP      R9,#+2
        BEQ.N    ??xTaskGenericNotifyFromISR_2
        BCC.N    ??xTaskGenericNotifyFromISR_3
        CMP      R9,#+4
        BEQ.N    ??xTaskGenericNotifyFromISR_4
        BCC.N    ??xTaskGenericNotifyFromISR_5
        B.N      ??xTaskGenericNotifyFromISR_6
// 4489 			{
// 4490 				case eSetBits	:
// 4491 					pxTCB->ulNotifiedValue |= ulValue;
??xTaskGenericNotifyFromISR_3:
        LDR      R1,[R7, #+72]
        ORRS     R8,R8,R1
        STR      R8,[R7, #+72]
// 4492 					break;
        B.N      ??xTaskGenericNotifyFromISR_6
// 4493 
// 4494 				case eIncrement	:
// 4495 					( pxTCB->ulNotifiedValue )++;
??xTaskGenericNotifyFromISR_2:
        LDR      R1,[R7, #+72]
        ADDS     R1,R1,#+1
        STR      R1,[R7, #+72]
// 4496 					break;
        B.N      ??xTaskGenericNotifyFromISR_6
// 4497 
// 4498 				case eSetValueWithOverwrite	:
// 4499 					pxTCB->ulNotifiedValue = ulValue;
??xTaskGenericNotifyFromISR_5:
        STR      R8,[R7, #+72]
// 4500 					break;
        B.N      ??xTaskGenericNotifyFromISR_6
// 4501 
// 4502 				case eSetValueWithoutOverwrite :
// 4503 					if( ucOriginalNotifyState != taskNOTIFICATION_RECEIVED )
??xTaskGenericNotifyFromISR_4:
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+2
        BEQ.N    ??xTaskGenericNotifyFromISR_7
// 4504 					{
// 4505 						pxTCB->ulNotifiedValue = ulValue;
        STR      R8,[R7, #+72]
        B.N      ??xTaskGenericNotifyFromISR_8
// 4506 					}
// 4507 					else
// 4508 					{
// 4509 						/* The value could not be written to the task. */
// 4510 						xReturn = pdFAIL;
??xTaskGenericNotifyFromISR_7:
        MOVS     R5,#+0
// 4511 					}
// 4512 					break;
??xTaskGenericNotifyFromISR_8:
        B.N      ??xTaskGenericNotifyFromISR_6
// 4513 
// 4514 				case eNoAction :
// 4515 					/* The task is being notified without its notify value being
// 4516 					updated. */
// 4517 					break;
// 4518 			}
// 4519 
// 4520 			traceTASK_NOTIFY_FROM_ISR();
// 4521 
// 4522 			/* If the task is in the blocked state specifically to wait for a
// 4523 			notification then unblock it now. */
// 4524 			if( ucOriginalNotifyState == taskWAITING_NOTIFICATION )
??xTaskGenericNotifyFromISR_1:
??xTaskGenericNotifyFromISR_6:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??xTaskGenericNotifyFromISR_9
// 4525 			{
// 4526 				/* The task should not have been on an event list. */
// 4527 				configASSERT( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) == NULL );
// 4528 
// 4529 				if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
        LDR.N    R0,??DataTable39
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??xTaskGenericNotifyFromISR_10
// 4530 				{
// 4531 					( void ) uxListRemove( &( pxTCB->xStateListItem ) );
        ADDS     R0,R7,#+4
          CFI FunCall uxListRemove
        BL       uxListRemove
// 4532 					prvAddTaskToReadyList( pxTCB );
        LDR.N    R1,??DataTable42_13
        LDR      R2,[R1, #+0]
        MOVS     R3,#+1
        LDR      R0,[R7, #+44]
        LSLS     R3,R3,R0
        ORRS     R2,R3,R2
        STR      R2,[R1, #+0]
        ADDS     R1,R7,#+4
        LDR.N    R2,??DataTable39_1
        LDR      R3,[R7, #+44]
        MOVS     R0,#+20
        MULS     R3,R0,R3
        ADD      R0,R2,R3
          CFI FunCall vListInsertEnd
        BL       vListInsertEnd
        B.N      ??xTaskGenericNotifyFromISR_11
// 4533 				}
// 4534 				else
// 4535 				{
// 4536 					/* The delayed and ready lists cannot be accessed, so hold
// 4537 					this task pending until the scheduler is resumed. */
// 4538 					vListInsertEnd( &( xPendingReadyList ), &( pxTCB->xEventListItem ) );
??xTaskGenericNotifyFromISR_10:
        ADDS     R1,R7,#+24
        LDR.N    R0,??DataTable42
          CFI FunCall vListInsertEnd
        BL       vListInsertEnd
// 4539 				}
// 4540 
// 4541 				if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
??xTaskGenericNotifyFromISR_11:
        LDR.N    R0,??DataTable42_7
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+44]
        LDR      R1,[R7, #+44]
        CMP      R0,R1
        BCS.N    ??xTaskGenericNotifyFromISR_9
        LDR      R0,[SP, #+32]
// 4542 				{
// 4543 					/* The notified task has a priority above the currently
// 4544 					executing task so a yield is required. */
// 4545 					if( pxHigherPriorityTaskWoken != NULL )
        CMP      R0,#+0
        BEQ.N    ??xTaskGenericNotifyFromISR_12
// 4546 					{
// 4547 						*pxHigherPriorityTaskWoken = pdTRUE;
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
        B.N      ??xTaskGenericNotifyFromISR_9
// 4548 					}
// 4549 					else
// 4550 					{
// 4551 						/* Mark that a yield is pending in case the user is not
// 4552 						using the "xHigherPriorityTaskWoken" parameter to an ISR
// 4553 						safe FreeRTOS function. */
// 4554 						xYieldPending = pdTRUE;
??xTaskGenericNotifyFromISR_12:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable42_5
        STR      R0,[R1, #+0]
// 4555 					}
// 4556 				}
// 4557 				else
// 4558 				{
// 4559 					mtCOVERAGE_TEST_MARKER();
// 4560 				}
// 4561 			}
// 4562 		}
// 4563 		portCLEAR_INTERRUPT_MASK_FROM_ISR( uxSavedInterruptStatus );
??xTaskGenericNotifyFromISR_9:
        MSR      BASEPRI,R6
// 4564 
// 4565 		return xReturn;
        MOVS     R0,R5
        POP      {R1,R4-R9,PC}    ;; return
// 4566 	}
          CFI EndBlock cfiBlock40

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable37:
        DATA32
        DC32     0xe000ed04

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable37_1:
        DATA32
        DC32     xSuspendedTaskList
// 4567 
// 4568 #endif /* configUSE_TASK_NOTIFICATIONS */
// 4569 /*-----------------------------------------------------------*/
// 4570 
// 4571 #if( configUSE_TASK_NOTIFICATIONS == 1 )
// 4572 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock41 Using cfiCommon0
          CFI Function vTaskNotifyGiveFromISR
        THUMB
// 4573 	void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken )
// 4574 	{
vTaskNotifyGiveFromISR:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R6,R0
        MOVS     R4,R1
// 4575 	TCB_t * pxTCB;
// 4576 	uint8_t ucOriginalNotifyState;
// 4577 	UBaseType_t uxSavedInterruptStatus;
// 4578 
// 4579 		configASSERT( xTaskToNotify );
// 4580 
// 4581 		/* RTOS ports that support interrupt nesting have the concept of a
// 4582 		maximum	system call (or maximum API call) interrupt priority.
// 4583 		Interrupts that are	above the maximum system call priority are keep
// 4584 		permanently enabled, even when the RTOS kernel is in a critical section,
// 4585 		but cannot make any calls to FreeRTOS API functions.  If configASSERT()
// 4586 		is defined in FreeRTOSConfig.h then
// 4587 		portASSERT_IF_INTERRUPT_PRIORITY_INVALID() will result in an assertion
// 4588 		failure if a FreeRTOS API function is called from an interrupt that has
// 4589 		been assigned a priority above the configured maximum system call
// 4590 		priority.  Only FreeRTOS functions that end in FromISR can be called
// 4591 		from interrupts	that have been assigned a priority at or (logically)
// 4592 		below the maximum system call interrupt priority.  FreeRTOS maintains a
// 4593 		separate interrupt safe API to ensure interrupt entry is as fast and as
// 4594 		simple as possible.  More information (albeit Cortex-M specific) is
// 4595 		provided on the following link:
// 4596 		http://www.freertos.org/RTOS-Cortex-M3-M4.html */
// 4597 		portASSERT_IF_INTERRUPT_PRIORITY_INVALID();
          CFI FunCall vPortValidateInterruptPriority
        BL       vPortValidateInterruptPriority
// 4598 
// 4599 		pxTCB = ( TCB_t * ) xTaskToNotify;
// 4600 
// 4601 		uxSavedInterruptStatus = portSET_INTERRUPT_MASK_FROM_ISR();
        MRS      R5,BASEPRI
        MOVS     R0,#+80
        MSR      BASEPRI,R0
        DSB      SY
        ISB      SY
// 4602 		{
// 4603 			ucOriginalNotifyState = pxTCB->ucNotifyState;
        LDRB     R0,[R6, #+76]
// 4604 			pxTCB->ucNotifyState = taskNOTIFICATION_RECEIVED;
        MOVS     R1,#+2
        STRB     R1,[R6, #+76]
// 4605 
// 4606 			/* 'Giving' is equivalent to incrementing a count in a counting
// 4607 			semaphore. */
// 4608 			( pxTCB->ulNotifiedValue )++;
        LDR      R1,[R6, #+72]
        ADDS     R1,R1,#+1
        STR      R1,[R6, #+72]
// 4609 
// 4610 			traceTASK_NOTIFY_GIVE_FROM_ISR();
// 4611 
// 4612 			/* If the task is in the blocked state specifically to wait for a
// 4613 			notification then unblock it now. */
// 4614 			if( ucOriginalNotifyState == taskWAITING_NOTIFICATION )
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??vTaskNotifyGiveFromISR_0
// 4615 			{
// 4616 				/* The task should not have been on an event list. */
// 4617 				configASSERT( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) == NULL );
// 4618 
// 4619 				if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
        LDR.N    R0,??DataTable39
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??vTaskNotifyGiveFromISR_1
// 4620 				{
// 4621 					( void ) uxListRemove( &( pxTCB->xStateListItem ) );
        ADDS     R0,R6,#+4
          CFI FunCall uxListRemove
        BL       uxListRemove
// 4622 					prvAddTaskToReadyList( pxTCB );
        LDR.N    R1,??DataTable42_13
        LDR      R2,[R1, #+0]
        MOVS     R3,#+1
        LDR      R0,[R6, #+44]
        LSLS     R3,R3,R0
        ORRS     R2,R3,R2
        STR      R2,[R1, #+0]
        ADDS     R1,R6,#+4
        LDR.N    R2,??DataTable39_1
        LDR      R3,[R6, #+44]
        MOVS     R0,#+20
        MULS     R3,R0,R3
        ADD      R0,R2,R3
          CFI FunCall vListInsertEnd
        BL       vListInsertEnd
        B.N      ??vTaskNotifyGiveFromISR_2
// 4623 				}
// 4624 				else
// 4625 				{
// 4626 					/* The delayed and ready lists cannot be accessed, so hold
// 4627 					this task pending until the scheduler is resumed. */
// 4628 					vListInsertEnd( &( xPendingReadyList ), &( pxTCB->xEventListItem ) );
??vTaskNotifyGiveFromISR_1:
        ADDS     R1,R6,#+24
        LDR.N    R0,??DataTable42
          CFI FunCall vListInsertEnd
        BL       vListInsertEnd
// 4629 				}
// 4630 
// 4631 				if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
??vTaskNotifyGiveFromISR_2:
        LDR.N    R0,??DataTable42_7
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+44]
        LDR      R1,[R6, #+44]
        CMP      R0,R1
        BCS.N    ??vTaskNotifyGiveFromISR_0
// 4632 				{
// 4633 					/* The notified task has a priority above the currently
// 4634 					executing task so a yield is required. */
// 4635 					if( pxHigherPriorityTaskWoken != NULL )
        CMP      R4,#+0
        BEQ.N    ??vTaskNotifyGiveFromISR_3
// 4636 					{
// 4637 						*pxHigherPriorityTaskWoken = pdTRUE;
        MOVS     R0,#+1
        STR      R0,[R4, #+0]
        B.N      ??vTaskNotifyGiveFromISR_0
// 4638 					}
// 4639 					else
// 4640 					{
// 4641 						/* Mark that a yield is pending in case the user is not
// 4642 						using the "xHigherPriorityTaskWoken" parameter in an ISR
// 4643 						safe FreeRTOS function. */
// 4644 						xYieldPending = pdTRUE;
??vTaskNotifyGiveFromISR_3:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable42_5
        STR      R0,[R1, #+0]
// 4645 					}
// 4646 				}
// 4647 				else
// 4648 				{
// 4649 					mtCOVERAGE_TEST_MARKER();
// 4650 				}
// 4651 			}
// 4652 		}
// 4653 		portCLEAR_INTERRUPT_MASK_FROM_ISR( uxSavedInterruptStatus );
??vTaskNotifyGiveFromISR_0:
        MSR      BASEPRI,R5
// 4654 	}
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock41

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable38:
        DATA32
        DC32     uxSchedulerSuspended
// 4655 
// 4656 #endif /* configUSE_TASK_NOTIFICATIONS */
// 4657 
// 4658 /*-----------------------------------------------------------*/
// 4659 
// 4660 #if( configUSE_TASK_NOTIFICATIONS == 1 )
// 4661 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock42 Using cfiCommon0
          CFI Function xTaskNotifyStateClear
        THUMB
// 4662 	BaseType_t xTaskNotifyStateClear( TaskHandle_t xTask )
// 4663 	{
xTaskNotifyStateClear:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
// 4664 	TCB_t *pxTCB;
// 4665 	BaseType_t xReturn;
// 4666 
// 4667 		/* If null is passed in here then it is the calling task that is having
// 4668 		its notification state cleared. */
// 4669 		pxTCB = prvGetTCBFromHandle( xTask );
        CMP      R4,#+0
        BNE.N    ??xTaskNotifyStateClear_0
        LDR.N    R0,??DataTable42_7
        LDR      R4,[R0, #+0]
        B.N      ??xTaskNotifyStateClear_1
// 4670 
// 4671 		taskENTER_CRITICAL();
??xTaskNotifyStateClear_0:
??xTaskNotifyStateClear_1:
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
// 4672 		{
// 4673 			if( pxTCB->ucNotifyState == taskNOTIFICATION_RECEIVED )
        LDRB     R0,[R4, #+76]
        CMP      R0,#+2
        BNE.N    ??xTaskNotifyStateClear_2
// 4674 			{
// 4675 				pxTCB->ucNotifyState = taskNOT_WAITING_NOTIFICATION;
        MOVS     R0,#+0
        STRB     R0,[R4, #+76]
// 4676 				xReturn = pdPASS;
        MOVS     R4,#+1
        B.N      ??xTaskNotifyStateClear_3
// 4677 			}
// 4678 			else
// 4679 			{
// 4680 				xReturn = pdFAIL;
??xTaskNotifyStateClear_2:
        MOVS     R4,#+0
// 4681 			}
// 4682 		}
// 4683 		taskEXIT_CRITICAL();
??xTaskNotifyStateClear_3:
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
// 4684 
// 4685 		return xReturn;
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
// 4686 	}
          CFI EndBlock cfiBlock42

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39:
        DATA32
        DC32     uxSchedulerSuspended

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_1:
        DATA32
        DC32     pxReadyTasksLists
// 4687 
// 4688 #endif /* configUSE_TASK_NOTIFICATIONS */
// 4689 /*-----------------------------------------------------------*/
// 4690 
// 4691 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock43 Using cfiCommon0
          CFI Function prvAddCurrentTaskToDelayedList
        THUMB
// 4692 static void prvAddCurrentTaskToDelayedList( TickType_t xTicksToWait, const BaseType_t xCanBlockIndefinitely )
// 4693 {
prvAddCurrentTaskToDelayedList:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R5,R0
        MOVS     R4,R1
// 4694 TickType_t xTimeToWake;
// 4695 const TickType_t xConstTickCount = xTickCount;
        LDR.N    R0,??DataTable42_4
        LDR      R6,[R0, #+0]
// 4696 
// 4697 	#if( INCLUDE_xTaskAbortDelay == 1 )
// 4698 	{
// 4699 		/* About to enter a delayed list, so ensure the ucDelayAborted flag is
// 4700 		reset to pdFALSE so it can be detected as having been set to pdTRUE
// 4701 		when the task leaves the Blocked state. */
// 4702 		pxCurrentTCB->ucDelayAborted = pdFALSE;
// 4703 	}
// 4704 	#endif
// 4705 
// 4706 	/* Remove the task from the ready list before adding it to the blocked list
// 4707 	as the same list item is used for both lists. */
// 4708 	if( uxListRemove( &( pxCurrentTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
        LDR.N    R7,??DataTable42_7
        LDR      R0,[R7, #+0]
        ADDS     R0,R0,#+4
          CFI FunCall uxListRemove
        BL       uxListRemove
        CMP      R0,#+0
        BNE.N    ??prvAddCurrentTaskToDelayedList_0
// 4709 	{
// 4710 		/* The current task must be in a ready list, so there is no need to
// 4711 		check, and the port reset macro can be called directly. */
// 4712 		portRESET_READY_PRIORITY( pxCurrentTCB->uxPriority, uxTopReadyPriority );
        LDR      R0,[R7, #+0]
        LDR.N    R1,??DataTable42_13
        LDR      R2,[R1, #+0]
        MOVS     R3,#+1
        LDR      R0,[R0, #+44]
        LSLS     R3,R3,R0
        BICS     R2,R2,R3
        STR      R2,[R1, #+0]
// 4713 	}
// 4714 	else
// 4715 	{
// 4716 		mtCOVERAGE_TEST_MARKER();
// 4717 	}
// 4718 
// 4719 	#if ( INCLUDE_vTaskSuspend == 1 )
// 4720 	{
// 4721 		if( ( xTicksToWait == portMAX_DELAY ) && ( xCanBlockIndefinitely != pdFALSE ) )
??prvAddCurrentTaskToDelayedList_0:
        CMN      R5,#+1
        BNE.N    ??prvAddCurrentTaskToDelayedList_1
        CMP      R4,#+0
        BEQ.N    ??prvAddCurrentTaskToDelayedList_1
// 4722 		{
// 4723 			/* Add the task to the suspended task list instead of a delayed task
// 4724 			list to ensure it is not woken by a timing event.  It will block
// 4725 			indefinitely. */
// 4726 			vListInsertEnd( &xSuspendedTaskList, &( pxCurrentTCB->xStateListItem ) );
        LDR      R0,[R7, #+0]
        ADDS     R1,R0,#+4
        LDR.N    R0,??DataTable42_14
          CFI FunCall vListInsertEnd
        BL       vListInsertEnd
        B.N      ??prvAddCurrentTaskToDelayedList_2
// 4727 		}
// 4728 		else
// 4729 		{
// 4730 			/* Calculate the time at which the task should be woken if the event
// 4731 			does not occur.  This may overflow but this doesn't matter, the
// 4732 			kernel will manage it correctly. */
// 4733 			xTimeToWake = xConstTickCount + xTicksToWait;
??prvAddCurrentTaskToDelayedList_1:
        ADDS     R5,R5,R6
// 4734 
// 4735 			/* The list item will be inserted in wake time order. */
// 4736 			listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xStateListItem ), xTimeToWake );
        LDR      R0,[R7, #+0]
        STR      R5,[R0, #+4]
// 4737 
// 4738 			if( xTimeToWake < xConstTickCount )
        CMP      R5,R6
        BCS.N    ??prvAddCurrentTaskToDelayedList_3
// 4739 			{
// 4740 				/* Wake time has overflowed.  Place this item in the overflow
// 4741 				list. */
// 4742 				vListInsert( pxOverflowDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
        LDR      R0,[R7, #+0]
        ADDS     R1,R0,#+4
        LDR.N    R0,??DataTable42_9
        LDR      R0,[R0, #+0]
          CFI FunCall vListInsert
        BL       vListInsert
        B.N      ??prvAddCurrentTaskToDelayedList_2
// 4743 			}
// 4744 			else
// 4745 			{
// 4746 				/* The wake time has not overflowed, so the current block list
// 4747 				is used. */
// 4748 				vListInsert( pxDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
??prvAddCurrentTaskToDelayedList_3:
        LDR      R0,[R7, #+0]
        ADDS     R1,R0,#+4
        LDR.N    R0,??DataTable42_8
        LDR      R0,[R0, #+0]
          CFI FunCall vListInsert
        BL       vListInsert
// 4749 
// 4750 				/* If the task entering the blocked state was placed at the
// 4751 				head of the list of blocked tasks then xNextTaskUnblockTime
// 4752 				needs to be updated too. */
// 4753 				if( xTimeToWake < xNextTaskUnblockTime )
        LDR.N    R0,??DataTable42_3
        LDR      R1,[R0, #+0]
        CMP      R5,R1
        BCS.N    ??prvAddCurrentTaskToDelayedList_2
// 4754 				{
// 4755 					xNextTaskUnblockTime = xTimeToWake;
        STR      R5,[R0, #+0]
// 4756 				}
// 4757 				else
// 4758 				{
// 4759 					mtCOVERAGE_TEST_MARKER();
// 4760 				}
// 4761 			}
// 4762 		}
// 4763 	}
// 4764 	#else /* INCLUDE_vTaskSuspend */
// 4765 	{
// 4766 		/* Calculate the time at which the task should be woken if the event
// 4767 		does not occur.  This may overflow but this doesn't matter, the kernel
// 4768 		will manage it correctly. */
// 4769 		xTimeToWake = xConstTickCount + xTicksToWait;
// 4770 
// 4771 		/* The list item will be inserted in wake time order. */
// 4772 		listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xStateListItem ), xTimeToWake );
// 4773 
// 4774 		if( xTimeToWake < xConstTickCount )
// 4775 		{
// 4776 			/* Wake time has overflowed.  Place this item in the overflow list. */
// 4777 			vListInsert( pxOverflowDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
// 4778 		}
// 4779 		else
// 4780 		{
// 4781 			/* The wake time has not overflowed, so the current block list is used. */
// 4782 			vListInsert( pxDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
// 4783 
// 4784 			/* If the task entering the blocked state was placed at the head of the
// 4785 			list of blocked tasks then xNextTaskUnblockTime needs to be updated
// 4786 			too. */
// 4787 			if( xTimeToWake < xNextTaskUnblockTime )
// 4788 			{
// 4789 				xNextTaskUnblockTime = xTimeToWake;
// 4790 			}
// 4791 			else
// 4792 			{
// 4793 				mtCOVERAGE_TEST_MARKER();
// 4794 			}
// 4795 		}
// 4796 
// 4797 		/* Avoid compiler warning when INCLUDE_vTaskSuspend is not 1. */
// 4798 		( void ) xCanBlockIndefinitely;
// 4799 	}
// 4800 	#endif /* INCLUDE_vTaskSuspend */
// 4801 }
??prvAddCurrentTaskToDelayedList_2:
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock43
// 4802 
// 4803 
// 4804 #ifdef FREERTOS_MODULE_TEST
// 4805 	#include "tasks_test_access_functions.h"
// 4806 #endif
// 4807 
// 4808 
// 4809 #if ( configSUPPORT_STATIC_ALLOCATION == 1 )
// 4810 /* configSUPPORT_STATIC_ALLOCATION is set to 1, so the application must provide an
// 4811 implementation of vApplicationGetIdleTaskMemory() to provide the memory that is
// 4812 used by the Idle task. */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock44 Using cfiCommon0
          CFI Function vApplicationGetIdleTaskMemory
          CFI NoCalls
        THUMB
// 4813 void vApplicationGetIdleTaskMemory( StaticTask_t **ppxIdleTaskTCBBuffer,
// 4814 																		StackType_t **ppxIdleTaskStackBuffer,
// 4815 																		uint32_t *pulIdleTaskStackSize )
// 4816 {
// 4817 	/* If the buffers to be provided to the Idle task are declared inside this
// 4818   function then they must be declared static - otherwise they will be allocated on
// 4819   the stack and so not exists after this function exits. */
// 4820 	static StaticTask_t xIdleTaskTCB;
// 4821 	static StackType_t uxIdleTaskStack[ configMINIMAL_STACK_SIZE ];
// 4822 
// 4823 	/* Pass out a pointer to the StaticTask_t structure in which the Idle task's
// 4824   state will be stored. */
// 4825 	*ppxIdleTaskTCBBuffer = &xIdleTaskTCB;
vApplicationGetIdleTaskMemory:
        LDR.N    R3,??DataTable42_15
        STR      R3,[R0, #+0]
// 4826 
// 4827 	/* Pass out the array that will be used as the Idle task's stack. */
// 4828 	*ppxIdleTaskStackBuffer = uxIdleTaskStack;
        LDR.N    R0,??DataTable42_16
        STR      R0,[R1, #+0]
// 4829 
// 4830 	/* Pass out the size of the array pointed to by *ppxIdleTaskStackBuffer.
// 4831   Note that, as the array is necessarily of type StackType_t,
// 4832   configMINIMAL_STACK_SIZE is specified in words, not bytes. */
// 4833 	*pulIdleTaskStackSize = configMINIMAL_STACK_SIZE;
        MOVS     R0,#+128
        STR      R0,[R2, #+0]
// 4834 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock44

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`vApplicationGetIdleTaskMemory::xIdleTaskTCB`:
        DS8 80

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`vApplicationGetIdleTaskMemory::uxIdleTaskStack`:
        DS8 512
// 4835 /*-----------------------------------------------------------*/
// 4836 
// 4837 /* configSUPPORT_STATIC_ALLOCATION and configUSE_TIMERS are both set to 1, so the
// 4838 application must provide an implementation of vApplicationGetTimerTaskMemory()
// 4839 to provide the memory that is used by the Timer service task. */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock45 Using cfiCommon0
          CFI Function vApplicationGetTimerTaskMemory
          CFI NoCalls
        THUMB
// 4840 void vApplicationGetTimerTaskMemory( StaticTask_t **ppxTimerTaskTCBBuffer,
// 4841 																		 StackType_t **ppxTimerTaskStackBuffer,
// 4842 																		 uint32_t *pulTimerTaskStackSize )
// 4843 {
// 4844 	/* If the buffers to be provided to the Timer task are declared inside this
// 4845   function then they must be declared static - otherwise they will be allocated on
// 4846   the stack and so not exists after this function exits. */
// 4847 	static StaticTask_t xTimerTaskTCB;
// 4848 	static StackType_t uxTimerTaskStack[ configTIMER_TASK_STACK_DEPTH ];
// 4849 
// 4850 	/* Pass out a pointer to the StaticTask_t structure in which the Timer
// 4851   task's state will be stored. */
// 4852 	*ppxTimerTaskTCBBuffer = &xTimerTaskTCB;
vApplicationGetTimerTaskMemory:
        LDR.N    R3,??DataTable42_17
        STR      R3,[R0, #+0]
// 4853 
// 4854 	/* Pass out the array that will be used as the Timer task's stack. */
// 4855 	*ppxTimerTaskStackBuffer = uxTimerTaskStack;
        LDR.N    R0,??DataTable42_18
        STR      R0,[R1, #+0]
// 4856 
// 4857 	/* Pass out the size of the array pointed to by *ppxTimerTaskStackBuffer.
// 4858   Note that, as the array is necessarily of type StackType_t,
// 4859   configTIMER_TASK_STACK_DEPTH is specified in words, not bytes. */
// 4860 	*pulTimerTaskStackSize = configTIMER_TASK_STACK_DEPTH;
        MOV      R0,#+256
        STR      R0,[R2, #+0]
// 4861 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock45

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42:
        DATA32
        DC32     xPendingReadyList

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42_1:
        DATA32
        DC32     xIdleTaskHandle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42_2:
        DATA32
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42_3:
        DATA32
        DC32     xNextTaskUnblockTime

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42_4:
        DATA32
        DC32     xTickCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42_5:
        DATA32
        DC32     xYieldPending

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42_6:
        DATA32
        DC32     uxPendedTicks

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42_7:
        DATA32
        DC32     pxCurrentTCB

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42_8:
        DATA32
        DC32     pxDelayedTaskList

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42_9:
        DATA32
        DC32     pxOverflowDelayedTaskList

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42_10:
        DATA32
        DC32     xNumOfOverflows

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42_11:
        DATA32
        DC32     xDelayedTaskList1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42_12:
        DATA32
        DC32     xDelayedTaskList2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42_13:
        DATA32
        DC32     uxTopReadyPriority

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42_14:
        DATA32
        DC32     xSuspendedTaskList

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42_15:
        DATA32
        DC32     `vApplicationGetIdleTaskMemory::xIdleTaskTCB`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42_16:
        DATA32
        DC32     `vApplicationGetIdleTaskMemory::uxIdleTaskStack`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42_17:
        DATA32
        DC32     `vApplicationGetTimerTaskMemory::xTimerTaskTCB`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42_18:
        DATA32
        DC32     `vApplicationGetTimerTaskMemory::uxTimerTaskStack`

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`vApplicationGetTimerTaskMemory::xTimerTaskTCB`:
        DS8 80

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`vApplicationGetTimerTaskMemory::uxTimerTaskStack`:
        DS8 1'024

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DATA8
        DC8 "IDLE"
        DATA
        DC8 0, 0, 0

        END
// 4862 #endif
// 
// 1'932 bytes in section .bss
//     8 bytes in section .rodata
// 3'714 bytes in section .text
// 
// 3'714 bytes of CODE  memory
//     8 bytes of CONST memory
// 1'932 bytes of DATA  memory
//
//Errors: none
//Warnings: none
