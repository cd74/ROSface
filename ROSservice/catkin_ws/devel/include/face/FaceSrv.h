// Generated by gencpp from file face/FaceSrv.msg
// DO NOT EDIT!


#ifndef FACE_MESSAGE_FACESRV_H
#define FACE_MESSAGE_FACESRV_H

#include <ros/service_traits.h>


#include <face/FaceSrvRequest.h>
#include <face/FaceSrvResponse.h>


namespace face
{

struct FaceSrv
{

typedef FaceSrvRequest Request;
typedef FaceSrvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct FaceSrv
} // namespace face


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::face::FaceSrv > {
  static const char* value()
  {
    return "d8ddc17a1c61e760f5c4f563a497654c";
  }

  static const char* value(const ::face::FaceSrv&) { return value(); }
};

template<>
struct DataType< ::face::FaceSrv > {
  static const char* value()
  {
    return "face/FaceSrv";
  }

  static const char* value(const ::face::FaceSrv&) { return value(); }
};


// service_traits::MD5Sum< ::face::FaceSrvRequest> should match 
// service_traits::MD5Sum< ::face::FaceSrv > 
template<>
struct MD5Sum< ::face::FaceSrvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::face::FaceSrv >::value();
  }
  static const char* value(const ::face::FaceSrvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::face::FaceSrvRequest> should match 
// service_traits::DataType< ::face::FaceSrv > 
template<>
struct DataType< ::face::FaceSrvRequest>
{
  static const char* value()
  {
    return DataType< ::face::FaceSrv >::value();
  }
  static const char* value(const ::face::FaceSrvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::face::FaceSrvResponse> should match 
// service_traits::MD5Sum< ::face::FaceSrv > 
template<>
struct MD5Sum< ::face::FaceSrvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::face::FaceSrv >::value();
  }
  static const char* value(const ::face::FaceSrvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::face::FaceSrvResponse> should match 
// service_traits::DataType< ::face::FaceSrv > 
template<>
struct DataType< ::face::FaceSrvResponse>
{
  static const char* value()
  {
    return DataType< ::face::FaceSrv >::value();
  }
  static const char* value(const ::face::FaceSrvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // FACE_MESSAGE_FACESRV_H
