#include <FreeRTOSConfig.h>
#include <mpu_wrappers.h>
#include <tasks.c>

	//RSEG    CODE:CODE(2)
	//thumb

extern 	PRIVILEGED_DATA TCB_t * volatile pxCurrentTCB ;
//EXTERN pxCurrentTCB
extern void vTaskSwitchContext(void) ;
//EXTERN vTaskSwitchContext


static void xPortPendSVHandler();
static void vPortSVCHandler();
static void vPortStartFirstTask();
static void vPortEnableVFP();
	//PUBLIC vPortSVCHandler
	//PUBLIC vPortStartFirstTask
	//PUBLIC vPortEnableVFP


/*-----------------------------------------------------------*/
void Test()
{

  asm volatile (
       
       
        " xPortPendSVHandler:	"
        "mrs r0, psp "
	"isb"
	/* Get the location of the current TCB. */
	"ldr	r3, =pxCurrentTCB"
	"ldr	r2, [r3]"

	/* Is the task using the FPU context?  If so, push high vfp registers. */
	"tst r14, #0x10"
	"it eq"
	"vstmdbeq r0!, {s16-s31}"

	/* Save the core registers. */
	"stmdb r0!, {r4-r11, r14}"

	/* Save the new top of stack into the first member of the TCB. */
	"str r0, [r2]"

	"stmdb sp!, {r3}"
	"mov r0, #configMAX_SYSCALL_INTERRUPT_PRIORITY"
	"msr basepri, r0"
	"dsb"
	"isb"
	"bl vTaskSwitchContext"
	"mov r0, #0"
	"msr basepri, r0"
	"ldmia sp!, {r3}"

	/* The first item in pxCurrentTCB is the task top of stack. */
	"ldr r1, [r3]"
	"ldr r0, [r1]"

	/* Pop the core registers. */
	"ldmia r0!, {r4-r11, r14}"

	/* Is the task using the FPU context?  If so, pop the high vfp registers
	too. */
	"tst r14, #0x10"
	"it eq"
	"vldmiaeq r0!, {s16-s31}:"

	"msr psp, r0"
	"isb"

	"bx r14"
        "vPortSVCHandler:"
	/* Get the location of the current TCB. */
	"ldr	r3, =pxCurrentTCB"
	"ldr r1, [r3]"
	"ldr r0, [r1]"
	/* Pop the core registers. */
	"ldmia r0!, {r4-r11, r14}"
	"msr psp, r0"
	"isb"
	"mov r0, #0"
	"msr	basepri, r0"
	"bx r14"

/*-----------------------------------------------------------*/

"vPortStartFirstTask"
	/* Use the NVIC offset register to locate the stack. */
	"ldr r0, =0xE000ED08"
	"ldr r0, [r0]"
	"ldr r0, [r0]"
	/* Set the msp back to the start of the stack. */
	"msr msp, r0"
	/* Call SVC to start the first task. */
	"cpsie i"
	"psie f"
	"dsb"
	"isb"
	"svc 0"

/*-----------------------------------------------------------*/

"vPortEnableVFP:"
	/* The FPU enable bits are in the CPACR. */
	"ldr.w r0, =0xE000ED88"
	"ldr	r1, [r0]"

	/* Enable CP10 and CP11 coprocessors, then save back. */
	"orr	r1, r1, #( 0xf << 20 )"
	"str r1, [r0]"
	"bx	r14"
  
) ;
} ;

/*-----------------------------------------------------------*/




	

