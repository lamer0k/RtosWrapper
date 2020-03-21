///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.40.2.214/W32 for ARM        21/Mar/2020  13:38:56
// Copyright 1999-2019 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  C:\GitHub\KursovoyKarkas\Rtos\FreeRtos\timers.c
//    Command line =
//        -f C:\Users\Serge\AppData\Local\Temp\EW715B.tmp
//        (C:\GitHub\KursovoyKarkas\Rtos\FreeRtos\timers.c -lC
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
//    List file    =  C:\GitHub\KursovoyKarkas\Debug\List\timers.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_full_locale_support", "0"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN uxListRemove
        EXTERN vApplicationGetTimerTaskMemory
        EXTERN vListInitialise
        EXTERN vListInitialiseItem
        EXTERN vListInsert
        EXTERN vPortEnterCritical
        EXTERN vPortExitCritical
        EXTERN vQueueAddToRegistry
        EXTERN vQueueWaitForMessageRestricted
        EXTERN vTaskSuspendAll
        EXTERN xQueueGenericCreateStatic
        EXTERN xQueueGenericReceive
        EXTERN xQueueGenericSend
        EXTERN xQueueGenericSendFromISR
        EXTERN xTaskCreateStatic
        EXTERN xTaskGetSchedulerState
        EXTERN xTaskGetTickCount
        EXTERN xTaskResumeAll

        PUBLIC pcTimerGetName
        PUBLIC pvTimerGetTimerID
        PUBLIC vTimerSetTimerID
        PUBLIC xTimerCreateStatic
        PUBLIC xTimerCreateTimerTask
        PUBLIC xTimerGenericCommand
        PUBLIC xTimerGetExpiryTime
        PUBLIC xTimerGetPeriod
        PUBLIC xTimerGetTimerDaemonTaskHandle
        PUBLIC xTimerIsTimerActive
        PUBLIC xTimerPendFunctionCall
        PUBLIC xTimerPendFunctionCallFromISR
        
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
        
// C:\GitHub\KursovoyKarkas\Rtos\FreeRtos\timers.c
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
//   78 #include "FreeRTOS.h"
//   79 #include "task.h"
//   80 #include "queue.h"
//   81 #include "timers.h"
//   82 
//   83 #if ( INCLUDE_xTimerPendFunctionCall == 1 ) && ( configUSE_TIMERS == 0 )
//   84 	#error configUSE_TIMERS must be set to 1 to make the xTimerPendFunctionCall() function available.
//   85 #endif
//   86 
//   87 /* Lint e961 and e750 are suppressed as a MISRA exception justified because the
//   88 MPU ports require MPU_WRAPPERS_INCLUDED_FROM_API_FILE to be defined for the
//   89 header files above, but not in this file, in order to generate the correct
//   90 privileged Vs unprivileged linkage and placement. */
//   91 #undef MPU_WRAPPERS_INCLUDED_FROM_API_FILE /*lint !e961 !e750. */
//   92 
//   93 
//   94 /* This entire source file will be skipped if the application is not configured
//   95 to include software timer functionality.  This #if is closed at the very bottom
//   96 of this file.  If you want to include software timer functionality then ensure
//   97 configUSE_TIMERS is set to 1 in FreeRTOSConfig.h. */
//   98 #if ( configUSE_TIMERS == 1 )
//   99 
//  100 /* Misc definitions. */
//  101 #define tmrNO_DELAY		( TickType_t ) 0U
//  102 
//  103 /* The definition of the timers themselves. */
//  104 typedef struct tmrTimerControl
//  105 {
//  106 	const char				*pcTimerName;		/*<< Text name.  This is not used by the kernel, it is included simply to make debugging easier. */ /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
//  107 	ListItem_t				xTimerListItem;		/*<< Standard linked list item as used by all kernel features for event management. */
//  108 	TickType_t				xTimerPeriodInTicks;/*<< How quickly and often the timer expires. */
//  109 	UBaseType_t				uxAutoReload;		/*<< Set to pdTRUE if the timer should be automatically restarted once expired.  Set to pdFALSE if the timer is, in effect, a one-shot timer. */
//  110 	void 					*pvTimerID;			/*<< An ID to identify the timer.  This allows the timer to be identified when the same callback is used for multiple timers. */
//  111 	TimerCallbackFunction_t	pxCallbackFunction;	/*<< The function that will be called when the timer expires. */
//  112 	#if( configUSE_TRACE_FACILITY == 1 )
//  113 		UBaseType_t			uxTimerNumber;		/*<< An ID assigned by trace tools such as FreeRTOS+Trace */
//  114 	#endif
//  115 
//  116 	#if( ( configSUPPORT_STATIC_ALLOCATION == 1 ) && ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) )
//  117 		uint8_t 			ucStaticallyAllocated; /*<< Set to pdTRUE if the timer was created statically so no attempt is made to free the memory again if the timer is later deleted. */
//  118 	#endif
//  119 } xTIMER;
//  120 
//  121 /* The old xTIMER name is maintained above then typedefed to the new Timer_t
//  122 name below to enable the use of older kernel aware debuggers. */
//  123 typedef xTIMER Timer_t;
//  124 
//  125 /* The definition of messages that can be sent and received on the timer queue.
//  126 Two types of message can be queued - messages that manipulate a software timer,
//  127 and messages that request the execution of a non-timer related callback.  The
//  128 two message types are defined in two separate structures, xTimerParametersType
//  129 and xCallbackParametersType respectively. */
//  130 typedef struct tmrTimerParameters
//  131 {
//  132 	TickType_t			xMessageValue;		/*<< An optional value used by a subset of commands, for example, when changing the period of a timer. */
//  133 	Timer_t *			pxTimer;			/*<< The timer to which the command will be applied. */
//  134 } TimerParameter_t;
//  135 
//  136 
//  137 typedef struct tmrCallbackParameters
//  138 {
//  139 	PendedFunction_t	pxCallbackFunction;	/* << The callback function to execute. */
//  140 	void *pvParameter1;						/* << The value that will be used as the callback functions first parameter. */
//  141 	uint32_t ulParameter2;					/* << The value that will be used as the callback functions second parameter. */
//  142 } CallbackParameters_t;
//  143 
//  144 /* The structure that contains the two message types, along with an identifier
//  145 that is used to determine which message type is valid. */
//  146 typedef struct tmrTimerQueueMessage
//  147 {
//  148 	BaseType_t			xMessageID;			/*<< The command being sent to the timer service task. */
//  149 	union
//  150 	{
//  151 		TimerParameter_t xTimerParameters;
//  152 
//  153 		/* Don't include xCallbackParameters if it is not going to be used as
//  154 		it makes the structure (and therefore the timer queue) larger. */
//  155 		#if ( INCLUDE_xTimerPendFunctionCall == 1 )
//  156 			CallbackParameters_t xCallbackParameters;
//  157 		#endif /* INCLUDE_xTimerPendFunctionCall */
//  158 	} u;
//  159 } DaemonTaskMessage_t;
//  160 
//  161 /*lint -e956 A manual analysis and inspection has been used to determine which
//  162 static variables must be declared volatile. */
//  163 
//  164 /* The list in which active timers are stored.  Timers are referenced in expire
//  165 time order, with the nearest expiry time at the front of the list.  Only the
//  166 timer service task is allowed to access these lists. */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  167 PRIVILEGED_DATA static List_t xActiveTimerList1;
xActiveTimerList1:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  168 PRIVILEGED_DATA static List_t xActiveTimerList2;
xActiveTimerList2:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  169 PRIVILEGED_DATA static List_t *pxCurrentTimerList;
pxCurrentTimerList:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  170 PRIVILEGED_DATA static List_t *pxOverflowTimerList;
pxOverflowTimerList:
        DS8 4
//  171 
//  172 /* A queue that is used to send commands to the timer service task. */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  173 PRIVILEGED_DATA static QueueHandle_t xTimerQueue = NULL;
xTimerQueue:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  174 PRIVILEGED_DATA static TaskHandle_t xTimerTaskHandle = NULL;
xTimerTaskHandle:
        DS8 4
