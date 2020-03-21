cmake_minimum_required(VERSION 3.12)

project(untitled CXX C ASM)

set(CMAKE_SOURCE_DIR "C:/GitHub/RtosWrapper")
set(IAR_PATH "C:/Program Files (x86)/IAR Systems/Embedded Workbench 8.3")
set(CMAKE_CXX_STANDARD 17)

#set(CMAKE_CXX_COMPILER "${IAR_PATH}/arm/bin/iccarm.exe")
#set(CMAKE_C_COMPILER   "${IAR_PATH}/arm/bin/iccarm.exe")
set(CMAKE_ASM_COMPILER "${IAR_PATH}/arm/bin/iasmarm.exe")
set(CMAKE_CXX_COMPILER_ARG1 "--c++")
set(CMAKE_CXX_COMPILER_ID "IAR")
set(CMAKE_CXX_COMPILER_VERSION "8.30.1")
set(CMAKE_CXX_COMPILER_VERSION_INTERNAL "9")
set(CMAKE_CXX_COMPILER_WRAPPER "vompwrapper.sh")
set(CMAKE_CXX_STANDARD_COMPUTED_DEFAULT "14")
set(CMAKE_CXX_COMPILE_FEATURES "cxx_std_98;cxx_std_11;cxx_std_14")
set(CMAKE_CXX98_COMPILE_FEATURES "cxx_std_98")
set(CMAKE_CXX11_COMPILE_FEATURES "cxx_std_11")
set(CMAKE_CXX14_COMPILE_FEATURES "cxx_std_14")
set(CMAKE_CXX17_COMPILE_FEATURES "")
set(CMAKE_CXX20_COMPILE_FEATURES "")
set(CMAKE_ASM_FLAGS "-s+ -w+ -r --cpu Cortex-M4 --fpu VFPv4_sp -I${CMAKE_SOURCE_DIR}/Rtos/FreeRtos/")
set(CMAKE_CXX_COMPILER_EXTERNAL_TOOLCHAIN "D:/Program Files (x86)/IAR Systems/Embedded Workbench 8.1/arm/inc/cpp")

set(CMAKE_EXECUTABLE_SUFFIX ".out")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa --no_clustering --no_scheduling --debug --endian=little --cpu=Cortex-M4 -e --fpu=VFPv4_sp --c++ --no_exceptions --no_rtti -I ${CMAKE_SOURCE_DIR}/CMSIS/ -I ${CMAKE_SOURCE_DIR}/Rtos/wrapper")
set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} -I ${CMAKE_SOURCE_DIR}/Rtos/wrapper/FreeRtos -I ${CMAKE_SOURCE_DIR}/Rtos/FreeRtos/include")
set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} -I ${CMAKE_SOURCE_DIR}/Rtos/FreeRtos -I ${CMAKE_SOURCE_DIR}/Rtos/FreeRtos/portable/MemMang")
set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} -I ${CMAKE_SOURCE_DIR}/Rtos/FreeRtos/portable/Common -I ${CMAKE_SOURCE_DIR}/Rtos/FreeRtos/portable/IAR/ARM_CM4F")
set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} -I ${CMAKE_SOURCE_DIR}/Rtos/wrapper -I ${CMAKE_SOURCE_DIR}/MyTasks")
set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} -I ${CMAKE_SOURCE_DIR}/Rtos -I ${CMAKE_SOURCE_DIR}/AHardware")
set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} -I ${CMAKE_SOURCE_DIR}/Common -I ${CMAKE_SOURCE_DIR}")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} --redirect _Printf=_PrintfFullNoMb  --redirect _Scanf=_ScanfFullNoMb  --config ${CMAKE_SOURCE_DIR}/stm32f411xE.icf --semihosting --entry __iar_program_start --vfe --text_out locale")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa --no_clustering --no_scheduling --debug --endian=little --cpu=Cortex-M4 -e --fpu=VFPv4_sp")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -I ${CMAKE_SOURCE_DIR}/Rtos/FreeRtos/include -I ${CMAKE_SOURCE_DIR}/Rtos/FreeRtos/portable/IAR/ARM_CM4F -I ${CMAKE_SOURCE_DIR}/Rtos/FreeRtos")


set(CMAKE_IAR_LINKARM "${IAR_PATH}/arm/bin/ilinkarm.exe")
set(CMAKE_IAR_ARCHIVE "${IAR_PATH}/arm/bin/iarchive.exe")
set(CMAKE_IAR_ELFTOOL "${IAR_PATH}/arm/bin/ielftool.exe")
set(CMAKE_IAR_ELFDUMP "${IAR_PATH}/arm/bin/ielfdumparm.exe")
set(CMAKE_IAR_OBJMANIP "${IAR_PATH}/arm/bin/iobjmanip.exe")
set(CMAKE_STLINK_UTILITY "E:/Projects/Clion/tools/Stm32FlashLoader/ST-LINK Utility/ST-LINK_CLI.exe")
set(CMAKE_OPENOCD_UTILITY "E:/Projects/Clion/tools/OpenOCD/OpenOCD-20180728/bin/openocd.exe")
set(CMAKE_OPENOCD_CONFIG "E:/Projects/Clion/tools/OpenOCD/OpenOCD-20180728/share/openocd/scripts")

set(CMAKE_BINARY_FILE "${CMAKE_PROJECT_NAME}")

add_custom_target(${CMAKE_PROJECT_NAME}_srec
        COMMAND ${CMAKE_IAR_ELFTOOL} --srec ${CMAKE_BINARY_FILE}.out ${CMAKE_BINARY_FILE}.srec
        )
add_dependencies(${CMAKE_PROJECT_NAME}_srec ${CMAKE_PROJECT_NAME})

