// Generated by gencpp from file vector_map_server/GetCrossRoad.msg
// DO NOT EDIT!


#ifndef VECTOR_MAP_SERVER_MESSAGE_GETCROSSROAD_H
#define VECTOR_MAP_SERVER_MESSAGE_GETCROSSROAD_H

#include <ros/service_traits.h>


#include <vector_map_server/GetCrossRoadRequest.h>
#include <vector_map_server/GetCrossRoadResponse.h>


namespace vector_map_server
{

struct GetCrossRoad
{

typedef GetCrossRoadRequest Request;
typedef GetCrossRoadResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetCrossRoad
} // namespace vector_map_server


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::vector_map_server::GetCrossRoad > {
  static const char* value()
  {
    return "1fc9a5709cc91620e4594fff27c94e9f";
  }

  static const char* value(const ::vector_map_server::GetCrossRoad&) { return value(); }
};

template<>
struct DataType< ::vector_map_server::GetCrossRoad > {
  static const char* value()
  {
    return "vector_map_server/GetCrossRoad";
  }

  static const char* value(const ::vector_map_server::GetCrossRoad&) { return value(); }
};


// service_traits::MD5Sum< ::vector_map_server::GetCrossRoadRequest> should match 
// service_traits::MD5Sum< ::vector_map_server::GetCrossRoad > 
template<>
struct MD5Sum< ::vector_map_server::GetCrossRoadRequest>
{
  static const char* value()
  {
    return MD5Sum< ::vector_map_server::GetCrossRoad >::value();
  }
  static const char* value(const ::vector_map_server::GetCrossRoadRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::vector_map_server::GetCrossRoadRequest> should match 
// service_traits::DataType< ::vector_map_server::GetCrossRoad > 
template<>
struct DataType< ::vector_map_server::GetCrossRoadRequest>
{
  static const char* value()
  {
    return DataType< ::vector_map_server::GetCrossRoad >::value();
  }
  static const char* value(const ::vector_map_server::GetCrossRoadRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::vector_map_server::GetCrossRoadResponse> should match 
// service_traits::MD5Sum< ::vector_map_server::GetCrossRoad > 
template<>
struct MD5Sum< ::vector_map_server::GetCrossRoadResponse>
{
  static const char* value()
  {
    return MD5Sum< ::vector_map_server::GetCrossRoad >::value();
  }
  static const char* value(const ::vector_map_server::GetCrossRoadResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::vector_map_server::GetCrossRoadResponse> should match 
// service_traits::DataType< ::vector_map_server::GetCrossRoad > 
template<>
struct DataType< ::vector_map_server::GetCrossRoadResponse>
{
  static const char* value()
  {
    return DataType< ::vector_map_server::GetCrossRoad >::value();
  }
  static const char* value(const ::vector_map_server::GetCrossRoadResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VECTOR_MAP_SERVER_MESSAGE_GETCROSSROAD_H