//  175 
//  176 /*lint +e956 */
//  177 
//  178 /*-----------------------------------------------------------*/
//  179 
//  180 #if( configSUPPORT_STATIC_ALLOCATION == 1 )
//  181 
//  182 	/* If static allocation is supported then the application must provide the
//  183 	following callback function - which enables the application to optionally
//  184 	provide the memory that will be used by the timer task as the task's stack
//  185 	and TCB. */
//  186 	extern void vApplicationGetTimerTaskMemory( StaticTask_t **ppxTimerTaskTCBBuffer, StackType_t **ppxTimerTaskStackBuffer, uint32_t *pulTimerTaskStackSize );
//  187 
//  188 #endif
//  189 
//  190 /*
//  191  * Initialise the infrastructure used by the timer service task if it has not
//  192  * been initialised already.
//  193  */
//  194 static void prvCheckForValidListAndQueue( void ) PRIVILEGED_FUNCTION;
//  195 
//  196 /*
//  197  * The timer service task (daemon).  Timer functionality is controlled by this
//  198  * task.  Other tasks communicate with the timer service task using the
//  199  * xTimerQueue queue.
//  200  */
//  201 static void prvTimerTask( void *pvParameters ) PRIVILEGED_FUNCTION;
//  202 
//  203 /*
//  204  * Called by the timer service task to interpret and process a command it
//  205  * received on the timer queue.
//  206  */
//  207 static void prvProcessReceivedCommands( void ) PRIVILEGED_FUNCTION;
//  208 
//  209 /*
//  210  * Insert the timer into either xActiveTimerList1, or xActiveTimerList2,
//  211  * depending on if the expire time causes a timer counter overflow.
//  212  */
//  213 static BaseType_t prvInsertTimerInActiveList( Timer_t * const pxTimer, const TickType_t xNextExpiryTime, const TickType_t xTimeNow, const TickType_t xCommandTime ) PRIVILEGED_FUNCTION;
//  214 
//  215 /*
//  216  * An active timer has reached its expire time.  Reload the timer if it is an
//  217  * auto reload timer, then call its callback.
//  218  */
//  219 static void prvProcessExpiredTimer( const TickType_t xNextExpireTime, const TickType_t xTimeNow ) PRIVILEGED_FUNCTION;
//  220 
//  221 /*
//  222  * The tick count has overflowed.  Switch the timer lists after ensuring the
//  223  * current timer list does not still reference some timers.
//  224  */
//  225 static void prvSwitchTimerLists( void ) PRIVILEGED_FUNCTION;
//  226 
//  227 /*
//  228  * Obtain the current tick count, setting *pxTimerListsWereSwitched to pdTRUE
//  229  * if a tick count overflow occurred since prvSampleTimeNow() was last called.
//  230  */
//  231 static TickType_t prvSampleTimeNow( BaseType_t * const pxTimerListsWereSwitched ) PRIVILEGED_FUNCTION;
//  232 
//  233 /*
//  234  * If the timer list contains any active timers then return the expire time of
//  235  * the timer that will expire first and set *pxListWasEmpty to false.  If the
//  236  * timer list does not contain any timers then return 0 and set *pxListWasEmpty
//  237  * to pdTRUE.
//  238  */
//  239 static TickType_t prvGetNextExpireTime( BaseType_t * const pxListWasEmpty ) PRIVILEGED_FUNCTION;
//  240 
//  241 /*
//  242  * If a timer has expired, process it.  Otherwise, block the timer service task
//  243  * until either a timer does expire or a command is received.
//  244  */
//  245 static void prvProcessTimerOrBlockTask( const TickType_t xNextExpireTime, BaseType_t xListWasEmpty ) PRIVILEGED_FUNCTION;
//  246 
//  247 /*
//  248  * Called after a Timer_t structure has been allocated either statically or
//  249  * dynamically to fill in the structure's members.
//  250  */
//  251 static void prvInitialiseNewTimer(	const char * const pcTimerName,
//  252 									const TickType_t xTimerPeriodInTicks,
//  253 									const UBaseType_t uxAutoReload,
//  254 									void * const pvTimerID,
//  255 									TimerCallbackFunction_t pxCallbackFunction,
//  256 									Timer_t *pxNewTimer ) PRIVILEGED_FUNCTION; /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
//  257 /*-----------------------------------------------------------*/
//  258 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function xTimerCreateTimerTask
        THUMB
//  259 BaseType_t xTimerCreateTimerTask( void )
//  260 {
xTimerCreateTimerTask:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        SUB      SP,SP,#+24
          CFI CFA R13+40
//  261 BaseType_t xReturn = pdFAIL;
        MOVS     R4,#+0
//  262 
//  263 	/* This function is called when the scheduler is started if
//  264 	configUSE_TIMERS is set to 1.  Check that the infrastructure used by the
//  265 	timer service task has been created/initialised.  If timers have already
//  266 	been created then the initialisation will already have been performed. */
//  267 	prvCheckForValidListAndQueue();
          CFI FunCall prvCheckForValidListAndQueue
        BL       prvCheckForValidListAndQueue
//  268 
//  269 	if( xTimerQueue != NULL )
        LDR.W    R0,??DataTable12
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??xTimerCreateTimerTask_0
//  270 	{
//  271 		#if( configSUPPORT_STATIC_ALLOCATION == 1 )
//  272 		{
//  273 			StaticTask_t *pxTimerTaskTCBBuffer = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//  274 			StackType_t *pxTimerTaskStackBuffer = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  275 			uint32_t ulTimerTaskStackSize;
//  276 
//  277 			vApplicationGetTimerTaskMemory( &pxTimerTaskTCBBuffer, &pxTimerTaskStackBuffer, &ulTimerTaskStackSize );
        ADD      R2,SP,#+20
        ADD      R1,SP,#+12
        ADD      R0,SP,#+16
          CFI FunCall vApplicationGetTimerTaskMemory
        BL       vApplicationGetTimerTaskMemory
