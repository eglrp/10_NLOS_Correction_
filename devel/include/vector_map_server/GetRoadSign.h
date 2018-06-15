// Generated by gencpp from file vector_map_server/GetRoadSign.msg
// DO NOT EDIT!


#ifndef VECTOR_MAP_SERVER_MESSAGE_GETROADSIGN_H
#define VECTOR_MAP_SERVER_MESSAGE_GETROADSIGN_H

#include <ros/service_traits.h>


#include <vector_map_server/GetRoadSignRequest.h>
#include <vector_map_server/GetRoadSignResponse.h>


namespace vector_map_server
{

struct GetRoadSign
{

typedef GetRoadSignRequest Request;
typedef GetRoadSignResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetRoadSign
} // namespace vector_map_server


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::vector_map_server::GetRoadSign > {
  static const char* value()
  {
    return "a3a1c7348b0d5939dc928bb96d45d441";
  }

  static const char* value(const ::vector_map_server::GetRoadSign&) { return value(); }
};

template<>
struct DataType< ::vector_map_server::GetRoadSign > {
  static const char* value()
  {
    return "vector_map_server/GetRoadSign";
  }

  static const char* value(const ::vector_map_server::GetRoadSign&) { return value(); }
};


// service_traits::MD5Sum< ::vector_map_server::GetRoadSignRequest> should match 
// service_traits::MD5Sum< ::vector_map_server::GetRoadSign > 
template<>
struct MD5Sum< ::vector_map_server::GetRoadSignRequest>
{
  static const char* value()
  {
    return MD5Sum< ::vector_map_server::GetRoadSign >::value();
  }
  static const char* value(const ::vector_map_server::GetRoadSignRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::vector_map_server::GetRoadSignRequest> should match 
// service_traits::DataType< ::vector_map_server::GetRoadSign > 
template<>
struct DataType< ::vector_map_server::GetRoadSignRequest>
{
  static const char* value()
  {
    return DataType< ::vector_map_server::GetRoadSign >::value();
  }
  static const char* value(const ::vector_map_server::GetRoadSignRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::vector_map_server::GetRoadSignResponse> should match 
// service_traits::MD5Sum< ::vector_map_server::GetRoadSign > 
template<>
struct MD5Sum< ::vector_map_server::GetRoadSignResponse>
{
  static const char* value()
  {
    return MD5Sum< ::vector_map_server::GetRoadSign >::value();
  }
  static const char* value(const ::vector_map_server::GetRoadSignResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::vector_map_server::GetRoadSignResponse> should match 
// service_traits::DataType< ::vector_map_server::GetRoadSign > 
template<>
struct DataType< ::vector_map_server::GetRoadSignResponse>
{
  static const char* value()
  {
    return DataType< ::vector_map_server::GetRoadSign >::value();
  }
  static const char* value(const ::vector_map_server::GetRoadSignResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VECTOR_MAP_SERVER_MESSAGE_GETROADSIGN_H