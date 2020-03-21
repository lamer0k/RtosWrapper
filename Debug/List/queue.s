///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.40.2.214/W32 for ARM        21/Mar/2020  13:52:35
// Copyright 1999-2019 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  C:\GitHub\KursovoyKarkas\Rtos\FreeRtos\queue.c
//    Command line =
//        -f C:\Users\Serge\AppData\Local\Temp\EWEF74.tmp
//        (C:\GitHub\KursovoyKarkas\Rtos\FreeRtos\queue.c -lC
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
//    List file    =  C:\GitHub\KursovoyKarkas\Debug\List\queue.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_full_locale_support", "0"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy
        EXTERN pvTaskIncrementMutexHeldCount
        EXTERN vListInitialise
        EXTERN vPortEnterCritical
        EXTERN vPortExitCritical
        EXTERN vPortValidateInterruptPriority
        EXTERN vTaskMissedYield
        EXTERN vTaskPlaceOnEventList
        EXTERN vTaskPlaceOnEventListRestricted
        EXTERN vTaskPriorityInherit
        EXTERN vTaskSetTimeOutState
        EXTERN vTaskSuspendAll
        EXTERN xTaskCheckForTimeOut
        EXTERN xTaskGetSchedulerState
        EXTERN xTaskPriorityDisinherit
        EXTERN xTaskRemoveFromEventList
        EXTERN xTaskResumeAll

        PUBLIC pcQueueGetName
        PUBLIC uxQueueMessagesWaiting
        PUBLIC uxQueueMessagesWaitingFromISR
        PUBLIC uxQueueSpacesAvailable
        PUBLIC vQueueAddToRegistry
        PUBLIC vQueueDelete
        PUBLIC vQueueUnregisterQueue
        PUBLIC vQueueWaitForMessageRestricted
        PUBLIC xQueueCreateMutexStatic
        PUBLIC xQueueGenericCreateStatic
        PUBLIC xQueueGenericReceive
        PUBLIC xQueueGenericReset
        PUBLIC xQueueGenericSend
        PUBLIC xQueueGenericSendFromISR
        PUBLIC xQueueGiveFromISR
        PUBLIC xQueueIsQueueEmptyFromISR
        PUBLIC xQueueIsQueueFullFromISR
        PUBLIC xQueuePeekFromISR
        PUBLIC xQueueReceiveFromISR
        PUBLIC xQueueRegistry
        
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
        
// C:\GitHub\KursovoyKarkas\Rtos\FreeRtos\queue.c
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
//   70 #include <stdlib.h>
//   71 #include <string.h>
//   72 
//   73 /* Defining MPU_WRAPPERS_INCLUDED_FROM_API_FILE prevents task.h from redefining
//   74 all the API functions to use the MPU wrappers.  That should only be done when
//   75 task.h is included from an application file. */
//   76 #define MPU_WRAPPERS_INCLUDED_FROM_API_FILE
//   77 
//   78 #include "FreeRTOS.h"
//   79 #include "task.h"
//   80 #include "queue.h"
//   81 
//   82 #if ( configUSE_CO_ROUTINES == 1 )
//   83 	#include "croutine.h"
//   84 #endif
//   85 
//   86 /* Lint e961 and e750 are suppressed as a MISRA exception justified because the
//   87 MPU ports require MPU_WRAPPERS_INCLUDED_FROM_API_FILE to be defined for the
//   88 header files above, but not in this file, in order to generate the correct
//   89 privileged Vs unprivileged linkage and placement. */
//   90 #undef MPU_WRAPPERS_INCLUDED_FROM_API_FILE /*lint !e961 !e750. */
//   91 
//   92 
//   93 /* Constants used with the cRxLock and cTxLock structure members. */
//   94 #define queueUNLOCKED					( ( int8_t ) -1 )
//   95 #define queueLOCKED_UNMODIFIED			( ( int8_t ) 0 )
//   96 
//   97 /* When the Queue_t structure is used to represent a base queue its pcHead and
//   98 pcTail members are used as pointers into the queue storage area.  When the
//   99 Queue_t structure is used to represent a mutex pcHead and pcTail pointers are
//  100 not necessary, and the pcHead pointer is set to NULL to indicate that the
//  101 pcTail pointer actually points to the mutex holder (if any).  Map alternative
//  102 names to the pcHead and pcTail structure members to ensure the readability of
//  103 the code is maintained despite this dual use of two structure members.  An
//  104 alternative implementation would be to use a union, but use of a union is
//  105 against the coding standard (although an exception to the standard has been
//  106 permitted where the dual use also significantly changes the type of the
//  107 structure member). */
//  108 #define pxMutexHolder					pcTail
//  109 #define uxQueueType						pcHead
//  110 #define queueQUEUE_IS_MUTEX				NULL
//  111 
//  112 /* Semaphores do not actually store or copy data, so have an item size of
//  113 zero. */
//  114 #define queueSEMAPHORE_QUEUE_ITEM_LENGTH ( ( UBaseType_t ) 0 )
//  115 #define queueMUTEX_GIVE_BLOCK_TIME		 ( ( TickType_t ) 0U )
//  116 
//  117 #if( configUSE_PREEMPTION == 0 )
//  118 	/* If the cooperative scheduler is being used then a yield should not be
//  119 	performed just because a higher priority task has been woken. */
//  120 	#define queueYIELD_IF_USING_PREEMPTION()
//  121 #else
//  122 	#define queueYIELD_IF_USING_PREEMPTION() portYIELD_WITHIN_API()
//  123 #endif
//  124 
//  125 /*
//  126  * Definition of the queue used by the scheduler.
//  127  * Items are queued by copy, not reference.  See the following link for the
//  128  * rationale: http://www.freertos.org/Embedded-RTOS-Queues.html
//  129  */
//  130 typedef struct QueueDefinition
//  131 {
//  132 	int8_t *pcHead;					/*< Points to the beginning of the queue storage area. */
//  133 	int8_t *pcTail;					/*< Points to the byte at the end of the queue storage area.  Once more byte is allocated than necessary to store the queue items, this is used as a marker. */
//  134 	int8_t *pcWriteTo;				/*< Points to the free next place in the storage area. */
//  135 
//  136 	union							/* Use of a union is an exception to the coding standard to ensure two mutually exclusive structure members don't appear simultaneously (wasting RAM). */
//  137 	{
//  138 		int8_t *pcReadFrom;			/*< Points to the last place that a queued item was read from when the structure is used as a queue. */
//  139 		UBaseType_t uxRecursiveCallCount;/*< Maintains a count of the number of times a recursive mutex has been recursively 'taken' when the structure is used as a mutex. */
//  140 	} u;
//  141 
//  142 	List_t xTasksWaitingToSend;		/*< List of tasks that are blocked waiting to post onto this queue.  Stored in priority order. */
//  143 	List_t xTasksWaitingToReceive;	/*< List of tasks that are blocked waiting to read from this queue.  Stored in priority order. */
//  144 
//  145 	volatile UBaseType_t uxMessagesWaiting;/*< The number of items currently in the queue. */
//  146 	UBaseType_t uxLength;			/*< The length of the queue defined as the number of items it will hold, not the number of bytes. */
//  147 	UBaseType_t uxItemSize;			/*< The size of each items that the queue will hold. */
//  148 
//  149 	volatile int8_t cRxLock;		/*< Stores the number of items received from the queue (removed from the queue) while the queue was locked.  Set to queueUNLOCKED when the queue is not locked. */
//  150 	volatile int8_t cTxLock;		/*< Stores the number of items transmitted to the queue (added to the queue) while the queue was locked.  Set to queueUNLOCKED when the queue is not locked. */
//  151 
//  152 	#if( ( configSUPPORT_STATIC_ALLOCATION == 1 ) && ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) )
//  153 		uint8_t ucStaticallyAllocated;	/*< Set to pdTRUE if the memory used by the queue was statically allocated to ensure no attempt is made to free the memory. */
//  154 	#endif
//  155 
//  156 	#if ( configUSE_QUEUE_SETS == 1 )
//  157 		struct QueueDefinition *pxQueueSetContainer;
//  158 	#endif
//  159 
//  160 	#if ( configUSE_TRACE_FACILITY == 1 )
//  161 		UBaseType_t uxQueueNumber;
//  162 		uint8_t ucQueueType;
//  163 	#endif
//  164 
//  165 } xQUEUE;
//  166 
//  167 /* The old xQUEUE name is maintained above then typedefed to the new Queue_t
//  168 name below to enable the use of older kernel aware debuggers. */
//  169 typedef xQUEUE Queue_t;
//  170 
//  171 /*-----------------------------------------------------------*/
//  172 
//  173 /*
//  174  * The queue registry is just a means for kernel aware debuggers to locate
//  175  * queue structures.  It has no other purpose so is an optional component.
//  176  */
//  177 #if ( configQUEUE_REGISTRY_SIZE > 0 )
//  178 
//  179 	/* The type stored within the queue registry array.  This allows a name
//  180 	to be assigned to each queue making kernel aware debugging a little
//  181 	more user friendly. */
//  182 	typedef struct QUEUE_REGISTRY_ITEM
//  183 	{
//  184 		const char *pcQueueName; /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
//  185 		QueueHandle_t xHandle;
//  186 	} xQueueRegistryItem;
//  187 
//  188 	/* The old xQueueRegistryItem name is maintained above then typedefed to the
//  189 	new xQueueRegistryItem name below to enable the use of older kernel aware
//  190 	debuggers. */
//  191 	typedef xQueueRegistryItem QueueRegistryItem_t;
//  192 
//  193 	/* The queue registry is simply an array of QueueRegistryItem_t structures.
//  194 	The pcQueueName member of a structure being NULL is indicative of the
//  195 	array position being vacant. */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  196 	PRIVILEGED_DATA QueueRegistryItem_t xQueueRegistry[ configQUEUE_REGISTRY_SIZE ];
xQueueRegistry:
        DS8 64
//  197 
//  198 #endif /* configQUEUE_REGISTRY_SIZE */
//  199 
//  200 /*
//  201  * Unlocks a queue locked by a call to prvLockQueue.  Locking a queue does not
//  202  * prevent an ISR from adding or removing items to the queue, but does prevent
//  203  * an ISR from removing tasks from the queue event lists.  If an ISR finds a
//  204  * queue is locked it will instead increment the appropriate queue lock count
//  205  * to indicate that a task may require unblocking.  When the queue in unlocked
//  206  * these lock counts are inspected, and the appropriate action taken.
//  207  */
//  208 static void prvUnlockQueue( Queue_t * const pxQueue ) PRIVILEGED_FUNCTION;
//  209 
//  210 /*
//  211  * Uses a critical section to determine if there is any data in a queue.
//  212  *
//  213  * @return pdTRUE if the queue contains no items, otherwise pdFALSE.
//  214  */
//  215 static BaseType_t prvIsQueueEmpty( const Queue_t *pxQueue ) PRIVILEGED_FUNCTION;
//  216 
//  217 /*
//  218  * Uses a critical section to determine if there is any space in a queue.
//  219  *
//  220  * @return pdTRUE if there is no space, otherwise pdFALSE;
//  221  */
//  222 static BaseType_t prvIsQueueFull( const Queue_t *pxQueue ) PRIVILEGED_FUNCTION;
//  223 
//  224 /*
//  225  * Copies an item into the queue, either at the front of the queue or the
//  226  * back of the queue.
//  227  */
//  228 static BaseType_t prvCopyDataToQueue( Queue_t * const pxQueue, const void *pvItemToQueue, const BaseType_t xPosition ) PRIVILEGED_FUNCTION;
//  229 
//  230 /*
//  231  * Copies an item out of a queue.
//  232  */
//  233 static void prvCopyDataFromQueue( Queue_t * const pxQueue, void * const pvBuffer ) PRIVILEGED_FUNCTION;
//  234 
//  235 #if ( configUSE_QUEUE_SETS == 1 )
//  236 	/*
//  237 	 * Checks to see if a queue is a member of a queue set, and if so, notifies
//  238 	 * the queue set that the queue contains data.
//  239 	 */
//  240 	static BaseType_t prvNotifyQueueSetContainer( const Queue_t * const pxQueue, const BaseType_t xCopyPosition ) PRIVILEGED_FUNCTION;
//  241 #endif
//  242 
//  243 /*
//  244  * Called after a Queue_t structure has been allocated either statically or
//  245  * dynamically to fill in the structure's members.
//  246  */
//  247 static void prvInitialiseNewQueue( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, uint8_t *pucQueueStorage, const uint8_t ucQueueType, Queue_t *pxNewQueue ) PRIVILEGED_FUNCTION;
//  248 
//  249 /*
//  250  * Mutexes are a special type of queue.  When a mutex is created, first the
//  251  * queue is created, then prvInitialiseMutex() is called to configure the queue
//  252  * as a mutex.
//  253  */
//  254 #if( configUSE_MUTEXES == 1 )
//  255 	static void prvInitialiseMutex( Queue_t *pxNewQueue ) PRIVILEGED_FUNCTION;
//  256 #endif
//  257 
//  258 /*-----------------------------------------------------------*/
//  259 
//  260 /*
//  261  * Macro to mark a queue as locked.  Locking a queue prevents an ISR from
//  262  * accessing the queue event lists.
//  263  */
//  264 #define prvLockQueue( pxQueue )								\ 
//  265 	taskENTER_CRITICAL();									\ 
//  266 	{														\ 
//  267 		if( ( pxQueue )->cRxLock == queueUNLOCKED )			\ 
//  268 		{													\ 
//  269 			( pxQueue )->cRxLock = queueLOCKED_UNMODIFIED;	\ 
//  270 		}													\ 
//  271 		if( ( pxQueue )->cTxLock == queueUNLOCKED )			\ 
//  272 		{													\ 
//  273 			( pxQueue )->cTxLock = queueLOCKED_UNMODIFIED;	\ 
//  274 		}													\ 
//  275 	}														\ 
//  276 	taskEXIT_CRITICAL()
//  277 /*-----------------------------------------------------------*/
//  278 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function xQueueGenericReset
        THUMB
//  279 BaseType_t xQueueGenericReset( QueueHandle_t xQueue, BaseType_t xNewQueue )
//  280 {
xQueueGenericReset:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R5,R0
        MOVS     R4,R1
