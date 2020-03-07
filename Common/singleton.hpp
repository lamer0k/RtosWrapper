#ifndef __SINGLETON_HPP
#define __SINGLETON_HPP  

template<typename T>
class Singleton
{
public:
   Singleton(const Singleton&) = delete;
   Singleton& operator = (const Singleton&) = delete;
   static T& GetInstance()
   {
    // static T instance;
     return instance;
   }
  protected:
   static T instance;
   Singleton() = default;
};

template<typename T>
T Singleton<T>::instance;

#endif