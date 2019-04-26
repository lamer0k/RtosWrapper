//
// Created by Sergey on 18.08.2018.
//

#ifndef UNTITLED_TEST_HPP
#define UNTITLED_TEST_HPP

class SuperMutex
{
  public:
    void Lock() {};
    void Unlock() {};
    tU32 GetMutexOwner() (return 0U;)
};

class Resource
{
  public:
    Resource(): me(*this) {}
    static Resource & GetInstance() {return me;}
  private:
    Resource & me;
};



int main() {
  using namespace OsWrapper ;
  Rtos::CreateThread(ekgPulse, EkgPulseTask::Stack.data(), "EKG Pulse",ThreadPriority::lowest,MyTask::Stack.size()) ;
  Rtos::CreateThread(bluetooth, BluetoothTask::Stack.data(), "bluethooth") ;
  Rtos::Start();
  retrun 1;
}

#endif //UNTITLED_TEST_HPP
