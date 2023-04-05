// Generated by gencpp from file qt_robot_interface/behavior_talk_textRequest.msg
// DO NOT EDIT!


#ifndef QT_ROBOT_INTERFACE_MESSAGE_BEHAVIOR_TALK_TEXTREQUEST_H
#define QT_ROBOT_INTERFACE_MESSAGE_BEHAVIOR_TALK_TEXTREQUEST_H


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
struct behavior_talk_textRequest_
{
  typedef behavior_talk_textRequest_<ContainerAllocator> Type;

  behavior_talk_textRequest_()
    : message()  {
    }
  behavior_talk_textRequest_(const ContainerAllocator& _alloc)
    : message(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::qt_robot_interface::behavior_talk_textRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::qt_robot_interface::behavior_talk_textRequest_<ContainerAllocator> const> ConstPtr;

}; // struct behavior_talk_textRequest_

typedef ::qt_robot_interface::behavior_talk_textRequest_<std::allocator<void> > behavior_talk_textRequest;

typedef boost::shared_ptr< ::qt_robot_interface::behavior_talk_textRequest > behavior_talk_textRequestPtr;
typedef boost::shared_ptr< ::qt_robot_interface::behavior_talk_textRequest const> behavior_talk_textRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::qt_robot_interface::behavior_talk_textRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::qt_robot_interface::behavior_talk_textRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::qt_robot_interface::behavior_talk_textRequest_<ContainerAllocator1> & lhs, const ::qt_robot_interface::behavior_talk_textRequest_<ContainerAllocator2> & rhs)
{
  return lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::qt_robot_interface::behavior_talk_textRequest_<ContainerAllocator1> & lhs, const ::qt_robot_interface::behavior_talk_textRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace qt_robot_interface

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::qt_robot_interface::behavior_talk_textRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::qt_robot_interface::behavior_talk_textRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::qt_robot_interface::behavior_talk_textRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::qt_robot_interface::behavior_talk_textRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qt_robot_interface::behavior_talk_textRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qt_robot_interface::behavior_talk_textRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::qt_robot_interface::behavior_talk_textRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5f003d6bcc824cbd51361d66d8e4f76c";
  }

  static const char* value(const ::qt_robot_interface::behavior_talk_textRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5f003d6bcc824cbdULL;
  static const uint64_t static_value2 = 0x51361d66d8e4f76cULL;
};

template<class ContainerAllocator>
struct DataType< ::qt_robot_interface::behavior_talk_textRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "qt_robot_interface/behavior_talk_textRequest";
  }

  static const char* value(const ::qt_robot_interface::behavior_talk_textRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::qt_robot_interface::behavior_talk_textRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string message\n"
;
  }

  static const char* value(const ::qt_robot_interface::behavior_talk_textRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::qt_robot_interface::behavior_talk_textRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct behavior_talk_textRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::qt_robot_interface::behavior_talk_textRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::qt_robot_interface::behavior_talk_textRequest_<ContainerAllocator>& v)
  {
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // QT_ROBOT_INTERFACE_MESSAGE_BEHAVIOR_TALK_TEXTREQUEST_H
