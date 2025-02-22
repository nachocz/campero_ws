// Generated by gencpp from file ublox_msgs/NavSVIN.msg
// DO NOT EDIT!


#ifndef UBLOX_MSGS_MESSAGE_NAVSVIN_H
#define UBLOX_MSGS_MESSAGE_NAVSVIN_H


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
struct NavSVIN_
{
  typedef NavSVIN_<ContainerAllocator> Type;

  NavSVIN_()
    : version(0)
    , reserved0()
    , iTOW(0)
    , dur(0)
    , meanX(0)
    , meanY(0)
    , meanZ(0)
    , meanXHP(0)
    , meanYHP(0)
    , meanZHP(0)
    , reserved1(0)
    , meanAcc(0)
    , obs(0)
    , valid(0)
    , active(0)
    , reserved3()  {
      reserved0.assign(0);

      reserved3.assign(0);
  }
  NavSVIN_(const ContainerAllocator& _alloc)
    : version(0)
    , reserved0()
    , iTOW(0)
    , dur(0)
    , meanX(0)
    , meanY(0)
    , meanZ(0)
    , meanXHP(0)
    , meanYHP(0)
    , meanZHP(0)
    , reserved1(0)
    , meanAcc(0)
    , obs(0)
    , valid(0)
    , active(0)
    , reserved3()  {
  (void)_alloc;
      reserved0.assign(0);

      reserved3.assign(0);
  }



   typedef uint8_t _version_type;
  _version_type version;

   typedef boost::array<uint8_t, 3>  _reserved0_type;
  _reserved0_type reserved0;

   typedef uint32_t _iTOW_type;
  _iTOW_type iTOW;

   typedef uint32_t _dur_type;
  _dur_type dur;

   typedef int32_t _meanX_type;
  _meanX_type meanX;

   typedef int32_t _meanY_type;
  _meanY_type meanY;

   typedef int32_t _meanZ_type;
  _meanZ_type meanZ;

   typedef int8_t _meanXHP_type;
  _meanXHP_type meanXHP;

   typedef int8_t _meanYHP_type;
  _meanYHP_type meanYHP;

   typedef int8_t _meanZHP_type;
  _meanZHP_type meanZHP;

   typedef uint8_t _reserved1_type;
  _reserved1_type reserved1;

   typedef uint32_t _meanAcc_type;
  _meanAcc_type meanAcc;

   typedef uint32_t _obs_type;
  _obs_type obs;

   typedef uint8_t _valid_type;
  _valid_type valid;

   typedef uint8_t _active_type;
  _active_type active;

   typedef boost::array<uint8_t, 2>  _reserved3_type;
  _reserved3_type reserved3;



  enum {
    CLASS_ID = 1u,
    MESSAGE_ID = 59u,
  };


  typedef boost::shared_ptr< ::ublox_msgs::NavSVIN_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ublox_msgs::NavSVIN_<ContainerAllocator> const> ConstPtr;

}; // struct NavSVIN_

typedef ::ublox_msgs::NavSVIN_<std::allocator<void> > NavSVIN;

typedef boost::shared_ptr< ::ublox_msgs::NavSVIN > NavSVINPtr;
typedef boost::shared_ptr< ::ublox_msgs::NavSVIN const> NavSVINConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ublox_msgs::NavSVIN_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ublox_msgs::NavSVIN_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ublox_msgs::NavSVIN_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ublox_msgs::NavSVIN_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ublox_msgs::NavSVIN_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ublox_msgs::NavSVIN_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ublox_msgs::NavSVIN_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ublox_msgs::NavSVIN_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ublox_msgs::NavSVIN_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c78016f30ce026b9e670e40dd151a8ac";
  }

  static const char* value(const ::ublox_msgs::NavSVIN_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc78016f30ce026b9ULL;
  static const uint64_t static_value2 = 0xe670e40dd151a8acULL;
};

