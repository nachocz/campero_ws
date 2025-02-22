// Generated by gencpp from file ublox_msgs/CfgINF.msg
// DO NOT EDIT!


#ifndef UBLOX_MSGS_MESSAGE_CFGINF_H
#define UBLOX_MSGS_MESSAGE_CFGINF_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ublox_msgs/CfgINF_Block.h>

namespace ublox_msgs
{
template <class ContainerAllocator>
struct CfgINF_
{
  typedef CfgINF_<ContainerAllocator> Type;

  CfgINF_()
    : blocks()  {
    }
  CfgINF_(const ContainerAllocator& _alloc)
    : blocks(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::ublox_msgs::CfgINF_Block_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ublox_msgs::CfgINF_Block_<ContainerAllocator> >::other >  _blocks_type;
  _blocks_type blocks;



  enum {
    CLASS_ID = 6u,
    MESSAGE_ID = 2u,
  };


  typedef boost::shared_ptr< ::ublox_msgs::CfgINF_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ublox_msgs::CfgINF_<ContainerAllocator> const> ConstPtr;

}; // struct CfgINF_

typedef ::ublox_msgs::CfgINF_<std::allocator<void> > CfgINF;

typedef boost::shared_ptr< ::ublox_msgs::CfgINF > CfgINFPtr;
typedef boost::shared_ptr< ::ublox_msgs::CfgINF const> CfgINFConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ublox_msgs::CfgINF_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ublox_msgs::CfgINF_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ublox_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'ublox_msgs': ['/home/pc-campero2/campero_ws/src/campero/ublox/ublox_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ublox_msgs::CfgINF_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ublox_msgs::CfgINF_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ublox_msgs::CfgINF_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ublox_msgs::CfgINF_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ublox_msgs::CfgINF_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ublox_msgs::CfgINF_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ublox_msgs::CfgINF_<ContainerAllocator> >
{
  static const char* value()
  {
    return "42fb321cf0c63684f2f7086e850ed61e";
  }

  static const char* value(const ::ublox_msgs::CfgINF_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x42fb321cf0c63684ULL;
  static const uint64_t static_value2 = 0xf2f7086e850ed61eULL;
};

template<class ContainerAllocator>
struct DataType< ::ublox_msgs::CfgINF_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ublox_msgs/CfgINF";
  }

  static const char* value(const ::ublox_msgs::CfgINF_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ublox_msgs::CfgINF_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# CFG-INF  (0x06 0x02)\n\
# Information message configuration\n\
#\n\
# The value of infMsgMask[x] below are that each bit represents one of the INF \n\
# class messages (Bit 0 for ERROR, Bit 1 for WARNING and so on.). For a complete \n\
# list, see the Message Class INF. Several configurations can be concatenated to \n\
# one input message.\n\
# In this case the payload length can be a multiple of the normal length. Output \n\
# messages from the module contain only one configuration unit. Note that I/O \n\
# Ports 1 and 2 correspond to serial ports 1 and 2. I/O port 0 is DDC. I/O port \n\
# 3 is USB. I/O port 4 is SPI. I/O port 5 is reserved for future use\n\
#\n\
\n\
uint8 CLASS_ID = 6\n\
uint8 MESSAGE_ID = 2\n\
\n\
# start of repeated block\n\
CfgINF_Block[] blocks\n\
# end of repeated block\n\
\n\
================================================================================\n\
MSG: ublox_msgs/CfgINF_Block\n\
# See CfgINF message\n\
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

  static const char* value(const ::ublox_msgs::CfgINF_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ublox_msgs::CfgINF_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.blocks);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CfgINF_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ublox_msgs::CfgINF_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ublox_msgs::CfgINF_<ContainerAllocator>& v)
  {
    s << indent << "blocks[]" << std::endl;
    for (size_t i = 0; i < v.blocks.size(); ++i)
    {
      s << indent << "  blocks[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ublox_msgs::CfgINF_Block_<ContainerAllocator> >::stream(s, indent + "    ", v.blocks[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // UBLOX_MSGS_MESSAGE_CFGINF_H
