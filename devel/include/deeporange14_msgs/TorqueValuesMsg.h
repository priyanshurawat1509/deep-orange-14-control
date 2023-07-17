// Generated by gencpp from file deeporange14_msgs/TorqueValuesMsg.msg
// DO NOT EDIT!


#ifndef DEEPORANGE14_MSGS_MESSAGE_TORQUEVALUESMSG_H
#define DEEPORANGE14_MSGS_MESSAGE_TORQUEVALUESMSG_H


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
struct TorqueValuesMsg_
{
  typedef TorqueValuesMsg_<ContainerAllocator> Type;

  TorqueValuesMsg_()
    : header()
    , seq(0)
    , stamp()
    , left_torque_cmd(0.0)
    , right_torque_cmd(0.0)  {
    }
  TorqueValuesMsg_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , seq(0)
    , stamp()
    , left_torque_cmd(0.0)
    , right_torque_cmd(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _seq_type;
  _seq_type seq;

   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef double _left_torque_cmd_type;
  _left_torque_cmd_type left_torque_cmd;

   typedef double _right_torque_cmd_type;
  _right_torque_cmd_type right_torque_cmd;





  typedef boost::shared_ptr< ::deeporange14_msgs::TorqueValuesMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::deeporange14_msgs::TorqueValuesMsg_<ContainerAllocator> const> ConstPtr;

}; // struct TorqueValuesMsg_

typedef ::deeporange14_msgs::TorqueValuesMsg_<std::allocator<void> > TorqueValuesMsg;

typedef boost::shared_ptr< ::deeporange14_msgs::TorqueValuesMsg > TorqueValuesMsgPtr;
typedef boost::shared_ptr< ::deeporange14_msgs::TorqueValuesMsg const> TorqueValuesMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::deeporange14_msgs::TorqueValuesMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::deeporange14_msgs::TorqueValuesMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::deeporange14_msgs::TorqueValuesMsg_<ContainerAllocator1> & lhs, const ::deeporange14_msgs::TorqueValuesMsg_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.seq == rhs.seq &&
    lhs.stamp == rhs.stamp &&
    lhs.left_torque_cmd == rhs.left_torque_cmd &&
    lhs.right_torque_cmd == rhs.right_torque_cmd;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::deeporange14_msgs::TorqueValuesMsg_<ContainerAllocator1> & lhs, const ::deeporange14_msgs::TorqueValuesMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace deeporange14_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::deeporange14_msgs::TorqueValuesMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::deeporange14_msgs::TorqueValuesMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::deeporange14_msgs::TorqueValuesMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::deeporange14_msgs::TorqueValuesMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::deeporange14_msgs::TorqueValuesMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::deeporange14_msgs::TorqueValuesMsg_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::deeporange14_msgs::TorqueValuesMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f1b98deb31033bbbe89e52918f5fea36";
  }

  static const char* value(const ::deeporange14_msgs::TorqueValuesMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf1b98deb31033bbbULL;
  static const uint64_t static_value2 = 0xe89e52918f5fea36ULL;
};

template<class ContainerAllocator>
struct DataType< ::deeporange14_msgs::TorqueValuesMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "deeporange14_msgs/TorqueValuesMsg";
  }

  static const char* value(const ::deeporange14_msgs::TorqueValuesMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::deeporange14_msgs::TorqueValuesMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"  uint32 seq\n"
"  time stamp\n"
"float64 left_torque_cmd\n"
"float64 right_torque_cmd\n"
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

  static const char* value(const ::deeporange14_msgs::TorqueValuesMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::deeporange14_msgs::TorqueValuesMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.seq);
      stream.next(m.stamp);
      stream.next(m.left_torque_cmd);
      stream.next(m.right_torque_cmd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TorqueValuesMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::deeporange14_msgs::TorqueValuesMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::deeporange14_msgs::TorqueValuesMsg_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "seq: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.seq);
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "left_torque_cmd: ";
    Printer<double>::stream(s, indent + "  ", v.left_torque_cmd);
    s << indent << "right_torque_cmd: ";
    Printer<double>::stream(s, indent + "  ", v.right_torque_cmd);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DEEPORANGE14_MSGS_MESSAGE_TORQUEVALUESMSG_H
