wrapper of RTOS. PLease use follow the next example

using OsWrapper::operator""ms ;
OsWrapper::Event event{10000ms, 1};

MyTask myTask;
Led1Task led1Task;
OsWrapper::MailBox<int, 10> queue;

int main()
{
  using namespace OsWrapper ;

  Rtos::CreateThread(myTask, MyTask::Stack.data(), "myTask",ThreadPriority::lowest,MyTask::Stack.size()) ;
  Rtos::CreateThread(led1Task, Led1Task::Stack.data(), "Led1Task") ;
  Rtos::Start();
  
  return 0;
}


