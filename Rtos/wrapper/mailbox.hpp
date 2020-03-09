/*******************************************************************************
* Filename  	: event.hpp
*
* Details   	: MailBox class which implement a buffer that is managed by the
* real-time operating system. The buffer behaves like a normal buffer; you can
* deposit something (called a message) and retrieve it later. Mailboxes usually
* work as FIFO: first in, first out. So a message that is deposited first will
* usually be retrieved first. “Message” might sound abstract, but very simply it
* means “item of data”. It will become clearer in the typical applications
* explained in the following section.
*******************************************************************************/

#ifndef MAILBOX_HPP
#define MAILBOX_HPP

#include "rtosdefs.hpp"
#include <array>
#include "rtoswrapper.hpp" // for RtosWrapper

namespace OsWrapper
{

  template<typename T, std::size_t size>
  class MailBox
  {
    public:
    __forceinline MailBox()
      {
        handle = RtosWrapper::wMailBoxCreate(size, sizeof(T), buffer.data(), context);
      }

    __forceinline ~MailBox()
      {
        RtosWrapper::wMailBoxDelete(handle);
      }

    __forceinline bool Put(const T &item)
      {
        return RtosWrapper::wMailBoxPut(handle, &item);
      }

    __forceinline bool Get(T &item, tTime timeOut)
      {
        return RtosWrapper::wMailBoxGet(handle, &item, timeOut);
      }

    private:
      tMailBoxHandle handle;
      tMailBoxContext context;
      std::array<std::uint8_t, size * sizeof(T)> buffer;
  };
}
#endif //MAILBOX_HPP
