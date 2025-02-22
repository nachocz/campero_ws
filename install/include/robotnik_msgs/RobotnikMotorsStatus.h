// Generated by gencpp from file robotnik_msgs/RobotnikMotorsStatus.msg
// DO NOT EDIT!


#ifndef ROBOTNIK_MSGS_MESSAGE_ROBOTNIKMOTORSSTATUS_H
#define ROBOTNIK_MSGS_MESSAGE_ROBOTNIKMOTORSSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robotnik_msgs/MotorStatus.h>

namespace robotnik_msgs
{
template <class ContainerAllocator>
struct RobotnikMotorsStatus_
{
  typedef RobotnikMotorsStatus_<ContainerAllocator> Type;

  RobotnikMotorsStatus_()
    : name()
    , can_id()
    , motor_status()  {
    }
  RobotnikMotorsStatus_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , can_id(_alloc)
    , motor_status(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _name_type;
  _name_type name;

   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _can_id_type;
  _can_id_type can_id;

   typedef std::vector< ::robotnik_msgs::MotorStatus_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::robotnik_msgs::MotorStatus_<ContainerAllocator> >::other >  _motor_status_type;
  _motor_status_type motor_status;





  typedef boost::shared_ptr< ::robotnik_msgs::RobotnikMotorsStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotnik_msgs::RobotnikMotorsStatus_<ContainerAllocator> const> ConstPtr;

}; // struct RobotnikMotorsStatus_

typedef ::robotnik_msgs::RobotnikMotorsStatus_<std::allocator<void> > RobotnikMotorsStatus;

typedef boost::shared_ptr< ::robotnik_msgs::RobotnikMotorsStatus > RobotnikMotorsStatusPtr;
typedef boost::shared_ptr< ::robotnik_msgs::RobotnikMotorsStatus const> RobotnikMotorsStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotnik_msgs::RobotnikMotorsStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotnik_msgs::RobotnikMotorsStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace robotnik_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'robotnik_msgs': ['/home/pc-campero2/campero_ws/src/campero/robotnik_msgs/msg', '/home/pc-campero2/campero_ws/devel/share/robotnik_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_msgs::RobotnikMotorsStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_msgs::RobotnikMotorsStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::RobotnikMotorsStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::RobotnikMotorsStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::RobotnikMotorsStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::RobotnikMotorsStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotnik_msgs::RobotnikMotorsStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "40f5305ac2c33d213d54d21bf9ba7fc9";
  }

  static const char* value(const ::robotnik_msgs::RobotnikMotorsStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x40f5305ac2c33d21ULL;
  static const uint64_t static_value2 = 0x3d54d21bf9ba7fc9ULL;
};

template<class ContainerAllocator>
struct DataType< ::robotnik_msgs::RobotnikMotorsStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotnik_msgs/RobotnikMotorsStatus";
  }

  static const char* value(const ::robotnik_msgs::RobotnikMotorsStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotnik_msgs::RobotnikMotorsStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Name of each motor drive\n\
string[] name\n\
# CAN ID of each motor drive\n\
int32[] can_id\n\
# Status of the motor drive\n\
robotnik_msgs/MotorStatus[] motor_status\n\
\n\
\n\
================================================================================\n\
MSG: robotnik_msgs/MotorStatus\n\
string state\n\
string status\n\
string communicationstatus\n\
string statusword\n\
string driveflags\n\
string[] activestatusword\n\
string[] activedriveflags\n\
int32 digitaloutputs\n\
int32 digitalinputs\n\
float32 averagecurrent\n\
float32[] analoginputs\n\
\n\
";
  }

  static const char* value(const ::robotnik_msgs::RobotnikMotorsStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotnik_msgs::RobotnikMotorsStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.can_id);
      stream.next(m.motor_status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobotnikMotorsStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotnik_msgs::RobotnikMotorsStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotnik_msgs::RobotnikMotorsStatus_<ContainerAllocator>& v)
  {
    s << indent << "name[]" << std::endl;
    for (size_t i = 0; i < v.name.size(); ++i)
    {
      s << indent << "  name[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name[i]);
    }
    s << indent << "can_id[]" << std::endl;
    for (size_t i = 0; i < v.can_id.size(); ++i)
    {
      s << indent << "  can_id[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.can_id[i]);
    }
    s << indent << "motor_status[]" << std::endl;
    for (size_t i = 0; i < v.motor_status.size(); ++i)
    {
      s << indent << "  motor_status[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::robotnik_msgs::MotorStatus_<ContainerAllocator> >::stream(s, indent + "    ", v.motor_status[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTNIK_MSGS_MESSAGE_ROBOTNIKMOTORSSTATUS_H
