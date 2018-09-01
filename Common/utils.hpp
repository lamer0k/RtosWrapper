#ifndef UTILS_H
#define UTILS_H
#include <cassert> 
namespace utils
{

  template<typename T, typename T1>
  inline void setBit(T &value, T1 bit) {
    assert((sizeof(T) * 8U) > bit);
    value |= static_cast<T>(static_cast<T>(1) << static_cast<T>(bit));
  };
  
  template<typename T, typename T1>
  inline void clearBit(T &value, T1 bit) {
    assert((sizeof(T) * 8U) > bit);
    value &=~ static_cast<T>(static_cast<T>(1) << static_cast<T>(bit));
  };
  
  template<typename T,typename T1>
  inline void toggleBit(T &value, T1 bit) {
    assert((sizeof(T) * 8U) > bit);
    value ^= static_cast<T>(static_cast<T>(1) << static_cast<T>(bit));
  };
  
  template<typename T, typename T1>
  inline bool checkBit(const T &value, T1 bit) {
    assert((sizeof(T) * 8U) > bit);
    return !((value & (static_cast<T>(1) << static_cast<T>(bit))) == static_cast<T>(0U));
  };

  template<typename T, typename T1>
  inline void setBitValue(T &value, T1 bit) {
    assert((sizeof(T) * 8U) > bit);
    value = static_cast<T>(static_cast<T>(1) << static_cast<T>(bit));
  };

  template<typename T, typename T1, typename T2>
  inline void setBitsAt(T &value, T1 bits, T2 position) {
    assert((sizeof(T) * 8U) > position);
    value |= (static_cast<T>(static_cast<T>(bits) << static_cast<T>(position)));
  };

  template<typename T, typename T1, typename T2>
  inline void clearBitsAt(T &value, T1 bits, T2 position) {
    assert((sizeof(T) * 8U) > position);
    value ^=~(static_cast<T>(static_cast<T>(bits) << static_cast<T>(position)));
  };
};

constexpr unsigned long long operator "" sec(unsigned long long sec) {
  return sec * 1000U;
}

constexpr unsigned long long operator "" msec(unsigned long long msec) {
  return msec;
}
#endif