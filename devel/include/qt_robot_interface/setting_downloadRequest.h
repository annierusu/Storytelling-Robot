// Generated by gencpp from file qt_robot_interface/setting_downloadRequest.msg
// DO NOT EDIT!


#ifndef QT_ROBOT_INTERFACE_MESSAGE_SETTING_DOWNLOADREQUEST_H
#define QT_ROBOT_INTERFACE_MESSAGE_SETTING_DOWNLOADREQUEST_H


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
struct setting_downloadRequest_
{
  typedef setting_downloadRequest_<ContainerAllocator> Type;

  setting_downloadRequest_()
    : filepath()  {
    }
  setting_downloadRequest_(const ContainerAllocator& _alloc)
    : filepath(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _filepath_type;
  _filepath_type filepath;





  typedef boost::shared_ptr< ::qt_robot_interface::setting_downloadRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::qt_robot_interface::setting_downloadRequest_<ContainerAllocator> const> ConstPtr;

}; // struct setting_downloadRequest_

typedef ::qt_robot_interface::setting_downloadRequest_<std::allocator<void> > setting_downloadRequest;

typedef boost::shared_ptr< ::qt_robot_interface::setting_downloadRequest > setting_downloadRequestPtr;
typedef boost::shared_ptr< ::qt_robot_interface::setting_downloadRequest const> setting_downloadRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::qt_robot_interface::setting_downloadRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::qt_robot_interface::setting_downloadRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::qt_robot_interface::setting_downloadRequest_<ContainerAllocator1> & lhs, const ::qt_robot_interface::setting_downloadRequest_<ContainerAllocator2> & rhs)
{
  return lhs.filepath == rhs.filepath;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::qt_robot_interface::setting_downloadRequest_<ContainerAllocator1> & lhs, const ::qt_robot_interface::setting_downloadRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace qt_robot_interface

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::qt_robot_interface::setting_downloadRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::qt_robot_interface::setting_downloadRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::qt_robot_interface::setting_downloadRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::qt_robot_interface::setting_downloadRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qt_robot_interface::setting_downloadRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qt_robot_interface::setting_downloadRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::qt_robot_interface::setting_downloadRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5ef967a25f780d4a216c15b3834dca97";
  }

  static const char* value(const ::qt_robot_interface::setting_downloadRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5ef967a25f780d4aULL;
  static const uint64_t static_value2 = 0x216c15b3834dca97ULL;
};

template<class ContainerAllocator>
struct DataType< ::qt_robot_interface::setting_downloadRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "qt_robot_interface/setting_downloadRequest";
  }

  static const char* value(const ::qt_robot_interface::setting_downloadRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::qt_robot_interface::setting_downloadRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string filepath\n"
;
  }

  static const char* value(const ::qt_robot_interface::setting_downloadRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::qt_robot_interface::setting_downloadRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.filepath);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct setting_downloadRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::qt_robot_interface::setting_downloadRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::qt_robot_interface::setting_downloadRequest_<ContainerAllocator>& v)
  {
    s << indent << "filepath: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.filepath);
  }
};

} // namespace message_operations
} // namespace ros

#endif // QT_ROBOT_INTERFACE_MESSAGE_SETTING_DOWNLOADREQUEST_H
