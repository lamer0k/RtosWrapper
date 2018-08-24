//
// Created by Sergey on 18.08.2018.
//

#ifndef MUTEX_HPP
#define MUTEX_HPP

#include "FreeRtos/rtosdefs.hpp"

namespace OsWrapper
{
  extern tMutexHandle wCreateMutex(tMutex &);
  extern void wDeleteMutex(tMutexHandle &);
  extern bool wLockMutex(tMutexHandle &, tTime);
  extern void wUnLockMutex(tMutexHandle &);

  class Mutex
  {
    public:
      Mutex()
      {
        handle = wCreateMutex(mutex);
      }

      ~Mutex()
      {
        wDeleteMutex(handle);
      }

      bool Lock(tTime timeOut = 1000ms)
      {
        return wLockMutex(handle, timeOut) ;
      }

      void UnLock()
      {
        wUnLockMutex(handle);
      }

    private:
      tMutex mutex;
      tMutexHandle handle;
  };
}


#endif //MUTEX_HPP
