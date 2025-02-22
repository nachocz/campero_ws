// Generated by gencpp from file ublox_msgs/CfgINF_Block.msg
// DO NOT EDIT!


#ifndef UBLOX_MSGS_MESSAGE_CFGINF_BLOCK_H
#define UBLOX_MSGS_MESSAGE_CFGINF_BLOCK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ublox_msgs
{
template <class ContainerAllocator>
struct CfgINF_Block_
{
  typedef CfgINF_Block_<ContainerAllocator> Type;

  CfgINF_Block_()
    : protocolID(0)
    , reserved1()
    , infMsgMask()  {
      reserved1.assign(0);

      infMsgMask.assign(0);
  }
  CfgINF_Block_(const ContainerAllocator& _alloc)
    : protocolID(0)
    , reserved1()
    , infMsgMask()  {
  (void)_alloc;
      reserved1.assign(0);

      infMsgMask.assign(0);
  }



   typedef uint8_t _protocolID_type;
  _protocolID_type protocolID;

   typedef boost::array<uint8_t, 3>  _reserved1_type;
  _reserved1_type reserved1;

   typedef boost::array<uint8_t, 6>  _infMsgMask_type;
  _infMsgMask_type infMsgMask;



  enum {
    PROTOCOL_ID_UBX = 0u,
    PROTOCOL_ID_NMEA = 1u,
    INF_MSG_ERROR = 1u,
    INF_MSG_WARNING = 2u,
    INF_MSG_NOTICE = 4u,
    INF_MSG_TEST = 8u,
    INF_MSG_DEBUG = 16u,
  };


  typedef boost::shared_ptr< ::ublox_msgs::CfgINF_Block_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ublox_msgs::CfgINF_Block_<ContainerAllocator> const> ConstPtr;

}; // struct CfgINF_Block_

typedef ::ublox_msgs::CfgINF_Block_<std::allocator<void> > CfgINF_Block;

typedef boost::shared_ptr< ::ublox_msgs::CfgINF_Block > CfgINF_BlockPtr;
typedef boost::shared_ptr< ::ublox_msgs::CfgINF_Block const> CfgINF_BlockConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ublox_msgs::CfgINF_Block_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ublox_msgs::CfgINF_Block_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ublox_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'ublox_msgs': ['/home/pc-campero2/campero_ws/src/campero/ublox/ublox_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ublox_msgs::CfgINF_Block_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ublox_msgs::CfgINF_Block_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ublox_msgs::CfgINF_Block_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ublox_msgs::CfgINF_Block_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ublox_msgs::CfgINF_Block_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ublox_msgs::CfgINF_Block_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ublox_msgs::CfgINF_Block_<ContainerAllocator> >
{
  static const char* value()
  {
    return "71c7fcecf939acbf06ee4e1259793fce";
  }

  static const char* value(const ::ublox_msgs::CfgINF_Block_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x71c7fcecf939acbfULL;
  static const uint64_t static_value2 = 0x06ee4e1259793fceULL;
};

template<class ContainerAllocator>
struct DataType< ::ublox_msgs::CfgINF_Block_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ublox_msgs/CfgINF_Block";
  }

  static const char* value(const ::ublox_msgs::CfgINF_Block_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ublox_msgs::CfgINF_Block_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# See CfgINF message\n\
#\n\
\n\
uint8 protocolID          # Protocol Identifier, identifying for which\n\
                          # protocol the configuration is set/get. The\n\
                          # following are valid Protocol Identifiers:\n\
                          # 0: UBX Protocol\n\
                          # 1: NMEA Protocol\n\
                          # 2-255: Reserved\n\
uint8 PROTOCOL_ID_UBX = 0\n\
uint8 PROTOCOL_ID_NMEA = 1\n\
\n\
uint8[3] reserved1        # Reserved\n\
\n\
uint8[6] infMsgMask       # A bit mask, saying which information messages\n\
                          # are enabled on each I/O port\n\
uint8 INF_MSG_ERROR = 1              # enable ERROR\n\
uint8 INF_MSG_WARNING = 2            # enable WARNING\n\
uint8 INF_MSG_NOTICE = 4             # enable NOTICE\n\
uint8 INF_MSG_TEST = 8               # enable TEST\n\
uint8 INF_MSG_DEBUG = 16             # enable DEBUG\n\
";
  }

  static const char* value(const ::ublox_msgs::CfgINF_Block_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ublox_msgs::CfgINF_Block_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.protocolID);
      stream.next(m.reserved1);
      stream.next(m.infMsgMask);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CfgINF_Block_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ublox_msgs::CfgINF_Block_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ublox_msgs::CfgINF_Block_<ContainerAllocator>& v)
  {
    s << indent << "protocolID: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.protocolID);
    s << indent << "reserved1[]" << std::endl;
    for (size_t i = 0; i < v.reserved1.size(); ++i)
    {
      s << indent << "  reserved1[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.reserved1[i]);
    }
    s << indent << "infMsgMask[]" << std::endl;
    for (size_t i = 0; i < v.infMsgMask.size(); ++i)
    {
      s << indent << "  infMsgMask[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.infMsgMask[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // UBLOX_MSGS_MESSAGE_CFGINF_BLOCK_H
