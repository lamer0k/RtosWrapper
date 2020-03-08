# RTOS wrapper for students

This the example of RTOS wrapper for FreeRTOS for Stm32F411 microcontroller

To use the wrapper, it needs to copy the next files:

 -- CMSIS
 
 -- COMMON
 
 -- Rtos
 
 See more information on https://habr.com/ru/post/420467/
 
 Example of creating a task:
 
 ```cpp
using namespace OsWrapper ;
class MyTask : public Thread<static_cast<std::size_t>(StackDepth::minimal)>
{

public:
  virtual void Execute() override
  {
    while(true) 
    {
      if (button.IsPressed())
      {
        event.Signal();
      }
      Sleep(300ms);
  }

  MyTask(OsWrapper::Event& event, UserButton& button) : event(event), button(button)
  {
  }
private:
  OsWrapper::Event& event;
  UserButton& button ;
} ;
```
and another task:

 ```cpp 
class Led1Task : public Thread<static_cast<std::size_t>(StackDepth::minimal)>
{
public:
  virtual void Execute() override
  {
    LedsController & ledsCntr =   LedsController::GetInstance();
    for(;;)
    {
      if (event.Wait() != 0)
      {
        ledsCntr.NextMode();
      }
      ledsCntr.Update();
    }
  }

  Led1Task(OsWrapper::Event& event) : event(event)
  {
  }
private: 
  OsWrapper::Event& event ;
} ;
```
and used it

```cpp
OsWrapper::Event event{500ms, 1};

MyTask myTask(event, UserButton::GetInstance());
Led1Task led1Task(event);

int main()
{
  using namespace OsWrapper;
  Rtos::CreateThread(myTask, "myTask", ThreadPriority::lowest);
  Rtos::CreateThread(led1Task, "Led1Task");
  Rtos::Start();

  return 0;
}
```
 
 