//  278 			xTimerTaskHandle = xTaskCreateStatic(	prvTimerTask,
//  279 													"Tmr Svc",
//  280 													ulTimerTaskStackSize,
//  281 													NULL,
//  282 													( ( UBaseType_t ) configTIMER_TASK_PRIORITY ) | portPRIVILEGE_BIT,
//  283 													pxTimerTaskStackBuffer,
//  284 													pxTimerTaskTCBBuffer );
        LDR.W    R5,??DataTable12_1
        LDR      R0,[SP, #+16]
        STR      R0,[SP, #+8]
        LDR      R0,[SP, #+12]
        STR      R0,[SP, #+4]
        MOVS     R0,#+2
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        LDR      R2,[SP, #+20]
        LDR.W    R1,??DataTable12_2
        ADR.W    R0,prvTimerTask
          CFI FunCall xTaskCreateStatic
        BL       xTaskCreateStatic
        STR      R0,[R5, #+0]
//  285 
//  286 			if( xTimerTaskHandle != NULL )
        LDR      R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??xTimerCreateTimerTask_0
//  287 			{
//  288 				xReturn = pdPASS;
        MOVS     R4,#+1
//  289 			}
//  290 		}
//  291 		#else
//  292 		{
//  293 			xReturn = xTaskCreate(	prvTimerTask,
//  294 									"Tmr Svc",
//  295 									configTIMER_TASK_STACK_DEPTH,
//  296 									NULL,
//  297 									( ( UBaseType_t ) configTIMER_TASK_PRIORITY ) | portPRIVILEGE_BIT,
//  298 									&xTimerTaskHandle );
//  299 		}
//  300 		#endif /* configSUPPORT_STATIC_ALLOCATION */
//  301 	}
//  302 	else
//  303 	{
//  304 		mtCOVERAGE_TEST_MARKER();
//  305 	}
//  306 
//  307 	configASSERT( xReturn );
//  308 	return xReturn;
??xTimerCreateTimerTask_0:
        MOVS     R0,R4
        ADD      SP,SP,#+28
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
//  309 }
          CFI EndBlock cfiBlock0
//  310 /*-----------------------------------------------------------*/
//  311 
//  312 #if( configSUPPORT_DYNAMIC_ALLOCATION == 1 )
//  313 
//  314 	TimerHandle_t xTimerCreate(	const char * const pcTimerName,
//  315 								const TickType_t xTimerPeriodInTicks,
//  316 								const UBaseType_t uxAutoReload,
//  317 								void * const pvTimerID,
//  318 								TimerCallbackFunction_t pxCallbackFunction ) /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
//  319 	{
//  320 	Timer_t *pxNewTimer;
//  321 
//  322 		pxNewTimer = ( Timer_t * ) pvPortMalloc( sizeof( Timer_t ) );
//  323 
//  324 		if( pxNewTimer != NULL )
//  325 		{
//  326 			prvInitialiseNewTimer( pcTimerName, xTimerPeriodInTicks, uxAutoReload, pvTimerID, pxCallbackFunction, pxNewTimer );
//  327 
//  328 			#if( configSUPPORT_STATIC_ALLOCATION == 1 )
//  329 			{
//  330 				/* Timers can be created statically or dynamically, so note this
//  331 				timer was created dynamically in case the timer is later
//  332 				deleted. */
//  333 				pxNewTimer->ucStaticallyAllocated = pdFALSE;
//  334 			}
//  335 			#endif /* configSUPPORT_STATIC_ALLOCATION */
//  336 		}
//  337 
//  338 		return pxNewTimer;
//  339 	}
//  340 
//  341 #endif /* configSUPPORT_STATIC_ALLOCATION */
//  342 /*-----------------------------------------------------------*/
//  343 
//  344 #if( configSUPPORT_STATIC_ALLOCATION == 1 )
//  345 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function xTimerCreateStatic
        THUMB
//  346 	TimerHandle_t xTimerCreateStatic(	const char * const pcTimerName,
//  347 										const TickType_t xTimerPeriodInTicks,
//  348 										const UBaseType_t uxAutoReload,
//  349 										void * const pvTimerID,
//  350 										TimerCallbackFunction_t pxCallbackFunction,
//  351 										StaticTimer_t *pxTimerBuffer ) /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
//  352 	{
xTimerCreateStatic:
        PUSH     {R1-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+24
        LDR      R4,[SP, #+28]
//  353 	Timer_t *pxNewTimer;
//  354 
//  355 		#if( configASSERT_DEFINED == 1 )
//  356 		{
//  357 			/* Sanity check that the size of the structure used to declare a
//  358 			variable of type StaticTimer_t equals the size of the real timer
//  359 			structures. */
//  360 			volatile size_t xSize = sizeof( StaticTimer_t );
        MOVS     R5,#+40
        STR      R5,[SP, #+0]
//  361 			configASSERT( xSize == sizeof( Timer_t ) );
        LDR      R5,[SP, #+0]
//  362 		}
//  363 		#endif /* configASSERT_DEFINED */
//  364 
//  365 		/* A pointer to a StaticTimer_t structure MUST be provided, use it. */
//  366 		configASSERT( pxTimerBuffer );
//  367 		pxNewTimer = ( Timer_t * ) pxTimerBuffer; /*lint !e740 Unusual cast is ok as the structures are designed to have the same alignment, and the size is checked by an assert. */
//  368 
//  369 		if( pxNewTimer != NULL )
        CMP      R4,#+0
        BEQ.N    ??xTimerCreateStatic_0
//  370 		{
//  371 			prvInitialiseNewTimer( pcTimerName, xTimerPeriodInTicks, uxAutoReload, pvTimerID, pxCallbackFunction, pxNewTimer );
        STR      R4,[SP, #+4]
        LDR      R5,[SP, #+24]
        STR      R5,[SP, #+0]
          CFI FunCall prvInitialiseNewTimer
        BL       prvInitialiseNewTimer
//  372 
//  373 			#if( configSUPPORT_DYNAMIC_ALLOCATION == 1 )
//  374 			{
//  375 				/* Timers can be created statically or dynamically so note this
//  376 				timer was created statically in case it is later deleted. */
//  377 				pxNewTimer->ucStaticallyAllocated = pdTRUE;
//  378 			}
//  379 			#endif /* configSUPPORT_DYNAMIC_ALLOCATION */
//  380 		}
//  381 
//  382 		return pxNewTimer;
??xTimerCreateStatic_0:
        MOVS     R0,R4
        POP      {R1-R5,PC}       ;; return
//  383 	}
          CFI EndBlock cfiBlock1
//  384 
//  385 #endif /* configSUPPORT_STATIC_ALLOCATION */
//  386 /*-----------------------------------------------------------*/
//  387 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function prvInitialiseNewTimer
        THUMB
//  388 static void prvInitialiseNewTimer(	const char * const pcTimerName,
//  389 									const TickType_t xTimerPeriodInTicks,
//  390 									const UBaseType_t uxAutoReload,
//  391 									void * const pvTimerID,
//  392 									TimerCallbackFunction_t pxCallbackFunction,
//  393 									Timer_t *pxNewTimer ) /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
//  394 {
prvInitialiseNewTimer:
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
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+36]
//  395 	/* 0 is not a valid value for xTimerPeriodInTicks. */
//  396 	configASSERT( ( xTimerPeriodInTicks > 0 ) );
//  397 
//  398 	if( pxNewTimer != NULL )
        CMP      R4,#+0
        BEQ.N    ??prvInitialiseNewTimer_0
        LDR      R9,[SP, #+32]
//  399 	{
//  400 		/* Ensure the infrastructure used by the timer service task has been
//  401 		created/initialised. */
//  402 		prvCheckForValidListAndQueue();
          CFI FunCall prvCheckForValidListAndQueue
        BL       prvCheckForValidListAndQueue
//  403 
//  404 		/* Initialise the timer structure members using the function
//  405 		parameters. */
//  406 		pxNewTimer->pcTimerName = pcTimerName;
        STR      R5,[R4, #+0]
//  407 		pxNewTimer->xTimerPeriodInTicks = xTimerPeriodInTicks;
        STR      R6,[R4, #+24]
//  408 		pxNewTimer->uxAutoReload = uxAutoReload;
        STR      R7,[R4, #+28]
//  409 		pxNewTimer->pvTimerID = pvTimerID;
        STR      R8,[R4, #+32]
//  410 		pxNewTimer->pxCallbackFunction = pxCallbackFunction;
        STR      R9,[R4, #+36]
//  411 		vListInitialiseItem( &( pxNewTimer->xTimerListItem ) );
        ADDS     R0,R4,#+4
          CFI FunCall vListInitialiseItem
        BL       vListInitialiseItem
//  412 		traceTIMER_CREATE( pxNewTimer );
//  413 	}
//  414 }
??prvInitialiseNewTimer_0:
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock2
//  415 /*-----------------------------------------------------------*/
//  416 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function xTimerGenericCommand
        THUMB
//  417 BaseType_t xTimerGenericCommand( TimerHandle_t xTimer, const BaseType_t xCommandID, const TickType_t xOptionalValue, BaseType_t * const pxHigherPriorityTaskWoken, const TickType_t xTicksToWait )
//  418 {
xTimerGenericCommand:
        PUSH     {R0-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+32
        MOVS     R4,R0
        MOVS     R5,R3
//  419 BaseType_t xReturn = pdFAIL;
        MOVS     R0,#+0
//  420 DaemonTaskMessage_t xMessage;
//  421 
//  422 	configASSERT( xTimer );
//  423 
//  424 	/* Send a message to the timer service task to perform a particular action
//  425 	on a particular timer definition. */
//  426 	if( xTimerQueue != NULL )
        LDR.W    R6,??DataTable12
        LDR      R3,[R6, #+0]
        CMP      R3,#+0
        BEQ.N    ??xTimerGenericCommand_0
//  427 	{
//  428 		/* Send a command to the timer service task to start the xTimer timer. */
//  429 		xMessage.xMessageID = xCommandID;
        STR      R1,[SP, #+0]
//  430 		xMessage.u.xTimerParameters.xMessageValue = xOptionalValue;
        STR      R2,[SP, #+4]
//  431 		xMessage.u.xTimerParameters.pxTimer = ( Timer_t * ) xTimer;
        STR      R4,[SP, #+8]
//  432 
//  433 		if( xCommandID < tmrFIRST_FROM_ISR_COMMAND )
        CMP      R1,#+6
        BGE.N    ??xTimerGenericCommand_1
//  434 		{
//  435 			if( xTaskGetSchedulerState() == taskSCHEDULER_RUNNING )
          CFI FunCall xTaskGetSchedulerState
        BL       xTaskGetSchedulerState
        CMP      R0,#+2
        BNE.N    ??xTimerGenericCommand_2
        LDR      R2,[SP, #+32]
//  436 			{
//  437 				xReturn = xQueueSendToBack( xTimerQueue, &xMessage, xTicksToWait );
        MOVS     R3,#+0
        MOV      R1,SP
        LDR      R0,[R6, #+0]
          CFI FunCall xQueueGenericSend
        BL       xQueueGenericSend
        B.N      ??xTimerGenericCommand_0
//  438 			}
//  439 			else
//  440 			{
//  441 				xReturn = xQueueSendToBack( xTimerQueue, &xMessage, tmrNO_DELAY );
??xTimerGenericCommand_2:
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOV      R1,SP
        LDR      R0,[R6, #+0]
          CFI FunCall xQueueGenericSend
        BL       xQueueGenericSend
        B.N      ??xTimerGenericCommand_0
//  442 			}
//  443 		}
//  444 		else
//  445 		{
//  446 			xReturn = xQueueSendToBackFromISR( xTimerQueue, &xMessage, pxHigherPriorityTaskWoken );
??xTimerGenericCommand_1:
        MOVS     R3,#+0
        MOVS     R2,R5
        MOV      R1,SP
        LDR      R0,[R6, #+0]
          CFI FunCall xQueueGenericSendFromISR
        BL       xQueueGenericSendFromISR
//  447 		}
//  448 
//  449 		traceTIMER_COMMAND_SEND( xTimer, xCommandID, xOptionalValue, xReturn );
//  450 	}
//  451 	else
//  452 	{
//  453 		mtCOVERAGE_TEST_MARKER();
//  454 	}
//  455 
//  456 	return xReturn;
??xTimerGenericCommand_0:
        ADD      SP,SP,#+16
          CFI CFA R13+16
        POP      {R4-R6,PC}       ;; return
//  457 }
          CFI EndBlock cfiBlock3
//  458 /*-----------------------------------------------------------*/
//  459 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function xTimerGetTimerDaemonTaskHandle
          CFI NoCalls
        THUMB
//  460 TaskHandle_t xTimerGetTimerDaemonTaskHandle( void )
//  461 {
//  462 	/* If xTimerGetTimerDaemonTaskHandle() is called before the scheduler has been
//  463 	started, then xTimerTaskHandle will be NULL. */
//  464 	configASSERT( ( xTimerTaskHandle != NULL ) );
//  465 	return xTimerTaskHandle;
xTimerGetTimerDaemonTaskHandle:
        LDR.W    R0,??DataTable12_1
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  466 }
          CFI EndBlock cfiBlock4
//  467 /*-----------------------------------------------------------*/
//  468 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function xTimerGetPeriod
          CFI NoCalls
        THUMB
//  469 TickType_t xTimerGetPeriod( TimerHandle_t xTimer )
//  470 {
//  471 Timer_t *pxTimer = ( Timer_t * ) xTimer;
//  472 
//  473 	configASSERT( xTimer );
//  474 	return pxTimer->xTimerPeriodInTicks;
xTimerGetPeriod:
        LDR      R0,[R0, #+24]
        BX       LR               ;; return
//  475 }
          CFI EndBlock cfiBlock5
//  476 /*-----------------------------------------------------------*/
//  477 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function xTimerGetExpiryTime
          CFI NoCalls
        THUMB
//  478 TickType_t xTimerGetExpiryTime( TimerHandle_t xTimer )
//  479 {
//  480 Timer_t * pxTimer = ( Timer_t * ) xTimer;
//  481 TickType_t xReturn;
//  482 
//  483 	configASSERT( xTimer );
//  484 	xReturn = listGET_LIST_ITEM_VALUE( &( pxTimer->xTimerListItem ) );
xTimerGetExpiryTime:
        LDR      R0,[R0, #+4]
//  485 	return xReturn;
        BX       LR               ;; return
//  486 }
          CFI EndBlock cfiBlock6
//  487 /*-----------------------------------------------------------*/
//  488 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function pcTimerGetName
          CFI NoCalls
        THUMB
//  489 const char * pcTimerGetName( TimerHandle_t xTimer ) /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
//  490 {
//  491 Timer_t *pxTimer = ( Timer_t * ) xTimer;
//  492 
//  493 	configASSERT( xTimer );
//  494 	return pxTimer->pcTimerName;
pcTimerGetName:
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  495 }
          CFI EndBlock cfiBlock7
//  496 /*-----------------------------------------------------------*/
//  497 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function prvProcessExpiredTimer
        THUMB
//  498 static void prvProcessExpiredTimer( const TickType_t xNextExpireTime, const TickType_t xTimeNow )
//  499 {
prvProcessExpiredTimer:
        PUSH     {R2-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
//  500 BaseType_t xResult;
//  501 Timer_t * const pxTimer = ( Timer_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxCurrentTimerList );
        LDR.W    R0,??DataTable12_3
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        LDR      R6,[R0, #+12]
//  502 
//  503 	/* Remove the timer from the list of active timers.  A check has already
//  504 	been performed to ensure the list is not empty. */
//  505 	( void ) uxListRemove( &( pxTimer->xTimerListItem ) );
        ADDS     R0,R6,#+4
          CFI FunCall uxListRemove
        BL       uxListRemove
//  506 	traceTIMER_EXPIRED( pxTimer );
//  507 
//  508 	/* If the timer is an auto reload timer then calculate the next
//  509 	expiry time and re-insert the timer in the list of active timers. */
//  510 	if( pxTimer->uxAutoReload == ( UBaseType_t ) pdTRUE )
        LDR      R0,[R6, #+28]
        CMP      R0,#+1
        BNE.N    ??prvProcessExpiredTimer_0
//  511 	{
//  512 		/* The timer is inserted into a list using a time relative to anything
//  513 		other than the current time.  It will therefore be inserted into the
//  514 		correct list relative to the time this task thinks it is now. */
//  515 		if( prvInsertTimerInActiveList( pxTimer, ( xNextExpireTime + pxTimer->xTimerPeriodInTicks ), xTimeNow, xNextExpireTime ) != pdFALSE )
        MOVS     R3,R4
        MOVS     R2,R5
        LDR      R1,[R6, #+24]
        ADDS     R1,R1,R4
        MOVS     R0,R6
          CFI FunCall prvInsertTimerInActiveList
        BL       prvInsertTimerInActiveList
        CMP      R0,#+0
        BEQ.N    ??prvProcessExpiredTimer_0
//  516 		{
//  517 			/* The timer expired before it was added to the active timer
//  518 			list.  Reload it now.  */
//  519 			xResult = xTimerGenericCommand( pxTimer, tmrCOMMAND_START_DONT_TRACE, xNextExpireTime, NULL, tmrNO_DELAY );
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,R4
        MOVS     R1,#+0
        MOVS     R0,R6
          CFI FunCall xTimerGenericCommand
        BL       xTimerGenericCommand
//  520 			configASSERT( xResult );
//  521 			( void ) xResult;
//  522 		}
//  523 		else
//  524 		{
//  525 			mtCOVERAGE_TEST_MARKER();
//  526 		}
//  527 	}
//  528 	else
//  529 	{
//  530 		mtCOVERAGE_TEST_MARKER();
//  531 	}
//  532 
//  533 	/* Call the timer callback. */
//  534 	pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
??prvProcessExpiredTimer_0:
        MOVS     R0,R6
        LDR      R1,[R6, #+36]
          CFI FunCall
        BLX      R1
//  535 }
        POP      {R0,R1,R4-R6,PC}  ;; return
          CFI EndBlock cfiBlock8
//  536 /*-----------------------------------------------------------*/
//  537 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function prvTimerTask
        THUMB
//  538 static void prvTimerTask( void *pvParameters )
//  539 {
prvTimerTask:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  540 TickType_t xNextExpireTime;
//  541 BaseType_t xListWasEmpty;
//  542 
//  543 	/* Just to avoid compiler warnings. */
//  544 	( void ) pvParameters;
//  545 
//  546 	#if( configUSE_DAEMON_TASK_STARTUP_HOOK == 1 )
//  547 	{
//  548 		extern void vApplicationDaemonTaskStartupHook( void );
//  549 
//  550 		/* Allow the application writer to execute some code in the context of
//  551 		this task at the point the task starts executing.  This is useful if the
//  552 		application includes initialisation code that would benefit from
//  553 		executing after the scheduler has been started. */
//  554 		vApplicationDaemonTaskStartupHook();
//  555 	}
//  556 	#endif /* configUSE_DAEMON_TASK_STARTUP_HOOK */
//  557 
//  558 	for( ;; )
//  559 	{
//  560 		/* Query the timers list to see if it contains any timers, and if so,
//  561 		obtain the time at which the next timer will expire. */
//  562 		xNextExpireTime = prvGetNextExpireTime( &xListWasEmpty );
??prvTimerTask_0:
        MOV      R0,SP
          CFI FunCall prvGetNextExpireTime
        BL       prvGetNextExpireTime
//  563 
//  564 		/* If a timer has expired, process it.  Otherwise, block this task
//  565 		until either a timer does expire, or a command is received. */
//  566 		prvProcessTimerOrBlockTask( xNextExpireTime, xListWasEmpty );
        LDR      R1,[SP, #+0]
          CFI FunCall prvProcessTimerOrBlockTask
        BL       prvProcessTimerOrBlockTask
//  567 
//  568 		/* Empty the command queue. */
//  569 		prvProcessReceivedCommands();
          CFI FunCall prvProcessReceivedCommands
        BL       prvProcessReceivedCommands
        B.N      ??prvTimerTask_0
//  570 	}
//  571 }
          CFI EndBlock cfiBlock9
//  572 /*-----------------------------------------------------------*/
//  573 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function prvProcessTimerOrBlockTask
        THUMB
//  574 static void prvProcessTimerOrBlockTask( const TickType_t xNextExpireTime, BaseType_t xListWasEmpty )
//  575 {
prvProcessTimerOrBlockTask:
        PUSH     {R2-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+24
        MOVS     R5,R0
        MOVS     R4,R1
//  576 TickType_t xTimeNow;
//  577 BaseType_t xTimerListsWereSwitched;
//  578 
//  579 	vTaskSuspendAll();
          CFI FunCall vTaskSuspendAll
        BL       vTaskSuspendAll
//  580 	{
//  581 		/* Obtain the time now to make an assessment as to whether the timer
//  582 		has expired or not.  If obtaining the time causes the lists to switch
//  583 		then don't process this timer as any timers that remained in the list
//  584 		when the lists were switched will have been processed within the
//  585 		prvSampleTimeNow() function. */
//  586 		xTimeNow = prvSampleTimeNow( &xTimerListsWereSwitched );
        MOV      R0,SP
          CFI FunCall prvSampleTimeNow
        BL       prvSampleTimeNow
        MOVS     R6,R0
//  587 		if( xTimerListsWereSwitched == pdFALSE )
        LDR      R0,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??prvProcessTimerOrBlockTask_0
//  588 		{
//  589 			/* The tick count has not overflowed, has the timer expired? */
//  590 			if( ( xListWasEmpty == pdFALSE ) && ( xNextExpireTime <= xTimeNow ) )
        CMP      R4,#+0
        BNE.N    ??prvProcessTimerOrBlockTask_1
        CMP      R6,R5
        BCC.N    ??prvProcessTimerOrBlockTask_1
//  591 			{
//  592 				( void ) xTaskResumeAll();
          CFI FunCall xTaskResumeAll
        BL       xTaskResumeAll
//  593 				prvProcessExpiredTimer( xNextExpireTime, xTimeNow );
        MOVS     R1,R6
        MOVS     R0,R5
          CFI FunCall prvProcessExpiredTimer
        BL       prvProcessExpiredTimer
        B.N      ??prvProcessTimerOrBlockTask_2
//  594 			}
//  595 			else
//  596 			{
//  597 				/* The tick count has not overflowed, and the next expire
//  598 				time has not been reached yet.  This task should therefore
//  599 				block to wait for the next expire time or a command to be
//  600 				received - whichever comes first.  The following line cannot
//  601 				be reached unless xNextExpireTime > xTimeNow, except in the
//  602 				case when the current timer list is empty. */
//  603 				if( xListWasEmpty != pdFALSE )
??prvProcessTimerOrBlockTask_1:
        CMP      R4,#+0
        BEQ.N    ??prvProcessTimerOrBlockTask_3
//  604 				{
//  605 					/* The current timer list is empty - is the overflow list
//  606 					also empty? */
//  607 					xListWasEmpty = listLIST_IS_EMPTY( pxOverflowTimerList );
        LDR.N    R0,??DataTable12_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??prvProcessTimerOrBlockTask_4
        MOVS     R4,#+1
        B.N      ??prvProcessTimerOrBlockTask_3
??prvProcessTimerOrBlockTask_4:
        MOVS     R4,#+0
//  608 				}
//  609 
//  610 				vQueueWaitForMessageRestricted( xTimerQueue, ( xNextExpireTime - xTimeNow ), xListWasEmpty );
??prvProcessTimerOrBlockTask_3:
        MOVS     R2,R4
        SUBS     R5,R5,R6
        MOVS     R1,R5
        LDR.N    R0,??DataTable12
        LDR      R0,[R0, #+0]
          CFI FunCall vQueueWaitForMessageRestricted
        BL       vQueueWaitForMessageRestricted
//  611 
//  612 				if( xTaskResumeAll() == pdFALSE )
          CFI FunCall xTaskResumeAll
        BL       xTaskResumeAll
        CMP      R0,#+0
        BNE.N    ??prvProcessTimerOrBlockTask_2
//  613 				{
//  614 					/* Yield to wait for either a command to arrive, or the
//  615 					block time to expire.  If a command arrived between the
//  616 					critical section being exited and this yield then the yield
//  617 					will not cause the task to block. */
//  618 					portYIELD_WITHIN_API();
        MOVS     R0,#+268435456
        LDR.N    R1,??DataTable12_5  ;; 0xe000ed04
        STR      R0,[R1, #+0]
        DSB      SY
        ISB      SY
        B.N      ??prvProcessTimerOrBlockTask_2
//  619 				}
//  620 				else
//  621 				{
//  622 					mtCOVERAGE_TEST_MARKER();
//  623 				}
//  624 			}
//  625 		}
//  626 		else
//  627 		{
//  628 			( void ) xTaskResumeAll();
??prvProcessTimerOrBlockTask_0:
          CFI FunCall xTaskResumeAll
        BL       xTaskResumeAll
//  629 		}
//  630 	}
//  631 }
??prvProcessTimerOrBlockTask_2:
        POP      {R0,R1,R4-R6,PC}  ;; return
          CFI EndBlock cfiBlock10
//  632 /*-----------------------------------------------------------*/
//  633 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function prvGetNextExpireTime
          CFI NoCalls
        THUMB
//  634 static TickType_t prvGetNextExpireTime( BaseType_t * const pxListWasEmpty )
//  635 {
//  636 TickType_t xNextExpireTime;
//  637 
//  638 	/* Timers are listed in expiry time order, with the head of the list
//  639 	referencing the task that will expire first.  Obtain the time at which
//  640 	the timer with the nearest expiry time will expire.  If there are no
//  641 	active timers then just set the next expire time to 0.  That will cause
//  642 	this task to unblock when the tick count overflows, at which point the
//  643 	timer lists will be switched and the next expiry time can be
//  644 	re-assessed.  */
//  645 	*pxListWasEmpty = listLIST_IS_EMPTY( pxCurrentTimerList );
prvGetNextExpireTime:
        LDR.N    R2,??DataTable12_3
        LDR      R1,[R2, #+0]
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BNE.N    ??prvGetNextExpireTime_0
        MOVS     R1,#+1
        B.N      ??prvGetNextExpireTime_1
??prvGetNextExpireTime_0:
        MOVS     R1,#+0
??prvGetNextExpireTime_1:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STR      R1,[R0, #+0]
//  646 	if( *pxListWasEmpty == pdFALSE )
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??prvGetNextExpireTime_2
//  647 	{
//  648 		xNextExpireTime = listGET_ITEM_VALUE_OF_HEAD_ENTRY( pxCurrentTimerList );
        LDR      R0,[R2, #+0]
        LDR      R0,[R0, #+12]
        LDR      R0,[R0, #+0]
        B.N      ??prvGetNextExpireTime_3
//  649 	}
//  650 	else
//  651 	{
//  652 		/* Ensure the task unblocks when the tick count rolls over. */
//  653 		xNextExpireTime = ( TickType_t ) 0U;
??prvGetNextExpireTime_2:
        MOVS     R0,#+0
//  654 	}
//  655 
//  656 	return xNextExpireTime;
??prvGetNextExpireTime_3:
        BX       LR               ;; return
//  657 }
          CFI EndBlock cfiBlock11
//  658 /*-----------------------------------------------------------*/
//  659 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function prvSampleTimeNow
        THUMB
//  660 static TickType_t prvSampleTimeNow( BaseType_t * const pxTimerListsWereSwitched )
//  661 {
prvSampleTimeNow:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
//  662 TickType_t xTimeNow;
//  663 PRIVILEGED_DATA static TickType_t xLastTime = ( TickType_t ) 0U; /*lint !e956 Variable is only accessible to one task. */
//  664 
//  665 	xTimeNow = xTaskGetTickCount();
          CFI FunCall xTaskGetTickCount
        BL       xTaskGetTickCount
        MOVS     R5,R0
//  666 
//  667 	if( xTimeNow < xLastTime )
        LDR.N    R6,??DataTable12_6
        LDR      R0,[R6, #+0]
        CMP      R5,R0
        BCS.N    ??prvSampleTimeNow_0
//  668 	{
//  669 		prvSwitchTimerLists();
          CFI FunCall prvSwitchTimerLists
        BL       prvSwitchTimerLists
//  670 		*pxTimerListsWereSwitched = pdTRUE;
        MOVS     R0,#+1
        STR      R0,[R4, #+0]
        B.N      ??prvSampleTimeNow_1
//  671 	}
//  672 	else
//  673 	{
//  674 		*pxTimerListsWereSwitched = pdFALSE;
??prvSampleTimeNow_0:
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//  675 	}
//  676 
//  677 	xLastTime = xTimeNow;
??prvSampleTimeNow_1:
        STR      R5,[R6, #+0]
//  678 
//  679 	return xTimeNow;
        MOVS     R0,R5
        POP      {R4-R6,PC}       ;; return
//  680 }
          CFI EndBlock cfiBlock12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`prvSampleTimeNow::xLastTime`:
        DS8 4
//  681 /*-----------------------------------------------------------*/
//  682 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function prvInsertTimerInActiveList
        THUMB
//  683 static BaseType_t prvInsertTimerInActiveList( Timer_t * const pxTimer, const TickType_t xNextExpiryTime, const TickType_t xTimeNow, const TickType_t xCommandTime )
//  684 {
prvInsertTimerInActiveList:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  685 BaseType_t xProcessTimerNow = pdFALSE;
        MOVS     R4,#+0
//  686 
//  687 	listSET_LIST_ITEM_VALUE( &( pxTimer->xTimerListItem ), xNextExpiryTime );
        STR      R1,[R0, #+4]
//  688 	listSET_LIST_ITEM_OWNER( &( pxTimer->xTimerListItem ), pxTimer );
        STR      R0,[R0, #+16]
//  689 
//  690 	if( xNextExpiryTime <= xTimeNow )
        CMP      R2,R1
        BCC.N    ??prvInsertTimerInActiveList_0
//  691 	{
//  692 		/* Has the expiry time elapsed between the command to start/reset a
//  693 		timer was issued, and the time the command was processed? */
//  694 		if( ( ( TickType_t ) ( xTimeNow - xCommandTime ) ) >= pxTimer->xTimerPeriodInTicks ) /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
        SUBS     R2,R2,R3
        LDR      R1,[R0, #+24]
        CMP      R2,R1
        BCC.N    ??prvInsertTimerInActiveList_1
//  695 		{
//  696 			/* The time between a command being issued and the command being
//  697 			processed actually exceeds the timers period.  */
//  698 			xProcessTimerNow = pdTRUE;
        MOVS     R4,#+1
        B.N      ??prvInsertTimerInActiveList_2
//  699 		}
//  700 		else
//  701 		{
//  702 			vListInsert( pxOverflowTimerList, &( pxTimer->xTimerListItem ) );
??prvInsertTimerInActiveList_1:
        ADDS     R1,R0,#+4
        LDR.N    R0,??DataTable12_4
        LDR      R0,[R0, #+0]
          CFI FunCall vListInsert
        BL       vListInsert
        B.N      ??prvInsertTimerInActiveList_2
//  703 		}
//  704 	}
//  705 	else
//  706 	{
//  707 		if( ( xTimeNow < xCommandTime ) && ( xNextExpiryTime >= xCommandTime ) )
??prvInsertTimerInActiveList_0:
        CMP      R2,R3
        BCS.N    ??prvInsertTimerInActiveList_3
        CMP      R1,R3
        BCC.N    ??prvInsertTimerInActiveList_3
//  708 		{
//  709 			/* If, since the command was issued, the tick count has overflowed
//  710 			but the expiry time has not, then the timer must have already passed
//  711 			its expiry time and should be processed immediately. */
//  712 			xProcessTimerNow = pdTRUE;
        MOVS     R4,#+1
        B.N      ??prvInsertTimerInActiveList_2
//  713 		}
//  714 		else
//  715 		{
//  716 			vListInsert( pxCurrentTimerList, &( pxTimer->xTimerListItem ) );
??prvInsertTimerInActiveList_3:
        ADDS     R1,R0,#+4
        LDR.N    R0,??DataTable12_3
        LDR      R0,[R0, #+0]
          CFI FunCall vListInsert
        BL       vListInsert
//  717 		}
//  718 	}
//  719 
//  720 	return xProcessTimerNow;
??prvInsertTimerInActiveList_2:
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
//  721 }
          CFI EndBlock cfiBlock13
//  722 /*-----------------------------------------------------------*/
//  723 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function prvProcessReceivedCommands
        THUMB
//  724 static void	prvProcessReceivedCommands( void )
//  725 {
prvProcessReceivedCommands:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+24
          CFI CFA R13+32
        B.N      ??prvProcessReceivedCommands_0
//  726 DaemonTaskMessage_t xMessage;
//  727 Timer_t *pxTimer;
//  728 BaseType_t xTimerListsWereSwitched, xResult;
//  729 TickType_t xTimeNow;
//  730 
//  731 	while( xQueueReceive( xTimerQueue, &xMessage, tmrNO_DELAY ) != pdFAIL ) /*lint !e603 xMessage does not have to be initialised as it is passed out, not in, and it is not used unless xQueueReceive() returns pdTRUE. */
//  732 	{
//  733 		#if ( INCLUDE_xTimerPendFunctionCall == 1 )
//  734 		{
//  735 			/* Negative commands are pended function calls rather than timer
//  736 			commands. */
//  737 			if( xMessage.xMessageID < ( BaseType_t ) 0 )
//  738 			{
//  739 				const CallbackParameters_t * const pxCallback = &( xMessage.u.xCallbackParameters );
//  740 
//  741 				/* The timer uses the xCallbackParameters member to request a
//  742 				callback be executed.  Check the callback is not NULL. */
//  743 				configASSERT( pxCallback );
//  744 
//  745 				/* Call the function. */
//  746 				pxCallback->pxCallbackFunction( pxCallback->pvParameter1, pxCallback->ulParameter2 );
//  747 			}
//  748 			else
//  749 			{
//  750 				mtCOVERAGE_TEST_MARKER();
//  751 			}
//  752 		}
//  753 		#endif /* INCLUDE_xTimerPendFunctionCall */
//  754 
//  755 		/* Commands that are positive are timer commands rather than pended
//  756 		function calls. */
//  757 		if( xMessage.xMessageID >= ( BaseType_t ) 0 )
//  758 		{
//  759 			/* The messages uses the xTimerParameters member to work on a
//  760 			software timer. */
//  761 			pxTimer = xMessage.u.xTimerParameters.pxTimer;
//  762 
//  763 			if( listIS_CONTAINED_WITHIN( NULL, &( pxTimer->xTimerListItem ) ) == pdFALSE )
//  764 			{
//  765 				/* The timer is in a list, remove it. */
//  766 				( void ) uxListRemove( &( pxTimer->xTimerListItem ) );
//  767 			}
//  768 			else
//  769 			{
//  770 				mtCOVERAGE_TEST_MARKER();
//  771 			}
//  772 
//  773 			traceTIMER_COMMAND_RECEIVED( pxTimer, xMessage.xMessageID, xMessage.u.xTimerParameters.xMessageValue );
//  774 
//  775 			/* In this case the xTimerListsWereSwitched parameter is not used, but
//  776 			it must be present in the function call.  prvSampleTimeNow() must be
//  777 			called after the message is received from xTimerQueue so there is no
//  778 			possibility of a higher priority task adding a message to the message
//  779 			queue with a time that is ahead of the timer daemon task (because it
//  780 			pre-empted the timer daemon task after the xTimeNow value was set). */
//  781 			xTimeNow = prvSampleTimeNow( &xTimerListsWereSwitched );
//  782 
//  783 			switch( xMessage.xMessageID )
//  784 			{
//  785 				case tmrCOMMAND_START :
//  786 			    case tmrCOMMAND_START_FROM_ISR :
//  787 			    case tmrCOMMAND_RESET :
//  788 			    case tmrCOMMAND_RESET_FROM_ISR :
//  789 				case tmrCOMMAND_START_DONT_TRACE :
//  790 					/* Start or restart a timer. */
//  791 					if( prvInsertTimerInActiveList( pxTimer,  xMessage.u.xTimerParameters.xMessageValue + pxTimer->xTimerPeriodInTicks, xTimeNow, xMessage.u.xTimerParameters.xMessageValue ) != pdFALSE )
??prvProcessReceivedCommands_1:
        LDR      R3,[SP, #+8]
        MOVS     R2,R1
        LDR      R1,[SP, #+8]
        LDR      R0,[R4, #+24]
        ADDS     R1,R0,R1
        MOVS     R0,R4
          CFI FunCall prvInsertTimerInActiveList
        BL       prvInsertTimerInActiveList
        CMP      R0,#+0
        BEQ.N    ??prvProcessReceivedCommands_2
//  792 					{
//  793 						/* The timer expired before it was added to the active
//  794 						timer list.  Process it now. */
//  795 						pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
        MOVS     R0,R4
        LDR      R1,[R4, #+36]
          CFI FunCall
        BLX      R1
//  796 						traceTIMER_EXPIRED( pxTimer );
//  797 
//  798 						if( pxTimer->uxAutoReload == ( UBaseType_t ) pdTRUE )
        LDR      R0,[R4, #+28]
        CMP      R0,#+1
        BNE.N    ??prvProcessReceivedCommands_2
//  799 						{
//  800 							xResult = xTimerGenericCommand( pxTimer, tmrCOMMAND_START_DONT_TRACE, xMessage.u.xTimerParameters.xMessageValue + pxTimer->xTimerPeriodInTicks, NULL, tmrNO_DELAY );
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        LDR      R2,[SP, #+8]
        LDR      R0,[R4, #+24]
        ADDS     R2,R0,R2
        MOVS     R1,#+0
        MOVS     R0,R4
          CFI FunCall xTimerGenericCommand
        BL       xTimerGenericCommand
//  801 							configASSERT( xResult );
//  802 							( void ) xResult;
//  803 						}
//  804 						else
//  805 						{
//  806 							mtCOVERAGE_TEST_MARKER();
//  807 						}
//  808 					}
//  809 					else
//  810 					{
//  811 						mtCOVERAGE_TEST_MARKER();
//  812 					}
//  813 					break;
??prvProcessReceivedCommands_2:
??prvProcessReceivedCommands_0:
        MOVS     R3,#+0
        MOVS     R2,#+0
        ADD      R1,SP,#+4
        LDR.N    R0,??DataTable12
        LDR      R0,[R0, #+0]
          CFI FunCall xQueueGenericReceive
        BL       xQueueGenericReceive
        CMP      R0,#+0
        BEQ.N    ??prvProcessReceivedCommands_3
        LDR      R0,[SP, #+4]
        CMP      R0,#+0
        BPL.N    ??prvProcessReceivedCommands_4
        ADD      R2,SP,#+8
        LDR      R1,[R2, #+8]
        LDR      R0,[R2, #+4]
        LDR      R2,[R2, #+0]
          CFI FunCall
        BLX      R2
??prvProcessReceivedCommands_4:
        LDR      R0,[SP, #+4]
        CMP      R0,#+0
        BMI.N    ??prvProcessReceivedCommands_0
        LDR      R4,[SP, #+12]
        LDR      R0,[R4, #+20]
        CMP      R0,#+0
        BEQ.N    ??prvProcessReceivedCommands_5
        ADDS     R0,R4,#+4
          CFI FunCall uxListRemove
        BL       uxListRemove
??prvProcessReceivedCommands_5:
        ADD      R0,SP,#+20
          CFI FunCall prvSampleTimeNow
        BL       prvSampleTimeNow
        MOVS     R1,R0
        LDR      R0,[SP, #+4]
        CMP      R0,#+0
        BEQ.N    ??prvProcessReceivedCommands_1
        CMP      R0,#+2
        BEQ.N    ??prvProcessReceivedCommands_1
        BCC.N    ??prvProcessReceivedCommands_1
        CMP      R0,#+4
        BEQ.N    ??prvProcessReceivedCommands_6
        BCC.N    ??prvProcessReceivedCommands_7
        CMP      R0,#+6
        BEQ.N    ??prvProcessReceivedCommands_1
        BCC.N    ??prvProcessReceivedCommands_8
        CMP      R0,#+8
        BEQ.N    ??prvProcessReceivedCommands_7
        BCC.N    ??prvProcessReceivedCommands_1
        CMP      R0,#+9
        BEQ.N    ??prvProcessReceivedCommands_6
        B.N      ??prvProcessReceivedCommands_9
//  814 
//  815 				case tmrCOMMAND_STOP :
//  816 				case tmrCOMMAND_STOP_FROM_ISR :
//  817 					/* The timer has already been removed from the active list.
//  818 					There is nothing to do here. */
//  819 					break;
??prvProcessReceivedCommands_7:
        B.N      ??prvProcessReceivedCommands_0
//  820 
//  821 				case tmrCOMMAND_CHANGE_PERIOD :
//  822 				case tmrCOMMAND_CHANGE_PERIOD_FROM_ISR :
//  823 					pxTimer->xTimerPeriodInTicks = xMessage.u.xTimerParameters.xMessageValue;
??prvProcessReceivedCommands_6:
        LDR      R0,[SP, #+8]
        STR      R0,[R4, #+24]
//  824 					configASSERT( ( pxTimer->xTimerPeriodInTicks > 0 ) );
//  825 
//  826 					/* The new period does not really have a reference, and can
//  827 					be longer or shorter than the old one.  The command time is
//  828 					therefore set to the current time, and as the period cannot
//  829 					be zero the next expiry time can only be in the future,
//  830 					meaning (unlike for the xTimerStart() case above) there is
//  831 					no fail case that needs to be handled here. */
//  832 					( void ) prvInsertTimerInActiveList( pxTimer, ( xTimeNow + pxTimer->xTimerPeriodInTicks ), xTimeNow, xTimeNow );
        MOVS     R3,R1
        MOVS     R2,R1
        LDR      R0,[R4, #+24]
        ADDS     R1,R0,R1
        MOVS     R0,R4
          CFI FunCall prvInsertTimerInActiveList
        BL       prvInsertTimerInActiveList
//  833 					break;
        B.N      ??prvProcessReceivedCommands_0
//  834 
//  835 				case tmrCOMMAND_DELETE :
//  836 					/* The timer has already been removed from the active list,
//  837 					just free up the memory if the memory was dynamically
//  838 					allocated. */
//  839 					#if( ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) && ( configSUPPORT_STATIC_ALLOCATION == 0 ) )
//  840 					{
//  841 						/* The timer can only have been allocated dynamically -
//  842 						free it again. */
//  843 						vPortFree( pxTimer );
//  844 					}
//  845 					#elif( ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) && ( configSUPPORT_STATIC_ALLOCATION == 1 ) )
//  846 					{
//  847 						/* The timer could have been allocated statically or
//  848 						dynamically, so check before attempting to free the
//  849 						memory. */
//  850 						if( pxTimer->ucStaticallyAllocated == ( uint8_t ) pdFALSE )
//  851 						{
//  852 							vPortFree( pxTimer );
//  853 						}
//  854 						else
//  855 						{
//  856 							mtCOVERAGE_TEST_MARKER();
//  857 						}
//  858 					}
//  859 					#endif /* configSUPPORT_DYNAMIC_ALLOCATION */
//  860 					break;
??prvProcessReceivedCommands_8:
        B.N      ??prvProcessReceivedCommands_0
//  861 
//  862 				default	:
//  863 					/* Don't expect to get here. */
//  864 					break;
??prvProcessReceivedCommands_9:
        B.N      ??prvProcessReceivedCommands_0
//  865 			}
//  866 		}
//  867 	}
//  868 }
??prvProcessReceivedCommands_3:
        ADD      SP,SP,#+24
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock14
//  869 /*-----------------------------------------------------------*/
//  870 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function prvSwitchTimerLists
        THUMB
//  871 static void prvSwitchTimerLists( void )
//  872 {
prvSwitchTimerLists:
        PUSH     {R2-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+24
        B.N      ??prvSwitchTimerLists_0
//  873 TickType_t xNextExpireTime, xReloadTime;
//  874 List_t *pxTemp;
//  875 Timer_t *pxTimer;
//  876 BaseType_t xResult;
//  877 
//  878 	/* The tick count has overflowed.  The timer lists must be switched.
//  879 	If there are any timers still referenced from the current timer list
//  880 	then they must have expired and should be processed before the lists
//  881 	are switched. */
//  882 	while( listLIST_IS_EMPTY( pxCurrentTimerList ) == pdFALSE )
//  883 	{
//  884 		xNextExpireTime = listGET_ITEM_VALUE_OF_HEAD_ENTRY( pxCurrentTimerList );
//  885 
//  886 		/* Remove the timer from the list. */
//  887 		pxTimer = ( Timer_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxCurrentTimerList );
//  888 		( void ) uxListRemove( &( pxTimer->xTimerListItem ) );
//  889 		traceTIMER_EXPIRED( pxTimer );
//  890 
//  891 		/* Execute its callback, then send a command to restart the timer if
//  892 		it is an auto-reload timer.  It cannot be restarted here as the lists
//  893 		have not yet been switched. */
//  894 		pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
//  895 
//  896 		if( pxTimer->uxAutoReload == ( UBaseType_t ) pdTRUE )
//  897 		{
//  898 			/* Calculate the reload value, and if the reload value results in
//  899 			the timer going into the same timer list then it has already expired
//  900 			and the timer should be re-inserted into the current list so it is
//  901 			processed again within this loop.  Otherwise a command should be sent
//  902 			to restart the timer to ensure it is only inserted into a list after
//  903 			the lists have been swapped. */
//  904 			xReloadTime = ( xNextExpireTime + pxTimer->xTimerPeriodInTicks );
//  905 			if( xReloadTime > xNextExpireTime )
//  906 			{
//  907 				listSET_LIST_ITEM_VALUE( &( pxTimer->xTimerListItem ), xReloadTime );
??prvSwitchTimerLists_1:
        STR      R0,[R6, #+4]
//  908 				listSET_LIST_ITEM_OWNER( &( pxTimer->xTimerListItem ), pxTimer );
        STR      R6,[R6, #+16]
//  909 				vListInsert( pxCurrentTimerList, &( pxTimer->xTimerListItem ) );
        ADDS     R1,R6,#+4
        LDR      R0,[R4, #+0]
          CFI FunCall vListInsert
        BL       vListInsert
//  910 			}
??prvSwitchTimerLists_0:
        LDR.N    R4,??DataTable12_3
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??prvSwitchTimerLists_2
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+12]
        LDR      R5,[R0, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+12]
        LDR      R6,[R0, #+12]
        ADDS     R0,R6,#+4
          CFI FunCall uxListRemove
        BL       uxListRemove
        MOVS     R0,R6
        LDR      R1,[R6, #+36]
          CFI FunCall
        BLX      R1
        LDR      R0,[R6, #+28]
        CMP      R0,#+1
        BNE.N    ??prvSwitchTimerLists_0
        LDR      R0,[R6, #+24]
        ADDS     R0,R0,R5
        CMP      R5,R0
        BCC.N    ??prvSwitchTimerLists_1
//  911 			else
//  912 			{
//  913 				xResult = xTimerGenericCommand( pxTimer, tmrCOMMAND_START_DONT_TRACE, xNextExpireTime, NULL, tmrNO_DELAY );
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,R5
        MOVS     R1,#+0
        MOVS     R0,R6
          CFI FunCall xTimerGenericCommand
        BL       xTimerGenericCommand
//  914 				configASSERT( xResult );
//  915 				( void ) xResult;
        B.N      ??prvSwitchTimerLists_0
//  916 			}
//  917 		}
//  918 		else
//  919 		{
//  920 			mtCOVERAGE_TEST_MARKER();
//  921 		}
//  922 	}
//  923 
//  924 	pxTemp = pxCurrentTimerList;
??prvSwitchTimerLists_2:
        LDR      R0,[R4, #+0]
//  925 	pxCurrentTimerList = pxOverflowTimerList;
        LDR.N    R1,??DataTable12_4
        LDR      R2,[R1, #+0]
        STR      R2,[R4, #+0]
//  926 	pxOverflowTimerList = pxTemp;
        STR      R0,[R1, #+0]
//  927 }
        POP      {R0,R1,R4-R6,PC}  ;; return
          CFI EndBlock cfiBlock15
//  928 /*-----------------------------------------------------------*/
//  929 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function prvCheckForValidListAndQueue
        THUMB
//  930 static void prvCheckForValidListAndQueue( void )
//  931 {
prvCheckForValidListAndQueue:
        PUSH     {R2-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+24
//  932 	/* Check that the list from which active timers are referenced, and the
//  933 	queue used to communicate with the timer service, have been
//  934 	initialised. */
//  935 	taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
//  936 	{
//  937 		if( xTimerQueue == NULL )
        LDR.N    R4,??DataTable12
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??prvCheckForValidListAndQueue_0
//  938 		{
//  939 			vListInitialise( &xActiveTimerList1 );
        LDR.N    R5,??DataTable12_7
        MOVS     R0,R5
          CFI FunCall vListInitialise
        BL       vListInitialise
//  940 			vListInitialise( &xActiveTimerList2 );
        LDR.N    R6,??DataTable12_8
        MOVS     R0,R6
          CFI FunCall vListInitialise
        BL       vListInitialise
//  941 			pxCurrentTimerList = &xActiveTimerList1;
        LDR.N    R0,??DataTable12_3
        STR      R5,[R0, #+0]
//  942 			pxOverflowTimerList = &xActiveTimerList2;
        LDR.N    R0,??DataTable12_4
        STR      R6,[R0, #+0]
//  943 
//  944 			#if( configSUPPORT_STATIC_ALLOCATION == 1 )
//  945 			{
//  946 				/* The timer queue is allocated statically in case
//  947 				configSUPPORT_DYNAMIC_ALLOCATION is 0. */
//  948 				static StaticQueue_t xStaticTimerQueue;
//  949 				static uint8_t ucStaticTimerQueueStorage[ configTIMER_QUEUE_LENGTH * sizeof( DaemonTaskMessage_t ) ];
//  950 
//  951 				xTimerQueue = xQueueCreateStatic( ( UBaseType_t ) configTIMER_QUEUE_LENGTH, sizeof( DaemonTaskMessage_t ), &( ucStaticTimerQueueStorage[ 0 ] ), &xStaticTimerQueue );
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR.N    R3,??DataTable12_9
        LDR.N    R2,??DataTable12_10
        MOVS     R1,#+16
        MOVS     R0,#+10
          CFI FunCall xQueueGenericCreateStatic
        BL       xQueueGenericCreateStatic
        STR      R0,[R4, #+0]
//  952 			}
//  953 			#else
//  954 			{
//  955 				xTimerQueue = xQueueCreate( ( UBaseType_t ) configTIMER_QUEUE_LENGTH, sizeof( DaemonTaskMessage_t ) );
//  956 			}
//  957 			#endif
//  958 
//  959 			#if ( configQUEUE_REGISTRY_SIZE > 0 )
//  960 			{
//  961 				if( xTimerQueue != NULL )
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??prvCheckForValidListAndQueue_0
//  962 				{
//  963 					vQueueAddToRegistry( xTimerQueue, "TmrQ" );
        LDR.N    R1,??DataTable12_11
        LDR      R0,[R4, #+0]
          CFI FunCall vQueueAddToRegistry
        BL       vQueueAddToRegistry
//  964 				}
//  965 				else
//  966 				{
//  967 					mtCOVERAGE_TEST_MARKER();
//  968 				}
//  969 			}
//  970 			#endif /* configQUEUE_REGISTRY_SIZE */
//  971 		}
//  972 		else
//  973 		{
//  974 			mtCOVERAGE_TEST_MARKER();
//  975 		}
//  976 	}
//  977 	taskEXIT_CRITICAL();
??prvCheckForValidListAndQueue_0:
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
//  978 }
        POP      {R0,R1,R4-R6,PC}  ;; return
          CFI EndBlock cfiBlock16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`prvCheckForValidListAndQueue{1}{2}{3}{4}::xStaticTimerQueue`:
        DS8 72

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`prvCheckForValidListAndQueue{1}{2}{3}{4}::ucStaticTimerQueueStorage`:
        DS8 160
//  979 /*-----------------------------------------------------------*/
//  980 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function xTimerIsTimerActive
        THUMB
//  981 BaseType_t xTimerIsTimerActive( TimerHandle_t xTimer )
//  982 {
xTimerIsTimerActive:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  983 BaseType_t xTimerIsInActiveList;
//  984 Timer_t *pxTimer = ( Timer_t * ) xTimer;
//  985 
//  986 	configASSERT( xTimer );
//  987 
//  988 	/* Is the timer in the list of active timers? */
//  989 	taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
//  990 	{
//  991 		/* Checking to see if it is in the NULL list in effect checks to see if
//  992 		it is referenced from either the current or the overflow timer lists in
//  993 		one go, but the logic has to be reversed, hence the '!'. */
//  994 		xTimerIsInActiveList = ( BaseType_t ) !( listIS_CONTAINED_WITHIN( NULL, &( pxTimer->xTimerListItem ) ) );
        LDR      R0,[R4, #+20]
        CMP      R0,#+0
        BEQ.N    ??xTimerIsTimerActive_0
        MOVS     R4,#+1
        B.N      ??xTimerIsTimerActive_1
??xTimerIsTimerActive_0:
        MOVS     R4,#+0
//  995 	}
//  996 	taskEXIT_CRITICAL();
??xTimerIsTimerActive_1:
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
//  997 
//  998 	return xTimerIsInActiveList;
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
//  999 } /*lint !e818 Can't be pointer to const due to the typedef. */
          CFI EndBlock cfiBlock17
// 1000 /*-----------------------------------------------------------*/
// 1001 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function pvTimerGetTimerID
        THUMB
// 1002 void *pvTimerGetTimerID( const TimerHandle_t xTimer )
// 1003 {
pvTimerGetTimerID:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
// 1004 Timer_t * const pxTimer = ( Timer_t * ) xTimer;
// 1005 void *pvReturn;
// 1006 
// 1007 	configASSERT( xTimer );
// 1008 
// 1009 	taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
// 1010 	{
// 1011 		pvReturn = pxTimer->pvTimerID;
        LDR      R4,[R4, #+32]
// 1012 	}
// 1013 	taskEXIT_CRITICAL();
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
// 1014 
// 1015 	return pvReturn;
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
// 1016 }
          CFI EndBlock cfiBlock18
// 1017 /*-----------------------------------------------------------*/
// 1018 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function vTimerSetTimerID
        THUMB
// 1019 void vTimerSetTimerID( TimerHandle_t xTimer, void *pvNewID )
// 1020 {
vTimerSetTimerID:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
// 1021 Timer_t * const pxTimer = ( Timer_t * ) xTimer;
// 1022 
// 1023 	configASSERT( xTimer );
// 1024 
// 1025 	taskENTER_CRITICAL();
          CFI FunCall vPortEnterCritical
        BL       vPortEnterCritical
// 1026 	{
// 1027 		pxTimer->pvTimerID = pvNewID;
        STR      R5,[R4, #+32]
// 1028 	}
// 1029 	taskEXIT_CRITICAL();
          CFI FunCall vPortExitCritical
        BL       vPortExitCritical
// 1030 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock19
// 1031 /*-----------------------------------------------------------*/
// 1032 
// 1033 #if( INCLUDE_xTimerPendFunctionCall == 1 )
// 1034 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function xTimerPendFunctionCallFromISR
        THUMB
// 1035 	BaseType_t xTimerPendFunctionCallFromISR( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, BaseType_t *pxHigherPriorityTaskWoken )
// 1036 	{
xTimerPendFunctionCallFromISR:
        PUSH     {R0-R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+24
        MOVS     R4,R3
// 1037 	DaemonTaskMessage_t xMessage;
// 1038 	BaseType_t xReturn;
// 1039 
// 1040 		/* Complete the message with the function parameters and post it to the
// 1041 		daemon task. */
// 1042 		xMessage.xMessageID = tmrCOMMAND_EXECUTE_CALLBACK_FROM_ISR;
        MVNS     R3,#+1
        STR      R3,[SP, #+0]
// 1043 		xMessage.u.xCallbackParameters.pxCallbackFunction = xFunctionToPend;
        STR      R0,[SP, #+4]
// 1044 		xMessage.u.xCallbackParameters.pvParameter1 = pvParameter1;
        STR      R1,[SP, #+8]
// 1045 		xMessage.u.xCallbackParameters.ulParameter2 = ulParameter2;
        STR      R2,[SP, #+12]
// 1046 
// 1047 		xReturn = xQueueSendFromISR( xTimerQueue, &xMessage, pxHigherPriorityTaskWoken );
        MOVS     R3,#+0
        MOVS     R2,R4
        MOV      R1,SP
        LDR.N    R0,??DataTable12
        LDR      R0,[R0, #+0]
          CFI FunCall xQueueGenericSendFromISR
        BL       xQueueGenericSendFromISR
// 1048 
// 1049 		tracePEND_FUNC_CALL_FROM_ISR( xFunctionToPend, pvParameter1, ulParameter2, xReturn );
// 1050 
// 1051 		return xReturn;
        ADD      SP,SP,#+16
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
// 1052 	}
          CFI EndBlock cfiBlock20
// 1053 
// 1054 #endif /* INCLUDE_xTimerPendFunctionCall */
// 1055 /*-----------------------------------------------------------*/
// 1056 
// 1057 #if( INCLUDE_xTimerPendFunctionCall == 1 )
// 1058 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function xTimerPendFunctionCall
        THUMB
// 1059 	BaseType_t xTimerPendFunctionCall( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, TickType_t xTicksToWait )
// 1060 	{
xTimerPendFunctionCall:
        PUSH     {R0-R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+24
        MOVS     R4,R3
// 1061 	DaemonTaskMessage_t xMessage;
// 1062 	BaseType_t xReturn;
// 1063 
// 1064 		/* This function can only be called after a timer has been created or
// 1065 		after the scheduler has been started because, until then, the timer
// 1066 		queue does not exist. */
// 1067 		configASSERT( xTimerQueue );
// 1068 
// 1069 		/* Complete the message with the function parameters and post it to the
// 1070 		daemon task. */
// 1071 		xMessage.xMessageID = tmrCOMMAND_EXECUTE_CALLBACK;
        MOVS     R3,#-1
        STR      R3,[SP, #+0]
// 1072 		xMessage.u.xCallbackParameters.pxCallbackFunction = xFunctionToPend;
        STR      R0,[SP, #+4]
// 1073 		xMessage.u.xCallbackParameters.pvParameter1 = pvParameter1;
        STR      R1,[SP, #+8]
// 1074 		xMessage.u.xCallbackParameters.ulParameter2 = ulParameter2;
        STR      R2,[SP, #+12]
// 1075 
// 1076 		xReturn = xQueueSendToBack( xTimerQueue, &xMessage, xTicksToWait );
        MOVS     R3,#+0
        MOVS     R2,R4
        MOV      R1,SP
        LDR.N    R0,??DataTable12
        LDR      R0,[R0, #+0]
          CFI FunCall xQueueGenericSend
        BL       xQueueGenericSend
// 1077 
// 1078 		tracePEND_FUNC_CALL( xFunctionToPend, pvParameter1, ulParameter2, xReturn );
// 1079 
// 1080 		return xReturn;
        ADD      SP,SP,#+16
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
// 1081 	}
          CFI EndBlock cfiBlock21

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DATA32
        DC32     xTimerQueue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DATA32
        DC32     xTimerTaskHandle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DATA32
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DATA32
        DC32     pxCurrentTimerList

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DATA32
        DC32     pxOverflowTimerList

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DATA32
        DC32     0xe000ed04

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DATA32
        DC32     `prvSampleTimeNow::xLastTime`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DATA32
        DC32     xActiveTimerList1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DATA32
        DC32     xActiveTimerList2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_9:
        DATA32
        DC32     `prvCheckForValidListAndQueue{1}{2}{3}{4}::xStaticTimerQueue`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_10:
        DATA32
        DC32     `prvCheckForValidListAndQueue{1}{2}{3}{4}::ucStaticTimerQueueStorage`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_11:
        DATA32
        DC32     ?_1

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DATA8
        DC8 "Tmr Svc"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DATA8
        DC8 "TmrQ"
        DATA
        DC8 0, 0, 0

        END
// 1082 
// 1083 #endif /* INCLUDE_xTimerPendFunctionCall */
// 1084 /*-----------------------------------------------------------*/
// 1085 
// 1086 /* This entire source file will be skipped if the application is not configured
// 1087 to include software timer functionality.  If you want to include software timer
// 1088 functionality then ensure configUSE_TIMERS is set to 1 in FreeRTOSConfig.h. */
// 1089 #endif /* configUSE_TIMERS == 1 */
// 1090 
// 1091 
// 1092 
// 
//   292 bytes in section .bss
//    16 bytes in section .rodata
// 1'140 bytes in section .text
// 
// 1'140 bytes of CODE  memory
//    16 bytes of CONST memory
//   292 bytes of DATA  memory
//
//Errors: none
//Warnings: none
