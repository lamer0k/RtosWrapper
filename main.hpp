/*******************************************************************************
* Filename  	: main.hpp
* 
* Details   	: header for main file
* Author        : Sergey Kolody
*******************************************************************************/
#ifndef __MAIN_HPP
#define __MAIN_HPP  
#include "Rtos/wrapper/event.hpp"
#include "Rtos/wrapper/mutex.hpp"

extern OsWrapper::Event event;
extern OsWrapper::Mutex myMutex;

#endif //__MAIN_HPP