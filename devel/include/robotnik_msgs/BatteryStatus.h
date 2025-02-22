// Generated by gencpp from file robotnik_msgs/BatteryStatus.msg
// DO NOT EDIT!


#ifndef ROBOTNIK_MSGS_MESSAGE_BATTERYSTATUS_H
#define ROBOTNIK_MSGS_MESSAGE_BATTERYSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robotnik_msgs
{
template <class ContainerAllocator>
struct BatteryStatus_
{
  typedef BatteryStatus_<ContainerAllocator> Type;

  BatteryStatus_()
    : voltage(0.0)
    , current(0.0)
    , level(0.0)
    , time_remaining(0)
    , time_charging(0)
    , is_charging(false)  {
    }
  BatteryStatus_(const ContainerAllocator& _alloc)
    : voltage(0.0)
    , current(0.0)
    , level(0.0)
    , time_remaining(0)
    , time_charging(0)
    , is_charging(false)  {
  (void)_alloc;
    }



   typedef float _voltage_type;
  _voltage_type voltage;

   typedef float _current_type;
  _current_type current;

   typedef float _level_type;
  _level_type level;

   typedef uint32_t _time_remaining_type;
  _time_remaining_type time_remaining;

   typedef uint32_t _time_charging_type;
  _time_charging_type time_charging;

   typedef uint8_t _is_charging_type;
  _is_charging_type is_charging;





  typedef boost::shared_ptr< ::robotnik_msgs::BatteryStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotnik_msgs::BatteryStatus_<ContainerAllocator> const> ConstPtr;

}; // struct BatteryStatus_

typedef ::robotnik_msgs::BatteryStatus_<std::allocator<void> > BatteryStatus;

typedef boost::shared_ptr< ::robotnik_msgs::BatteryStatus > BatteryStatusPtr;
typedef boost::shared_ptr< ::robotnik_msgs::BatteryStatus const> BatteryStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotnik_msgs::BatteryStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotnik_msgs::BatteryStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace robotnik_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'robotnik_msgs': ['/home/pc-campero2/campero_ws/src/campero/robotnik_msgs/msg', '/home/pc-campero2/campero_ws/devel/share/robotnik_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_msgs::BatteryStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_msgs::BatteryStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::BatteryStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::BatteryStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::BatteryStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::BatteryStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotnik_msgs::BatteryStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6b1ba378a989551f0cb299f03c5355bb";
  }

  static const char* value(const ::robotnik_msgs::BatteryStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6b1ba378a989551fULL;
  static const uint64_t static_value2 = 0x0cb299f03c5355bbULL;
};

template<class ContainerAllocator>
struct DataType< ::robotnik_msgs::BatteryStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotnik_msgs/BatteryStatus";
  }

  static const char* value(const ::robotnik_msgs::BatteryStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotnik_msgs::BatteryStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 voltage			# in volts\n\
float32 current			# in amperes\n\
float32 level			# in %\n\
uint32 time_remaining		# in minutes\n\
uint32 time_charging            # in minutes \n\
bool is_charging                # true when connected\n\
";
  }

  static const char* value(const ::robotnik_msgs::BatteryStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotnik_msgs::BatteryStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.voltage);
      stream.next(m.current);
      stream.next(m.level);
      stream.next(m.time_remaining);
      stream.next(m.time_charging);
      stream.next(m.is_charging);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BatteryStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotnik_msgs::BatteryStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotnik_msgs::BatteryStatus_<ContainerAllocator>& v)
  {
    s << indent << "voltage: ";
    Printer<float>::stream(s, indent + "  ", v.voltage);
    s << indent << "current: ";
    Printer<float>::stream(s, indent + "  ", v.current);
    s << indent << "level: ";
    Printer<float>::stream(s, indent + "  ", v.level);
    s << indent << "time_remaining: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.time_remaining);
    s << indent << "time_charging: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.time_charging);
    s << indent << "is_charging: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_charging);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTNIK_MSGS_MESSAGE_BATTERYSTATUS_H
