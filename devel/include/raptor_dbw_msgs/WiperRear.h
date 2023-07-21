// Generated by gencpp from file raptor_dbw_msgs/WiperRear.msg
// DO NOT EDIT!


#ifndef RAPTOR_DBW_MSGS_MESSAGE_WIPERREAR_H
#define RAPTOR_DBW_MSGS_MESSAGE_WIPERREAR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace raptor_dbw_msgs
{
template <class ContainerAllocator>
struct WiperRear_
{
  typedef WiperRear_<ContainerAllocator> Type;

  WiperRear_()
    : status(0)  {
    }
  WiperRear_(const ContainerAllocator& _alloc)
    : status(0)  {
  (void)_alloc;
    }



   typedef uint8_t _status_type;
  _status_type status;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(OFF)
  #undef OFF
#endif
#if defined(_WIN32) && defined(INTERVAL_1)
  #undef INTERVAL_1
#endif
#if defined(_WIN32) && defined(CONSTANT_LOW)
  #undef CONSTANT_LOW
#endif
#if defined(_WIN32) && defined(CONSTANT_HIGH)
  #undef CONSTANT_HIGH
#endif
#if defined(_WIN32) && defined(WASH_BRIEF)
  #undef WASH_BRIEF
#endif
#if defined(_WIN32) && defined(WASH_CONTINUOUS)
  #undef WASH_CONTINUOUS
#endif
#if defined(_WIN32) && defined(SNA)
  #undef SNA
#endif

  enum {
    OFF = 0u,
    INTERVAL_1 = 1u,
    CONSTANT_LOW = 11u,
    CONSTANT_HIGH = 12u,
    WASH_BRIEF = 13u,
    WASH_CONTINUOUS = 14u,
    SNA = 15u,
  };


  typedef boost::shared_ptr< ::raptor_dbw_msgs::WiperRear_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::raptor_dbw_msgs::WiperRear_<ContainerAllocator> const> ConstPtr;

}; // struct WiperRear_

typedef ::raptor_dbw_msgs::WiperRear_<std::allocator<void> > WiperRear;

typedef boost::shared_ptr< ::raptor_dbw_msgs::WiperRear > WiperRearPtr;
typedef boost::shared_ptr< ::raptor_dbw_msgs::WiperRear const> WiperRearConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::raptor_dbw_msgs::WiperRear_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::raptor_dbw_msgs::WiperRear_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::raptor_dbw_msgs::WiperRear_<ContainerAllocator1> & lhs, const ::raptor_dbw_msgs::WiperRear_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::raptor_dbw_msgs::WiperRear_<ContainerAllocator1> & lhs, const ::raptor_dbw_msgs::WiperRear_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace raptor_dbw_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::raptor_dbw_msgs::WiperRear_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::raptor_dbw_msgs::WiperRear_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::raptor_dbw_msgs::WiperRear_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::raptor_dbw_msgs::WiperRear_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::raptor_dbw_msgs::WiperRear_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::raptor_dbw_msgs::WiperRear_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::raptor_dbw_msgs::WiperRear_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e49876942de059c3028a2674862072b3";
  }

  static const char* value(const ::raptor_dbw_msgs::WiperRear_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe49876942de059c3ULL;
  static const uint64_t static_value2 = 0x028a2674862072b3ULL;
};

template<class ContainerAllocator>
struct DataType< ::raptor_dbw_msgs::WiperRear_<ContainerAllocator> >
{
  static const char* value()
  {
    return "raptor_dbw_msgs/WiperRear";
  }

  static const char* value(const ::raptor_dbw_msgs::WiperRear_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::raptor_dbw_msgs::WiperRear_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 status\n"
"\n"
"uint8 OFF = 0\n"
"uint8 INTERVAL_1 = 1\n"
"uint8 CONSTANT_LOW = 11\n"
"uint8 CONSTANT_HIGH = 12\n"
"uint8 WASH_BRIEF = 13\n"
"uint8 WASH_CONTINUOUS = 14\n"
"uint8 SNA = 15\n"
;
  }

  static const char* value(const ::raptor_dbw_msgs::WiperRear_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::raptor_dbw_msgs::WiperRear_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WiperRear_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::raptor_dbw_msgs::WiperRear_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::raptor_dbw_msgs::WiperRear_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RAPTOR_DBW_MSGS_MESSAGE_WIPERREAR_H
