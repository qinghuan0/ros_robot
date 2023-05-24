// Generated by gencpp from file astra_camera/GetIRExposure.msg
// DO NOT EDIT!


#ifndef ASTRA_CAMERA_MESSAGE_GETIREXPOSURE_H
#define ASTRA_CAMERA_MESSAGE_GETIREXPOSURE_H

#include <ros/service_traits.h>


#include <astra_camera/GetIRExposureRequest.h>
#include <astra_camera/GetIRExposureResponse.h>


namespace astra_camera
{

struct GetIRExposure
{

typedef GetIRExposureRequest Request;
typedef GetIRExposureResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetIRExposure
} // namespace astra_camera


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::astra_camera::GetIRExposure > {
  static const char* value()
  {
    return "0535ed1a1204bb999d0e7bea8f6c3c81";
  }

  static const char* value(const ::astra_camera::GetIRExposure&) { return value(); }
};

template<>
struct DataType< ::astra_camera::GetIRExposure > {
  static const char* value()
  {
    return "astra_camera/GetIRExposure";
  }

  static const char* value(const ::astra_camera::GetIRExposure&) { return value(); }
};


// service_traits::MD5Sum< ::astra_camera::GetIRExposureRequest> should match
// service_traits::MD5Sum< ::astra_camera::GetIRExposure >
template<>
struct MD5Sum< ::astra_camera::GetIRExposureRequest>
{
  static const char* value()
  {
    return MD5Sum< ::astra_camera::GetIRExposure >::value();
  }
  static const char* value(const ::astra_camera::GetIRExposureRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::astra_camera::GetIRExposureRequest> should match
// service_traits::DataType< ::astra_camera::GetIRExposure >
template<>
struct DataType< ::astra_camera::GetIRExposureRequest>
{
  static const char* value()
  {
    return DataType< ::astra_camera::GetIRExposure >::value();
  }
  static const char* value(const ::astra_camera::GetIRExposureRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::astra_camera::GetIRExposureResponse> should match
// service_traits::MD5Sum< ::astra_camera::GetIRExposure >
template<>
struct MD5Sum< ::astra_camera::GetIRExposureResponse>
{
  static const char* value()
  {
    return MD5Sum< ::astra_camera::GetIRExposure >::value();
  }
  static const char* value(const ::astra_camera::GetIRExposureResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::astra_camera::GetIRExposureResponse> should match
// service_traits::DataType< ::astra_camera::GetIRExposure >
template<>
struct DataType< ::astra_camera::GetIRExposureResponse>
{
  static const char* value()
  {
    return DataType< ::astra_camera::GetIRExposure >::value();
  }
  static const char* value(const ::astra_camera::GetIRExposureResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ASTRA_CAMERA_MESSAGE_GETIREXPOSURE_H
