// Generated by gencpp from file qt_robot_interface/speech_stopRequest.msg
// DO NOT EDIT!


#ifndef QT_ROBOT_INTERFACE_MESSAGE_SPEECH_STOPREQUEST_H
#define QT_ROBOT_INTERFACE_MESSAGE_SPEECH_STOPREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace qt_robot_interface
{
template <class ContainerAllocator>
struct speech_stopRequest_
{
  typedef speech_stopRequest_<ContainerAllocator> Type;

  speech_stopRequest_()
    {
    }
  speech_stopRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::qt_robot_interface::speech_stopRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::qt_robot_interface::speech_stopRequest_<ContainerAllocator> const> ConstPtr;

}; // struct speech_stopRequest_

typedef ::qt_robot_interface::speech_stopRequest_<std::allocator<void> > speech_stopRequest;

typedef boost::shared_ptr< ::qt_robot_interface::speech_stopRequest > speech_stopRequestPtr;
typedef boost::shared_ptr< ::qt_robot_interface::speech_stopRequest const> speech_stopRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::qt_robot_interface::speech_stopRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::qt_robot_interface::speech_stopRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace qt_robot_interface

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::qt_robot_interface::speech_stopRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::qt_robot_interface::speech_stopRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::qt_robot_interface::speech_stopRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::qt_robot_interface::speech_stopRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qt_robot_interface::speech_stopRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qt_robot_interface::speech_stopRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::qt_robot_interface::speech_stopRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::qt_robot_interface::speech_stopRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::qt_robot_interface::speech_stopRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "qt_robot_interface/speech_stopRequest";
  }

  static const char* value(const ::qt_robot_interface::speech_stopRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::qt_robot_interface::speech_stopRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::qt_robot_interface::speech_stopRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::qt_robot_interface::speech_stopRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct speech_stopRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::qt_robot_interface::speech_stopRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::qt_robot_interface::speech_stopRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // QT_ROBOT_INTERFACE_MESSAGE_SPEECH_STOPREQUEST_H
