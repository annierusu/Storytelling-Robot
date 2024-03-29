// Generated by gencpp from file qt_robot_interface/setting_uploadRequest.msg
// DO NOT EDIT!


#ifndef QT_ROBOT_INTERFACE_MESSAGE_SETTING_UPLOADREQUEST_H
#define QT_ROBOT_INTERFACE_MESSAGE_SETTING_UPLOADREQUEST_H


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
struct setting_uploadRequest_
{
  typedef setting_uploadRequest_<ContainerAllocator> Type;

  setting_uploadRequest_()
    : data()
    , filepath()
    , permission()  {
    }
  setting_uploadRequest_(const ContainerAllocator& _alloc)
    : data(_alloc)
    , filepath(_alloc)
    , permission(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _data_type;
  _data_type data;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _filepath_type;
  _filepath_type filepath;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _permission_type;
  _permission_type permission;





  typedef boost::shared_ptr< ::qt_robot_interface::setting_uploadRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::qt_robot_interface::setting_uploadRequest_<ContainerAllocator> const> ConstPtr;

}; // struct setting_uploadRequest_

typedef ::qt_robot_interface::setting_uploadRequest_<std::allocator<void> > setting_uploadRequest;

typedef boost::shared_ptr< ::qt_robot_interface::setting_uploadRequest > setting_uploadRequestPtr;
typedef boost::shared_ptr< ::qt_robot_interface::setting_uploadRequest const> setting_uploadRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::qt_robot_interface::setting_uploadRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::qt_robot_interface::setting_uploadRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::qt_robot_interface::setting_uploadRequest_<ContainerAllocator1> & lhs, const ::qt_robot_interface::setting_uploadRequest_<ContainerAllocator2> & rhs)
{
  return lhs.data == rhs.data &&
    lhs.filepath == rhs.filepath &&
    lhs.permission == rhs.permission;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::qt_robot_interface::setting_uploadRequest_<ContainerAllocator1> & lhs, const ::qt_robot_interface::setting_uploadRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace qt_robot_interface

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::qt_robot_interface::setting_uploadRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::qt_robot_interface::setting_uploadRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::qt_robot_interface::setting_uploadRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::qt_robot_interface::setting_uploadRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qt_robot_interface::setting_uploadRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qt_robot_interface::setting_uploadRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::qt_robot_interface::setting_uploadRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d074cc3e8086875c3d4f70d409bba29e";
  }

  static const char* value(const ::qt_robot_interface::setting_uploadRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd074cc3e8086875cULL;
  static const uint64_t static_value2 = 0x3d4f70d409bba29eULL;
};

template<class ContainerAllocator>
struct DataType< ::qt_robot_interface::setting_uploadRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "qt_robot_interface/setting_uploadRequest";
  }

  static const char* value(const ::qt_robot_interface::setting_uploadRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::qt_robot_interface::setting_uploadRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string data\n"
"string filepath\n"
"string permission\n"
;
  }

  static const char* value(const ::qt_robot_interface::setting_uploadRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::qt_robot_interface::setting_uploadRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
      stream.next(m.filepath);
      stream.next(m.permission);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct setting_uploadRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::qt_robot_interface::setting_uploadRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::qt_robot_interface::setting_uploadRequest_<ContainerAllocator>& v)
  {
    s << indent << "data: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.data);
    s << indent << "filepath: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.filepath);
    s << indent << "permission: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.permission);
  }
};

} // namespace message_operations
} // namespace ros

#endif // QT_ROBOT_INTERFACE_MESSAGE_SETTING_UPLOADREQUEST_H