#add_custom_target(flash
#        COMMAND ${CMAKE_STLINK_UTILITY} -P ${CMAKE_BINARY_FILE}.srec -V "after_programming" -Rst
#        )


add_custom_target(flash
        COMMAND ${CMAKE_OPENOCD_UTILITY} -s {CMAKE_OPENOCD_CONFIG}  -f  board/st_nucleo_f4.cfg -c "init" -c "reset_config none separate"  -c "reset init" -c "flash write_image erase ${CMAKE_BINARY_FILE}.out" -c "reset halt"
        )

add_dependencies(flash ${CMAKE_PROJECT_NAME})
#add_dependencies(flash ${CMAKE_PROJECT_NAME}_srec)



set(SOURCE_DIR AHardware CMSIS Common Rtos Rtos/FreeRtos Rtos/wrapper Rtos/wrapper/FreeRtos Rtos/FreeRtos/include Rtos/FreeRtos/portable/Common Rtos/FreeRtos/portable/IAR/ARM_CM4F Rtos/FreeRtos/portable/MemMang MyTasks )

include_directories(
        ${CMAKE_SOURCE_DIR}/CMSIS
        ${CMAKE_SOURCE_DIR}/AHardware
        ${CMAKE_SOURCE_DIR}/AHardware/Buttons
        ${CMAKE_SOURCE_DIR}/AHardware/Gpio
        ${CMAKE_SOURCE_DIR}/Rtos/FreeRtos
        ${CMAKE_SOURCE_DIR}/MyTasks
        ${CMAKE_SOURCE_DIR}/Rtos/FreeRtos/include
        ${CMAKE_SOURCE_DIR}/Application
        ${CMAKE_SOURCE_DIR}/Rtos/FreeRtos/portable/IAR/ARM_CM4F
        ${CMAKE_SOURCE_DIR}/Rtos/FreeRtos/portable/Common
        ${CMAKE_SOURCE_DIR}/Rtos/wrapper/FreeRtos
        ${CMAKE_SOURCE_DIR}/Rtos/wrapper
        ${CMAKE_SOURCE_DIR}/../CortexLib/Common
        ${CMAKE_SOURCE_DIR}/../CortexLib/Common/Singleton
        ${CMAKE_SOURCE_DIR}/../CortexLib/Common/RomObject
        ${CMAKE_SOURCE_DIR}/../CortexLib/AbstractHardware/Registers
        ${CMAKE_SOURCE_DIR}/../CortexLib/AbstractHardware/Registers/STM32F411/
        ${CMAKE_SOURCE_DIR}/../CortexLib/AbstractHardware/Registers/STM32F411/FieldValues
        ${CMAKE_SOURCE_DIR}/../CortexLib/AbstractHardware/Pin
        ${CMAKE_SOURCE_DIR}/../CortexLib/AbstractHardware/Port
        ${CMAKE_SOURCE_DIR}/../CortexLib/AbstractHardware/Atomic

        #${CMAKE_SOURCE_DIR}/../CortexLib/AbstractHardware/Atomic
)
include_directories($CMAKE_CXX_COMPILER_EXTERNAL_TOOLCHAIN)
set(SOURCES
        rtos/FreeRtos/portable/IAR/ARM_CM4F/portasm.s
        AHardware/IrqController/irqcontroller.cpp
        rtos/FreeRtos/event_groups.c
        rtos/FreeRtos/croutine.c
        MyTasks/Led1Task.cpp
        rtos/FreeRtos/list.c
        rtos/FreeRtos/portable/IAR/ARM_CM4F/port.c
        rtos/FreeRtos/queue.c
        main.cpp
        startupF411RE.cpp
        MyTasks/mytask.cpp
        rtos/FreeRtos/timers.c
        rtos/FreeRtos/tasks.c
        #rtos/FreeRtos/portable/MemMang/heap_1.c
        Application/Diagnostic/Action.hpp Application/Diagnostic/Exh001Action.hpp Application/Diagnostic/Exh002Action.hpp Application/Diagnostic/GlobalStatus.hpp)

add_executable(untitled
        ${CMAKE_SOURCE_DIR}/rtos/FreeRtos/portable/IAR/ARM_CM4F/portasm.s
        ${CMAKE_SOURCE_DIR}/AHardware/IrqController/irqcontroller.cpp
        ${CMAKE_SOURCE_DIR}/rtos/FreeRtos/event_groups.c
        ${CMAKE_SOURCE_DIR}/rtos/FreeRtos/croutine.c
        ${CMAKE_SOURCE_DIR}/MyTasks/Led1Task.cpp
        ${CMAKE_SOURCE_DIR}/rtos/FreeRtos/list.c
        ${CMAKE_SOURCE_DIR}/rtos/FreeRtos/portable/IAR/ARM_CM4F/port.c
        ${CMAKE_SOURCE_DIR}/rtos/FreeRtos/queue.c
        ${CMAKE_SOURCE_DIR}/main.cpp
        ${CMAKE_SOURCE_DIR}/startupF411RE.cpp
        ${CMAKE_SOURCE_DIR}/MyTasks/mytask.cpp
        ${CMAKE_SOURCE_DIR}/rtos/FreeRtos/timers.c
        ${CMAKE_SOURCE_DIR}/rtos/FreeRtos/tasks.c
        ${CMAKE_SOURCE_DIR}/Application/Diagnostic/Action.hpp
        Application/Diagnostic/Exh001Action.hpp Application/Diagnostic/Exh002Action.hpp Application/Diagnostic/GlobalStatus.hpp
        Rtos/wrapper/FreeRtos/rtoswrapper.hpp Rtos/wrapper/eventmode.hpp Rtos/wrapper/FreeRtos/rtosdefs.hpp
        )






