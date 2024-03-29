// Generated by gencpp from file qt_vosk_app/speech_recognizeRequest.msg
// DO NOT EDIT!


#ifndef QT_VOSK_APP_MESSAGE_SPEECH_RECOGNIZEREQUEST_H
#define QT_VOSK_APP_MESSAGE_SPEECH_RECOGNIZEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace qt_vosk_app
{
template <class ContainerAllocator>
struct speech_recognizeRequest_
{
  typedef speech_recognizeRequest_<ContainerAllocator> Type;

  speech_recognizeRequest_()
    : language()
    , options()
    , timeout(0)  {
    }
  speech_recognizeRequest_(const ContainerAllocator& _alloc)
    : language(_alloc)
    , options(_alloc)
    , timeout(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _language_type;
  _language_type language;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _options_type;
  _options_type options;

   typedef int64_t _timeout_type;
  _timeout_type timeout;





  typedef boost::shared_ptr< ::qt_vosk_app::speech_recognizeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::qt_vosk_app::speech_recognizeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct speech_recognizeRequest_

typedef ::qt_vosk_app::speech_recognizeRequest_<std::allocator<void> > speech_recognizeRequest;

typedef boost::shared_ptr< ::qt_vosk_app::speech_recognizeRequest > speech_recognizeRequestPtr;
typedef boost::shared_ptr< ::qt_vosk_app::speech_recognizeRequest const> speech_recognizeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::qt_vosk_app::speech_recognizeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::qt_vosk_app::speech_recognizeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::qt_vosk_app::speech_recognizeRequest_<ContainerAllocator1> & lhs, const ::qt_vosk_app::speech_recognizeRequest_<ContainerAllocator2> & rhs)
{
  return lhs.language == rhs.language &&
    lhs.options == rhs.options &&
    lhs.timeout == rhs.timeout;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::qt_vosk_app::speech_recognizeRequest_<ContainerAllocator1> & lhs, const ::qt_vosk_app::speech_recognizeRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace qt_vosk_app

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::qt_vosk_app::speech_recognizeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::qt_vosk_app::speech_recognizeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::qt_vosk_app::speech_recognizeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::qt_vosk_app::speech_recognizeRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qt_vosk_app::speech_recognizeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qt_vosk_app::speech_recognizeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::qt_vosk_app::speech_recognizeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "59e07ffbd2874b74f07ac395b9d4708f";
  }

  static const char* value(const ::qt_vosk_app::speech_recognizeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x59e07ffbd2874b74ULL;
  static const uint64_t static_value2 = 0xf07ac395b9d4708fULL;
};

template<class ContainerAllocator>
struct DataType< ::qt_vosk_app::speech_recognizeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "qt_vosk_app/speech_recognizeRequest";
  }

  static const char* value(const ::qt_vosk_app::speech_recognizeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::qt_vosk_app::speech_recognizeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string language\n"
"string[] options\n"
"int64 timeout\n"
;
  }

  static const char* value(const ::qt_vosk_app::speech_recognizeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::qt_vosk_app::speech_recognizeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.language);
      stream.next(m.options);
      stream.next(m.timeout);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct speech_recognizeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::qt_vosk_app::speech_recognizeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::qt_vosk_app::speech_recognizeRequest_<ContainerAllocator>& v)
  {
    s << indent << "language: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.language);
    s << indent << "options[]" << std::endl;
    for (size_t i = 0; i < v.options.size(); ++i)
    {
      s << indent << "  options[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.options[i]);
    }
    s << indent << "timeout: ";
    Printer<int64_t>::stream(s, indent + "  ", v.timeout);
  }
};

} // namespace message_operations
} // namespace ros

#endif // QT_VOSK_APP_MESSAGE_SPEECH_RECOGNIZEREQUEST_H
