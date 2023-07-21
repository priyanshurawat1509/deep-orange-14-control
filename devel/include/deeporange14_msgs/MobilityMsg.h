// Generated by gencpp from file deeporange14_msgs/MobilityMsg.msg
// DO NOT EDIT!


#ifndef DEEPORANGE14_MSGS_MESSAGE_MOBILITYMSG_H
#define DEEPORANGE14_MSGS_MESSAGE_MOBILITYMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace deeporange14_msgs
{
template <class ContainerAllocator>
struct MobilityMsg_
{
  typedef MobilityMsg_<ContainerAllocator> Type;

  MobilityMsg_()
    : header()
    , tqL_cmd(0.0)
    , tqR_cmd(0.0)
    , brkL_cmd(0.0)
    , brkR_cmd(0.0)
    , au_state(0)  {
    }
  MobilityMsg_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , tqL_cmd(0.0)
    , tqR_cmd(0.0)
    , brkL_cmd(0.0)
    , brkR_cmd(0.0)
    , au_state(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _tqL_cmd_type;
  _tqL_cmd_type tqL_cmd;

   typedef double _tqR_cmd_type;
  _tqR_cmd_type tqR_cmd;

   typedef float _brkL_cmd_type;
  _brkL_cmd_type brkL_cmd;

   typedef float _brkR_cmd_type;
  _brkR_cmd_type brkR_cmd;

   typedef uint8_t _au_state_type;
  _au_state_type au_state;





  typedef boost::shared_ptr< ::deeporange14_msgs::MobilityMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::deeporange14_msgs::MobilityMsg_<ContainerAllocator> const> ConstPtr;

}; // struct MobilityMsg_

typedef ::deeporange14_msgs::MobilityMsg_<std::allocator<void> > MobilityMsg;

typedef boost::shared_ptr< ::deeporange14_msgs::MobilityMsg > MobilityMsgPtr;
typedef boost::shared_ptr< ::deeporange14_msgs::MobilityMsg const> MobilityMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::deeporange14_msgs::MobilityMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::deeporange14_msgs::MobilityMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::deeporange14_msgs::MobilityMsg_<ContainerAllocator1> & lhs, const ::deeporange14_msgs::MobilityMsg_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.tqL_cmd == rhs.tqL_cmd &&
    lhs.tqR_cmd == rhs.tqR_cmd &&
    lhs.brkL_cmd == rhs.brkL_cmd &&
    lhs.brkR_cmd == rhs.brkR_cmd &&
    lhs.au_state == rhs.au_state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::deeporange14_msgs::MobilityMsg_<ContainerAllocator1> & lhs, const ::deeporange14_msgs::MobilityMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace deeporange14_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::deeporange14_msgs::MobilityMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::deeporange14_msgs::MobilityMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::deeporange14_msgs::MobilityMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::deeporange14_msgs::MobilityMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::deeporange14_msgs::MobilityMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::deeporange14_msgs::MobilityMsg_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::deeporange14_msgs::MobilityMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "db3ff148ca2e480eda9720b0eb366e47";
  }

  static const char* value(const ::deeporange14_msgs::MobilityMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdb3ff148ca2e480eULL;
  static const uint64_t static_value2 = 0xda9720b0eb366e47ULL;
};

template<class ContainerAllocator>
struct DataType< ::deeporange14_msgs::MobilityMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "deeporange14_msgs/MobilityMsg";
  }

  static const char* value(const ::deeporange14_msgs::MobilityMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::deeporange14_msgs::MobilityMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#This represents a vector in free space -- currently defined to hold the left and right track #velocities\n"
"Header header\n"
"\n"
"float64 tqL_cmd\n"
"float64 tqR_cmd\n"
"float32 brkL_cmd\n"
"float32 brkR_cmd\n"
"uint8 au_state \n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::deeporange14_msgs::MobilityMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::deeporange14_msgs::MobilityMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.tqL_cmd);
      stream.next(m.tqR_cmd);
      stream.next(m.brkL_cmd);
      stream.next(m.brkR_cmd);
      stream.next(m.au_state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MobilityMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::deeporange14_msgs::MobilityMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::deeporange14_msgs::MobilityMsg_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "tqL_cmd: ";
    Printer<double>::stream(s, indent + "  ", v.tqL_cmd);
    s << indent << "tqR_cmd: ";
    Printer<double>::stream(s, indent + "  ", v.tqR_cmd);
    s << indent << "brkL_cmd: ";
    Printer<float>::stream(s, indent + "  ", v.brkL_cmd);
    s << indent << "brkR_cmd: ";
    Printer<float>::stream(s, indent + "  ", v.brkR_cmd);
    s << indent << "au_state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.au_state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DEEPORANGE14_MSGS_MESSAGE_MOBILITYMSG_H
