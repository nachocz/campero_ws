// Generated by gencpp from file robotnik_msgs/set_heightRequest.msg
// DO NOT EDIT!


#ifndef ROBOTNIK_MSGS_MESSAGE_SET_HEIGHTREQUEST_H
#define ROBOTNIK_MSGS_MESSAGE_SET_HEIGHTREQUEST_H


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
struct set_heightRequest_
{
  typedef set_heightRequest_<ContainerAllocator> Type;

  set_heightRequest_()
    : height(0.0)  {
    }
  set_heightRequest_(const ContainerAllocator& _alloc)
    : height(0.0)  {
  (void)_alloc;
    }



   typedef float _height_type;
  _height_type height;





  typedef boost::shared_ptr< ::robotnik_msgs::set_heightRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotnik_msgs::set_heightRequest_<ContainerAllocator> const> ConstPtr;

}; // struct set_heightRequest_

typedef ::robotnik_msgs::set_heightRequest_<std::allocator<void> > set_heightRequest;

typedef boost::shared_ptr< ::robotnik_msgs::set_heightRequest > set_heightRequestPtr;
typedef boost::shared_ptr< ::robotnik_msgs::set_heightRequest const> set_heightRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotnik_msgs::set_heightRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotnik_msgs::set_heightRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::robotnik_msgs::set_heightRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_msgs::set_heightRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::set_heightRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::set_heightRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::set_heightRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::set_heightRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotnik_msgs::set_heightRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "384d8dd5cbcb4f6e145e6b246fa635b2";
  }

  static const char* value(const ::robotnik_msgs::set_heightRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x384d8dd5cbcb4f6eULL;
  static const uint64_t static_value2 = 0x145e6b246fa635b2ULL;
};

template<class ContainerAllocator>
struct DataType< ::robotnik_msgs::set_heightRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotnik_msgs/set_heightRequest";
  }

  static const char* value(const ::robotnik_msgs::set_heightRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotnik_msgs::set_heightRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
float32 height\n\
";
  }

  static const char* value(const ::robotnik_msgs::set_heightRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotnik_msgs::set_heightRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.height);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct set_heightRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotnik_msgs::set_heightRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotnik_msgs::set_heightRequest_<ContainerAllocator>& v)
  {
    s << indent << "height: ";
    Printer<float>::stream(s, indent + "  ", v.height);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTNIK_MSGS_MESSAGE_SET_HEIGHTREQUEST_H
