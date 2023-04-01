// Generated by gencpp from file astra_camera/GetDeviceInfo.msg
// DO NOT EDIT!


#ifndef ASTRA_CAMERA_MESSAGE_GETDEVICEINFO_H
#define ASTRA_CAMERA_MESSAGE_GETDEVICEINFO_H

#include <ros/service_traits.h>


#include <astra_camera/GetDeviceInfoRequest.h>
#include <astra_camera/GetDeviceInfoResponse.h>


namespace astra_camera
{

struct GetDeviceInfo
{

typedef GetDeviceInfoRequest Request;
typedef GetDeviceInfoResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetDeviceInfo
} // namespace astra_camera


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::astra_camera::GetDeviceInfo > {
  static const char* value()
  {
    return "1e369ba84c0330473501a0820257661a";
  }

  static const char* value(const ::astra_camera::GetDeviceInfo&) { return value(); }
};

template<>
struct DataType< ::astra_camera::GetDeviceInfo > {
  static const char* value()
  {
    return "astra_camera/GetDeviceInfo";
  }

  static const char* value(const ::astra_camera::GetDeviceInfo&) { return value(); }
};


// service_traits::MD5Sum< ::astra_camera::GetDeviceInfoRequest> should match
// service_traits::MD5Sum< ::astra_camera::GetDeviceInfo >
template<>
struct MD5Sum< ::astra_camera::GetDeviceInfoRequest>
{
  static const char* value()
  {
    return MD5Sum< ::astra_camera::GetDeviceInfo >::value();
  }
  static const char* value(const ::astra_camera::GetDeviceInfoRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::astra_camera::GetDeviceInfoRequest> should match
// service_traits::DataType< ::astra_camera::GetDeviceInfo >
template<>
struct DataType< ::astra_camera::GetDeviceInfoRequest>
{
  static const char* value()
  {
    return DataType< ::astra_camera::GetDeviceInfo >::value();
  }
  static const char* value(const ::astra_camera::GetDeviceInfoRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::astra_camera::GetDeviceInfoResponse> should match
// service_traits::MD5Sum< ::astra_camera::GetDeviceInfo >
template<>
struct MD5Sum< ::astra_camera::GetDeviceInfoResponse>
{
  static const char* value()
  {
    return MD5Sum< ::astra_camera::GetDeviceInfo >::value();
  }
  static const char* value(const ::astra_camera::GetDeviceInfoResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::astra_camera::GetDeviceInfoResponse> should match
// service_traits::DataType< ::astra_camera::GetDeviceInfo >
template<>
struct DataType< ::astra_camera::GetDeviceInfoResponse>
{
  static const char* value()
  {
    return DataType< ::astra_camera::GetDeviceInfo >::value();
  }
  static const char* value(const ::astra_camera::GetDeviceInfoResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ASTRA_CAMERA_MESSAGE_GETDEVICEINFO_H
