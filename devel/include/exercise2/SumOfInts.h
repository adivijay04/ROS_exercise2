// Generated by gencpp from file exercise2/SumOfInts.msg
// DO NOT EDIT!


#ifndef EXERCISE2_MESSAGE_SUMOFINTS_H
#define EXERCISE2_MESSAGE_SUMOFINTS_H

#include <ros/service_traits.h>


#include <exercise2/SumOfIntsRequest.h>
#include <exercise2/SumOfIntsResponse.h>


namespace exercise2
{

struct SumOfInts
{

typedef SumOfIntsRequest Request;
typedef SumOfIntsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SumOfInts
} // namespace exercise2


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::exercise2::SumOfInts > {
  static const char* value()
  {
    return "0cd2157d7eaac1ba7a7e9dde0a510aef";
  }

  static const char* value(const ::exercise2::SumOfInts&) { return value(); }
};

template<>
struct DataType< ::exercise2::SumOfInts > {
  static const char* value()
  {
    return "exercise2/SumOfInts";
  }

  static const char* value(const ::exercise2::SumOfInts&) { return value(); }
};


// service_traits::MD5Sum< ::exercise2::SumOfIntsRequest> should match
// service_traits::MD5Sum< ::exercise2::SumOfInts >
template<>
struct MD5Sum< ::exercise2::SumOfIntsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::exercise2::SumOfInts >::value();
  }
  static const char* value(const ::exercise2::SumOfIntsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::exercise2::SumOfIntsRequest> should match
// service_traits::DataType< ::exercise2::SumOfInts >
template<>
struct DataType< ::exercise2::SumOfIntsRequest>
{
  static const char* value()
  {
    return DataType< ::exercise2::SumOfInts >::value();
  }
  static const char* value(const ::exercise2::SumOfIntsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::exercise2::SumOfIntsResponse> should match
// service_traits::MD5Sum< ::exercise2::SumOfInts >
template<>
struct MD5Sum< ::exercise2::SumOfIntsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::exercise2::SumOfInts >::value();
  }
  static const char* value(const ::exercise2::SumOfIntsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::exercise2::SumOfIntsResponse> should match
// service_traits::DataType< ::exercise2::SumOfInts >
template<>
struct DataType< ::exercise2::SumOfIntsResponse>
{
  static const char* value()
  {
    return DataType< ::exercise2::SumOfInts >::value();
  }
  static const char* value(const ::exercise2::SumOfIntsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // EXERCISE2_MESSAGE_SUMOFINTS_H
