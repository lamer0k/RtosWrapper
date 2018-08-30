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

#include "FreeRtos/rtosdefs.hpp"
#include "../../Common/susudefs.hpp"
#include <array>

namespace OsWrapper
{
  extern bool wMailBoxPut(tMailBoxHandle &, const void* );
  extern tMailBoxHandle wMailBoxCreate(tU16,tU16, tU8 *, tMailBoxContext &);
  extern void wMailBoxDelete(tMailBoxHandle &);
  extern bool wMailBoxGet(tMailBoxHandle &, void *, tTime);

  template<typename T, int size>
  class MailBox
  {
    public:
      MailBox()
      {
        handle = wMailBoxCreate(size, sizeof(T), buffer.data(), context);
      }

      ~MailBox()
      {
        wMailBoxDelete(handle);
      }

      bool Put(const T &item)
      {
        return wMailBoxPut(handle, &item);
      }

      bool Get(T &item, tTime timeOut)
      {
        return wMailBoxGet(handle, &item, timeOut);
      }

    private:
      tMailBoxHandle handle;
      tMailBoxContext context;
      std::array<tU8, size * sizeof(T)> buffer;
  };
}
#endif //MAILBOX_HPP
