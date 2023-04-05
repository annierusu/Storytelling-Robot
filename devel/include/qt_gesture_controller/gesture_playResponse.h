// Generated by gencpp from file qt_gesture_controller/gesture_playResponse.msg
// DO NOT EDIT!


#ifndef QT_GESTURE_CONTROLLER_MESSAGE_GESTURE_PLAYRESPONSE_H
#define QT_GESTURE_CONTROLLER_MESSAGE_GESTURE_PLAYRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace qt_gesture_controller
{
template <class ContainerAllocator>
struct gesture_playResponse_
{
  typedef gesture_playResponse_<ContainerAllocator> Type;

  gesture_playResponse_()
    : status(false)  {
    }
  gesture_playResponse_(const ContainerAllocator& _alloc)
    : status(false)  {
  (void)_alloc;
    }



   typedef uint8_t _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::qt_gesture_controller::gesture_playResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::qt_gesture_controller::gesture_playResponse_<ContainerAllocator> const> ConstPtr;

}; // struct gesture_playResponse_

typedef ::qt_gesture_controller::gesture_playResponse_<std::allocator<void> > gesture_playResponse;

typedef boost::shared_ptr< ::qt_gesture_controller::gesture_playResponse > gesture_playResponsePtr;
typedef boost::shared_ptr< ::qt_gesture_controller::gesture_playResponse const> gesture_playResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::qt_gesture_controller::gesture_playResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::qt_gesture_controller::gesture_playResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::qt_gesture_controller::gesture_playResponse_<ContainerAllocator1> & lhs, const ::qt_gesture_controller::gesture_playResponse_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::qt_gesture_controller::gesture_playResponse_<ContainerAllocator1> & lhs, const ::qt_gesture_controller::gesture_playResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace qt_gesture_controller

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::qt_gesture_controller::gesture_playResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::qt_gesture_controller::gesture_playResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::qt_gesture_controller::gesture_playResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::qt_gesture_controller::gesture_playResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qt_gesture_controller::gesture_playResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qt_gesture_controller::gesture_playResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::qt_gesture_controller::gesture_playResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3a1255d4d998bd4d6585c64639b5ee9a";
  }

  static const char* value(const ::qt_gesture_controller::gesture_playResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3a1255d4d998bd4dULL;
  static const uint64_t static_value2 = 0x6585c64639b5ee9aULL;
};

template<class ContainerAllocator>
struct DataType< ::qt_gesture_controller::gesture_playResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "qt_gesture_controller/gesture_playResponse";
  }

  static const char* value(const ::qt_gesture_controller::gesture_playResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::qt_gesture_controller::gesture_playResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool status\n"
"\n"
;
  }

  static const char* value(const ::qt_gesture_controller::gesture_playResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::qt_gesture_controller::gesture_playResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct gesture_playResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::qt_gesture_controller::gesture_playResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::qt_gesture_controller::gesture_playResponse_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // QT_GESTURE_CONTROLLER_MESSAGE_GESTURE_PLAYRESPONSE_H