//  281 Queue_t * const pxQueue = ( Queue_t * ) xQueue;
//  282 
//  283 	configASSERT( pxQueue );
//  284 
//  285 	taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
//  286 	{
//  287 		pxQueue->pcTail = pxQueue->pcHead + ( pxQueue->uxLength * pxQueue->uxItemSize );
        LDR      R1,[R5, #+0]
        LDR      R2,[R5, #+60]
        LDR      R0,[R5, #+64]
        MULS     R2,R0,R2
        ADD      R0,R1,R2
        STR      R0,[R5, #+4]
//  288 		pxQueue->uxMessagesWaiting = ( UBaseType_t ) 0U;
        MOVS     R0,#+0
        STR      R0,[R5, #+56]
//  289 		pxQueue->pcWriteTo = pxQueue->pcHead;
        LDR      R0,[R5, #+0]
        STR      R0,[R5, #+8]
//  290 		pxQueue->u.pcReadFrom = pxQueue->pcHead + ( ( pxQueue->uxLength - ( UBaseType_t ) 1U ) * pxQueue->uxItemSize );
        LDR      R1,[R5, #+0]
        LDR      R2,[R5, #+60]
        SUBS     R2,R2,#+1
        LDR      R0,[R5, #+64]
        MULS     R2,R0,R2
        ADD      R0,R1,R2
        STR      R0,[R5, #+12]
//  291 		pxQueue->cRxLock = queueUNLOCKED;
        MOVS     R0,#-1
        STRB     R0,[R5, #+68]
//  292 		pxQueue->cTxLock = queueUNLOCKED;
        STRB     R0,[R5, #+69]
//  293 
//  294 		if( xNewQueue == pdFALSE )
        CMP      R4,#+0
        BNE.N    ??xQueueGenericReset_0
//  295 		{
//  296 			/* If there are tasks blocked waiting to read from the queue, then
//  297 			the tasks will remain blocked as after this function exits the queue
//  298 			will still be empty.  If there are tasks blocked waiting to write to
//  299 			the queue, then one should be unblocked as after this function exits
//  300 			it will be possible to write to it. */
//  301 			if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
        LDR      R0,[R5, #+16]
        CMP      R0,#+0
        BEQ.N    ??xQueueGenericReset_1
//  302 			{
//  303 				if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
        ADDS     R0,R5,#+16
          CFI FunCall xTaskRemoveFromEventList
        BL       xTaskRemoveFromEventList
        CMP      R0,#+0
        BEQ.N    ??xQueueGenericReset_1
//  304 				{
//  305 					queueYIELD_IF_USING_PREEMPTION();
        MOVS     R0,#+268435456
        LDR.W    R1,??DataTable5  ;; 0xe000ed04
        STR      R0,[R1, #+0]
        DSB      SY
        ISB      SY
        B.N      ??xQueueGenericReset_1
//  306 				}
//  307 				else
//  308 				{
//  309 					mtCOVERAGE_TEST_MARKER();
//  310 				}
//  311 			}
//  312 			else
//  313 			{
//  314 				mtCOVERAGE_TEST_MARKER();
//  315 			}
//  316 		}
//  317 		else
//  318 		{
//  319 			/* Ensure the event queues start in the correct state. */
//  320 			vListInitialise( &( pxQueue->xTasksWaitingToSend ) );
??xQueueGenericReset_0:
        ADDS     R0,R5,#+16
          CFI FunCall vListInitialise
        BL       vListInitialise
//  321 			vListInitialise( &( pxQueue->xTasksWaitingToReceive ) );
        ADDS     R0,R5,#+36
          CFI FunCall vListInitialise
        BL       vListInitialise
//  322 		}
//  323 	}
//  324 	taskEXIT_CRITICAL();
??xQueueGenericReset_1:
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
//  325 
//  326 	/* A value is returned for calling semantic consistency with previous
//  327 	versions. */
//  328 	return pdPASS;
        MOVS     R0,#+1
        POP      {R1,R4,R5,PC}    ;; return
//  329 }
          CFI EndBlock cfiBlock0
//  330 /*-----------------------------------------------------------*/
//  331 
//  332 #if( configSUPPORT_STATIC_ALLOCATION == 1 )
//  333 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function xQueueGenericCreateStatic
        THUMB
//  334 	QueueHandle_t xQueueGenericCreateStatic( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, uint8_t *pucQueueStorage, StaticQueue_t *pxStaticQueue, const uint8_t ucQueueType )
//  335 	{
xQueueGenericCreateStatic:
        PUSH     {R2-R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+16
        MOVS     R4,R3
//  336 	Queue_t *pxNewQueue;
//  337 
//  338 		configASSERT( uxQueueLength > ( UBaseType_t ) 0 );
//  339 
//  340 		/* The StaticQueue_t structure and the queue storage area must be
//  341 		supplied. */
//  342 		configASSERT( pxStaticQueue != NULL );
//  343 
//  344 		/* A queue storage area should be provided if the item size is not 0, and
//  345 		should not be provided if the item size is 0. */
//  346 		configASSERT( !( ( pucQueueStorage != NULL ) && ( uxItemSize == 0 ) ) );
        CMP      R2,#+0
        BEQ.N    ??xQueueGenericCreateStatic_0
        CMP      R1,#+0
        BEQ.N    ??xQueueGenericCreateStatic_1
??xQueueGenericCreateStatic_0:
        MOVS     R3,#+1
        B.N      ??xQueueGenericCreateStatic_2
??xQueueGenericCreateStatic_1:
        MOVS     R3,#+0
//  347 		configASSERT( !( ( pucQueueStorage == NULL ) && ( uxItemSize != 0 ) ) );
??xQueueGenericCreateStatic_2:
        CMP      R2,#+0
        BNE.N    ??xQueueGenericCreateStatic_3
        CMP      R1,#+0
        BNE.N    ??xQueueGenericCreateStatic_4
??xQueueGenericCreateStatic_3:
        MOVS     R3,#+1
        B.N      ??xQueueGenericCreateStatic_5
??xQueueGenericCreateStatic_4:
        MOVS     R3,#+0
//  348 
//  349 		#if( configASSERT_DEFINED == 1 )
//  350 		{
//  351 			/* Sanity check that the size of the structure used to declare a
//  352 			variable of type StaticQueue_t or StaticSemaphore_t equals the size of
//  353 			the real queue and semaphore structures. */
//  354 			volatile size_t xSize = sizeof( StaticQueue_t );
??xQueueGenericCreateStatic_5:
        MOVS     R3,#+72
        STR      R3,[SP, #+0]
//  355 			configASSERT( xSize == sizeof( Queue_t ) );
        LDR      R3,[SP, #+0]
//  356 		}
//  357 		#endif /* configASSERT_DEFINED */
//  358 
//  359 		/* The address of a statically allocated queue was passed in, use it.
//  360 		The address of a statically allocated storage area was also passed in
//  361 		but is already set. */
//  362 		pxNewQueue = ( Queue_t * ) pxStaticQueue; /*lint !e740 Unusual cast is ok as the structures are designed to have the same alignment, and the size is checked by an assert. */
//  363 
//  364 		if( pxNewQueue != NULL )
        CMP      R4,#+0
        BEQ.N    ??xQueueGenericCreateStatic_6
        LDR      R3,[SP, #+16]
//  365 		{
//  366 			#if( configSUPPORT_DYNAMIC_ALLOCATION == 1 )
//  367 			{
//  368 				/* Queues can be allocated wither statically or dynamically, so
//  369 				note this queue was allocated statically in case the queue is
//  370 				later deleted. */
//  371 				pxNewQueue->ucStaticallyAllocated = pdTRUE;
//  372 			}
//  373 			#endif /* configSUPPORT_DYNAMIC_ALLOCATION */
//  374 
//  375 			prvInitialiseNewQueue( uxQueueLength, uxItemSize, pucQueueStorage, ucQueueType, pxNewQueue );
        STR      R4,[SP, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
          CFI FunCall prvInitialiseNewQueue
        BL       prvInitialiseNewQueue
//  376 		}
//  377 
//  378 		return pxNewQueue;
??xQueueGenericCreateStatic_6:
        MOVS     R0,R4
        POP      {R1,R2,R4,PC}    ;; return
//  379 	}
          CFI EndBlock cfiBlock1
//  380 
//  381 #endif /* configSUPPORT_STATIC_ALLOCATION */
//  382 /*-----------------------------------------------------------*/
//  383 
//  384 #if( configSUPPORT_DYNAMIC_ALLOCATION == 1 )
//  385 
//  386 	QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, const uint8_t ucQueueType )
//  387 	{
//  388 	Queue_t *pxNewQueue;
//  389 	size_t xQueueSizeInBytes;
//  390 	uint8_t *pucQueueStorage;
//  391 
//  392 		configASSERT( uxQueueLength > ( UBaseType_t ) 0 );
//  393 
//  394 		if( uxItemSize == ( UBaseType_t ) 0 )
//  395 		{
//  396 			/* There is not going to be a queue storage area. */
//  397 			xQueueSizeInBytes = ( size_t ) 0;
//  398 		}
//  399 		else
//  400 		{
//  401 			/* Allocate enough space to hold the maximum number of items that
//  402 			can be in the queue at any time. */
//  403 			xQueueSizeInBytes = ( size_t ) ( uxQueueLength * uxItemSize ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
//  404 		}
//  405 
//  406 		pxNewQueue = ( Queue_t * ) pvPortMalloc( sizeof( Queue_t ) + xQueueSizeInBytes );
//  407 
//  408 		if( pxNewQueue != NULL )
//  409 		{
//  410 			/* Jump past the queue structure to find the location of the queue
//  411 			storage area. */
//  412 			pucQueueStorage = ( ( uint8_t * ) pxNewQueue ) + sizeof( Queue_t );
//  413 
//  414 			#if( configSUPPORT_STATIC_ALLOCATION == 1 )
//  415 			{
//  416 				/* Queues can be created either statically or dynamically, so
//  417 				note this task was created dynamically in case it is later
//  418 				deleted. */
//  419 				pxNewQueue->ucStaticallyAllocated = pdFALSE;
//  420 			}
//  421 			#endif /* configSUPPORT_STATIC_ALLOCATION */
//  422 
//  423 			prvInitialiseNewQueue( uxQueueLength, uxItemSize, pucQueueStorage, ucQueueType, pxNewQueue );
//  424 		}
//  425 
//  426 		return pxNewQueue;
//  427 	}
//  428 
//  429 #endif /* configSUPPORT_STATIC_ALLOCATION */
//  430 /*-----------------------------------------------------------*/
//  431 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function prvInitialiseNewQueue
        THUMB
//  432 static void prvInitialiseNewQueue( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, uint8_t *pucQueueStorage, const uint8_t ucQueueType, Queue_t *pxNewQueue )
//  433 {
prvInitialiseNewQueue:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        LDR      R3,[SP, #+8]
//  434 	/* Remove compiler warnings about unused parameters should
//  435 	configUSE_TRACE_FACILITY not be set to 1. */
//  436 	( void ) ucQueueType;
//  437 
//  438 	if( uxItemSize == ( UBaseType_t ) 0 )
        CMP      R1,#+0
        BNE.N    ??prvInitialiseNewQueue_0
//  439 	{
//  440 		/* No RAM was allocated for the queue storage area, but PC head cannot
//  441 		be set to NULL because NULL is used as a key to say the queue is used as
//  442 		a mutex.  Therefore just set pcHead to point to the queue as a benign
//  443 		value that is known to be within the memory map. */
//  444 		pxNewQueue->pcHead = ( int8_t * ) pxNewQueue;
        STR      R3,[R3, #+0]
        B.N      ??prvInitialiseNewQueue_1
//  445 	}
//  446 	else
//  447 	{
//  448 		/* Set the head to the start of the queue storage area. */
//  449 		pxNewQueue->pcHead = ( int8_t * ) pucQueueStorage;
??prvInitialiseNewQueue_0:
        STR      R2,[R3, #+0]
//  450 	}
//  451 
//  452 	/* Initialise the queue members as described where the queue type is
//  453 	defined. */
//  454 	pxNewQueue->uxLength = uxQueueLength;
??prvInitialiseNewQueue_1:
        STR      R0,[R3, #+60]
//  455 	pxNewQueue->uxItemSize = uxItemSize;
        STR      R1,[R3, #+64]
//  456 	( void ) xQueueGenericReset( pxNewQueue, pdTRUE );
        MOVS     R1,#+1
        MOVS     R0,R3
          CFI FunCall xQueueGenericReset
        BL       xQueueGenericReset
//  457 
//  458 	#if ( configUSE_TRACE_FACILITY == 1 )
//  459 	{
//  460 		pxNewQueue->ucQueueType = ucQueueType;
//  461 	}
//  462 	#endif /* configUSE_TRACE_FACILITY */
//  463 
//  464 	#if( configUSE_QUEUE_SETS == 1 )
//  465 	{
//  466 		pxNewQueue->pxQueueSetContainer = NULL;
//  467 	}
//  468 	#endif /* configUSE_QUEUE_SETS */
//  469 
//  470 	traceQUEUE_CREATE( pxNewQueue );
//  471 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock2
//  472 /*-----------------------------------------------------------*/
//  473 
//  474 #if( configUSE_MUTEXES == 1 )
//  475 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function prvInitialiseMutex
        THUMB
//  476 	static void prvInitialiseMutex( Queue_t *pxNewQueue )
//  477 	{
prvInitialiseMutex:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  478 		if( pxNewQueue != NULL )
        CMP      R0,#+0
        BEQ.N    ??prvInitialiseMutex_0
//  479 		{
//  480 			/* The queue create function will set all the queue structure members
//  481 			correctly for a generic queue, but this function is creating a
//  482 			mutex.  Overwrite those members that need to be set differently -
//  483 			in particular the information required for priority inheritance. */
//  484 			pxNewQueue->pxMutexHolder = NULL;
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//  485 			pxNewQueue->uxQueueType = queueQUEUE_IS_MUTEX;
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  486 
//  487 			/* In case this is a recursive mutex. */
//  488 			pxNewQueue->u.uxRecursiveCallCount = 0;
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//  489 
//  490 			traceCREATE_MUTEX( pxNewQueue );
//  491 
//  492 			/* Start with the semaphore in the expected state. */
//  493 			( void ) xQueueGenericSend( pxNewQueue, NULL, ( TickType_t ) 0U, queueSEND_TO_BACK );
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+0
          CFI FunCall xQueueGenericSend
        BL       xQueueGenericSend
//  494 		}
//  495 		else
//  496 		{
//  497 			traceCREATE_MUTEX_FAILED();
//  498 		}
//  499 	}
??prvInitialiseMutex_0:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock3
//  500 
//  501 #endif /* configUSE_MUTEXES */
//  502 /*-----------------------------------------------------------*/
//  503 
//  504 #if( ( configUSE_MUTEXES == 1 ) && ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) )
//  505 
//  506 	QueueHandle_t xQueueCreateMutex( const uint8_t ucQueueType )
//  507 	{
//  508 	Queue_t *pxNewQueue;
//  509 	const UBaseType_t uxMutexLength = ( UBaseType_t ) 1, uxMutexSize = ( UBaseType_t ) 0;
//  510 
//  511 		pxNewQueue = ( Queue_t * ) xQueueGenericCreate( uxMutexLength, uxMutexSize, ucQueueType );
//  512 		prvInitialiseMutex( pxNewQueue );
//  513 
//  514 		return pxNewQueue;
//  515 	}
//  516 
//  517 #endif /* configUSE_MUTEXES */
//  518 /*-----------------------------------------------------------*/
//  519 
//  520 #if( ( configUSE_MUTEXES == 1 ) && ( configSUPPORT_STATIC_ALLOCATION == 1 ) )
//  521 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function xQueueCreateMutexStatic
        THUMB
//  522 	QueueHandle_t xQueueCreateMutexStatic( const uint8_t ucQueueType, StaticQueue_t *pxStaticQueue )
//  523 	{
xQueueCreateMutexStatic:
        PUSH     {R2-R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+16
        MOVS     R3,R1
//  524 	Queue_t *pxNewQueue;
//  525 	const UBaseType_t uxMutexLength = ( UBaseType_t ) 1, uxMutexSize = ( UBaseType_t ) 0;
        MOVS     R4,#+1
        MOVS     R1,#+0
//  526 
//  527 		/* Prevent compiler warnings about unused parameters if
//  528 		configUSE_TRACE_FACILITY does not equal 1. */
//  529 		( void ) ucQueueType;
//  530 
//  531 		pxNewQueue = ( Queue_t * ) xQueueGenericCreateStatic( uxMutexLength, uxMutexSize, NULL, pxStaticQueue, ucQueueType );
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[SP, #+0]
        MOVS     R2,#+0
        MOVS     R0,R4
          CFI FunCall xQueueGenericCreateStatic
        BL       xQueueGenericCreateStatic
        MOVS     R4,R0
//  532 		prvInitialiseMutex( pxNewQueue );
        MOVS     R0,R4
          CFI FunCall prvInitialiseMutex
        BL       prvInitialiseMutex
//  533 
//  534 		return pxNewQueue;
        MOVS     R0,R4
        POP      {R1,R2,R4,PC}    ;; return
//  535 	}
          CFI EndBlock cfiBlock4
//  536 
//  537 #endif /* configUSE_MUTEXES */
//  538 /*-----------------------------------------------------------*/
//  539 
//  540 #if ( ( configUSE_MUTEXES == 1 ) && ( INCLUDE_xSemaphoreGetMutexHolder == 1 ) )
//  541 
//  542 	void* xQueueGetMutexHolder( QueueHandle_t xSemaphore )
//  543 	{
//  544 	void *pxReturn;
//  545 
//  546 		/* This function is called by xSemaphoreGetMutexHolder(), and should not
//  547 		be called directly.  Note:  This is a good way of determining if the
//  548 		calling task is the mutex holder, but not a good way of determining the
//  549 		identity of the mutex holder, as the holder may change between the
//  550 		following critical section exiting and the function returning. */
//  551 		taskENTER_CRITICAL();
//  552 		{
//  553 			if( ( ( Queue_t * ) xSemaphore )->uxQueueType == queueQUEUE_IS_MUTEX )
//  554 			{
//  555 				pxReturn = ( void * ) ( ( Queue_t * ) xSemaphore )->pxMutexHolder;
//  556 			}
//  557 			else
//  558 			{
//  559 				pxReturn = NULL;
//  560 			}
//  561 		}
//  562 		taskEXIT_CRITICAL();
//  563 
//  564 		return pxReturn;
//  565 	} /*lint !e818 xSemaphore cannot be a pointer to const because it is a typedef. */
//  566 
//  567 #endif
//  568 /*-----------------------------------------------------------*/
//  569 
//  570 #if ( configUSE_RECURSIVE_MUTEXES == 1 )
//  571 
//  572 	BaseType_t xQueueGiveMutexRecursive( QueueHandle_t xMutex )
//  573 	{
//  574 	BaseType_t xReturn;
//  575 	Queue_t * const pxMutex = ( Queue_t * ) xMutex;
//  576 
//  577 		configASSERT( pxMutex );
//  578 
//  579 		/* If this is the task that holds the mutex then pxMutexHolder will not
//  580 		change outside of this task.  If this task does not hold the mutex then
//  581 		pxMutexHolder can never coincidentally equal the tasks handle, and as
//  582 		this is the only condition we are interested in it does not matter if
//  583 		pxMutexHolder is accessed simultaneously by another task.  Therefore no
//  584 		mutual exclusion is required to test the pxMutexHolder variable. */
//  585 		if( pxMutex->pxMutexHolder == ( void * ) xTaskGetCurrentTaskHandle() ) /*lint !e961 Not a redundant cast as TaskHandle_t is a typedef. */
//  586 		{
//  587 			traceGIVE_MUTEX_RECURSIVE( pxMutex );
//  588 
//  589 			/* uxRecursiveCallCount cannot be zero if pxMutexHolder is equal to
//  590 			the task handle, therefore no underflow check is required.  Also,
//  591 			uxRecursiveCallCount is only modified by the mutex holder, and as
//  592 			there can only be one, no mutual exclusion is required to modify the
//  593 			uxRecursiveCallCount member. */
//  594 			( pxMutex->u.uxRecursiveCallCount )--;
//  595 
//  596 			/* Has the recursive call count unwound to 0? */
//  597 			if( pxMutex->u.uxRecursiveCallCount == ( UBaseType_t ) 0 )
//  598 			{
//  599 				/* Return the mutex.  This will automatically unblock any other
//  600 				task that might be waiting to access the mutex. */
//  601 				( void ) xQueueGenericSend( pxMutex, NULL, queueMUTEX_GIVE_BLOCK_TIME, queueSEND_TO_BACK );
//  602 			}
//  603 			else
//  604 			{
//  605 				mtCOVERAGE_TEST_MARKER();
//  606 			}
//  607 
//  608 			xReturn = pdPASS;
//  609 		}
//  610 		else
//  611 		{
//  612 			/* The mutex cannot be given because the calling task is not the
//  613 			holder. */
//  614 			xReturn = pdFAIL;
//  615 
//  616 			traceGIVE_MUTEX_RECURSIVE_FAILED( pxMutex );
//  617 		}
//  618 
//  619 		return xReturn;
//  620 	}
//  621 
//  622 #endif /* configUSE_RECURSIVE_MUTEXES */
//  623 /*-----------------------------------------------------------*/
//  624 
//  625 #if ( configUSE_RECURSIVE_MUTEXES == 1 )
//  626 
//  627 	BaseType_t xQueueTakeMutexRecursive( QueueHandle_t xMutex, TickType_t xTicksToWait )
//  628 	{
//  629 	BaseType_t xReturn;
//  630 	Queue_t * const pxMutex = ( Queue_t * ) xMutex;
//  631 
//  632 		configASSERT( pxMutex );
//  633 
//  634 		/* Comments regarding mutual exclusion as per those within
//  635 		xQueueGiveMutexRecursive(). */
//  636 
//  637 		traceTAKE_MUTEX_RECURSIVE( pxMutex );
//  638 
//  639 		if( pxMutex->pxMutexHolder == ( void * ) xTaskGetCurrentTaskHandle() ) /*lint !e961 Cast is not redundant as TaskHandle_t is a typedef. */
//  640 		{
//  641 			( pxMutex->u.uxRecursiveCallCount )++;
//  642 			xReturn = pdPASS;
//  643 		}
//  644 		else
//  645 		{
//  646 			xReturn = xQueueGenericReceive( pxMutex, NULL, xTicksToWait, pdFALSE );
//  647 
//  648 			/* pdPASS will only be returned if the mutex was successfully
//  649 			obtained.  The calling task may have entered the Blocked state
//  650 			before reaching here. */
//  651 			if( xReturn != pdFAIL )
//  652 			{
//  653 				( pxMutex->u.uxRecursiveCallCount )++;
//  654 			}
//  655 			else
//  656 			{
//  657 				traceTAKE_MUTEX_RECURSIVE_FAILED( pxMutex );
//  658 			}
//  659 		}
//  660 
//  661 		return xReturn;
//  662 	}
//  663 
//  664 #endif /* configUSE_RECURSIVE_MUTEXES */
//  665 /*-----------------------------------------------------------*/
//  666 
//  667 #if( ( configUSE_COUNTING_SEMAPHORES == 1 ) && ( configSUPPORT_STATIC_ALLOCATION == 1 ) )
//  668 
//  669 	QueueHandle_t xQueueCreateCountingSemaphoreStatic( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount, StaticQueue_t *pxStaticQueue )
//  670 	{
//  671 	QueueHandle_t xHandle;
//  672 
//  673 		configASSERT( uxMaxCount != 0 );
//  674 		configASSERT( uxInitialCount <= uxMaxCount );
//  675 
//  676 		xHandle = xQueueGenericCreateStatic( uxMaxCount, queueSEMAPHORE_QUEUE_ITEM_LENGTH, NULL, pxStaticQueue, queueQUEUE_TYPE_COUNTING_SEMAPHORE );
//  677 
//  678 		if( xHandle != NULL )
//  679 		{
//  680 			( ( Queue_t * ) xHandle )->uxMessagesWaiting = uxInitialCount;
//  681 
//  682 			traceCREATE_COUNTING_SEMAPHORE();
//  683 		}
//  684 		else
//  685 		{
//  686 			traceCREATE_COUNTING_SEMAPHORE_FAILED();
//  687 		}
//  688 
//  689 		return xHandle;
//  690 	}
//  691 
//  692 #endif /* ( ( configUSE_COUNTING_SEMAPHORES == 1 ) && ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) ) */
//  693 /*-----------------------------------------------------------*/
//  694 
//  695 #if( ( configUSE_COUNTING_SEMAPHORES == 1 ) && ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) )
//  696 
//  697 	QueueHandle_t xQueueCreateCountingSemaphore( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount )
//  698 	{
//  699 	QueueHandle_t xHandle;
//  700 
//  701 		configASSERT( uxMaxCount != 0 );
//  702 		configASSERT( uxInitialCount <= uxMaxCount );
//  703 
//  704 		xHandle = xQueueGenericCreate( uxMaxCount, queueSEMAPHORE_QUEUE_ITEM_LENGTH, queueQUEUE_TYPE_COUNTING_SEMAPHORE );
//  705 
//  706 		if( xHandle != NULL )
//  707 		{
//  708 			( ( Queue_t * ) xHandle )->uxMessagesWaiting = uxInitialCount;
//  709 
//  710 			traceCREATE_COUNTING_SEMAPHORE();
//  711 		}
//  712 		else
//  713 		{
//  714 			traceCREATE_COUNTING_SEMAPHORE_FAILED();
//  715 		}
//  716 
//  717 		return xHandle;
//  718 	}
//  719 
//  720 #endif /* ( ( configUSE_COUNTING_SEMAPHORES == 1 ) && ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) ) */
//  721 /*-----------------------------------------------------------*/
//  722 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function xQueueGenericSend
        THUMB
//  723 BaseType_t xQueueGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, const BaseType_t xCopyPosition )
//  724 {
xQueueGenericSend:
        PUSH     {R0-R2,R4-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+32
        MOVS     R6,R0
        MOVS     R5,R1
        MOVS     R7,R3
//  725 BaseType_t xEntryTimeSet = pdFALSE, xYieldRequired;
        MOVS     R4,#+0
//  726 TimeOut_t xTimeOut;
//  727 Queue_t * const pxQueue = ( Queue_t * ) xQueue;
//  728 
//  729 	configASSERT( pxQueue );
//  730 	configASSERT( !( ( pvItemToQueue == NULL ) && ( pxQueue->uxItemSize != ( UBaseType_t ) 0U ) ) );
        CMP      R5,#+0
        BNE.N    ??xQueueGenericSend_0
        LDR      R0,[R6, #+64]
        CMP      R0,#+0
        BNE.N    ??xQueueGenericSend_1
??xQueueGenericSend_0:
        MOVS     R0,#+1
        B.N      ??xQueueGenericSend_2
??xQueueGenericSend_1:
        MOVS     R0,#+0
//  731 	configASSERT( !( ( xCopyPosition == queueOVERWRITE ) && ( pxQueue->uxLength != 1 ) ) );
??xQueueGenericSend_2:
        CMP      R7,#+2
        BNE.N    ??xQueueGenericSend_3
        LDR      R0,[R6, #+60]
        CMP      R0,#+1
        BNE.N    ??xQueueGenericSend_4
??xQueueGenericSend_3:
        MOVS     R0,#+1
        B.N      ??xQueueGenericSend_5
??xQueueGenericSend_4:
        MOVS     R0,#+0
//  732 	#if ( ( INCLUDE_xTaskGetSchedulerState == 1 ) || ( configUSE_TIMERS == 1 ) )
//  733 	{
//  734 		configASSERT( !( ( xTaskGetSchedulerState() == taskSCHEDULER_SUSPENDED ) && ( xTicksToWait != 0 ) ) );
??xQueueGenericSend_5:
          CFI FunCall xTaskGetSchedulerState
        BL       xTaskGetSchedulerState
        CMP      R0,#+0
        BNE.N    ??xQueueGenericSend_6
        LDR      R0,[SP, #+8]
        CMP      R0,#+0
        BNE.N    ??xQueueGenericSend_7
??xQueueGenericSend_6:
        MOVS     R0,#+1
        B.N      ??xQueueGenericSend_8
??xQueueGenericSend_7:
        MOVS     R0,#+0
        B.N      ??xQueueGenericSend_8
//  735 	}
//  736 	#endif
//  737 
//  738 
//  739 	/* This function relaxes the coding standard somewhat to allow return
//  740 	statements within the function itself.  This is done in the interest
//  741 	of execution time efficiency. */
//  742 	for( ;; )
//  743 	{
//  744 		taskENTER_CRITICAL();
//  745 		{
//  746 			/* Is there room on the queue now?  The running task must be the
//  747 			highest priority task wanting to access the queue.  If the head item
//  748 			in the queue is to be overwritten then it does not matter if the
//  749 			queue is full. */
//  750 			if( ( pxQueue->uxMessagesWaiting < pxQueue->uxLength ) || ( xCopyPosition == queueOVERWRITE ) )
//  751 			{
//  752 				traceQUEUE_SEND( pxQueue );
//  753 				xYieldRequired = prvCopyDataToQueue( pxQueue, pvItemToQueue, xCopyPosition );
//  754 
//  755 				#if ( configUSE_QUEUE_SETS == 1 )
//  756 				{
//  757 					if( pxQueue->pxQueueSetContainer != NULL )
//  758 					{
//  759 						if( prvNotifyQueueSetContainer( pxQueue, xCopyPosition ) != pdFALSE )
//  760 						{
//  761 							/* The queue is a member of a queue set, and posting
//  762 							to the queue set caused a higher priority task to
//  763 							unblock. A context switch is required. */
//  764 							queueYIELD_IF_USING_PREEMPTION();
//  765 						}
//  766 						else
//  767 						{
//  768 							mtCOVERAGE_TEST_MARKER();
//  769 						}
//  770 					}
//  771 					else
//  772 					{
//  773 						/* If there was a task waiting for data to arrive on the
//  774 						queue then unblock it now. */
//  775 						if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
//  776 						{
//  777 							if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
//  778 							{
//  779 								/* The unblocked task has a priority higher than
//  780 								our own so yield immediately.  Yes it is ok to
//  781 								do this from within the critical section - the
//  782 								kernel takes care of that. */
//  783 								queueYIELD_IF_USING_PREEMPTION();
//  784 							}
//  785 							else
//  786 							{
//  787 								mtCOVERAGE_TEST_MARKER();
//  788 							}
//  789 						}
//  790 						else if( xYieldRequired != pdFALSE )
//  791 						{
//  792 							/* This path is a special case that will only get
//  793 							executed if the task was holding multiple mutexes
//  794 							and the mutexes were given back in an order that is
//  795 							different to that in which they were taken. */
//  796 							queueYIELD_IF_USING_PREEMPTION();
//  797 						}
//  798 						else
//  799 						{
//  800 							mtCOVERAGE_TEST_MARKER();
//  801 						}
//  802 					}
//  803 				}
//  804 				#else /* configUSE_QUEUE_SETS */
//  805 				{
//  806 					/* If there was a task waiting for data to arrive on the
//  807 					queue then unblock it now. */
//  808 					if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
//  809 					{
//  810 						if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
//  811 						{
//  812 							/* The unblocked task has a priority higher than
//  813 							our own so yield immediately.  Yes it is ok to do
//  814 							this from within the critical section - the kernel
//  815 							takes care of that. */
//  816 							queueYIELD_IF_USING_PREEMPTION();
//  817 						}
//  818 						else
//  819 						{
//  820 							mtCOVERAGE_TEST_MARKER();
//  821 						}
//  822 					}
//  823 					else if( xYieldRequired != pdFALSE )
//  824 					{
//  825 						/* This path is a special case that will only get
//  826 						executed if the task was holding multiple mutexes and
//  827 						the mutexes were given back in an order that is
//  828 						different to that in which they were taken. */
//  829 						queueYIELD_IF_USING_PREEMPTION();
//  830 					}
//  831 					else
//  832 					{
//  833 						mtCOVERAGE_TEST_MARKER();
//  834 					}
//  835 				}
//  836 				#endif /* configUSE_QUEUE_SETS */
//  837 
//  838 				taskEXIT_CRITICAL();
//  839 				return pdPASS;
//  840 			}
//  841 			else
//  842 			{
//  843 				if( xTicksToWait == ( TickType_t ) 0 )
??xQueueGenericSend_9:
        LDR      R0,[SP, #+8]
        CMP      R0,#+0
        BEQ.N    ??xQueueGenericSend_10
//  844 				{
//  845 					/* The queue was full and no block time is specified (or
//  846 					the block time has expired) so leave now. */
//  847 					taskEXIT_CRITICAL();
//  848 
//  849 					/* Return to the original privilege level before exiting
//  850 					the function. */
//  851 					traceQUEUE_SEND_FAILED( pxQueue );
//  852 					return errQUEUE_FULL;
//  853 				}
//  854 				else if( xEntryTimeSet == pdFALSE )
??xQueueGenericSend_11:
        CMP      R4,#+0
        BNE.N    ??xQueueGenericSend_12
//  855 				{
//  856 					/* The queue was full and a block time was specified so
//  857 					configure the timeout structure. */
//  858 					vTaskSetTimeOutState( &xTimeOut );
        MOV      R0,SP
          CFI FunCall vTaskSetTimeOutState
        BL       vTaskSetTimeOutState
//  859 					xEntryTimeSet = pdTRUE;
        MOVS     R4,#+1
//  860 				}
//  861 				else
//  862 				{
//  863 					/* Entry time was already set. */
//  864 					mtCOVERAGE_TEST_MARKER();
//  865 				}
//  866 			}
//  867 		}
//  868 		taskEXIT_CRITICAL();
??xQueueGenericSend_12:
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
//  869 
//  870 		/* Interrupts and other tasks can send to and receive from the queue
//  871 		now the critical section has been exited. */
//  872 
//  873 		vTaskSuspendAll();
          CFI FunCall vTaskSuspendAll
        BL       vTaskSuspendAll
//  874 		prvLockQueue( pxQueue );
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
        LDRSB    R0,[R6, #+68]
        CMN      R0,#+1
        BNE.N    ??xQueueGenericSend_13
        MOVS     R0,#+0
        STRB     R0,[R6, #+68]
??xQueueGenericSend_13:
        LDRSB    R0,[R6, #+69]
        CMN      R0,#+1
        BNE.N    ??xQueueGenericSend_14
        MOVS     R0,#+0
        STRB     R0,[R6, #+69]
??xQueueGenericSend_14:
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
//  875 
//  876 		/* Update the timeout state to see if it has expired yet. */
//  877 		if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
        ADD      R1,SP,#+8
        MOV      R0,SP
          CFI FunCall xTaskCheckForTimeOut
        BL       xTaskCheckForTimeOut
        CMP      R0,#+0
        BNE.N    ??xQueueGenericSend_15
//  878 		{
//  879 			if( prvIsQueueFull( pxQueue ) != pdFALSE )
        MOVS     R0,R6
          CFI FunCall prvIsQueueFull
        BL       prvIsQueueFull
        CMP      R0,#+0
        BNE.N    ??xQueueGenericSend_16
//  880 			{
//  881 				traceBLOCKING_ON_QUEUE_SEND( pxQueue );
//  882 				vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToSend ), xTicksToWait );
//  883 
//  884 				/* Unlocking the queue means queue events can effect the
//  885 				event list.  It is possible	that interrupts occurring now
//  886 				remove this task from the event	list again - but as the
//  887 				scheduler is suspended the task will go onto the pending
//  888 				ready last instead of the actual ready list. */
//  889 				prvUnlockQueue( pxQueue );
//  890 
//  891 				/* Resuming the scheduler will move tasks from the pending
//  892 				ready list into the ready list - so it is feasible that this
//  893 				task is already in a ready list before it yields - in which
//  894 				case the yield will not cause a context switch unless there
//  895 				is also a higher priority task in the pending ready list. */
//  896 				if( xTaskResumeAll() == pdFALSE )
//  897 				{
//  898 					portYIELD_WITHIN_API();
//  899 				}
//  900 			}
//  901 			else
//  902 			{
//  903 				/* Try again. */
//  904 				prvUnlockQueue( pxQueue );
??xQueueGenericSend_17:
        MOVS     R0,R6
          CFI FunCall prvUnlockQueue
        BL       prvUnlockQueue
//  905 				( void ) xTaskResumeAll();
          CFI FunCall xTaskResumeAll
        BL       xTaskResumeAll
//  906 			}
??xQueueGenericSend_8:
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
        LDR      R0,[R6, #+56]
        LDR      R1,[R6, #+60]
        CMP      R0,R1
        BCC.N    ??xQueueGenericSend_18
        CMP      R7,#+2
        BNE.N    ??xQueueGenericSend_9
??xQueueGenericSend_18:
        MOVS     R2,R7
        MOVS     R1,R5
        MOVS     R0,R6
          CFI FunCall prvCopyDataToQueue
        BL       prvCopyDataToQueue
        LDR      R1,[R6, #+36]
        CMP      R1,#+0
        BEQ.N    ??xQueueGenericSend_19
        ADDS     R0,R6,#+36
          CFI FunCall xTaskRemoveFromEventList
        BL       xTaskRemoveFromEventList
        CMP      R0,#+0
        BEQ.N    ??xQueueGenericSend_20
        MOVS     R0,#+268435456
        LDR.W    R1,??DataTable5  ;; 0xe000ed04
        STR      R0,[R1, #+0]
        DSB      SY
        ISB      SY
        B.N      ??xQueueGenericSend_20
??xQueueGenericSend_19:
        CMP      R0,#+0
        BEQ.N    ??xQueueGenericSend_20
        MOVS     R0,#+268435456
        LDR.W    R1,??DataTable5  ;; 0xe000ed04
        STR      R0,[R1, #+0]
        DSB      SY
        ISB      SY
??xQueueGenericSend_20:
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
        MOVS     R0,#+1
        B.N      ??xQueueGenericSend_21
??xQueueGenericSend_10:
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
        MOVS     R0,#+0
        B.N      ??xQueueGenericSend_21
??xQueueGenericSend_16:
        LDR      R1,[SP, #+8]
        ADDS     R0,R6,#+16
          CFI FunCall vTaskPlaceOnEventList
        BL       vTaskPlaceOnEventList
        MOVS     R0,R6
          CFI FunCall prvUnlockQueue
        BL       prvUnlockQueue
          CFI FunCall xTaskResumeAll
        BL       xTaskResumeAll
        CMP      R0,#+0
        BNE.N    ??xQueueGenericSend_8
        MOVS     R0,#+268435456
        LDR.W    R1,??DataTable5  ;; 0xe000ed04
        STR      R0,[R1, #+0]
        DSB      SY
        ISB      SY
        B.N      ??xQueueGenericSend_8
//  907 		}
//  908 		else
//  909 		{
//  910 			/* The timeout has expired. */
//  911 			prvUnlockQueue( pxQueue );
??xQueueGenericSend_15:
        MOVS     R0,R6
          CFI FunCall prvUnlockQueue
        BL       prvUnlockQueue
//  912 			( void ) xTaskResumeAll();
          CFI FunCall xTaskResumeAll
        BL       xTaskResumeAll
//  913 
//  914 			traceQUEUE_SEND_FAILED( pxQueue );
//  915 			return errQUEUE_FULL;
        MOVS     R0,#+0
??xQueueGenericSend_21:
        POP      {R1-R7,PC}       ;; return
//  916 		}
//  917 	}
//  918 }
          CFI EndBlock cfiBlock5
//  919 /*-----------------------------------------------------------*/
//  920 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function xQueueGenericSendFromISR
        THUMB
//  921 BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue, const void * const pvItemToQueue, BaseType_t * const pxHigherPriorityTaskWoken, const BaseType_t xCopyPosition )
//  922 {
xQueueGenericSendFromISR:
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
        MOVS     R5,R1
        MOVS     R4,R2
        MOV      R8,R3
//  923 BaseType_t xReturn;
//  924 UBaseType_t uxSavedInterruptStatus;
//  925 Queue_t * const pxQueue = ( Queue_t * ) xQueue;
//  926 
//  927 	configASSERT( pxQueue );
//  928 	configASSERT( !( ( pvItemToQueue == NULL ) && ( pxQueue->uxItemSize != ( UBaseType_t ) 0U ) ) );
        CMP      R5,#+0
        BNE.N    ??xQueueGenericSendFromISR_0
        LDR      R0,[R7, #+64]
        CMP      R0,#+0
        BNE.N    ??xQueueGenericSendFromISR_1
??xQueueGenericSendFromISR_0:
        MOVS     R0,#+1
        B.N      ??xQueueGenericSendFromISR_2
??xQueueGenericSendFromISR_1:
        MOVS     R0,#+0
//  929 	configASSERT( !( ( xCopyPosition == queueOVERWRITE ) && ( pxQueue->uxLength != 1 ) ) );
??xQueueGenericSendFromISR_2:
        CMP      R8,#+2
        BNE.N    ??xQueueGenericSendFromISR_3
        LDR      R0,[R7, #+60]
        CMP      R0,#+1
        BNE.N    ??xQueueGenericSendFromISR_4
??xQueueGenericSendFromISR_3:
        MOVS     R0,#+1
        B.N      ??xQueueGenericSendFromISR_5
??xQueueGenericSendFromISR_4:
        MOVS     R0,#+0
//  930 
//  931 	/* RTOS ports that support interrupt nesting have the concept of a maximum
//  932 	system call (or maximum API call) interrupt priority.  Interrupts that are
//  933 	above the maximum system call priority are kept permanently enabled, even
//  934 	when the RTOS kernel is in a critical section, but cannot make any calls to
//  935 	FreeRTOS API functions.  If configASSERT() is defined in FreeRTOSConfig.h
//  936 	then portASSERT_IF_INTERRUPT_PRIORITY_INVALID() will result in an assertion
//  937 	failure if a FreeRTOS API function is called from an interrupt that has been
//  938 	assigned a priority above the configured maximum system call priority.
//  939 	Only FreeRTOS functions that end in FromISR can be called from interrupts
//  940 	that have been assigned a priority at or (logically) below the maximum
//  941 	system call	interrupt priority.  FreeRTOS maintains a separate interrupt
//  942 	safe API to ensure interrupt entry is as fast and as simple as possible.
//  943 	More information (albeit Cortex-M specific) is provided on the following
//  944 	link: http://www.freertos.org/RTOS-Cortex-M3-M4.html */
//  945 	portASSERT_IF_INTERRUPT_PRIORITY_INVALID();
??xQueueGenericSendFromISR_5:
          CFI FunCall vPortValidateInterruptPriority
        BL       vPortValidateInterruptPriority
//  946 
//  947 	/* Similar to xQueueGenericSend, except without blocking if there is no room
//  948 	in the queue.  Also don't directly wake a task that was blocked on a queue
//  949 	read, instead return a flag to say whether a context switch is required or
//  950 	not (i.e. has a task with a higher priority than us been woken by this
//  951 	post). */
//  952 	uxSavedInterruptStatus = portSET_INTERRUPT_MASK_FROM_ISR();
        MRS      R6,BASEPRI
        MOVS     R0,#+80
        MSR      BASEPRI,R0
        DSB      SY
        ISB      SY
//  953 	{
//  954 		if( ( pxQueue->uxMessagesWaiting < pxQueue->uxLength ) || ( xCopyPosition == queueOVERWRITE ) )
        LDR      R0,[R7, #+56]
        LDR      R1,[R7, #+60]
        CMP      R0,R1
        BCC.N    ??xQueueGenericSendFromISR_6
        CMP      R8,#+2
        BNE.N    ??xQueueGenericSendFromISR_7
//  955 		{
//  956 			const int8_t cTxLock = pxQueue->cTxLock;
??xQueueGenericSendFromISR_6:
        LDRSB    R9,[R7, #+69]
//  957 
//  958 			traceQUEUE_SEND_FROM_ISR( pxQueue );
//  959 
//  960 			/* Semaphores use xQueueGiveFromISR(), so pxQueue will not be a
//  961 			semaphore or mutex.  That means prvCopyDataToQueue() cannot result
//  962 			in a task disinheriting a priority and prvCopyDataToQueue() can be
//  963 			called here even though the disinherit function does not check if
//  964 			the scheduler is suspended before accessing the ready lists. */
//  965 			( void ) prvCopyDataToQueue( pxQueue, pvItemToQueue, xCopyPosition );
        MOV      R2,R8
        MOVS     R1,R5
        MOVS     R0,R7
          CFI FunCall prvCopyDataToQueue
        BL       prvCopyDataToQueue
//  966 
//  967 			/* The event list is not altered if the queue is locked.  This will
//  968 			be done when the queue is unlocked later. */
//  969 			if( cTxLock == queueUNLOCKED )
        MOV      R0,R9
        MOVS     R1,#-1
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,R1
        BNE.N    ??xQueueGenericSendFromISR_8
//  970 			{
//  971 				#if ( configUSE_QUEUE_SETS == 1 )
//  972 				{
//  973 					if( pxQueue->pxQueueSetContainer != NULL )
//  974 					{
//  975 						if( prvNotifyQueueSetContainer( pxQueue, xCopyPosition ) != pdFALSE )
//  976 						{
//  977 							/* The queue is a member of a queue set, and posting
//  978 							to the queue set caused a higher priority task to
//  979 							unblock.  A context switch is required. */
//  980 							if( pxHigherPriorityTaskWoken != NULL )
//  981 							{
//  982 								*pxHigherPriorityTaskWoken = pdTRUE;
//  983 							}
//  984 							else
//  985 							{
//  986 								mtCOVERAGE_TEST_MARKER();
//  987 							}
//  988 						}
//  989 						else
//  990 						{
//  991 							mtCOVERAGE_TEST_MARKER();
//  992 						}
//  993 					}
//  994 					else
//  995 					{
//  996 						if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
//  997 						{
//  998 							if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
//  999 							{
// 1000 								/* The task waiting has a higher priority so
// 1001 								record that a context switch is required. */
// 1002 								if( pxHigherPriorityTaskWoken != NULL )
// 1003 								{
// 1004 									*pxHigherPriorityTaskWoken = pdTRUE;
// 1005 								}
// 1006 								else
// 1007 								{
// 1008 									mtCOVERAGE_TEST_MARKER();
// 1009 								}
// 1010 							}
// 1011 							else
// 1012 							{
// 1013 								mtCOVERAGE_TEST_MARKER();
// 1014 							}
// 1015 						}
// 1016 						else
// 1017 						{
// 1018 							mtCOVERAGE_TEST_MARKER();
// 1019 						}
// 1020 					}
// 1021 				}
// 1022 				#else /* configUSE_QUEUE_SETS */
// 1023 				{
// 1024 					if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
        LDR      R0,[R7, #+36]
        CMP      R0,#+0
        BEQ.N    ??xQueueGenericSendFromISR_9
// 1025 					{
// 1026 						if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
        ADDS     R0,R7,#+36
          CFI FunCall xTaskRemoveFromEventList
        BL       xTaskRemoveFromEventList
        CMP      R0,#+0
        BEQ.N    ??xQueueGenericSendFromISR_9
// 1027 						{
// 1028 							/* The task waiting has a higher priority so record that a
// 1029 							context	switch is required. */
// 1030 							if( pxHigherPriorityTaskWoken != NULL )
        CMP      R4,#+0
        BEQ.N    ??xQueueGenericSendFromISR_9
// 1031 							{
// 1032 								*pxHigherPriorityTaskWoken = pdTRUE;
        MOVS     R0,#+1
        STR      R0,[R4, #+0]
        B.N      ??xQueueGenericSendFromISR_9
// 1033 							}
// 1034 							else
// 1035 							{
// 1036 								mtCOVERAGE_TEST_MARKER();
// 1037 							}
// 1038 						}
// 1039 						else
// 1040 						{
// 1041 							mtCOVERAGE_TEST_MARKER();
// 1042 						}
// 1043 					}
// 1044 					else
// 1045 					{
// 1046 						mtCOVERAGE_TEST_MARKER();
// 1047 					}
// 1048 				}
// 1049 				#endif /* configUSE_QUEUE_SETS */
// 1050 			}
// 1051 			else
// 1052 			{
// 1053 				/* Increment the lock count so the task that unlocks the queue
// 1054 				knows that data was posted while it was locked. */
// 1055 				pxQueue->cTxLock = ( int8_t ) ( cTxLock + 1 );
??xQueueGenericSendFromISR_8:
        ADDS     R9,R9,#+1
        STRB     R9,[R7, #+69]
// 1056 			}
// 1057 
// 1058 			xReturn = pdPASS;
??xQueueGenericSendFromISR_9:
        MOVS     R0,#+1
        B.N      ??xQueueGenericSendFromISR_10
// 1059 		}
// 1060 		else
// 1061 		{
// 1062 			traceQUEUE_SEND_FROM_ISR_FAILED( pxQueue );
// 1063 			xReturn = errQUEUE_FULL;
??xQueueGenericSendFromISR_7:
        MOVS     R0,#+0
// 1064 		}
// 1065 	}
// 1066 	portCLEAR_INTERRUPT_MASK_FROM_ISR( uxSavedInterruptStatus );
??xQueueGenericSendFromISR_10:
        MSR      BASEPRI,R6
// 1067 
// 1068 	return xReturn;
        POP      {R1,R4-R9,PC}    ;; return
// 1069 }
          CFI EndBlock cfiBlock6
// 1070 /*-----------------------------------------------------------*/
// 1071 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function xQueueGiveFromISR
        THUMB
// 1072 BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue, BaseType_t * const pxHigherPriorityTaskWoken )
// 1073 {
xQueueGiveFromISR:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R5,R0
        MOVS     R4,R1
// 1074 BaseType_t xReturn;
// 1075 UBaseType_t uxSavedInterruptStatus;
// 1076 Queue_t * const pxQueue = ( Queue_t * ) xQueue;
// 1077 
// 1078 	/* Similar to xQueueGenericSendFromISR() but used with semaphores where the
// 1079 	item size is 0.  Don't directly wake a task that was blocked on a queue
// 1080 	read, instead return a flag to say whether a context switch is required or
// 1081 	not (i.e. has a task with a higher priority than us been woken by this
// 1082 	post). */
// 1083 
// 1084 	configASSERT( pxQueue );
// 1085 
// 1086 	/* xQueueGenericSendFromISR() should be used instead of xQueueGiveFromISR()
// 1087 	if the item size is not 0. */
// 1088 	configASSERT( pxQueue->uxItemSize == 0 );
// 1089 
// 1090 	/* Normally a mutex would not be given from an interrupt, especially if
// 1091 	there is a mutex holder, as priority inheritance makes no sense for an
// 1092 	interrupts, only tasks. */
// 1093 	configASSERT( !( ( pxQueue->uxQueueType == queueQUEUE_IS_MUTEX ) && ( pxQueue->pxMutexHolder != NULL ) ) );
        LDR      R0,[R5, #+0]
        CMP      R0,#+0
        BNE.N    ??xQueueGiveFromISR_0
        LDR      R0,[R5, #+4]
        CMP      R0,#+0
        BNE.N    ??xQueueGiveFromISR_1
??xQueueGiveFromISR_0:
        MOVS     R0,#+1
        B.N      ??xQueueGiveFromISR_2
??xQueueGiveFromISR_1:
        MOVS     R0,#+0
// 1094 
// 1095 	/* RTOS ports that support interrupt nesting have the concept of a maximum
// 1096 	system call (or maximum API call) interrupt priority.  Interrupts that are
// 1097 	above the maximum system call priority are kept permanently enabled, even
// 1098 	when the RTOS kernel is in a critical section, but cannot make any calls to
// 1099 	FreeRTOS API functions.  If configASSERT() is defined in FreeRTOSConfig.h
// 1100 	then portASSERT_IF_INTERRUPT_PRIORITY_INVALID() will result in an assertion
// 1101 	failure if a FreeRTOS API function is called from an interrupt that has been
// 1102 	assigned a priority above the configured maximum system call priority.
// 1103 	Only FreeRTOS functions that end in FromISR can be called from interrupts
// 1104 	that have been assigned a priority at or (logically) below the maximum
// 1105 	system call	interrupt priority.  FreeRTOS maintains a separate interrupt
// 1106 	safe API to ensure interrupt entry is as fast and as simple as possible.
// 1107 	More information (albeit Cortex-M specific) is provided on the following
// 1108 	link: http://www.freertos.org/RTOS-Cortex-M3-M4.html */
// 1109 	portASSERT_IF_INTERRUPT_PRIORITY_INVALID();
??xQueueGiveFromISR_2:
          CFI FunCall vPortValidateInterruptPriority
        BL       vPortValidateInterruptPriority
// 1110 
// 1111 	uxSavedInterruptStatus = portSET_INTERRUPT_MASK_FROM_ISR();
        MRS      R6,BASEPRI
        MOVS     R0,#+80
        MSR      BASEPRI,R0
        DSB      SY
        ISB      SY
// 1112 	{
// 1113 		const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
        LDR      R0,[R5, #+56]
// 1114 
// 1115 		/* When the queue is used to implement a semaphore no data is ever
// 1116 		moved through the queue but it is still valid to see if the queue 'has
// 1117 		space'. */
// 1118 		if( uxMessagesWaiting < pxQueue->uxLength )
        LDR      R1,[R5, #+60]
        CMP      R0,R1
        BCS.N    ??xQueueGiveFromISR_3
// 1119 		{
// 1120 			const int8_t cTxLock = pxQueue->cTxLock;
        LDRSB    R1,[R5, #+69]
// 1121 
// 1122 			traceQUEUE_SEND_FROM_ISR( pxQueue );
// 1123 
// 1124 			/* A task can only have an inherited priority if it is a mutex
// 1125 			holder - and if there is a mutex holder then the mutex cannot be
// 1126 			given from an ISR.  As this is the ISR version of the function it
// 1127 			can be assumed there is no mutex holder and no need to determine if
// 1128 			priority disinheritance is needed.  Simply increase the count of
// 1129 			messages (semaphores) available. */
// 1130 			pxQueue->uxMessagesWaiting = uxMessagesWaiting + 1;
        ADDS     R0,R0,#+1
        STR      R0,[R5, #+56]
// 1131 
// 1132 			/* The event list is not altered if the queue is locked.  This will
// 1133 			be done when the queue is unlocked later. */
// 1134 			if( cTxLock == queueUNLOCKED )
        MOVS     R0,R1
        MOVS     R2,#-1
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,R2
        BNE.N    ??xQueueGiveFromISR_4
// 1135 			{
// 1136 				#if ( configUSE_QUEUE_SETS == 1 )
// 1137 				{
// 1138 					if( pxQueue->pxQueueSetContainer != NULL )
// 1139 					{
// 1140 						if( prvNotifyQueueSetContainer( pxQueue, queueSEND_TO_BACK ) != pdFALSE )
// 1141 						{
// 1142 							/* The semaphore is a member of a queue set, and
// 1143 							posting	to the queue set caused a higher priority
// 1144 							task to	unblock.  A context switch is required. */
// 1145 							if( pxHigherPriorityTaskWoken != NULL )
// 1146 							{
// 1147 								*pxHigherPriorityTaskWoken = pdTRUE;
// 1148 							}
// 1149 							else
// 1150 							{
// 1151 								mtCOVERAGE_TEST_MARKER();
// 1152 							}
// 1153 						}
// 1154 						else
// 1155 						{
// 1156 							mtCOVERAGE_TEST_MARKER();
// 1157 						}
// 1158 					}
// 1159 					else
// 1160 					{
// 1161 						if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
// 1162 						{
// 1163 							if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
// 1164 							{
// 1165 								/* The task waiting has a higher priority so
// 1166 								record that a context switch is required. */
// 1167 								if( pxHigherPriorityTaskWoken != NULL )
// 1168 								{
// 1169 									*pxHigherPriorityTaskWoken = pdTRUE;
// 1170 								}
// 1171 								else
// 1172 								{
// 1173 									mtCOVERAGE_TEST_MARKER();
// 1174 								}
// 1175 							}
// 1176 							else
// 1177 							{
// 1178 								mtCOVERAGE_TEST_MARKER();
// 1179 							}
// 1180 						}
// 1181 						else
// 1182 						{
// 1183 							mtCOVERAGE_TEST_MARKER();
// 1184 						}
// 1185 					}
// 1186 				}
// 1187 				#else /* configUSE_QUEUE_SETS */
// 1188 				{
// 1189 					if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
        LDR      R0,[R5, #+36]
        CMP      R0,#+0
        BEQ.N    ??xQueueGiveFromISR_5
// 1190 					{
// 1191 						if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
        ADDS     R0,R5,#+36
          CFI FunCall xTaskRemoveFromEventList
        BL       xTaskRemoveFromEventList
        CMP      R0,#+0
        BEQ.N    ??xQueueGiveFromISR_5
// 1192 						{
// 1193 							/* The task waiting has a higher priority so record that a
// 1194 							context	switch is required. */
// 1195 							if( pxHigherPriorityTaskWoken != NULL )
        CMP      R4,#+0
        BEQ.N    ??xQueueGiveFromISR_5
// 1196 							{
// 1197 								*pxHigherPriorityTaskWoken = pdTRUE;
        MOVS     R0,#+1
        STR      R0,[R4, #+0]
        B.N      ??xQueueGiveFromISR_5
// 1198 							}
// 1199 							else
// 1200 							{
// 1201 								mtCOVERAGE_TEST_MARKER();
// 1202 							}
// 1203 						}
// 1204 						else
// 1205 						{
// 1206 							mtCOVERAGE_TEST_MARKER();
// 1207 						}
// 1208 					}
// 1209 					else
// 1210 					{
// 1211 						mtCOVERAGE_TEST_MARKER();
// 1212 					}
// 1213 				}
// 1214 				#endif /* configUSE_QUEUE_SETS */
// 1215 			}
// 1216 			else
// 1217 			{
// 1218 				/* Increment the lock count so the task that unlocks the queue
// 1219 				knows that data was posted while it was locked. */
// 1220 				pxQueue->cTxLock = ( int8_t ) ( cTxLock + 1 );
??xQueueGiveFromISR_4:
        ADDS     R1,R1,#+1
        STRB     R1,[R5, #+69]
// 1221 			}
// 1222 
// 1223 			xReturn = pdPASS;
??xQueueGiveFromISR_5:
        MOVS     R0,#+1
        B.N      ??xQueueGiveFromISR_6
// 1224 		}
// 1225 		else
// 1226 		{
// 1227 			traceQUEUE_SEND_FROM_ISR_FAILED( pxQueue );
// 1228 			xReturn = errQUEUE_FULL;
??xQueueGiveFromISR_3:
        MOVS     R0,#+0
// 1229 		}
// 1230 	}
// 1231 	portCLEAR_INTERRUPT_MASK_FROM_ISR( uxSavedInterruptStatus );
??xQueueGiveFromISR_6:
        MSR      BASEPRI,R6
// 1232 
// 1233 	return xReturn;
        POP      {R4-R6,PC}       ;; return
// 1234 }
          CFI EndBlock cfiBlock7
// 1235 /*-----------------------------------------------------------*/
// 1236 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function xQueueGenericReceive
        THUMB
// 1237 BaseType_t xQueueGenericReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait, const BaseType_t xJustPeeking )
// 1238 {
xQueueGenericReceive:
        PUSH     {R1,R2,R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+32
        SUB      SP,SP,#+8
          CFI CFA R13+40
        MOV      R8,R0
        MOVS     R6,R1
        MOVS     R7,R3
// 1239 BaseType_t xEntryTimeSet = pdFALSE;
        MOVS     R4,#+0
// 1240 TimeOut_t xTimeOut;
// 1241 int8_t *pcOriginalReadPosition;
// 1242 Queue_t * const pxQueue = ( Queue_t * ) xQueue;
// 1243 
// 1244 	configASSERT( pxQueue );
// 1245 	configASSERT( !( ( pvBuffer == NULL ) && ( pxQueue->uxItemSize != ( UBaseType_t ) 0U ) ) );
        CMP      R6,#+0
        BNE.N    ??xQueueGenericReceive_0
        LDR      R0,[R8, #+64]
        CMP      R0,#+0
        BNE.N    ??xQueueGenericReceive_1
??xQueueGenericReceive_0:
        MOVS     R0,#+1
        B.N      ??xQueueGenericReceive_2
??xQueueGenericReceive_1:
        MOVS     R0,#+0
// 1246 	#if ( ( INCLUDE_xTaskGetSchedulerState == 1 ) || ( configUSE_TIMERS == 1 ) )
// 1247 	{
// 1248 		configASSERT( !( ( xTaskGetSchedulerState() == taskSCHEDULER_SUSPENDED ) && ( xTicksToWait != 0 ) ) );
??xQueueGenericReceive_2:
          CFI FunCall xTaskGetSchedulerState
        BL       xTaskGetSchedulerState
        CMP      R0,#+0
        BNE.N    ??xQueueGenericReceive_3
        LDR      R0,[SP, #+12]
        CMP      R0,#+0
        BNE.N    ??xQueueGenericReceive_4
??xQueueGenericReceive_3:
        MOVS     R0,#+1
        B.N      ??xQueueGenericReceive_5
??xQueueGenericReceive_4:
        MOVS     R0,#+0
        B.N      ??xQueueGenericReceive_5
// 1249 	}
// 1250 	#endif
// 1251 
// 1252 	/* This function relaxes the coding standard somewhat to allow return
// 1253 	statements within the function itself.  This is done in the interest
// 1254 	of execution time efficiency. */
// 1255 
// 1256 	for( ;; )
// 1257 	{
// 1258 		taskENTER_CRITICAL();
// 1259 		{
// 1260 			const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
// 1261 
// 1262 			/* Is there data in the queue now?  To be running the calling task
// 1263 			must be the highest priority task wanting to access the queue. */
// 1264 			if( uxMessagesWaiting > ( UBaseType_t ) 0 )
// 1265 			{
// 1266 				/* Remember the read position in case the queue is only being
// 1267 				peeked. */
// 1268 				pcOriginalReadPosition = pxQueue->u.pcReadFrom;
// 1269 
// 1270 				prvCopyDataFromQueue( pxQueue, pvBuffer );
// 1271 
// 1272 				if( xJustPeeking == pdFALSE )
// 1273 				{
// 1274 					traceQUEUE_RECEIVE( pxQueue );
// 1275 
// 1276 					/* Actually removing data, not just peeking. */
// 1277 					pxQueue->uxMessagesWaiting = uxMessagesWaiting - 1;
// 1278 
// 1279 					#if ( configUSE_MUTEXES == 1 )
// 1280 					{
// 1281 						if( pxQueue->uxQueueType == queueQUEUE_IS_MUTEX )
// 1282 						{
// 1283 							/* Record the information required to implement
// 1284 							priority inheritance should it become necessary. */
// 1285 							pxQueue->pxMutexHolder = ( int8_t * ) pvTaskIncrementMutexHeldCount(); /*lint !e961 Cast is not redundant as TaskHandle_t is a typedef. */
// 1286 						}
// 1287 						else
// 1288 						{
// 1289 							mtCOVERAGE_TEST_MARKER();
// 1290 						}
// 1291 					}
// 1292 					#endif /* configUSE_MUTEXES */
// 1293 
// 1294 					if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
// 1295 					{
// 1296 						if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
// 1297 						{
// 1298 							queueYIELD_IF_USING_PREEMPTION();
// 1299 						}
// 1300 						else
// 1301 						{
// 1302 							mtCOVERAGE_TEST_MARKER();
// 1303 						}
// 1304 					}
// 1305 					else
// 1306 					{
// 1307 						mtCOVERAGE_TEST_MARKER();
// 1308 					}
// 1309 				}
// 1310 				else
// 1311 				{
// 1312 					traceQUEUE_PEEK( pxQueue );
// 1313 
// 1314 					/* The data is not being removed, so reset the read
// 1315 					pointer. */
// 1316 					pxQueue->u.pcReadFrom = pcOriginalReadPosition;
// 1317 
// 1318 					/* The data is being left in the queue, so see if there are
// 1319 					any other tasks waiting for the data. */
// 1320 					if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
// 1321 					{
// 1322 						if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
// 1323 						{
// 1324 							/* The task waiting has a higher priority than this task. */
// 1325 							queueYIELD_IF_USING_PREEMPTION();
// 1326 						}
// 1327 						else
// 1328 						{
// 1329 							mtCOVERAGE_TEST_MARKER();
// 1330 						}
// 1331 					}
// 1332 					else
// 1333 					{
// 1334 						mtCOVERAGE_TEST_MARKER();
// 1335 					}
// 1336 				}
// 1337 
// 1338 				taskEXIT_CRITICAL();
// 1339 				return pdPASS;
// 1340 			}
// 1341 			else
// 1342 			{
// 1343 				if( xTicksToWait == ( TickType_t ) 0 )
// 1344 				{
// 1345 					/* The queue was empty and no block time is specified (or
// 1346 					the block time has expired) so leave now. */
// 1347 					taskEXIT_CRITICAL();
// 1348 					traceQUEUE_RECEIVE_FAILED( pxQueue );
// 1349 					return errQUEUE_EMPTY;
// 1350 				}
// 1351 				else if( xEntryTimeSet == pdFALSE )
// 1352 				{
// 1353 					/* The queue was empty and a block time was specified so
// 1354 					configure the timeout structure. */
// 1355 					vTaskSetTimeOutState( &xTimeOut );
// 1356 					xEntryTimeSet = pdTRUE;
// 1357 				}
// 1358 				else
// 1359 				{
// 1360 					/* Entry time was already set. */
// 1361 					mtCOVERAGE_TEST_MARKER();
// 1362 				}
// 1363 			}
// 1364 		}
// 1365 		taskEXIT_CRITICAL();
// 1366 
// 1367 		/* Interrupts and other tasks can send to and receive from the queue
// 1368 		now the critical section has been exited. */
// 1369 
// 1370 		vTaskSuspendAll();
// 1371 		prvLockQueue( pxQueue );
// 1372 
// 1373 		/* Update the timeout state to see if it has expired yet. */
// 1374 		if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
// 1375 		{
// 1376 			if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
// 1377 			{
// 1378 				traceBLOCKING_ON_QUEUE_RECEIVE( pxQueue );
// 1379 
// 1380 				#if ( configUSE_MUTEXES == 1 )
// 1381 				{
// 1382 					if( pxQueue->uxQueueType == queueQUEUE_IS_MUTEX )
// 1383 					{
// 1384 						taskENTER_CRITICAL();
// 1385 						{
// 1386 							vTaskPriorityInherit( ( void * ) pxQueue->pxMutexHolder );
// 1387 						}
// 1388 						taskEXIT_CRITICAL();
// 1389 					}
// 1390 					else
// 1391 					{
// 1392 						mtCOVERAGE_TEST_MARKER();
// 1393 					}
// 1394 				}
// 1395 				#endif
// 1396 
// 1397 				vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait );
// 1398 				prvUnlockQueue( pxQueue );
// 1399 				if( xTaskResumeAll() == pdFALSE )
// 1400 				{
// 1401 					portYIELD_WITHIN_API();
// 1402 				}
// 1403 				else
// 1404 				{
// 1405 					mtCOVERAGE_TEST_MARKER();
// 1406 				}
// 1407 			}
// 1408 			else
// 1409 			{
// 1410 				/* Try again. */
// 1411 				prvUnlockQueue( pxQueue );
??xQueueGenericReceive_6:
        MOV      R0,R8
          CFI FunCall prvUnlockQueue
        BL       prvUnlockQueue
// 1412 				( void ) xTaskResumeAll();
          CFI FunCall xTaskResumeAll
        BL       xTaskResumeAll
// 1413 			}
??xQueueGenericReceive_5:
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
        LDR      R5,[R8, #+56]
        CMP      R5,#+0
        BNE.N    ??xQueueGenericReceive_7
??xQueueGenericReceive_8:
        LDR      R0,[SP, #+12]
        CMP      R0,#+0
        BNE.N    ??xQueueGenericReceive_9
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
        MOVS     R0,#+0
        B.N      ??xQueueGenericReceive_10
??xQueueGenericReceive_7:
        LDR      R4,[R8, #+12]
        MOVS     R1,R6
        MOV      R0,R8
          CFI FunCall prvCopyDataFromQueue
        BL       prvCopyDataFromQueue
        CMP      R7,#+0
        BNE.N    ??xQueueGenericReceive_11
        SUBS     R5,R5,#+1
        STR      R5,[R8, #+56]
        LDR      R0,[R8, #+0]
        CMP      R0,#+0
        BNE.N    ??xQueueGenericReceive_12
          CFI FunCall pvTaskIncrementMutexHeldCount
        BL       pvTaskIncrementMutexHeldCount
        STR      R0,[R8, #+4]
??xQueueGenericReceive_12:
        LDR      R0,[R8, #+16]
        CMP      R0,#+0
        BEQ.N    ??xQueueGenericReceive_13
        ADDS     R0,R8,#+16
          CFI FunCall xTaskRemoveFromEventList
        BL       xTaskRemoveFromEventList
        CMP      R0,#+0
        BEQ.N    ??xQueueGenericReceive_13
        MOVS     R0,#+268435456
        LDR.W    R1,??DataTable5  ;; 0xe000ed04
        STR      R0,[R1, #+0]
        DSB      SY
        ISB      SY
        B.N      ??xQueueGenericReceive_13
??xQueueGenericReceive_11:
        STR      R4,[R8, #+12]
        LDR      R0,[R8, #+36]
        CMP      R0,#+0
        BEQ.N    ??xQueueGenericReceive_13
        ADDS     R0,R8,#+36
          CFI FunCall xTaskRemoveFromEventList
        BL       xTaskRemoveFromEventList
        CMP      R0,#+0
        BEQ.N    ??xQueueGenericReceive_13
        MOVS     R0,#+268435456
        LDR.W    R1,??DataTable5  ;; 0xe000ed04
        STR      R0,[R1, #+0]
        DSB      SY
        ISB      SY
??xQueueGenericReceive_13:
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
        MOVS     R0,#+1
        B.N      ??xQueueGenericReceive_10
??xQueueGenericReceive_9:
        CMP      R4,#+0
        BNE.N    ??xQueueGenericReceive_14
        MOV      R0,SP
          CFI FunCall vTaskSetTimeOutState
        BL       vTaskSetTimeOutState
        MOVS     R4,#+1
??xQueueGenericReceive_14:
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
          CFI FunCall vTaskSuspendAll
        BL       vTaskSuspendAll
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
        LDRSB    R0,[R8, #+68]
        CMN      R0,#+1
        BNE.N    ??xQueueGenericReceive_15
        MOVS     R0,#+0
        STRB     R0,[R8, #+68]
??xQueueGenericReceive_15:
        LDRSB    R0,[R8, #+69]
        CMN      R0,#+1
        BNE.N    ??xQueueGenericReceive_16
        MOVS     R0,#+0
        STRB     R0,[R8, #+69]
??xQueueGenericReceive_16:
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
        ADD      R1,SP,#+12
        MOV      R0,SP
          CFI FunCall xTaskCheckForTimeOut
        BL       xTaskCheckForTimeOut
        CMP      R0,#+0
        BNE.N    ??xQueueGenericReceive_17
        MOV      R0,R8
          CFI FunCall prvIsQueueEmpty
        BL       prvIsQueueEmpty
        CMP      R0,#+0
        BEQ.N    ??xQueueGenericReceive_6
        LDR      R0,[R8, #+0]
        CMP      R0,#+0
        BNE.N    ??xQueueGenericReceive_18
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
        LDR      R0,[R8, #+4]
          CFI FunCall vTaskPriorityInherit
        BL       vTaskPriorityInherit
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
??xQueueGenericReceive_18:
        LDR      R1,[SP, #+12]
        ADDS     R0,R8,#+36
          CFI FunCall vTaskPlaceOnEventList
        BL       vTaskPlaceOnEventList
        MOV      R0,R8
          CFI FunCall prvUnlockQueue
        BL       prvUnlockQueue
          CFI FunCall xTaskResumeAll
        BL       xTaskResumeAll
        CMP      R0,#+0
        BNE.W    ??xQueueGenericReceive_5
        MOVS     R0,#+268435456
        LDR.N    R1,??DataTable5  ;; 0xe000ed04
        STR      R0,[R1, #+0]
        DSB      SY
        ISB      SY
        B.N      ??xQueueGenericReceive_5
// 1414 		}
// 1415 		else
// 1416 		{
// 1417 			prvUnlockQueue( pxQueue );
??xQueueGenericReceive_17:
        MOV      R0,R8
          CFI FunCall prvUnlockQueue
        BL       prvUnlockQueue
// 1418 			( void ) xTaskResumeAll();
          CFI FunCall xTaskResumeAll
        BL       xTaskResumeAll
// 1419 
// 1420 			if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
        MOV      R0,R8
          CFI FunCall prvIsQueueEmpty
        BL       prvIsQueueEmpty
        CMP      R0,#+0
        BEQ.W    ??xQueueGenericReceive_5
// 1421 			{
// 1422 				traceQUEUE_RECEIVE_FAILED( pxQueue );
// 1423 				return errQUEUE_EMPTY;
        MOVS     R0,#+0
??xQueueGenericReceive_10:
        ADD      SP,SP,#+16
          CFI CFA R13+24
        POP      {R4-R8,PC}       ;; return
// 1424 			}
// 1425 			else
// 1426 			{
// 1427 				mtCOVERAGE_TEST_MARKER();
// 1428 			}
// 1429 		}
// 1430 	}
// 1431 }
          CFI EndBlock cfiBlock8
// 1432 /*-----------------------------------------------------------*/
// 1433 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function xQueueReceiveFromISR
        THUMB
// 1434 BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue, void * const pvBuffer, BaseType_t * const pxHigherPriorityTaskWoken )
// 1435 {
xQueueReceiveFromISR:
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
        MOVS     R5,R1
        MOVS     R4,R2
// 1436 BaseType_t xReturn;
// 1437 UBaseType_t uxSavedInterruptStatus;
// 1438 Queue_t * const pxQueue = ( Queue_t * ) xQueue;
// 1439 
// 1440 	configASSERT( pxQueue );
// 1441 	configASSERT( !( ( pvBuffer == NULL ) && ( pxQueue->uxItemSize != ( UBaseType_t ) 0U ) ) );
        CMP      R5,#+0
        BNE.N    ??xQueueReceiveFromISR_0
        LDR      R0,[R7, #+64]
        CMP      R0,#+0
        BNE.N    ??xQueueReceiveFromISR_1
??xQueueReceiveFromISR_0:
        MOVS     R0,#+1
        B.N      ??xQueueReceiveFromISR_2
??xQueueReceiveFromISR_1:
        MOVS     R0,#+0
// 1442 
// 1443 	/* RTOS ports that support interrupt nesting have the concept of a maximum
// 1444 	system call (or maximum API call) interrupt priority.  Interrupts that are
// 1445 	above the maximum system call priority are kept permanently enabled, even
// 1446 	when the RTOS kernel is in a critical section, but cannot make any calls to
// 1447 	FreeRTOS API functions.  If configASSERT() is defined in FreeRTOSConfig.h
// 1448 	then portASSERT_IF_INTERRUPT_PRIORITY_INVALID() will result in an assertion
// 1449 	failure if a FreeRTOS API function is called from an interrupt that has been
// 1450 	assigned a priority above the configured maximum system call priority.
// 1451 	Only FreeRTOS functions that end in FromISR can be called from interrupts
// 1452 	that have been assigned a priority at or (logically) below the maximum
// 1453 	system call	interrupt priority.  FreeRTOS maintains a separate interrupt
// 1454 	safe API to ensure interrupt entry is as fast and as simple as possible.
// 1455 	More information (albeit Cortex-M specific) is provided on the following
// 1456 	link: http://www.freertos.org/RTOS-Cortex-M3-M4.html */
// 1457 	portASSERT_IF_INTERRUPT_PRIORITY_INVALID();
??xQueueReceiveFromISR_2:
          CFI FunCall vPortValidateInterruptPriority
        BL       vPortValidateInterruptPriority
// 1458 
// 1459 	uxSavedInterruptStatus = portSET_INTERRUPT_MASK_FROM_ISR();
        MRS      R8,BASEPRI
        MOVS     R0,#+80
        MSR      BASEPRI,R0
        DSB      SY
        ISB      SY
// 1460 	{
// 1461 		const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
        LDR      R6,[R7, #+56]
// 1462 
// 1463 		/* Cannot block in an ISR, so check there is data available. */
// 1464 		if( uxMessagesWaiting > ( UBaseType_t ) 0 )
        CMP      R6,#+0
        BEQ.N    ??xQueueReceiveFromISR_3
// 1465 		{
// 1466 			const int8_t cRxLock = pxQueue->cRxLock;
        LDRSB    R9,[R7, #+68]
// 1467 
// 1468 			traceQUEUE_RECEIVE_FROM_ISR( pxQueue );
// 1469 
// 1470 			prvCopyDataFromQueue( pxQueue, pvBuffer );
        MOVS     R1,R5
        MOVS     R0,R7
          CFI FunCall prvCopyDataFromQueue
        BL       prvCopyDataFromQueue
// 1471 			pxQueue->uxMessagesWaiting = uxMessagesWaiting - 1;
        SUBS     R6,R6,#+1
        STR      R6,[R7, #+56]
// 1472 
// 1473 			/* If the queue is locked the event list will not be modified.
// 1474 			Instead update the lock count so the task that unlocks the queue
// 1475 			will know that an ISR has removed data while the queue was
// 1476 			locked. */
// 1477 			if( cRxLock == queueUNLOCKED )
        MOV      R0,R9
        MOVS     R1,#-1
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,R1
        BNE.N    ??xQueueReceiveFromISR_4
// 1478 			{
// 1479 				if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
        LDR      R0,[R7, #+16]
        CMP      R0,#+0
        BEQ.N    ??xQueueReceiveFromISR_5
// 1480 				{
// 1481 					if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
        ADDS     R0,R7,#+16
          CFI FunCall xTaskRemoveFromEventList
        BL       xTaskRemoveFromEventList
        CMP      R0,#+0
        BEQ.N    ??xQueueReceiveFromISR_5
// 1482 					{
// 1483 						/* The task waiting has a higher priority than us so
// 1484 						force a context switch. */
// 1485 						if( pxHigherPriorityTaskWoken != NULL )
        CMP      R4,#+0
        BEQ.N    ??xQueueReceiveFromISR_5
// 1486 						{
// 1487 							*pxHigherPriorityTaskWoken = pdTRUE;
        MOVS     R0,#+1
        STR      R0,[R4, #+0]
        B.N      ??xQueueReceiveFromISR_5
// 1488 						}
// 1489 						else
// 1490 						{
// 1491 							mtCOVERAGE_TEST_MARKER();
// 1492 						}
// 1493 					}
// 1494 					else
// 1495 					{
// 1496 						mtCOVERAGE_TEST_MARKER();
// 1497 					}
// 1498 				}
// 1499 				else
// 1500 				{
// 1501 					mtCOVERAGE_TEST_MARKER();
// 1502 				}
// 1503 			}
// 1504 			else
// 1505 			{
// 1506 				/* Increment the lock count so the task that unlocks the queue
// 1507 				knows that data was removed while it was locked. */
// 1508 				pxQueue->cRxLock = ( int8_t ) ( cRxLock + 1 );
??xQueueReceiveFromISR_4:
        ADDS     R9,R9,#+1
        STRB     R9,[R7, #+68]
// 1509 			}
// 1510 
// 1511 			xReturn = pdPASS;
??xQueueReceiveFromISR_5:
        MOVS     R0,#+1
        B.N      ??xQueueReceiveFromISR_6
// 1512 		}
// 1513 		else
// 1514 		{
// 1515 			xReturn = pdFAIL;
??xQueueReceiveFromISR_3:
        MOVS     R0,#+0
// 1516 			traceQUEUE_RECEIVE_FROM_ISR_FAILED( pxQueue );
// 1517 		}
// 1518 	}
// 1519 	portCLEAR_INTERRUPT_MASK_FROM_ISR( uxSavedInterruptStatus );
??xQueueReceiveFromISR_6:
        MSR      BASEPRI,R8
// 1520 
// 1521 	return xReturn;
        POP      {R1,R4-R9,PC}    ;; return
// 1522 }
          CFI EndBlock cfiBlock9
// 1523 /*-----------------------------------------------------------*/
// 1524 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function xQueuePeekFromISR
        THUMB
// 1525 BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue,  void * const pvBuffer )
// 1526 {
xQueuePeekFromISR:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R5,R0
        MOVS     R4,R1
// 1527 BaseType_t xReturn;
// 1528 UBaseType_t uxSavedInterruptStatus;
// 1529 int8_t *pcOriginalReadPosition;
// 1530 Queue_t * const pxQueue = ( Queue_t * ) xQueue;
// 1531 
// 1532 	configASSERT( pxQueue );
// 1533 	configASSERT( !( ( pvBuffer == NULL ) && ( pxQueue->uxItemSize != ( UBaseType_t ) 0U ) ) );
        CMP      R4,#+0
        BNE.N    ??xQueuePeekFromISR_0
        LDR      R0,[R5, #+64]
        CMP      R0,#+0
        BNE.N    ??xQueuePeekFromISR_1
??xQueuePeekFromISR_0:
        MOVS     R0,#+1
        B.N      ??xQueuePeekFromISR_2
??xQueuePeekFromISR_1:
        MOVS     R0,#+0
// 1534 	configASSERT( pxQueue->uxItemSize != 0 ); /* Can't peek a semaphore. */
// 1535 
// 1536 	/* RTOS ports that support interrupt nesting have the concept of a maximum
// 1537 	system call (or maximum API call) interrupt priority.  Interrupts that are
// 1538 	above the maximum system call priority are kept permanently enabled, even
// 1539 	when the RTOS kernel is in a critical section, but cannot make any calls to
// 1540 	FreeRTOS API functions.  If configASSERT() is defined in FreeRTOSConfig.h
// 1541 	then portASSERT_IF_INTERRUPT_PRIORITY_INVALID() will result in an assertion
// 1542 	failure if a FreeRTOS API function is called from an interrupt that has been
// 1543 	assigned a priority above the configured maximum system call priority.
// 1544 	Only FreeRTOS functions that end in FromISR can be called from interrupts
// 1545 	that have been assigned a priority at or (logically) below the maximum
// 1546 	system call	interrupt priority.  FreeRTOS maintains a separate interrupt
// 1547 	safe API to ensure interrupt entry is as fast and as simple as possible.
// 1548 	More information (albeit Cortex-M specific) is provided on the following
// 1549 	link: http://www.freertos.org/RTOS-Cortex-M3-M4.html */
// 1550 	portASSERT_IF_INTERRUPT_PRIORITY_INVALID();
??xQueuePeekFromISR_2:
          CFI FunCall vPortValidateInterruptPriority
        BL       vPortValidateInterruptPriority
// 1551 
// 1552 	uxSavedInterruptStatus = portSET_INTERRUPT_MASK_FROM_ISR();
        MRS      R6,BASEPRI
        MOVS     R0,#+80
        MSR      BASEPRI,R0
        DSB      SY
        ISB      SY
// 1553 	{
// 1554 		/* Cannot block in an ISR, so check there is data available. */
// 1555 		if( pxQueue->uxMessagesWaiting > ( UBaseType_t ) 0 )
        LDR      R0,[R5, #+56]
        CMP      R0,#+0
        BEQ.N    ??xQueuePeekFromISR_3
// 1556 		{
// 1557 			traceQUEUE_PEEK_FROM_ISR( pxQueue );
// 1558 
// 1559 			/* Remember the read position so it can be reset as nothing is
// 1560 			actually being removed from the queue. */
// 1561 			pcOriginalReadPosition = pxQueue->u.pcReadFrom;
        LDR      R7,[R5, #+12]
// 1562 			prvCopyDataFromQueue( pxQueue, pvBuffer );
        MOVS     R1,R4
        MOVS     R0,R5
          CFI FunCall prvCopyDataFromQueue
        BL       prvCopyDataFromQueue
// 1563 			pxQueue->u.pcReadFrom = pcOriginalReadPosition;
        STR      R7,[R5, #+12]
// 1564 
// 1565 			xReturn = pdPASS;
        MOVS     R0,#+1
        B.N      ??xQueuePeekFromISR_4
// 1566 		}
// 1567 		else
// 1568 		{
// 1569 			xReturn = pdFAIL;
??xQueuePeekFromISR_3:
        MOVS     R0,#+0
// 1570 			traceQUEUE_PEEK_FROM_ISR_FAILED( pxQueue );
// 1571 		}
// 1572 	}
// 1573 	portCLEAR_INTERRUPT_MASK_FROM_ISR( uxSavedInterruptStatus );
??xQueuePeekFromISR_4:
        MSR      BASEPRI,R6
// 1574 
// 1575 	return xReturn;
        POP      {R1,R4-R7,PC}    ;; return
// 1576 }
          CFI EndBlock cfiBlock10
// 1577 /*-----------------------------------------------------------*/
// 1578 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function uxQueueMessagesWaiting
        THUMB
// 1579 UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue )
// 1580 {
uxQueueMessagesWaiting:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
// 1581 UBaseType_t uxReturn;
// 1582 
// 1583 	configASSERT( xQueue );
// 1584 
// 1585 	taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
// 1586 	{
// 1587 		uxReturn = ( ( Queue_t * ) xQueue )->uxMessagesWaiting;
        LDR      R4,[R4, #+56]
// 1588 	}
// 1589 	taskEXIT_CRITICAL();
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
// 1590 
// 1591 	return uxReturn;
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
// 1592 } /*lint !e818 Pointer cannot be declared const as xQueue is a typedef not pointer. */
          CFI EndBlock cfiBlock11
// 1593 /*-----------------------------------------------------------*/
// 1594 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function uxQueueSpacesAvailable
        THUMB
// 1595 UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue )
// 1596 {
uxQueueSpacesAvailable:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
// 1597 UBaseType_t uxReturn;
// 1598 Queue_t *pxQueue;
// 1599 
// 1600 	pxQueue = ( Queue_t * ) xQueue;
// 1601 	configASSERT( pxQueue );
// 1602 
// 1603 	taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
// 1604 	{
// 1605 		uxReturn = pxQueue->uxLength - pxQueue->uxMessagesWaiting;
        LDR      R0,[R4, #+60]
        LDR      R4,[R4, #+56]
        SUBS     R4,R0,R4
// 1606 	}
// 1607 	taskEXIT_CRITICAL();
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
// 1608 
// 1609 	return uxReturn;
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
// 1610 } /*lint !e818 Pointer cannot be declared const as xQueue is a typedef not pointer. */
          CFI EndBlock cfiBlock12
// 1611 /*-----------------------------------------------------------*/
// 1612 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function uxQueueMessagesWaitingFromISR
          CFI NoCalls
        THUMB
// 1613 UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue )
// 1614 {
// 1615 UBaseType_t uxReturn;
// 1616 
// 1617 	configASSERT( xQueue );
// 1618 
// 1619 	uxReturn = ( ( Queue_t * ) xQueue )->uxMessagesWaiting;
uxQueueMessagesWaitingFromISR:
        LDR      R0,[R0, #+56]
// 1620 
// 1621 	return uxReturn;
        BX       LR               ;; return
// 1622 } /*lint !e818 Pointer cannot be declared const as xQueue is a typedef not pointer. */
          CFI EndBlock cfiBlock13
// 1623 /*-----------------------------------------------------------*/
// 1624 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function vQueueDelete
        THUMB
// 1625 void vQueueDelete( QueueHandle_t xQueue )
// 1626 {
vQueueDelete:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 1627 Queue_t * const pxQueue = ( Queue_t * ) xQueue;
// 1628 
// 1629 	configASSERT( pxQueue );
// 1630 	traceQUEUE_DELETE( pxQueue );
// 1631 
// 1632 	#if ( configQUEUE_REGISTRY_SIZE > 0 )
// 1633 	{
// 1634 		vQueueUnregisterQueue( pxQueue );
          CFI FunCall vQueueUnregisterQueue
        BL       vQueueUnregisterQueue
// 1635 	}
// 1636 	#endif
// 1637 
// 1638 	#if( ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) && ( configSUPPORT_STATIC_ALLOCATION == 0 ) )
// 1639 	{
// 1640 		/* The queue can only have been allocated dynamically - free it
// 1641 		again. */
// 1642 		vPortFree( pxQueue );
// 1643 	}
// 1644 	#elif( ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) && ( configSUPPORT_STATIC_ALLOCATION == 1 ) )
// 1645 	{
// 1646 		/* The queue could have been allocated statically or dynamically, so
// 1647 		check before attempting to free the memory. */
// 1648 		if( pxQueue->ucStaticallyAllocated == ( uint8_t ) pdFALSE )
// 1649 		{
// 1650 			vPortFree( pxQueue );
// 1651 		}
// 1652 		else
// 1653 		{
// 1654 			mtCOVERAGE_TEST_MARKER();
// 1655 		}
// 1656 	}
// 1657 	#else
// 1658 	{
// 1659 		/* The queue must have been statically allocated, so is not going to be
// 1660 		deleted.  Avoid compiler warnings about the unused parameter. */
// 1661 		( void ) pxQueue;
// 1662 	}
// 1663 	#endif /* configSUPPORT_DYNAMIC_ALLOCATION */
// 1664 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock14
// 1665 /*-----------------------------------------------------------*/
// 1666 
// 1667 #if ( configUSE_TRACE_FACILITY == 1 )
// 1668 
// 1669 	UBaseType_t uxQueueGetQueueNumber( QueueHandle_t xQueue )
// 1670 	{
// 1671 		return ( ( Queue_t * ) xQueue )->uxQueueNumber;
// 1672 	}
// 1673 
// 1674 #endif /* configUSE_TRACE_FACILITY */
// 1675 /*-----------------------------------------------------------*/
// 1676 
// 1677 #if ( configUSE_TRACE_FACILITY == 1 )
// 1678 
// 1679 	void vQueueSetQueueNumber( QueueHandle_t xQueue, UBaseType_t uxQueueNumber )
// 1680 	{
// 1681 		( ( Queue_t * ) xQueue )->uxQueueNumber = uxQueueNumber;
// 1682 	}
// 1683 
// 1684 #endif /* configUSE_TRACE_FACILITY */
// 1685 /*-----------------------------------------------------------*/
// 1686 
// 1687 #if ( configUSE_TRACE_FACILITY == 1 )
// 1688 
// 1689 	uint8_t ucQueueGetQueueType( QueueHandle_t xQueue )
// 1690 	{
// 1691 		return ( ( Queue_t * ) xQueue )->ucQueueType;
// 1692 	}
// 1693 
// 1694 #endif /* configUSE_TRACE_FACILITY */
// 1695 /*-----------------------------------------------------------*/
// 1696 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function prvCopyDataToQueue
        THUMB
// 1697 static BaseType_t prvCopyDataToQueue( Queue_t * const pxQueue, const void *pvItemToQueue, const BaseType_t xPosition )
// 1698 {
prvCopyDataToQueue:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOVS     R6,R0
        MOVS     R5,R2
// 1699 BaseType_t xReturn = pdFALSE;
        MOVS     R7,#+0
// 1700 UBaseType_t uxMessagesWaiting;
// 1701 
// 1702 	/* This function is called from a critical section. */
// 1703 
// 1704 	uxMessagesWaiting = pxQueue->uxMessagesWaiting;
        LDR      R4,[R6, #+56]
// 1705 
// 1706 	if( pxQueue->uxItemSize == ( UBaseType_t ) 0 )
        LDR      R0,[R6, #+64]
        CMP      R0,#+0
        BNE.N    ??prvCopyDataToQueue_0
// 1707 	{
// 1708 		#if ( configUSE_MUTEXES == 1 )
// 1709 		{
// 1710 			if( pxQueue->uxQueueType == queueQUEUE_IS_MUTEX )
        LDR      R0,[R6, #+0]
        CMP      R0,#+0
        BNE.N    ??prvCopyDataToQueue_1
// 1711 			{
// 1712 				/* The mutex is no longer being held. */
// 1713 				xReturn = xTaskPriorityDisinherit( ( void * ) pxQueue->pxMutexHolder );
        LDR      R0,[R6, #+4]
          CFI FunCall xTaskPriorityDisinherit
        BL       xTaskPriorityDisinherit
        MOVS     R7,R0
// 1714 				pxQueue->pxMutexHolder = NULL;
        MOVS     R0,#+0
        STR      R0,[R6, #+4]
        B.N      ??prvCopyDataToQueue_1
// 1715 			}
// 1716 			else
// 1717 			{
// 1718 				mtCOVERAGE_TEST_MARKER();
// 1719 			}
// 1720 		}
// 1721 		#endif /* configUSE_MUTEXES */
// 1722 	}
// 1723 	else if( xPosition == queueSEND_TO_BACK )
??prvCopyDataToQueue_0:
        CMP      R5,#+0
        BNE.N    ??prvCopyDataToQueue_2
// 1724 	{
// 1725 		( void ) memcpy( ( void * ) pxQueue->pcWriteTo, pvItemToQueue, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 !e418 MISRA exception as the casts are only redundant for some ports, plus previous logic ensures a null pointer can only be passed to memcpy() if the copy size is 0. */
        LDR      R2,[R6, #+64]
        LDR      R5,[R6, #+8]
        MOVS     R0,R5
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
// 1726 		pxQueue->pcWriteTo += pxQueue->uxItemSize;
        LDR      R0,[R6, #+8]
        LDR      R1,[R6, #+64]
        ADD      R0,R0,R1
        STR      R0,[R6, #+8]
// 1727 		if( pxQueue->pcWriteTo >= pxQueue->pcTail ) /*lint !e946 MISRA exception justified as comparison of pointers is the cleanest solution. */
        LDR      R0,[R6, #+8]
        LDR      R1,[R6, #+4]
        CMP      R0,R1
        BCC.N    ??prvCopyDataToQueue_1
// 1728 		{
// 1729 			pxQueue->pcWriteTo = pxQueue->pcHead;
        LDR      R0,[R6, #+0]
        STR      R0,[R6, #+8]
        B.N      ??prvCopyDataToQueue_1
// 1730 		}
// 1731 		else
// 1732 		{
// 1733 			mtCOVERAGE_TEST_MARKER();
// 1734 		}
// 1735 	}
// 1736 	else
// 1737 	{
// 1738 		( void ) memcpy( ( void * ) pxQueue->u.pcReadFrom, pvItemToQueue, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
??prvCopyDataToQueue_2:
        LDR      R2,[R6, #+64]
        LDR      R8,[R6, #+12]
        MOV      R0,R8
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
// 1739 		pxQueue->u.pcReadFrom -= pxQueue->uxItemSize;
        LDR      R0,[R6, #+12]
        LDR      R1,[R6, #+64]
        RSBS     R1,R1,#+0
        ADD      R0,R0,R1
        STR      R0,[R6, #+12]
// 1740 		if( pxQueue->u.pcReadFrom < pxQueue->pcHead ) /*lint !e946 MISRA exception justified as comparison of pointers is the cleanest solution. */
        LDR      R0,[R6, #+12]
        LDR      R1,[R6, #+0]
        CMP      R0,R1
        BCS.N    ??prvCopyDataToQueue_3
// 1741 		{
// 1742 			pxQueue->u.pcReadFrom = ( pxQueue->pcTail - pxQueue->uxItemSize );
        LDR      R0,[R6, #+4]
        LDR      R1,[R6, #+64]
        RSBS     R1,R1,#+0
        ADD      R0,R0,R1
        STR      R0,[R6, #+12]
// 1743 		}
// 1744 		else
// 1745 		{
// 1746 			mtCOVERAGE_TEST_MARKER();
// 1747 		}
// 1748 
// 1749 		if( xPosition == queueOVERWRITE )
??prvCopyDataToQueue_3:
        CMP      R5,#+2
        BNE.N    ??prvCopyDataToQueue_1
// 1750 		{
// 1751 			if( uxMessagesWaiting > ( UBaseType_t ) 0 )
        CMP      R4,#+0
        BEQ.N    ??prvCopyDataToQueue_1
// 1752 			{
// 1753 				/* An item is not being added but overwritten, so subtract
// 1754 				one from the recorded number of items in the queue so when
// 1755 				one is added again below the number of recorded items remains
// 1756 				correct. */
// 1757 				--uxMessagesWaiting;
        SUBS     R4,R4,#+1
// 1758 			}
// 1759 			else
// 1760 			{
// 1761 				mtCOVERAGE_TEST_MARKER();
// 1762 			}
// 1763 		}
// 1764 		else
// 1765 		{
// 1766 			mtCOVERAGE_TEST_MARKER();
// 1767 		}
// 1768 	}
// 1769 
// 1770 	pxQueue->uxMessagesWaiting = uxMessagesWaiting + 1;
??prvCopyDataToQueue_1:
        ADDS     R4,R4,#+1
        STR      R4,[R6, #+56]
// 1771 
// 1772 	return xReturn;
        MOVS     R0,R7
        POP      {R4-R8,PC}       ;; return
// 1773 }
          CFI EndBlock cfiBlock15
// 1774 /*-----------------------------------------------------------*/
// 1775 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function prvCopyDataFromQueue
        THUMB
// 1776 static void prvCopyDataFromQueue( Queue_t * const pxQueue, void * const pvBuffer )
// 1777 {
prvCopyDataFromQueue:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R1
// 1778 	if( pxQueue->uxItemSize != ( UBaseType_t ) 0 )
        LDR      R1,[R0, #+64]
        CMP      R1,#+0
        BEQ.N    ??prvCopyDataFromQueue_0
// 1779 	{
// 1780 		pxQueue->u.pcReadFrom += pxQueue->uxItemSize;
        LDR      R1,[R0, #+12]
        LDR      R2,[R0, #+64]
        ADD      R1,R1,R2
        STR      R1,[R0, #+12]
// 1781 		if( pxQueue->u.pcReadFrom >= pxQueue->pcTail ) /*lint !e946 MISRA exception justified as use of the relational operator is the cleanest solutions. */
        LDR      R1,[R0, #+12]
        LDR      R2,[R0, #+4]
        CMP      R1,R2
        BCC.N    ??prvCopyDataFromQueue_1
// 1782 		{
// 1783 			pxQueue->u.pcReadFrom = pxQueue->pcHead;
        LDR      R1,[R0, #+0]
        STR      R1,[R0, #+12]
// 1784 		}
// 1785 		else
// 1786 		{
// 1787 			mtCOVERAGE_TEST_MARKER();
// 1788 		}
// 1789 		( void ) memcpy( ( void * ) pvBuffer, ( void * ) pxQueue->u.pcReadFrom, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 !e418 MISRA exception as the casts are only redundant for some ports.  Also previous logic ensures a null pointer can only be passed to memcpy() when the count is 0. */
??prvCopyDataFromQueue_1:
        LDR      R2,[R0, #+64]
        LDR      R1,[R0, #+12]
        MOVS     R0,R4
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
// 1790 	}
// 1791 }
??prvCopyDataFromQueue_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock16
// 1792 /*-----------------------------------------------------------*/
// 1793 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function prvUnlockQueue
        THUMB
// 1794 static void prvUnlockQueue( Queue_t * const pxQueue )
// 1795 {
prvUnlockQueue:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
// 1796 	/* THIS FUNCTION MUST BE CALLED WITH THE SCHEDULER SUSPENDED. */
// 1797 
// 1798 	/* The lock counts contains the number of extra data items placed or
// 1799 	removed from the queue while the queue was locked.  When a queue is
// 1800 	locked items can be added or removed, but the event lists cannot be
// 1801 	updated. */
// 1802 	taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
// 1803 	{
// 1804 		int8_t cTxLock = pxQueue->cTxLock;
        LDRSB    R5,[R4, #+69]
        B.N      ??prvUnlockQueue_0
// 1805 
// 1806 		/* See if data was added to the queue while it was locked. */
// 1807 		while( cTxLock > queueLOCKED_UNMODIFIED )
// 1808 		{
// 1809 			/* Data was posted while the queue was locked.  Are any tasks
// 1810 			blocked waiting for data to become available? */
// 1811 			#if ( configUSE_QUEUE_SETS == 1 )
// 1812 			{
// 1813 				if( pxQueue->pxQueueSetContainer != NULL )
// 1814 				{
// 1815 					if( prvNotifyQueueSetContainer( pxQueue, queueSEND_TO_BACK ) != pdFALSE )
// 1816 					{
// 1817 						/* The queue is a member of a queue set, and posting to
// 1818 						the queue set caused a higher priority task to unblock.
// 1819 						A context switch is required. */
// 1820 						vTaskMissedYield();
// 1821 					}
// 1822 					else
// 1823 					{
// 1824 						mtCOVERAGE_TEST_MARKER();
// 1825 					}
// 1826 				}
// 1827 				else
// 1828 				{
// 1829 					/* Tasks that are removed from the event list will get
// 1830 					added to the pending ready list as the scheduler is still
// 1831 					suspended. */
// 1832 					if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
// 1833 					{
// 1834 						if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
// 1835 						{
// 1836 							/* The task waiting has a higher priority so record that a
// 1837 							context	switch is required. */
// 1838 							vTaskMissedYield();
// 1839 						}
// 1840 						else
// 1841 						{
// 1842 							mtCOVERAGE_TEST_MARKER();
// 1843 						}
// 1844 					}
// 1845 					else
// 1846 					{
// 1847 						break;
// 1848 					}
// 1849 				}
// 1850 			}
// 1851 			#else /* configUSE_QUEUE_SETS */
// 1852 			{
// 1853 				/* Tasks that are removed from the event list will get added to
// 1854 				the pending ready list as the scheduler is still suspended. */
// 1855 				if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
// 1856 				{
// 1857 					if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
??prvUnlockQueue_1:
        ADDS     R0,R4,#+36
          CFI FunCall xTaskRemoveFromEventList
        BL       xTaskRemoveFromEventList
        CMP      R0,#+0
        BEQ.N    ??prvUnlockQueue_2
// 1858 					{
// 1859 						/* The task waiting has a higher priority so record that
// 1860 						a context switch is required. */
// 1861 						vTaskMissedYield();
          CFI FunCall vTaskMissedYield
        BL       vTaskMissedYield
// 1862 					}
// 1863 					else
// 1864 					{
// 1865 						mtCOVERAGE_TEST_MARKER();
// 1866 					}
// 1867 				}
// 1868 				else
// 1869 				{
// 1870 					break;
// 1871 				}
// 1872 			}
// 1873 			#endif /* configUSE_QUEUE_SETS */
// 1874 
// 1875 			--cTxLock;
??prvUnlockQueue_2:
        SUBS     R5,R5,#+1
??prvUnlockQueue_0:
        MOVS     R0,R5
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BLT.N    ??prvUnlockQueue_3
        LDR      R0,[R4, #+36]
        CMP      R0,#+0
        BNE.N    ??prvUnlockQueue_1
// 1876 		}
// 1877 
// 1878 		pxQueue->cTxLock = queueUNLOCKED;
??prvUnlockQueue_3:
        MOVS     R5,#-1
        STRB     R5,[R4, #+69]
// 1879 	}
// 1880 	taskEXIT_CRITICAL();
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
// 1881 
// 1882 	/* Do the same for the Rx lock. */
// 1883 	taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
// 1884 	{
// 1885 		int8_t cRxLock = pxQueue->cRxLock;
        LDRSB    R6,[R4, #+68]
        B.N      ??prvUnlockQueue_4
// 1886 
// 1887 		while( cRxLock > queueLOCKED_UNMODIFIED )
// 1888 		{
// 1889 			if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
// 1890 			{
// 1891 				if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
??prvUnlockQueue_5:
        ADDS     R0,R4,#+16
          CFI FunCall xTaskRemoveFromEventList
        BL       xTaskRemoveFromEventList
        CMP      R0,#+0
        BEQ.N    ??prvUnlockQueue_6
// 1892 				{
// 1893 					vTaskMissedYield();
          CFI FunCall vTaskMissedYield
        BL       vTaskMissedYield
// 1894 				}
// 1895 				else
// 1896 				{
// 1897 					mtCOVERAGE_TEST_MARKER();
// 1898 				}
// 1899 
// 1900 				--cRxLock;
??prvUnlockQueue_6:
        SUBS     R6,R6,#+1
// 1901 			}
??prvUnlockQueue_4:
        MOVS     R0,R6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BLT.N    ??prvUnlockQueue_7
        LDR      R0,[R4, #+16]
        CMP      R0,#+0
        BNE.N    ??prvUnlockQueue_5
// 1902 			else
// 1903 			{
// 1904 				break;
// 1905 			}
// 1906 		}
// 1907 
// 1908 		pxQueue->cRxLock = queueUNLOCKED;
??prvUnlockQueue_7:
        STRB     R5,[R4, #+68]
// 1909 	}
// 1910 	taskEXIT_CRITICAL();
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
// 1911 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock17
// 1912 /*-----------------------------------------------------------*/
// 1913 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function prvIsQueueEmpty
        THUMB
// 1914 static BaseType_t prvIsQueueEmpty( const Queue_t *pxQueue )
// 1915 {
prvIsQueueEmpty:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
// 1916 BaseType_t xReturn;
// 1917 
// 1918 	taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
// 1919 	{
// 1920 		if( pxQueue->uxMessagesWaiting == ( UBaseType_t )  0 )
        LDR      R0,[R4, #+56]
        CMP      R0,#+0
        BNE.N    ??prvIsQueueEmpty_0
// 1921 		{
// 1922 			xReturn = pdTRUE;
        MOVS     R4,#+1
        B.N      ??prvIsQueueEmpty_1
// 1923 		}
// 1924 		else
// 1925 		{
// 1926 			xReturn = pdFALSE;
??prvIsQueueEmpty_0:
        MOVS     R4,#+0
// 1927 		}
// 1928 	}
// 1929 	taskEXIT_CRITICAL();
??prvIsQueueEmpty_1:
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
// 1930 
// 1931 	return xReturn;
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
// 1932 }
          CFI EndBlock cfiBlock18
// 1933 /*-----------------------------------------------------------*/
// 1934 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function xQueueIsQueueEmptyFromISR
          CFI NoCalls
        THUMB
// 1935 BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue )
// 1936 {
// 1937 BaseType_t xReturn;
// 1938 
// 1939 	configASSERT( xQueue );
// 1940 	if( ( ( Queue_t * ) xQueue )->uxMessagesWaiting == ( UBaseType_t ) 0 )
xQueueIsQueueEmptyFromISR:
        LDR      R0,[R0, #+56]
        CMP      R0,#+0
        BNE.N    ??xQueueIsQueueEmptyFromISR_0
// 1941 	{
// 1942 		xReturn = pdTRUE;
        MOVS     R0,#+1
        B.N      ??xQueueIsQueueEmptyFromISR_1
// 1943 	}
// 1944 	else
// 1945 	{
// 1946 		xReturn = pdFALSE;
??xQueueIsQueueEmptyFromISR_0:
        MOVS     R0,#+0
// 1947 	}
// 1948 
// 1949 	return xReturn;
??xQueueIsQueueEmptyFromISR_1:
        BX       LR               ;; return
// 1950 } /*lint !e818 xQueue could not be pointer to const because it is a typedef. */
          CFI EndBlock cfiBlock19
// 1951 /*-----------------------------------------------------------*/
// 1952 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function prvIsQueueFull
        THUMB
// 1953 static BaseType_t prvIsQueueFull( const Queue_t *pxQueue )
// 1954 {
prvIsQueueFull:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
// 1955 BaseType_t xReturn;
// 1956 
// 1957 	taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
// 1958 	{
// 1959 		if( pxQueue->uxMessagesWaiting == pxQueue->uxLength )
        LDR      R0,[R4, #+56]
        LDR      R1,[R4, #+60]
        CMP      R0,R1
        BNE.N    ??prvIsQueueFull_0
// 1960 		{
// 1961 			xReturn = pdTRUE;
        MOVS     R4,#+1
        B.N      ??prvIsQueueFull_1
// 1962 		}
// 1963 		else
// 1964 		{
// 1965 			xReturn = pdFALSE;
??prvIsQueueFull_0:
        MOVS     R4,#+0
// 1966 		}
// 1967 	}
// 1968 	taskEXIT_CRITICAL();
??prvIsQueueFull_1:
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
// 1969 
// 1970 	return xReturn;
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
// 1971 }
          CFI EndBlock cfiBlock20
// 1972 /*-----------------------------------------------------------*/
// 1973 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function xQueueIsQueueFullFromISR
          CFI NoCalls
        THUMB
// 1974 BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue )
// 1975 {
// 1976 BaseType_t xReturn;
// 1977 
// 1978 	configASSERT( xQueue );
// 1979 	if( ( ( Queue_t * ) xQueue )->uxMessagesWaiting == ( ( Queue_t * ) xQueue )->uxLength )
xQueueIsQueueFullFromISR:
        LDR      R1,[R0, #+56]
        LDR      R0,[R0, #+60]
        CMP      R1,R0
        BNE.N    ??xQueueIsQueueFullFromISR_0
// 1980 	{
// 1981 		xReturn = pdTRUE;
        MOVS     R0,#+1
        B.N      ??xQueueIsQueueFullFromISR_1
// 1982 	}
// 1983 	else
// 1984 	{
// 1985 		xReturn = pdFALSE;
??xQueueIsQueueFullFromISR_0:
        MOVS     R0,#+0
// 1986 	}
// 1987 
// 1988 	return xReturn;
??xQueueIsQueueFullFromISR_1:
        BX       LR               ;; return
// 1989 } /*lint !e818 xQueue could not be pointer to const because it is a typedef. */
          CFI EndBlock cfiBlock21
// 1990 /*-----------------------------------------------------------*/
// 1991 
// 1992 #if ( configUSE_CO_ROUTINES == 1 )
// 1993 
// 1994 	BaseType_t xQueueCRSend( QueueHandle_t xQueue, const void *pvItemToQueue, TickType_t xTicksToWait )
// 1995 	{
// 1996 	BaseType_t xReturn;
// 1997 	Queue_t * const pxQueue = ( Queue_t * ) xQueue;
// 1998 
// 1999 		/* If the queue is already full we may have to block.  A critical section
// 2000 		is required to prevent an interrupt removing something from the queue
// 2001 		between the check to see if the queue is full and blocking on the queue. */
// 2002 		portDISABLE_INTERRUPTS();
// 2003 		{
// 2004 			if( prvIsQueueFull( pxQueue ) != pdFALSE )
// 2005 			{
// 2006 				/* The queue is full - do we want to block or just leave without
// 2007 				posting? */
// 2008 				if( xTicksToWait > ( TickType_t ) 0 )
// 2009 				{
// 2010 					/* As this is called from a coroutine we cannot block directly, but
// 2011 					return indicating that we need to block. */
// 2012 					vCoRoutineAddToDelayedList( xTicksToWait, &( pxQueue->xTasksWaitingToSend ) );
// 2013 					portENABLE_INTERRUPTS();
// 2014 					return errQUEUE_BLOCKED;
// 2015 				}
// 2016 				else
// 2017 				{
// 2018 					portENABLE_INTERRUPTS();
// 2019 					return errQUEUE_FULL;
// 2020 				}
// 2021 			}
// 2022 		}
// 2023 		portENABLE_INTERRUPTS();
// 2024 
// 2025 		portDISABLE_INTERRUPTS();
// 2026 		{
// 2027 			if( pxQueue->uxMessagesWaiting < pxQueue->uxLength )
// 2028 			{
// 2029 				/* There is room in the queue, copy the data into the queue. */
// 2030 				prvCopyDataToQueue( pxQueue, pvItemToQueue, queueSEND_TO_BACK );
// 2031 				xReturn = pdPASS;
// 2032 
// 2033 				/* Were any co-routines waiting for data to become available? */
// 2034 				if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
// 2035 				{
// 2036 					/* In this instance the co-routine could be placed directly
// 2037 					into the ready list as we are within a critical section.
// 2038 					Instead the same pending ready list mechanism is used as if
// 2039 					the event were caused from within an interrupt. */
// 2040 					if( xCoRoutineRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
// 2041 					{
// 2042 						/* The co-routine waiting has a higher priority so record
// 2043 						that a yield might be appropriate. */
// 2044 						xReturn = errQUEUE_YIELD;
// 2045 					}
// 2046 					else
// 2047 					{
// 2048 						mtCOVERAGE_TEST_MARKER();
// 2049 					}
// 2050 				}
// 2051 				else
// 2052 				{
// 2053 					mtCOVERAGE_TEST_MARKER();
// 2054 				}
// 2055 			}
// 2056 			else
// 2057 			{
// 2058 				xReturn = errQUEUE_FULL;
// 2059 			}
// 2060 		}
// 2061 		portENABLE_INTERRUPTS();
// 2062 
// 2063 		return xReturn;
// 2064 	}
// 2065 
// 2066 #endif /* configUSE_CO_ROUTINES */
// 2067 /*-----------------------------------------------------------*/
// 2068 
// 2069 #if ( configUSE_CO_ROUTINES == 1 )
// 2070 
// 2071 	BaseType_t xQueueCRReceive( QueueHandle_t xQueue, void *pvBuffer, TickType_t xTicksToWait )
// 2072 	{
// 2073 	BaseType_t xReturn;
// 2074 	Queue_t * const pxQueue = ( Queue_t * ) xQueue;
// 2075 
// 2076 		/* If the queue is already empty we may have to block.  A critical section
// 2077 		is required to prevent an interrupt adding something to the queue
// 2078 		between the check to see if the queue is empty and blocking on the queue. */
// 2079 		portDISABLE_INTERRUPTS();
// 2080 		{
// 2081 			if( pxQueue->uxMessagesWaiting == ( UBaseType_t ) 0 )
// 2082 			{
// 2083 				/* There are no messages in the queue, do we want to block or just
// 2084 				leave with nothing? */
// 2085 				if( xTicksToWait > ( TickType_t ) 0 )
// 2086 				{
// 2087 					/* As this is a co-routine we cannot block directly, but return
// 2088 					indicating that we need to block. */
// 2089 					vCoRoutineAddToDelayedList( xTicksToWait, &( pxQueue->xTasksWaitingToReceive ) );
// 2090 					portENABLE_INTERRUPTS();
// 2091 					return errQUEUE_BLOCKED;
// 2092 				}
// 2093 				else
// 2094 				{
// 2095 					portENABLE_INTERRUPTS();
// 2096 					return errQUEUE_FULL;
// 2097 				}
// 2098 			}
// 2099 			else
// 2100 			{
// 2101 				mtCOVERAGE_TEST_MARKER();
// 2102 			}
// 2103 		}
// 2104 		portENABLE_INTERRUPTS();
// 2105 
// 2106 		portDISABLE_INTERRUPTS();
// 2107 		{
// 2108 			if( pxQueue->uxMessagesWaiting > ( UBaseType_t ) 0 )
// 2109 			{
// 2110 				/* Data is available from the queue. */
// 2111 				pxQueue->u.pcReadFrom += pxQueue->uxItemSize;
// 2112 				if( pxQueue->u.pcReadFrom >= pxQueue->pcTail )
// 2113 				{
// 2114 					pxQueue->u.pcReadFrom = pxQueue->pcHead;
// 2115 				}
// 2116 				else
// 2117 				{
// 2118 					mtCOVERAGE_TEST_MARKER();
// 2119 				}
// 2120 				--( pxQueue->uxMessagesWaiting );
// 2121 				( void ) memcpy( ( void * ) pvBuffer, ( void * ) pxQueue->u.pcReadFrom, ( unsigned ) pxQueue->uxItemSize );
// 2122 
// 2123 				xReturn = pdPASS;
// 2124 
// 2125 				/* Were any co-routines waiting for space to become available? */
// 2126 				if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
// 2127 				{
// 2128 					/* In this instance the co-routine could be placed directly
// 2129 					into the ready list as we are within a critical section.
// 2130 					Instead the same pending ready list mechanism is used as if
// 2131 					the event were caused from within an interrupt. */
// 2132 					if( xCoRoutineRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
// 2133 					{
// 2134 						xReturn = errQUEUE_YIELD;
// 2135 					}
// 2136 					else
// 2137 					{
// 2138 						mtCOVERAGE_TEST_MARKER();
// 2139 					}
// 2140 				}
// 2141 				else
// 2142 				{
// 2143 					mtCOVERAGE_TEST_MARKER();
// 2144 				}
// 2145 			}
// 2146 			else
// 2147 			{
// 2148 				xReturn = pdFAIL;
// 2149 			}
// 2150 		}
// 2151 		portENABLE_INTERRUPTS();
// 2152 
// 2153 		return xReturn;
// 2154 	}
// 2155 
// 2156 #endif /* configUSE_CO_ROUTINES */
// 2157 /*-----------------------------------------------------------*/
// 2158 
// 2159 #if ( configUSE_CO_ROUTINES == 1 )
// 2160 
// 2161 	BaseType_t xQueueCRSendFromISR( QueueHandle_t xQueue, const void *pvItemToQueue, BaseType_t xCoRoutinePreviouslyWoken )
// 2162 	{
// 2163 	Queue_t * const pxQueue = ( Queue_t * ) xQueue;
// 2164 
// 2165 		/* Cannot block within an ISR so if there is no space on the queue then
// 2166 		exit without doing anything. */
// 2167 		if( pxQueue->uxMessagesWaiting < pxQueue->uxLength )
// 2168 		{
// 2169 			prvCopyDataToQueue( pxQueue, pvItemToQueue, queueSEND_TO_BACK );
// 2170 
// 2171 			/* We only want to wake one co-routine per ISR, so check that a
// 2172 			co-routine has not already been woken. */
// 2173 			if( xCoRoutinePreviouslyWoken == pdFALSE )
// 2174 			{
// 2175 				if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
// 2176 				{
// 2177 					if( xCoRoutineRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
// 2178 					{
// 2179 						return pdTRUE;
// 2180 					}
// 2181 					else
// 2182 					{
// 2183 						mtCOVERAGE_TEST_MARKER();
// 2184 					}
// 2185 				}
// 2186 				else
// 2187 				{
// 2188 					mtCOVERAGE_TEST_MARKER();
// 2189 				}
// 2190 			}
// 2191 			else
// 2192 			{
// 2193 				mtCOVERAGE_TEST_MARKER();
// 2194 			}
// 2195 		}
// 2196 		else
// 2197 		{
// 2198 			mtCOVERAGE_TEST_MARKER();
// 2199 		}
// 2200 
// 2201 		return xCoRoutinePreviouslyWoken;
// 2202 	}
// 2203 
// 2204 #endif /* configUSE_CO_ROUTINES */
// 2205 /*-----------------------------------------------------------*/
// 2206 
// 2207 #if ( configUSE_CO_ROUTINES == 1 )
// 2208 
// 2209 	BaseType_t xQueueCRReceiveFromISR( QueueHandle_t xQueue, void *pvBuffer, BaseType_t *pxCoRoutineWoken )
// 2210 	{
// 2211 	BaseType_t xReturn;
// 2212 	Queue_t * const pxQueue = ( Queue_t * ) xQueue;
// 2213 
// 2214 		/* We cannot block from an ISR, so check there is data available. If
// 2215 		not then just leave without doing anything. */
// 2216 		if( pxQueue->uxMessagesWaiting > ( UBaseType_t ) 0 )
// 2217 		{
// 2218 			/* Copy the data from the queue. */
// 2219 			pxQueue->u.pcReadFrom += pxQueue->uxItemSize;
// 2220 			if( pxQueue->u.pcReadFrom >= pxQueue->pcTail )
// 2221 			{
// 2222 				pxQueue->u.pcReadFrom = pxQueue->pcHead;
// 2223 			}
// 2224 			else
// 2225 			{
// 2226 				mtCOVERAGE_TEST_MARKER();
// 2227 			}
// 2228 			--( pxQueue->uxMessagesWaiting );
// 2229 			( void ) memcpy( ( void * ) pvBuffer, ( void * ) pxQueue->u.pcReadFrom, ( unsigned ) pxQueue->uxItemSize );
// 2230 
// 2231 			if( ( *pxCoRoutineWoken ) == pdFALSE )
// 2232 			{
// 2233 				if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
// 2234 				{
// 2235 					if( xCoRoutineRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
// 2236 					{
// 2237 						*pxCoRoutineWoken = pdTRUE;
// 2238 					}
// 2239 					else
// 2240 					{
// 2241 						mtCOVERAGE_TEST_MARKER();
// 2242 					}
// 2243 				}
// 2244 				else
// 2245 				{
// 2246 					mtCOVERAGE_TEST_MARKER();
// 2247 				}
// 2248 			}
// 2249 			else
// 2250 			{
// 2251 				mtCOVERAGE_TEST_MARKER();
// 2252 			}
// 2253 
// 2254 			xReturn = pdPASS;
// 2255 		}
// 2256 		else
// 2257 		{
// 2258 			xReturn = pdFAIL;
// 2259 		}
// 2260 
// 2261 		return xReturn;
// 2262 	}
// 2263 
// 2264 #endif /* configUSE_CO_ROUTINES */
// 2265 /*-----------------------------------------------------------*/
// 2266 
// 2267 #if ( configQUEUE_REGISTRY_SIZE > 0 )
// 2268 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function vQueueAddToRegistry
          CFI NoCalls
        THUMB
// 2269 	void vQueueAddToRegistry( QueueHandle_t xQueue, const char *pcQueueName ) /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
// 2270 	{
vQueueAddToRegistry:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
// 2271 	UBaseType_t ux;
// 2272 
// 2273 		/* See if there is an empty space in the registry.  A NULL name denotes
// 2274 		a free slot. */
// 2275 		for( ux = ( UBaseType_t ) 0U; ux < ( UBaseType_t ) configQUEUE_REGISTRY_SIZE; ux++ )
        MOVS     R3,#+0
        B.N      ??vQueueAddToRegistry_0
??vQueueAddToRegistry_1:
        ADDS     R3,R3,#+1
??vQueueAddToRegistry_0:
        CMP      R3,#+8
        BCS.N    ??vQueueAddToRegistry_2
// 2276 		{
// 2277 			if( xQueueRegistry[ ux ].pcQueueName == NULL )
        LDR.N    R4,??DataTable5_1
        LDR      R2,[R4, R3, LSL #+3]
        CMP      R2,#+0
        BNE.N    ??vQueueAddToRegistry_1
// 2278 			{
// 2279 				/* Store the information on this queue. */
// 2280 				xQueueRegistry[ ux ].pcQueueName = pcQueueName;
        STR      R1,[R4, R3, LSL #+3]
// 2281 				xQueueRegistry[ ux ].xHandle = xQueue;
        ADD      R1,R4,R3, LSL #+3
        STR      R0,[R1, #+4]
// 2282 
// 2283 				traceQUEUE_REGISTRY_ADD( xQueue, pcQueueName );
// 2284 				break;
// 2285 			}
// 2286 			else
// 2287 			{
// 2288 				mtCOVERAGE_TEST_MARKER();
// 2289 			}
// 2290 		}
// 2291 	}
??vQueueAddToRegistry_2:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock22
// 2292 
// 2293 #endif /* configQUEUE_REGISTRY_SIZE */
// 2294 /*-----------------------------------------------------------*/
// 2295 
// 2296 #if ( configQUEUE_REGISTRY_SIZE > 0 )
// 2297 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function pcQueueGetName
          CFI NoCalls
        THUMB
// 2298 	const char *pcQueueGetName( QueueHandle_t xQueue ) /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
// 2299 	{
pcQueueGetName:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
        MOVS     R1,R0
// 2300 	UBaseType_t ux;
// 2301 	const char *pcReturn = NULL; /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
        MOVS     R0,#+0
// 2302 
// 2303 		/* Note there is nothing here to protect against another task adding or
// 2304 		removing entries from the registry while it is being searched. */
// 2305 		for( ux = ( UBaseType_t ) 0U; ux < ( UBaseType_t ) configQUEUE_REGISTRY_SIZE; ux++ )
        MOVS     R2,#+0
        B.N      ??pcQueueGetName_0
??pcQueueGetName_1:
        ADDS     R2,R2,#+1
??pcQueueGetName_0:
        CMP      R2,#+8
        BCS.N    ??pcQueueGetName_2
// 2306 		{
// 2307 			if( xQueueRegistry[ ux ].xHandle == xQueue )
        LDR.N    R3,??DataTable5_1
        ADD      R4,R3,R2, LSL #+3
        LDR      R4,[R4, #+4]
        CMP      R4,R1
        BNE.N    ??pcQueueGetName_1
// 2308 			{
// 2309 				pcReturn = xQueueRegistry[ ux ].pcQueueName;
        LDR      R0,[R3, R2, LSL #+3]
// 2310 				break;
// 2311 			}
// 2312 			else
// 2313 			{
// 2314 				mtCOVERAGE_TEST_MARKER();
// 2315 			}
// 2316 		}
// 2317 
// 2318 		return pcReturn;
??pcQueueGetName_2:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
// 2319 	}
          CFI EndBlock cfiBlock23
// 2320 
// 2321 #endif /* configQUEUE_REGISTRY_SIZE */
// 2322 /*-----------------------------------------------------------*/
// 2323 
// 2324 #if ( configQUEUE_REGISTRY_SIZE > 0 )
// 2325 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function vQueueUnregisterQueue
          CFI NoCalls
        THUMB
// 2326 	void vQueueUnregisterQueue( QueueHandle_t xQueue )
// 2327 	{
// 2328 	UBaseType_t ux;
// 2329 
// 2330 		/* See if the handle of the queue being unregistered in actually in the
// 2331 		registry. */
// 2332 		for( ux = ( UBaseType_t ) 0U; ux < ( UBaseType_t ) configQUEUE_REGISTRY_SIZE; ux++ )
vQueueUnregisterQueue:
        MOVS     R1,#+0
        B.N      ??vQueueUnregisterQueue_0
??vQueueUnregisterQueue_1:
        ADDS     R1,R1,#+1
??vQueueUnregisterQueue_0:
        CMP      R1,#+8
        BCS.N    ??vQueueUnregisterQueue_2
// 2333 		{
// 2334 			if( xQueueRegistry[ ux ].xHandle == xQueue )
        LDR.N    R2,??DataTable5_1
        ADD      R3,R2,R1, LSL #+3
        LDR      R3,[R3, #+4]
        CMP      R3,R0
        BNE.N    ??vQueueUnregisterQueue_1
// 2335 			{
// 2336 				/* Set the name to NULL to show that this slot if free again. */
// 2337 				xQueueRegistry[ ux ].pcQueueName = NULL;
        MOVS     R0,#+0
        STR      R0,[R2, R1, LSL #+3]
// 2338 
// 2339 				/* Set the handle to NULL to ensure the same queue handle cannot
// 2340 				appear in the registry twice if it is added, removed, then
// 2341 				added again. */
// 2342 				xQueueRegistry[ ux ].xHandle = ( QueueHandle_t ) 0;
        MOVS     R0,#+0
        ADD      R1,R2,R1, LSL #+3
        STR      R0,[R1, #+4]
// 2343 				break;
// 2344 			}
// 2345 			else
// 2346 			{
// 2347 				mtCOVERAGE_TEST_MARKER();
// 2348 			}
// 2349 		}
// 2350 
// 2351 	} /*lint !e818 xQueue could not be pointer to const because it is a typedef. */
??vQueueUnregisterQueue_2:
        BX       LR               ;; return
          CFI EndBlock cfiBlock24

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DATA32
        DC32     0xe000ed04

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DATA32
        DC32     xQueueRegistry
// 2352 
// 2353 #endif /* configQUEUE_REGISTRY_SIZE */
// 2354 /*-----------------------------------------------------------*/
// 2355 
// 2356 #if ( configUSE_TIMERS == 1 )
// 2357 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function vQueueWaitForMessageRestricted
        THUMB
// 2358 	void vQueueWaitForMessageRestricted( QueueHandle_t xQueue, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely )
// 2359 	{
vQueueWaitForMessageRestricted:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
// 2360 	Queue_t * const pxQueue = ( Queue_t * ) xQueue;
// 2361 
// 2362 		/* This function should not be called by application code hence the
// 2363 		'Restricted' in its name.  It is not part of the public API.  It is
// 2364 		designed for use by kernel code, and has special calling requirements.
// 2365 		It can result in vListInsert() being called on a list that can only
// 2366 		possibly ever have one item in it, so the list will be fast, but even
// 2367 		so it should be called with the scheduler locked and not from a critical
// 2368 		section. */
// 2369 
// 2370 		/* Only do anything if there are no messages in the queue.  This function
// 2371 		will not actually cause the task to block, just place it on a blocked
// 2372 		list.  It will not block until the scheduler is unlocked - at which
// 2373 		time a yield will be performed.  If an item is added to the queue while
// 2374 		the queue is locked, and the calling task blocks on the queue, then the
// 2375 		calling task will be immediately unblocked when the queue is unlocked. */
// 2376 		prvLockQueue( pxQueue );
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
        LDRSB    R0,[R4, #+68]
        CMN      R0,#+1
        BNE.N    ??vQueueWaitForMessageRestricted_0
        MOVS     R0,#+0
        STRB     R0,[R4, #+68]
??vQueueWaitForMessageRestricted_0:
        LDRSB    R0,[R4, #+69]
        CMN      R0,#+1
        BNE.N    ??vQueueWaitForMessageRestricted_1
        MOVS     R0,#+0
        STRB     R0,[R4, #+69]
??vQueueWaitForMessageRestricted_1:
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
// 2377 		if( pxQueue->uxMessagesWaiting == ( UBaseType_t ) 0U )
        LDR      R0,[R4, #+56]
        CMP      R0,#+0
        BNE.N    ??vQueueWaitForMessageRestricted_2
// 2378 		{
// 2379 			/* There is nothing in the queue, block for the specified period. */
// 2380 			vTaskPlaceOnEventListRestricted( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait, xWaitIndefinitely );
        MOVS     R2,R6
        MOVS     R1,R5
        ADDS     R0,R4,#+36
          CFI FunCall vTaskPlaceOnEventListRestricted
        BL       vTaskPlaceOnEventListRestricted
// 2381 		}
// 2382 		else
// 2383 		{
// 2384 			mtCOVERAGE_TEST_MARKER();
// 2385 		}
// 2386 		prvUnlockQueue( pxQueue );
??vQueueWaitForMessageRestricted_2:
        MOVS     R0,R4
          CFI FunCall prvUnlockQueue
        BL       prvUnlockQueue
// 2387 	}
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock25

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 2388 
// 2389 #endif /* configUSE_TIMERS */
// 2390 /*-----------------------------------------------------------*/
// 2391 
// 2392 #if( ( configUSE_QUEUE_SETS == 1 ) && ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) )
// 2393 
// 2394 	QueueSetHandle_t xQueueCreateSet( const UBaseType_t uxEventQueueLength )
// 2395 	{
// 2396 	QueueSetHandle_t pxQueue;
// 2397 
// 2398 		pxQueue = xQueueGenericCreate( uxEventQueueLength, sizeof( Queue_t * ), queueQUEUE_TYPE_SET );
// 2399 
// 2400 		return pxQueue;
// 2401 	}
// 2402 
// 2403 #endif /* configUSE_QUEUE_SETS */
// 2404 /*-----------------------------------------------------------*/
// 2405 
// 2406 #if ( configUSE_QUEUE_SETS == 1 )
// 2407 
// 2408 	BaseType_t xQueueAddToSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet )
// 2409 	{
// 2410 	BaseType_t xReturn;
// 2411 
// 2412 		taskENTER_CRITICAL();
// 2413 		{
// 2414 			if( ( ( Queue_t * ) xQueueOrSemaphore )->pxQueueSetContainer != NULL )
// 2415 			{
// 2416 				/* Cannot add a queue/semaphore to more than one queue set. */
// 2417 				xReturn = pdFAIL;
// 2418 			}
// 2419 			else if( ( ( Queue_t * ) xQueueOrSemaphore )->uxMessagesWaiting != ( UBaseType_t ) 0 )
// 2420 			{
// 2421 				/* Cannot add a queue/semaphore to a queue set if there are already
// 2422 				items in the queue/semaphore. */
// 2423 				xReturn = pdFAIL;
// 2424 			}
// 2425 			else
// 2426 			{
// 2427 				( ( Queue_t * ) xQueueOrSemaphore )->pxQueueSetContainer = xQueueSet;
// 2428 				xReturn = pdPASS;
// 2429 			}
// 2430 		}
// 2431 		taskEXIT_CRITICAL();
// 2432 
// 2433 		return xReturn;
// 2434 	}
// 2435 
// 2436 #endif /* configUSE_QUEUE_SETS */
// 2437 /*-----------------------------------------------------------*/
// 2438 
// 2439 #if ( configUSE_QUEUE_SETS == 1 )
// 2440 
// 2441 	BaseType_t xQueueRemoveFromSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet )
// 2442 	{
// 2443 	BaseType_t xReturn;
// 2444 	Queue_t * const pxQueueOrSemaphore = ( Queue_t * ) xQueueOrSemaphore;
// 2445 
// 2446 		if( pxQueueOrSemaphore->pxQueueSetContainer != xQueueSet )
// 2447 		{
// 2448 			/* The queue was not a member of the set. */
// 2449 			xReturn = pdFAIL;
// 2450 		}
// 2451 		else if( pxQueueOrSemaphore->uxMessagesWaiting != ( UBaseType_t ) 0 )
// 2452 		{
// 2453 			/* It is dangerous to remove a queue from a set when the queue is
// 2454 			not empty because the queue set will still hold pending events for
// 2455 			the queue. */
// 2456 			xReturn = pdFAIL;
// 2457 		}
// 2458 		else
// 2459 		{
// 2460 			taskENTER_CRITICAL();
// 2461 			{
// 2462 				/* The queue is no longer contained in the set. */
// 2463 				pxQueueOrSemaphore->pxQueueSetContainer = NULL;
// 2464 			}
// 2465 			taskEXIT_CRITICAL();
// 2466 			xReturn = pdPASS;
// 2467 		}
// 2468 
// 2469 		return xReturn;
// 2470 	} /*lint !e818 xQueueSet could not be declared as pointing to const as it is a typedef. */
// 2471 
// 2472 #endif /* configUSE_QUEUE_SETS */
// 2473 /*-----------------------------------------------------------*/
// 2474 
// 2475 #if ( configUSE_QUEUE_SETS == 1 )
// 2476 
// 2477 	QueueSetMemberHandle_t xQueueSelectFromSet( QueueSetHandle_t xQueueSet, TickType_t const xTicksToWait )
// 2478 	{
// 2479 	QueueSetMemberHandle_t xReturn = NULL;
// 2480 
// 2481 		( void ) xQueueGenericReceive( ( QueueHandle_t ) xQueueSet, &xReturn, xTicksToWait, pdFALSE ); /*lint !e961 Casting from one typedef to another is not redundant. */
// 2482 		return xReturn;
// 2483 	}
// 2484 
// 2485 #endif /* configUSE_QUEUE_SETS */
// 2486 /*-----------------------------------------------------------*/
// 2487 
// 2488 #if ( configUSE_QUEUE_SETS == 1 )
// 2489 
// 2490 	QueueSetMemberHandle_t xQueueSelectFromSetFromISR( QueueSetHandle_t xQueueSet )
// 2491 	{
// 2492 	QueueSetMemberHandle_t xReturn = NULL;
// 2493 
// 2494 		( void ) xQueueReceiveFromISR( ( QueueHandle_t ) xQueueSet, &xReturn, NULL ); /*lint !e961 Casting from one typedef to another is not redundant. */
// 2495 		return xReturn;
// 2496 	}
// 2497 
// 2498 #endif /* configUSE_QUEUE_SETS */
// 2499 /*-----------------------------------------------------------*/
// 2500 
// 2501 #if ( configUSE_QUEUE_SETS == 1 )
// 2502 
// 2503 	static BaseType_t prvNotifyQueueSetContainer( const Queue_t * const pxQueue, const BaseType_t xCopyPosition )
// 2504 	{
// 2505 	Queue_t *pxQueueSetContainer = pxQueue->pxQueueSetContainer;
// 2506 	BaseType_t xReturn = pdFALSE;
// 2507 
// 2508 		/* This function must be called form a critical section. */
// 2509 
// 2510 		configASSERT( pxQueueSetContainer );
// 2511 		configASSERT( pxQueueSetContainer->uxMessagesWaiting < pxQueueSetContainer->uxLength );
// 2512 
// 2513 		if( pxQueueSetContainer->uxMessagesWaiting < pxQueueSetContainer->uxLength )
// 2514 		{
// 2515 			const int8_t cTxLock = pxQueueSetContainer->cTxLock;
// 2516 
// 2517 			traceQUEUE_SEND( pxQueueSetContainer );
// 2518 
// 2519 			/* The data copied is the handle of the queue that contains data. */
// 2520 			xReturn = prvCopyDataToQueue( pxQueueSetContainer, &pxQueue, xCopyPosition );
// 2521 
// 2522 			if( cTxLock == queueUNLOCKED )
// 2523 			{
// 2524 				if( listLIST_IS_EMPTY( &( pxQueueSetContainer->xTasksWaitingToReceive ) ) == pdFALSE )
// 2525 				{
// 2526 					if( xTaskRemoveFromEventList( &( pxQueueSetContainer->xTasksWaitingToReceive ) ) != pdFALSE )
// 2527 					{
// 2528 						/* The task waiting has a higher priority. */
// 2529 						xReturn = pdTRUE;
// 2530 					}
// 2531 					else
// 2532 					{
// 2533 						mtCOVERAGE_TEST_MARKER();
// 2534 					}
// 2535 				}
// 2536 				else
// 2537 				{
// 2538 					mtCOVERAGE_TEST_MARKER();
// 2539 				}
// 2540 			}
// 2541 			else
// 2542 			{
// 2543 				pxQueueSetContainer->cTxLock = ( int8_t ) ( cTxLock + 1 );
// 2544 			}
// 2545 		}
// 2546 		else
// 2547 		{
// 2548 			mtCOVERAGE_TEST_MARKER();
// 2549 		}
// 2550 
// 2551 		return xReturn;
// 2552 	}
// 2553 
// 2554 #endif /* configUSE_QUEUE_SETS */
// 2555 
// 2556 
// 2557 
// 2558 
// 2559 
// 2560 
// 2561 
// 2562 
// 2563 
// 2564 
// 2565 
// 2566 
// 
//    64 bytes in section .bss
// 2'094 bytes in section .text
// 
// 2'094 bytes of CODE memory
//    64 bytes of DATA memory
//
//Errors: none
//Warnings: none
