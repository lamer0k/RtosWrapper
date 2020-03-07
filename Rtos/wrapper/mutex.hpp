//
// Created by Sergey on 18.08.2018.
//

#ifndef MUTEX_HPP
#define MUTEX_HPP

#include "FreeRtos/rtosdefs.hpp"
#include "rtoswrapper.hpp" //for RtosWrapper

namespace OsWrapper
{

  class Mutex
  {
    public:
      __forceinline Mutex(): handle(wCreateMutex(mutex))
      {
      }

    __forceinline ~Mutex()
      {
        RtosWrapper::wDeleteMutex(handle);
      }

    __forceinline bool Lock(tTime timeOut = 1000ms)
      {
        return RtosWrapper::wLockMutex(handle, timeOut) ;
      }

    __forceinline void UnLock()
      {
        RtosWrapper::wUnLockMutex(handle);
      }

    private:
      tMutex mutex;
      tMutexHandle handle;
  };
}


#endif //MUTEX_HPP
