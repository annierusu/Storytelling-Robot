// Generated by gencpp from file qt_nuitrack_app/Faces.msg
// DO NOT EDIT!


#ifndef QT_NUITRACK_APP_MESSAGE_FACES_H
#define QT_NUITRACK_APP_MESSAGE_FACES_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <qt_nuitrack_app/FaceInfo.h>

namespace qt_nuitrack_app
{
template <class ContainerAllocator>
struct Faces_
{
  typedef Faces_<ContainerAllocator> Type;

  Faces_()
    : faces()  {
    }
  Faces_(const ContainerAllocator& _alloc)
    : faces(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::qt_nuitrack_app::FaceInfo_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::qt_nuitrack_app::FaceInfo_<ContainerAllocator> >> _faces_type;
  _faces_type faces;





  typedef boost::shared_ptr< ::qt_nuitrack_app::Faces_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::qt_nuitrack_app::Faces_<ContainerAllocator> const> ConstPtr;

}; // struct Faces_

typedef ::qt_nuitrack_app::Faces_<std::allocator<void> > Faces;

typedef boost::shared_ptr< ::qt_nuitrack_app::Faces > FacesPtr;
typedef boost::shared_ptr< ::qt_nuitrack_app::Faces const> FacesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::qt_nuitrack_app::Faces_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::qt_nuitrack_app::Faces_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::qt_nuitrack_app::Faces_<ContainerAllocator1> & lhs, const ::qt_nuitrack_app::Faces_<ContainerAllocator2> & rhs)
{
  return lhs.faces == rhs.faces;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::qt_nuitrack_app::Faces_<ContainerAllocator1> & lhs, const ::qt_nuitrack_app::Faces_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace qt_nuitrack_app

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::qt_nuitrack_app::Faces_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::qt_nuitrack_app::Faces_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::qt_nuitrack_app::Faces_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::qt_nuitrack_app::Faces_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qt_nuitrack_app::Faces_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qt_nuitrack_app::Faces_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::qt_nuitrack_app::Faces_<ContainerAllocator> >
{
  static const char* value()
  {
    return "20dfb5db1e90db4dafd45bc663893505";
  }

  static const char* value(const ::qt_nuitrack_app::Faces_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x20dfb5db1e90db4dULL;
  static const uint64_t static_value2 = 0xafd45bc663893505ULL;
};

template<class ContainerAllocator>
struct DataType< ::qt_nuitrack_app::Faces_<ContainerAllocator> >
{
  static const char* value()
  {
    return "qt_nuitrack_app/Faces";
  }

  static const char* value(const ::qt_nuitrack_app::Faces_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::qt_nuitrack_app::Faces_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#std_msgs/Header header\n"
"FaceInfo[] faces\n"
"\n"
"================================================================================\n"
"MSG: qt_nuitrack_app/FaceInfo\n"
"#std_msgs/Header header\n"
"int32 id\n"
"string gender\n"
"int32 age_years\n"
"string age_type\n"
"float64 emotion_neutral\n"
"float64 emotion_angry\n"
"float64 emotion_happy\n"
"float64 emotion_surprise\n"
"#normalized screen coordinates of a face rectangle in the image (x, y, w, h)\n"
"float64[] rectangle\n"
"#normalized coordinates of the center of a person’s left eye (x,y)\n"
"float64[] left_eye\n"
"#normalized coordinates of the center of a person’s right eye (x,y)\n"
"float64[] right_eye\n"
"#face orientation angles in degrees (yaw, pitch, roll)\n"
"float64[] angles\n"
;
  }

  static const char* value(const ::qt_nuitrack_app::Faces_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::qt_nuitrack_app::Faces_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.faces);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Faces_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::qt_nuitrack_app::Faces_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::qt_nuitrack_app::Faces_<ContainerAllocator>& v)
  {
    s << indent << "faces[]" << std::endl;
    for (size_t i = 0; i < v.faces.size(); ++i)
    {
      s << indent << "  faces[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::qt_nuitrack_app::FaceInfo_<ContainerAllocator> >::stream(s, indent + "    ", v.faces[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // QT_NUITRACK_APP_MESSAGE_FACES_H
