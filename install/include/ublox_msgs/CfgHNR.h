// Generated by gencpp from file ublox_msgs/CfgHNR.msg
// DO NOT EDIT!


#ifndef UBLOX_MSGS_MESSAGE_CFGHNR_H
#define UBLOX_MSGS_MESSAGE_CFGHNR_H


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
struct CfgHNR_
{
  typedef CfgHNR_<ContainerAllocator> Type;

  CfgHNR_()
    : highNavRate(0)
    , reserved0()  {
      reserved0.assign(0);
  }
  CfgHNR_(const ContainerAllocator& _alloc)
    : highNavRate(0)
    , reserved0()  {
  (void)_alloc;
      reserved0.assign(0);
  }



   typedef uint8_t _highNavRate_type;
  _highNavRate_type highNavRate;

   typedef boost::array<uint8_t, 3>  _reserved0_type;
  _reserved0_type reserved0;



  enum {
    CLASS_ID = 6u,
    MESSAGE_ID = 92u,
  };


  typedef boost::shared_ptr< ::ublox_msgs::CfgHNR_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ublox_msgs::CfgHNR_<ContainerAllocator> const> ConstPtr;

}; // struct CfgHNR_

typedef ::ublox_msgs::CfgHNR_<std::allocator<void> > CfgHNR;

typedef boost::shared_ptr< ::ublox_msgs::CfgHNR > CfgHNRPtr;
typedef boost::shared_ptr< ::ublox_msgs::CfgHNR const> CfgHNRConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ublox_msgs::CfgHNR_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ublox_msgs::CfgHNR_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ublox_msgs::CfgHNR_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ublox_msgs::CfgHNR_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ublox_msgs::CfgHNR_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ublox_msgs::CfgHNR_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ublox_msgs::CfgHNR_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ublox_msgs::CfgHNR_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ublox_msgs::CfgHNR_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9398ae76435d6cc9cd4bf6ee2c626072";
  }

  static const char* value(const ::ublox_msgs::CfgHNR_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9398ae76435d6cc9ULL;
  static const uint64_t static_value2 = 0xcd4bf6ee2c626072ULL;
};

template<class ContainerAllocator>
struct DataType< ::ublox_msgs::CfgHNR_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ublox_msgs/CfgHNR";
  }

  static const char* value(const ::ublox_msgs::CfgHNR_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ublox_msgs::CfgHNR_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# CFG-HNR (0x06 0x5C)\n\
# High Navigation Rate Settings\n\
#\n\
# The u-blox receivers support high rates of navigation update up to 30 Hz. \n\
# The navigation solution output (NAV-HNR) will not be aligned to the top of a\n\
# second.\n\
# The update rate has a direct influence on the power consumption. The more\n\
# fixes that are required, the more CPU power and communication resources are \n\
# required.\n\
# For most applications a 1 Hz update rate would be sufficient.\n\
#\n\
# (only with ADR or UDR products)\n\
#\n\
\n\
uint8 CLASS_ID = 6\n\
uint8 MESSAGE_ID = 92\n\
\n\
uint8 highNavRate     # Rate of navigation solution output [Hz]\n\
uint8[3] reserved0    # Reserved\n\
";
  }

  static const char* value(const ::ublox_msgs::CfgHNR_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ublox_msgs::CfgHNR_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.highNavRate);
      stream.next(m.reserved0);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CfgHNR_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ublox_msgs::CfgHNR_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ublox_msgs::CfgHNR_<ContainerAllocator>& v)
  {
    s << indent << "highNavRate: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.highNavRate);
    s << indent << "reserved0[]" << std::endl;
    for (size_t i = 0; i < v.reserved0.size(); ++i)
    {
      s << indent << "  reserved0[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.reserved0[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // UBLOX_MSGS_MESSAGE_CFGHNR_H
