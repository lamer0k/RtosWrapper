///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.40.2.214/W32 for ARM        21/Mar/2020  13:38:56
// Copyright 1999-2019 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  C:\GitHub\KursovoyKarkas\Rtos\FreeRtos\list.c
//    Command line =
//        -f C:\Users\Serge\AppData\Local\Temp\EW705A.tmp
//        (C:\GitHub\KursovoyKarkas\Rtos\FreeRtos\list.c -lC
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
//    List file    =  C:\GitHub\KursovoyKarkas\Debug\List\list.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_full_locale_support", "0"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC uxListRemove
        PUBLIC vListInitialise
        PUBLIC vListInitialiseItem
        PUBLIC vListInsert
        PUBLIC vListInsertEnd
        
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
        
// C:\GitHub\KursovoyKarkas\Rtos\FreeRtos\list.c
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
//   70 
//   71 #include <stdlib.h>
//   72 #include "FreeRTOS.h"
//   73 #include "list.h"
//   74 
//   75 /*-----------------------------------------------------------
//   76  * PUBLIC LIST API documented in list.h
//   77  *----------------------------------------------------------*/
//   78 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function vListInitialise
          CFI NoCalls
        THUMB
//   79 void vListInitialise( List_t * const pxList )
//   80 {
//   81 	/* The list structure contains a list item which is used to mark the
//   82 	end of the list.  To initialise the list the list end is inserted
//   83 	as the only list entry. */
//   84 	pxList->pxIndex = ( ListItem_t * ) &( pxList->xListEnd );			/*lint !e826 !e740 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
vListInitialise:
        ADDS     R1,R0,#+8
        STR      R1,[R0, #+4]
//   85 
//   86 	/* The list end value is the highest possible value in the list to
//   87 	ensure it remains at the end of the list. */
//   88 	pxList->xListEnd.xItemValue = portMAX_DELAY;
        MOVS     R1,#-1
        STR      R1,[R0, #+8]
//   89 
//   90 	/* The list end next and previous pointers point to itself so we know
//   91 	when the list is empty. */
//   92 	pxList->xListEnd.pxNext = ( ListItem_t * ) &( pxList->xListEnd );	/*lint !e826 !e740 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
        ADDS     R1,R0,#+8
        STR      R1,[R0, #+12]
//   93 	pxList->xListEnd.pxPrevious = ( ListItem_t * ) &( pxList->xListEnd );/*lint !e826 !e740 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
        ADDS     R1,R0,#+8
        STR      R1,[R0, #+16]
//   94 
//   95 	pxList->uxNumberOfItems = ( UBaseType_t ) 0U;
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   96 
//   97 	/* Write known values into the list if
//   98 	configUSE_LIST_DATA_INTEGRITY_CHECK_BYTES is set to 1. */
//   99 	listSET_LIST_INTEGRITY_CHECK_1_VALUE( pxList );
//  100 	listSET_LIST_INTEGRITY_CHECK_2_VALUE( pxList );
//  101 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//  102 /*-----------------------------------------------------------*/
//  103 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function vListInitialiseItem
          CFI NoCalls
        THUMB
//  104 void vListInitialiseItem( ListItem_t * const pxItem )
//  105 {
//  106 	/* Make sure the list item is not recorded as being on a list. */
//  107 	pxItem->pvContainer = NULL;
vListInitialiseItem:
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
//  108 
//  109 	/* Write known values into the list item if
//  110 	configUSE_LIST_DATA_INTEGRITY_CHECK_BYTES is set to 1. */
//  111 	listSET_FIRST_LIST_ITEM_INTEGRITY_CHECK_VALUE( pxItem );
//  112 	listSET_SECOND_LIST_ITEM_INTEGRITY_CHECK_VALUE( pxItem );
//  113 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  114 /*-----------------------------------------------------------*/
//  115 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function vListInsertEnd
          CFI NoCalls
        THUMB
//  116 void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem )
//  117 {
//  118 ListItem_t * const pxIndex = pxList->pxIndex;
vListInsertEnd:
        LDR      R2,[R0, #+4]
//  119 
//  120 	/* Only effective when configASSERT() is also defined, these tests may catch
//  121 	the list data structures being overwritten in memory.  They will not catch
//  122 	data errors caused by incorrect configuration or use of FreeRTOS. */
//  123 	listTEST_LIST_INTEGRITY( pxList );
//  124 	listTEST_LIST_ITEM_INTEGRITY( pxNewListItem );
//  125 
//  126 	/* Insert a new list item into pxList, but rather than sort the list,
//  127 	makes the new list item the last item to be removed by a call to
//  128 	listGET_OWNER_OF_NEXT_ENTRY(). */
//  129 	pxNewListItem->pxNext = pxIndex;
        STR      R2,[R1, #+4]
//  130 	pxNewListItem->pxPrevious = pxIndex->pxPrevious;
        LDR      R3,[R2, #+8]
        STR      R3,[R1, #+8]
//  131 
//  132 	/* Only used during decision coverage testing. */
//  133 	mtCOVERAGE_TEST_DELAY();
//  134 
//  135 	pxIndex->pxPrevious->pxNext = pxNewListItem;
        LDR      R3,[R2, #+8]
        STR      R1,[R3, #+4]
//  136 	pxIndex->pxPrevious = pxNewListItem;
        STR      R1,[R2, #+8]
//  137 
//  138 	/* Remember which list the item is in. */
//  139 	pxNewListItem->pvContainer = ( void * ) pxList;
        STR      R0,[R1, #+16]
//  140 
//  141 	( pxList->uxNumberOfItems )++;
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
//  142 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  143 /*-----------------------------------------------------------*/
//  144 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function vListInsert
          CFI NoCalls
        THUMB
//  145 void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem )
//  146 {
vListInsert:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  147 ListItem_t *pxIterator;
//  148 const TickType_t xValueOfInsertion = pxNewListItem->xItemValue;
        LDR      R3,[R1, #+0]
//  149 
//  150 	/* Only effective when configASSERT() is also defined, these tests may catch
//  151 	the list data structures being overwritten in memory.  They will not catch
//  152 	data errors caused by incorrect configuration or use of FreeRTOS. */
//  153 	listTEST_LIST_INTEGRITY( pxList );
//  154 	listTEST_LIST_ITEM_INTEGRITY( pxNewListItem );
//  155 
//  156 	/* Insert the new list item into the list, sorted in xItemValue order.
//  157 
//  158 	If the list already contains a list item with the same item value then the
//  159 	new list item should be placed after it.  This ensures that TCB's which are
//  160 	stored in ready lists (all of which have the same xItemValue value) get a
//  161 	share of the CPU.  However, if the xItemValue is the same as the back marker
//  162 	the iteration loop below will not end.  Therefore the value is checked
//  163 	first, and the algorithm slightly modified if necessary. */
//  164 	if( xValueOfInsertion == portMAX_DELAY )
        CMN      R3,#+1
        BNE.N    ??vListInsert_0
//  165 	{
//  166 		pxIterator = pxList->xListEnd.pxPrevious;
        LDR      R2,[R0, #+16]
        B.N      ??vListInsert_1
//  167 	}
//  168 	else
//  169 	{
//  170 		/* *** NOTE ***********************************************************
//  171 		If you find your application is crashing here then likely causes are
//  172 		listed below.  In addition see http://www.freertos.org/FAQHelp.html for
//  173 		more tips, and ensure configASSERT() is defined!
//  174 		http://www.freertos.org/a00110.html#configASSERT
//  175 
//  176 			1) Stack overflow -
//  177 			   see http://www.freertos.org/Stacks-and-stack-overflow-checking.html
//  178 			2) Incorrect interrupt priority assignment, especially on Cortex-M
//  179 			   parts where numerically high priority values denote low actual
//  180 			   interrupt priorities, which can seem counter intuitive.  See
//  181 			   http://www.freertos.org/RTOS-Cortex-M3-M4.html and the definition
//  182 			   of configMAX_SYSCALL_INTERRUPT_PRIORITY on
//  183 			   http://www.freertos.org/a00110.html
//  184 			3) Calling an API function from within a critical section or when
//  185 			   the scheduler is suspended, or calling an API function that does
//  186 			   not end in "FromISR" from an interrupt.
//  187 			4) Using a queue or semaphore before it has been initialised or
//  188 			   before the scheduler has been started (are interrupts firing
//  189 			   before vTaskStartScheduler() has been called?).
//  190 		**********************************************************************/
//  191 
//  192 		for( pxIterator = ( ListItem_t * ) &( pxList->xListEnd ); pxIterator->pxNext->xItemValue <= xValueOfInsertion; pxIterator = pxIterator->pxNext ) /*lint !e826 !e740 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
??vListInsert_0:
        ADDS     R2,R0,#+8
        B.N      ??vListInsert_2
??vListInsert_3:
        LDR      R2,[R2, #+4]
??vListInsert_2:
        LDR      R4,[R2, #+4]
        LDR      R4,[R4, #+0]
        CMP      R3,R4
        BCS.N    ??vListInsert_3
//  193 		{
//  194 			/* There is nothing to do here, just iterating to the wanted
//  195 			insertion position. */
//  196 		}
//  197 	}
//  198 
//  199 	pxNewListItem->pxNext = pxIterator->pxNext;
??vListInsert_1:
        LDR      R3,[R2, #+4]
        STR      R3,[R1, #+4]
//  200 	pxNewListItem->pxNext->pxPrevious = pxNewListItem;
        LDR      R3,[R1, #+4]
        STR      R1,[R3, #+8]
//  201 	pxNewListItem->pxPrevious = pxIterator;
        STR      R2,[R1, #+8]
//  202 	pxIterator->pxNext = pxNewListItem;
        STR      R1,[R2, #+4]
//  203 
//  204 	/* Remember which list the item is in.  This allows fast removal of the
//  205 	item later. */
//  206 	pxNewListItem->pvContainer = ( void * ) pxList;
        STR      R0,[R1, #+16]
//  207 
//  208 	( pxList->uxNumberOfItems )++;
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
//  209 }
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  210 /*-----------------------------------------------------------*/
//  211 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function uxListRemove
          CFI NoCalls
        THUMB
//  212 UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove )
//  213 {
//  214 /* The list item knows which list it is in.  Obtain the list from the list
//  215 item. */
//  216 List_t * const pxList = ( List_t * ) pxItemToRemove->pvContainer;
uxListRemove:
        LDR      R1,[R0, #+16]
//  217 
//  218 	pxItemToRemove->pxNext->pxPrevious = pxItemToRemove->pxPrevious;
        LDR      R2,[R0, #+8]
        LDR      R3,[R0, #+4]
        STR      R2,[R3, #+8]
//  219 	pxItemToRemove->pxPrevious->pxNext = pxItemToRemove->pxNext;
        LDR      R2,[R0, #+4]
        LDR      R3,[R0, #+8]
        STR      R2,[R3, #+4]
//  220 
//  221 	/* Only used during decision coverage testing. */
//  222 	mtCOVERAGE_TEST_DELAY();
//  223 
//  224 	/* Make sure the index is left pointing to a valid item. */
//  225 	if( pxList->pxIndex == pxItemToRemove )
        LDR      R2,[R1, #+4]
        CMP      R2,R0
        BNE.N    ??uxListRemove_0
//  226 	{
//  227 		pxList->pxIndex = pxItemToRemove->pxPrevious;
        LDR      R2,[R0, #+8]
        STR      R2,[R1, #+4]
//  228 	}
//  229 	else
//  230 	{
//  231 		mtCOVERAGE_TEST_MARKER();
//  232 	}
//  233 
//  234 	pxItemToRemove->pvContainer = NULL;
??uxListRemove_0:
        MOVS     R2,#+0
        STR      R2,[R0, #+16]
//  235 	( pxList->uxNumberOfItems )--;
        LDR      R0,[R1, #+0]
        SUBS     R0,R0,#+1
        STR      R0,[R1, #+0]
//  236 
//  237 	return pxList->uxNumberOfItems;
        LDR      R0,[R1, #+0]
        BX       LR               ;; return
//  238 }
          CFI EndBlock cfiBlock4

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  239 /*-----------------------------------------------------------*/
//  240 
// 
// 152 bytes in section .text
// 
// 152 bytes of CODE memory
//
//Errors: none
//Warnings: none
