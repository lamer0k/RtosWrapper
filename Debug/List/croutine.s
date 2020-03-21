///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.40.2.214/W32 for ARM        21/Mar/2020  14:05:06
// Copyright 1999-2019 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  C:\GitHub\RtosWrapper\Rtos\FreeRtos\croutine.c
//    Command line =
//        -f C:\Users\Serge\AppData\Local\Temp\EW66F7.tmp
//        (C:\GitHub\RtosWrapper\Rtos\FreeRtos\croutine.c -lC
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
//    List file    =  C:\GitHub\RtosWrapper\Debug\List\croutine.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1


        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// C:\GitHub\RtosWrapper\Rtos\FreeRtos\croutine.c
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
//   70 #include "FreeRTOS.h"
//   71 #include "task.h"
//   72 #include "croutine.h"
//   73 
//   74 /* Remove the whole file is co-routines are not being used. */
//   75 #if( configUSE_CO_ROUTINES != 0 )
//   76 
//   77 /*
//   78  * Some kernel aware debuggers require data to be viewed to be global, rather
//   79  * than file scope.
//   80  */
//   81 #ifdef portREMOVE_STATIC_QUALIFIER
//   82 	#define static
//   83 #endif
//   84 
//   85 
//   86 /* Lists for ready and blocked co-routines. --------------------*/
//   87 static List_t pxReadyCoRoutineLists[ configMAX_CO_ROUTINE_PRIORITIES ];	/*< Prioritised ready co-routines. */
//   88 static List_t xDelayedCoRoutineList1;									/*< Delayed co-routines. */
//   89 static List_t xDelayedCoRoutineList2;									/*< Delayed co-routines (two lists are used - one for delays that have overflowed the current tick count. */
//   90 static List_t * pxDelayedCoRoutineList;									/*< Points to the delayed co-routine list currently being used. */
//   91 static List_t * pxOverflowDelayedCoRoutineList;							/*< Points to the delayed co-routine list currently being used to hold co-routines that have overflowed the current tick count. */
//   92 static List_t xPendingReadyCoRoutineList;								/*< Holds co-routines that have been readied by an external event.  They cannot be added directly to the ready lists as the ready lists cannot be accessed by interrupts. */
//   93 
//   94 /* Other file private variables. --------------------------------*/
//   95 CRCB_t * pxCurrentCoRoutine = NULL;
//   96 static UBaseType_t uxTopCoRoutineReadyPriority = 0;
//   97 static TickType_t xCoRoutineTickCount = 0, xLastTickCount = 0, xPassedTicks = 0;
//   98 
//   99 /* The initial state of the co-routine when it is created. */
//  100 #define corINITIAL_STATE	( 0 )
//  101 
//  102 /*
//  103  * Place the co-routine represented by pxCRCB into the appropriate ready queue
//  104  * for the priority.  It is inserted at the end of the list.
//  105  *
//  106  * This macro accesses the co-routine ready lists and therefore must not be
//  107  * used from within an ISR.
//  108  */
//  109 #define prvAddCoRoutineToReadyQueue( pxCRCB )																		\ 
//  110 {																													\ 
//  111 	if( pxCRCB->uxPriority > uxTopCoRoutineReadyPriority )															\ 
//  112 	{																												\ 
//  113 		uxTopCoRoutineReadyPriority = pxCRCB->uxPriority;															\ 
//  114 	}																												\ 
//  115 	vListInsertEnd( ( List_t * ) &( pxReadyCoRoutineLists[ pxCRCB->uxPriority ] ), &( pxCRCB->xGenericListItem ) );	\ 
//  116 }
//  117 
//  118 /*
//  119  * Utility to ready all the lists used by the scheduler.  This is called
//  120  * automatically upon the creation of the first co-routine.
//  121  */
//  122 static void prvInitialiseCoRoutineLists( void );
//  123 
//  124 /*
//  125  * Co-routines that are readied by an interrupt cannot be placed directly into
//  126  * the ready lists (there is no mutual exclusion).  Instead they are placed in
//  127  * in the pending ready list in order that they can later be moved to the ready
//  128  * list by the co-routine scheduler.
//  129  */
//  130 static void prvCheckPendingReadyList( void );
//  131 
//  132 /*
//  133  * Macro that looks at the list of co-routines that are currently delayed to
//  134  * see if any require waking.
//  135  *
//  136  * Co-routines are stored in the queue in the order of their wake time -
//  137  * meaning once one co-routine has been found whose timer has not expired
//  138  * we need not look any further down the list.
//  139  */
//  140 static void prvCheckDelayedList( void );
//  141 
//  142 /*-----------------------------------------------------------*/
//  143 
//  144 BaseType_t xCoRoutineCreate( crCOROUTINE_CODE pxCoRoutineCode, UBaseType_t uxPriority, UBaseType_t uxIndex )
//  145 {
//  146 BaseType_t xReturn;
//  147 CRCB_t *pxCoRoutine;
//  148 
//  149 	/* Allocate the memory that will store the co-routine control block. */
//  150 	pxCoRoutine = ( CRCB_t * ) pvPortMalloc( sizeof( CRCB_t ) );
//  151 	if( pxCoRoutine )
//  152 	{
//  153 		/* If pxCurrentCoRoutine is NULL then this is the first co-routine to
//  154 		be created and the co-routine data structures need initialising. */
//  155 		if( pxCurrentCoRoutine == NULL )
//  156 		{
//  157 			pxCurrentCoRoutine = pxCoRoutine;
//  158 			prvInitialiseCoRoutineLists();
//  159 		}
//  160 
//  161 		/* Check the priority is within limits. */
//  162 		if( uxPriority >= configMAX_CO_ROUTINE_PRIORITIES )
//  163 		{
//  164 			uxPriority = configMAX_CO_ROUTINE_PRIORITIES - 1;
//  165 		}
//  166 
//  167 		/* Fill out the co-routine control block from the function parameters. */
//  168 		pxCoRoutine->uxState = corINITIAL_STATE;
//  169 		pxCoRoutine->uxPriority = uxPriority;
//  170 		pxCoRoutine->uxIndex = uxIndex;
//  171 		pxCoRoutine->pxCoRoutineFunction = pxCoRoutineCode;
//  172 
//  173 		/* Initialise all the other co-routine control block parameters. */
//  174 		vListInitialiseItem( &( pxCoRoutine->xGenericListItem ) );
//  175 		vListInitialiseItem( &( pxCoRoutine->xEventListItem ) );
//  176 
//  177 		/* Set the co-routine control block as a link back from the ListItem_t.
//  178 		This is so we can get back to the containing CRCB from a generic item
//  179 		in a list. */
//  180 		listSET_LIST_ITEM_OWNER( &( pxCoRoutine->xGenericListItem ), pxCoRoutine );
//  181 		listSET_LIST_ITEM_OWNER( &( pxCoRoutine->xEventListItem ), pxCoRoutine );
//  182 
//  183 		/* Event lists are always in priority order. */
//  184 		listSET_LIST_ITEM_VALUE( &( pxCoRoutine->xEventListItem ), ( ( TickType_t ) configMAX_CO_ROUTINE_PRIORITIES - ( TickType_t ) uxPriority ) );
//  185 
//  186 		/* Now the co-routine has been initialised it can be added to the ready
//  187 		list at the correct priority. */
//  188 		prvAddCoRoutineToReadyQueue( pxCoRoutine );
//  189 
//  190 		xReturn = pdPASS;
//  191 	}
//  192 	else
//  193 	{
//  194 		xReturn = errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY;
//  195 	}
//  196 
//  197 	return xReturn;
//  198 }
//  199 /*-----------------------------------------------------------*/
//  200 
//  201 void vCoRoutineAddToDelayedList( TickType_t xTicksToDelay, List_t *pxEventList )
//  202 {
//  203 TickType_t xTimeToWake;
//  204 
//  205 	/* Calculate the time to wake - this may overflow but this is
//  206 	not a problem. */
//  207 	xTimeToWake = xCoRoutineTickCount + xTicksToDelay;
//  208 
//  209 	/* We must remove ourselves from the ready list before adding
//  210 	ourselves to the blocked list as the same list item is used for
//  211 	both lists. */
//  212 	( void ) uxListRemove( ( ListItem_t * ) &( pxCurrentCoRoutine->xGenericListItem ) );
//  213 
//  214 	/* The list item will be inserted in wake time order. */
//  215 	listSET_LIST_ITEM_VALUE( &( pxCurrentCoRoutine->xGenericListItem ), xTimeToWake );
//  216 
//  217 	if( xTimeToWake < xCoRoutineTickCount )
//  218 	{
//  219 		/* Wake time has overflowed.  Place this item in the
//  220 		overflow list. */
//  221 		vListInsert( ( List_t * ) pxOverflowDelayedCoRoutineList, ( ListItem_t * ) &( pxCurrentCoRoutine->xGenericListItem ) );
//  222 	}
//  223 	else
//  224 	{
//  225 		/* The wake time has not overflowed, so we can use the
//  226 		current block list. */
//  227 		vListInsert( ( List_t * ) pxDelayedCoRoutineList, ( ListItem_t * ) &( pxCurrentCoRoutine->xGenericListItem ) );
//  228 	}
//  229 
//  230 	if( pxEventList )
//  231 	{
//  232 		/* Also add the co-routine to an event list.  If this is done then the
//  233 		function must be called with interrupts disabled. */
//  234 		vListInsert( pxEventList, &( pxCurrentCoRoutine->xEventListItem ) );
//  235 	}
//  236 }
//  237 /*-----------------------------------------------------------*/
//  238 
//  239 static void prvCheckPendingReadyList( void )
//  240 {
//  241 	/* Are there any co-routines waiting to get moved to the ready list?  These
//  242 	are co-routines that have been readied by an ISR.  The ISR cannot access
//  243 	the	ready lists itself. */
//  244 	while( listLIST_IS_EMPTY( &xPendingReadyCoRoutineList ) == pdFALSE )
//  245 	{
//  246 		CRCB_t *pxUnblockedCRCB;
//  247 
//  248 		/* The pending ready list can be accessed by an ISR. */
//  249 		portDISABLE_INTERRUPTS();
//  250 		{
//  251 			pxUnblockedCRCB = ( CRCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( (&xPendingReadyCoRoutineList) );
//  252 			( void ) uxListRemove( &( pxUnblockedCRCB->xEventListItem ) );
//  253 		}
//  254 		portENABLE_INTERRUPTS();
//  255 
//  256 		( void ) uxListRemove( &( pxUnblockedCRCB->xGenericListItem ) );
//  257 		prvAddCoRoutineToReadyQueue( pxUnblockedCRCB );
//  258 	}
//  259 }
//  260 /*-----------------------------------------------------------*/
//  261 
//  262 static void prvCheckDelayedList( void )
//  263 {
//  264 CRCB_t *pxCRCB;
//  265 
//  266 	xPassedTicks = xTaskGetTickCount() - xLastTickCount;
//  267 	while( xPassedTicks )
//  268 	{
//  269 		xCoRoutineTickCount++;
//  270 		xPassedTicks--;
//  271 
//  272 		/* If the tick count has overflowed we need to swap the ready lists. */
//  273 		if( xCoRoutineTickCount == 0 )
//  274 		{
//  275 			List_t * pxTemp;
//  276 
//  277 			/* Tick count has overflowed so we need to swap the delay lists.  If there are
//  278 			any items in pxDelayedCoRoutineList here then there is an error! */
//  279 			pxTemp = pxDelayedCoRoutineList;
//  280 			pxDelayedCoRoutineList = pxOverflowDelayedCoRoutineList;
//  281 			pxOverflowDelayedCoRoutineList = pxTemp;
//  282 		}
//  283 
//  284 		/* See if this tick has made a timeout expire. */
//  285 		while( listLIST_IS_EMPTY( pxDelayedCoRoutineList ) == pdFALSE )
//  286 		{
//  287 			pxCRCB = ( CRCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxDelayedCoRoutineList );
//  288 
//  289 			if( xCoRoutineTickCount < listGET_LIST_ITEM_VALUE( &( pxCRCB->xGenericListItem ) ) )
//  290 			{
//  291 				/* Timeout not yet expired. */
//  292 				break;
//  293 			}
//  294 
//  295 			portDISABLE_INTERRUPTS();
//  296 			{
//  297 				/* The event could have occurred just before this critical
//  298 				section.  If this is the case then the generic list item will
//  299 				have been moved to the pending ready list and the following
//  300 				line is still valid.  Also the pvContainer parameter will have
//  301 				been set to NULL so the following lines are also valid. */
//  302 				( void ) uxListRemove( &( pxCRCB->xGenericListItem ) );
//  303 
//  304 				/* Is the co-routine waiting on an event also? */
//  305 				if( pxCRCB->xEventListItem.pvContainer )
//  306 				{
//  307 					( void ) uxListRemove( &( pxCRCB->xEventListItem ) );
//  308 				}
//  309 			}
//  310 			portENABLE_INTERRUPTS();
//  311 
//  312 			prvAddCoRoutineToReadyQueue( pxCRCB );
//  313 		}
//  314 	}
//  315 
//  316 	xLastTickCount = xCoRoutineTickCount;
//  317 }
//  318 /*-----------------------------------------------------------*/
//  319 
//  320 void vCoRoutineSchedule( void )
//  321 {
//  322 	/* See if any co-routines readied by events need moving to the ready lists. */
//  323 	prvCheckPendingReadyList();
//  324 
//  325 	/* See if any delayed co-routines have timed out. */
//  326 	prvCheckDelayedList();
//  327 
//  328 	/* Find the highest priority queue that contains ready co-routines. */
//  329 	while( listLIST_IS_EMPTY( &( pxReadyCoRoutineLists[ uxTopCoRoutineReadyPriority ] ) ) )
//  330 	{
//  331 		if( uxTopCoRoutineReadyPriority == 0 )
//  332 		{
//  333 			/* No more co-routines to check. */
//  334 			return;
//  335 		}
//  336 		--uxTopCoRoutineReadyPriority;
//  337 	}
//  338 
//  339 	/* listGET_OWNER_OF_NEXT_ENTRY walks through the list, so the co-routines
//  340 	 of the	same priority get an equal share of the processor time. */
//  341 	listGET_OWNER_OF_NEXT_ENTRY( pxCurrentCoRoutine, &( pxReadyCoRoutineLists[ uxTopCoRoutineReadyPriority ] ) );
//  342 
//  343 	/* Call the co-routine. */
//  344 	( pxCurrentCoRoutine->pxCoRoutineFunction )( pxCurrentCoRoutine, pxCurrentCoRoutine->uxIndex );
//  345 
//  346 	return;
//  347 }
//  348 /*-----------------------------------------------------------*/
//  349 
//  350 static void prvInitialiseCoRoutineLists( void )
//  351 {
//  352 UBaseType_t uxPriority;
//  353 
//  354 	for( uxPriority = 0; uxPriority < configMAX_CO_ROUTINE_PRIORITIES; uxPriority++ )
//  355 	{
//  356 		vListInitialise( ( List_t * ) &( pxReadyCoRoutineLists[ uxPriority ] ) );
//  357 	}
//  358 
//  359 	vListInitialise( ( List_t * ) &xDelayedCoRoutineList1 );
//  360 	vListInitialise( ( List_t * ) &xDelayedCoRoutineList2 );
//  361 	vListInitialise( ( List_t * ) &xPendingReadyCoRoutineList );
//  362 
//  363 	/* Start with pxDelayedCoRoutineList using list1 and the
//  364 	pxOverflowDelayedCoRoutineList using list2. */
//  365 	pxDelayedCoRoutineList = &xDelayedCoRoutineList1;
//  366 	pxOverflowDelayedCoRoutineList = &xDelayedCoRoutineList2;
//  367 }
//  368 /*-----------------------------------------------------------*/
//  369 
//  370 BaseType_t xCoRoutineRemoveFromEventList( const List_t *pxEventList )
//  371 {
//  372 CRCB_t *pxUnblockedCRCB;
//  373 BaseType_t xReturn;
//  374 
//  375 	/* This function is called from within an interrupt.  It can only access
//  376 	event lists and the pending ready list.  This function assumes that a
//  377 	check has already been made to ensure pxEventList is not empty. */
//  378 	pxUnblockedCRCB = ( CRCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxEventList );
//  379 	( void ) uxListRemove( &( pxUnblockedCRCB->xEventListItem ) );
//  380 	vListInsertEnd( ( List_t * ) &( xPendingReadyCoRoutineList ), &( pxUnblockedCRCB->xEventListItem ) );
//  381 
//  382 	if( pxUnblockedCRCB->uxPriority >= pxCurrentCoRoutine->uxPriority )
//  383 	{
//  384 		xReturn = pdTRUE;
//  385 	}
//  386 	else
//  387 	{
//  388 		xReturn = pdFALSE;
//  389 	}
//  390 
//  391 	return xReturn;
//  392 }
//  393 
//  394 #endif /* configUSE_CO_ROUTINES == 0 */
//  395 
// 
// 
// 0 bytes of memory
//
//Errors: none
//Warnings: none