template<class ContainerAllocator>
struct DataType< ::ublox_msgs::NavSVIN_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ublox_msgs/NavSVIN";
  }

  static const char* value(const ::ublox_msgs::NavSVIN_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ublox_msgs::NavSVIN_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# NAV-SVIN (0x01 0x3B)\n\
# Survey-in data\n\
# \n\
# This message contains information about survey-in parameters.\n\
# Supported on:\n\
#  - u-blox 8 / u-blox M8 with protocol version 20 (only with High Precision\n\
#    GNSS products)\n\
\n\
uint8 CLASS_ID = 1\n\
uint8 MESSAGE_ID = 59\n\
\n\
uint8 version           # Message version (0x00 for this version)\n\
uint8[3] reserved0      # Reserved\n\
\n\
uint32 iTOW             # GPS time of week of the navigation epoch [ms]\n\
\n\
uint32 dur              # Passed survey-in observation time [s]\n\
\n\
int32 meanX             # Current survey-in mean position ECEF X coordinate [cm]\n\
int32 meanY             # Current survey-in mean position ECEF Y coordinate [cm]\n\
int32 meanZ             # Current survey-in mean position ECEF Z coordinate [cm]\n\
\n\
int8 meanXHP            # Current high-precision survey-in mean position\n\
                        # ECEF X coordinate. 0.1_mm \n\
                        # Must be in the range -99..+99.\n\
                        # The current survey-in mean position ECEF X\n\
                        # coordinate, in units of cm, is given by\n\
                        # meanX + (0.01 * meanXHP)\n\
int8 meanYHP            # Current high-precision survey-in mean position\n\
                        # ECEF Y coordinate. [0.1 mm] \n\
                        # Must be in the range -99..+99.\n\
                        # The current survey-in mean position ECEF Y\n\
                        # coordinate, in units of cm, is given by\n\
                        # meanY + (0.01 * meanYHP)\n\
int8 meanZHP            # Current high-precision survey-in mean position\n\
                        # ECEF Z coordinate. [0.1 mm] \n\
                        # Must be in the range -99..+99.\n\
                        # The current survey-in mean position ECEF Z\n\
                        # coordinate, in units of cm, is given by\n\
                        # meanZ + (0.01 * meanZHP)\n\
\n\
uint8 reserved1         # Reserved\n\
\n\
uint32 meanAcc          # Current survey-in mean position accuracy [0.1 mm]\n\
uint32 obs              # Number of position observations used during survey-in\n\
uint8 valid             # Survey-in position validity flag, 1 = valid\n\
                        # otherwise 0\n\
uint8 active            # Survey-in in progress flag, 1 = in-progress\n\
                        # otherwise 0\n\
\n\
uint8[2] reserved3      # Reserved\n\
";
  }

  static const char* value(const ::ublox_msgs::NavSVIN_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ublox_msgs::NavSVIN_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.version);
      stream.next(m.reserved0);
      stream.next(m.iTOW);
      stream.next(m.dur);
      stream.next(m.meanX);
      stream.next(m.meanY);
      stream.next(m.meanZ);
      stream.next(m.meanXHP);
      stream.next(m.meanYHP);
      stream.next(m.meanZHP);
      stream.next(m.reserved1);
      stream.next(m.meanAcc);
      stream.next(m.obs);
      stream.next(m.valid);
      stream.next(m.active);
      stream.next(m.reserved3);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NavSVIN_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ublox_msgs::NavSVIN_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ublox_msgs::NavSVIN_<ContainerAllocator>& v)
  {
    s << indent << "version: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.version);
    s << indent << "reserved0[]" << std::endl;
    for (size_t i = 0; i < v.reserved0.size(); ++i)
    {
      s << indent << "  reserved0[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.reserved0[i]);
    }
    s << indent << "iTOW: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.iTOW);
    s << indent << "dur: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.dur);
    s << indent << "meanX: ";
    Printer<int32_t>::stream(s, indent + "  ", v.meanX);
    s << indent << "meanY: ";
    Printer<int32_t>::stream(s, indent + "  ", v.meanY);
    s << indent << "meanZ: ";
    Printer<int32_t>::stream(s, indent + "  ", v.meanZ);
    s << indent << "meanXHP: ";
    Printer<int8_t>::stream(s, indent + "  ", v.meanXHP);
    s << indent << "meanYHP: ";
    Printer<int8_t>::stream(s, indent + "  ", v.meanYHP);
    s << indent << "meanZHP: ";
    Printer<int8_t>::stream(s, indent + "  ", v.meanZHP);
    s << indent << "reserved1: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.reserved1);
    s << indent << "meanAcc: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.meanAcc);
    s << indent << "obs: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.obs);
    s << indent << "valid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.valid);
    s << indent << "active: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.active);
    s << indent << "reserved3[]" << std::endl;
    for (size_t i = 0; i < v.reserved3.size(); ++i)
    {
      s << indent << "  reserved3[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.reserved3[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // UBLOX_MSGS_MESSAGE_NAVSVIN_H
