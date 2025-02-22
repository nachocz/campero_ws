// Generated by gencpp from file poi_manager/UpdatePOIs.msg
// DO NOT EDIT!


#ifndef POI_MANAGER_MESSAGE_UPDATEPOIS_H
#define POI_MANAGER_MESSAGE_UPDATEPOIS_H

#include <ros/service_traits.h>


#include <poi_manager/UpdatePOIsRequest.h>
#include <poi_manager/UpdatePOIsResponse.h>


namespace poi_manager
{

struct UpdatePOIs
{

typedef UpdatePOIsRequest Request;
typedef UpdatePOIsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct UpdatePOIs
} // namespace poi_manager


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::poi_manager::UpdatePOIs > {
  static const char* value()
  {
    return "c194e4061af32f29e4bb999eece2910b";
  }

  static const char* value(const ::poi_manager::UpdatePOIs&) { return value(); }
};

template<>
struct DataType< ::poi_manager::UpdatePOIs > {
  static const char* value()
  {
    return "poi_manager/UpdatePOIs";
  }

  static const char* value(const ::poi_manager::UpdatePOIs&) { return value(); }
};


// service_traits::MD5Sum< ::poi_manager::UpdatePOIsRequest> should match 
// service_traits::MD5Sum< ::poi_manager::UpdatePOIs > 
template<>
struct MD5Sum< ::poi_manager::UpdatePOIsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::poi_manager::UpdatePOIs >::value();
  }
  static const char* value(const ::poi_manager::UpdatePOIsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::poi_manager::UpdatePOIsRequest> should match 
// service_traits::DataType< ::poi_manager::UpdatePOIs > 
template<>
struct DataType< ::poi_manager::UpdatePOIsRequest>
{
  static const char* value()
  {
    return DataType< ::poi_manager::UpdatePOIs >::value();
  }
  static const char* value(const ::poi_manager::UpdatePOIsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::poi_manager::UpdatePOIsResponse> should match 
// service_traits::MD5Sum< ::poi_manager::UpdatePOIs > 
template<>
struct MD5Sum< ::poi_manager::UpdatePOIsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::poi_manager::UpdatePOIs >::value();
  }
  static const char* value(const ::poi_manager::UpdatePOIsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::poi_manager::UpdatePOIsResponse> should match 
// service_traits::DataType< ::poi_manager::UpdatePOIs > 
template<>
struct DataType< ::poi_manager::UpdatePOIsResponse>
{
  static const char* value()
  {
    return DataType< ::poi_manager::UpdatePOIs >::value();
  }
  static const char* value(const ::poi_manager::UpdatePOIsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // POI_MANAGER_MESSAGE_UPDATEPOIS_H
