// Generated by gencpp from file qt_robot_interface/emotion_show.msg
// DO NOT EDIT!


#ifndef QT_ROBOT_INTERFACE_MESSAGE_EMOTION_SHOW_H
#define QT_ROBOT_INTERFACE_MESSAGE_EMOTION_SHOW_H

#include <ros/service_traits.h>


#include <qt_robot_interface/emotion_showRequest.h>
#include <qt_robot_interface/emotion_showResponse.h>


namespace qt_robot_interface
{

struct emotion_show
{

typedef emotion_showRequest Request;
typedef emotion_showResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct emotion_show
} // namespace qt_robot_interface


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::qt_robot_interface::emotion_show > {
  static const char* value()
  {
    return "186befe2a32d448f6a8e15271a5e2624";
  }

  static const char* value(const ::qt_robot_interface::emotion_show&) { return value(); }
};

template<>
struct DataType< ::qt_robot_interface::emotion_show > {
  static const char* value()
  {
    return "qt_robot_interface/emotion_show";
  }

  static const char* value(const ::qt_robot_interface::emotion_show&) { return value(); }
};


// service_traits::MD5Sum< ::qt_robot_interface::emotion_showRequest> should match
// service_traits::MD5Sum< ::qt_robot_interface::emotion_show >
template<>
struct MD5Sum< ::qt_robot_interface::emotion_showRequest>
{
  static const char* value()
  {
    return MD5Sum< ::qt_robot_interface::emotion_show >::value();
  }
  static const char* value(const ::qt_robot_interface::emotion_showRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::qt_robot_interface::emotion_showRequest> should match
// service_traits::DataType< ::qt_robot_interface::emotion_show >
template<>
struct DataType< ::qt_robot_interface::emotion_showRequest>
{
  static const char* value()
  {
    return DataType< ::qt_robot_interface::emotion_show >::value();
  }
  static const char* value(const ::qt_robot_interface::emotion_showRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::qt_robot_interface::emotion_showResponse> should match
// service_traits::MD5Sum< ::qt_robot_interface::emotion_show >
template<>
struct MD5Sum< ::qt_robot_interface::emotion_showResponse>
{
  static const char* value()
  {
    return MD5Sum< ::qt_robot_interface::emotion_show >::value();
  }
  static const char* value(const ::qt_robot_interface::emotion_showResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::qt_robot_interface::emotion_showResponse> should match
// service_traits::DataType< ::qt_robot_interface::emotion_show >
template<>
struct DataType< ::qt_robot_interface::emotion_showResponse>
{
  static const char* value()
  {
    return DataType< ::qt_robot_interface::emotion_show >::value();
  }
  static const char* value(const ::qt_robot_interface::emotion_showResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // QT_ROBOT_INTERFACE_MESSAGE_EMOTION_SHOW_H
