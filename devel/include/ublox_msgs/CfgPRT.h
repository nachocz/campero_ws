// Generated by gencpp from file ublox_msgs/CfgPRT.msg
// DO NOT EDIT!


#ifndef UBLOX_MSGS_MESSAGE_CFGPRT_H
#define UBLOX_MSGS_MESSAGE_CFGPRT_H


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
struct CfgPRT_
{
  typedef CfgPRT_<ContainerAllocator> Type;

  CfgPRT_()
    : portID(0)
    , reserved0(0)
    , txReady(0)
    , mode(0)
    , baudRate(0)
    , inProtoMask(0)
    , outProtoMask(0)
    , flags(0)
    , reserved1(0)  {
    }
  CfgPRT_(const ContainerAllocator& _alloc)
    : portID(0)
    , reserved0(0)
    , txReady(0)
    , mode(0)
    , baudRate(0)
    , inProtoMask(0)
    , outProtoMask(0)
    , flags(0)
    , reserved1(0)  {
  (void)_alloc;
    }



   typedef uint8_t _portID_type;
  _portID_type portID;

   typedef uint8_t _reserved0_type;
  _reserved0_type reserved0;

   typedef uint16_t _txReady_type;
  _txReady_type txReady;

   typedef uint32_t _mode_type;
  _mode_type mode;

   typedef uint32_t _baudRate_type;
  _baudRate_type baudRate;

   typedef uint16_t _inProtoMask_type;
  _inProtoMask_type inProtoMask;

   typedef uint16_t _outProtoMask_type;
  _outProtoMask_type outProtoMask;

   typedef uint16_t _flags_type;
  _flags_type flags;

   typedef uint16_t _reserved1_type;
  _reserved1_type reserved1;



  enum {
    CLASS_ID = 6u,
    MESSAGE_ID = 0u,
    PORT_ID_DDC = 0u,
    PORT_ID_UART1 = 1u,
    PORT_ID_UART2 = 2u,
    PORT_ID_USB = 3u,
    PORT_ID_SPI = 4u,
    TX_READY_EN = 1u,
    TX_READY_POLARITY_HIGH_ACTIVE = 0u,
    TX_READY_POLARITY_LOW_ACTIVE = 2u,
    TX_READY_PIN_SHIFT = 2u,
    TX_READY_PIN_MASK = 124u,
    TX_READY_THRES_SHIFT = 7u,
    TX_READY_THRES_MASK = 65408u,
    MODE_DDC_SLAVE_ADDR_SHIFT = 1u,
    MODE_DDC_SLAVE_ADDR_MASK = 254u,
    MODE_RESERVED1 = 16u,
    MODE_CHAR_LEN_MASK = 192u,
    MODE_CHAR_LEN_5BIT = 0u,
    MODE_CHAR_LEN_6BIT = 64u,
    MODE_CHAR_LEN_7BIT = 128u,
    MODE_CHAR_LEN_8BIT = 192u,
    MODE_PARITY_MASK = 3584u,
    MODE_PARITY_EVEN = 0u,
    MODE_PARITY_ODD = 512u,
    MODE_PARITY_NO = 2048u,
    MODE_STOP_BITS_MASK = 12288u,
    MODE_STOP_BITS_1 = 0u,
    MODE_STOP_BITS_15 = 4096u,
    MODE_STOP_BITS_2 = 8192u,
    MODE_STOP_BITS_05 = 12288u,
    MODE_SPI_SPI_MODE_CPOL = 4u,
    MODE_SPI_SPI_MODE_CPHA = 2u,
    MODE_SPI_FLOW_CONTROL = 64u,
    MODE_SPI_FF_COUNT_SHIFT = 8u,
    MODE_SPI_FF_COUNT_MASK = 16128u,
    PROTO_UBX = 1u,
    PROTO_NMEA = 2u,
    PROTO_RTCM = 4u,
    PROTO_RTCM3 = 32u,
    FLAGS_EXTENDED_TX_TIMEOUT = 2u,
  };


  typedef boost::shared_ptr< ::ublox_msgs::CfgPRT_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ublox_msgs::CfgPRT_<ContainerAllocator> const> ConstPtr;

}; // struct CfgPRT_

typedef ::ublox_msgs::CfgPRT_<std::allocator<void> > CfgPRT;

typedef boost::shared_ptr< ::ublox_msgs::CfgPRT > CfgPRTPtr;
typedef boost::shared_ptr< ::ublox_msgs::CfgPRT const> CfgPRTConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ublox_msgs::CfgPRT_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ublox_msgs::CfgPRT_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ublox_msgs::CfgPRT_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ublox_msgs::CfgPRT_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ublox_msgs::CfgPRT_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ublox_msgs::CfgPRT_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ublox_msgs::CfgPRT_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ublox_msgs::CfgPRT_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ublox_msgs::CfgPRT_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a4f010a61091571f886628b406ed3edb";
  }

  static const char* value(const ::ublox_msgs::CfgPRT_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa4f010a61091571fULL;
  static const uint64_t static_value2 = 0x886628b406ed3edbULL;
};

template<class ContainerAllocator>
struct DataType< ::ublox_msgs::CfgPRT_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ublox_msgs/CfgPRT";
  }

  static const char* value(const ::ublox_msgs::CfgPRT_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ublox_msgs::CfgPRT_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# CFG-PRT (0x06 0x00)\n\
# Port Configuration for DDC, UART, USB, SPI\n\
#\n\
# Several configurations can be concatenated to one input message. In this case \n\
# the payload length can be a multiple of the normal length (see the other\n\
# versions of CFG-PRT). Output messages from the module contain only one\n\
# configuration unit.\n\
#\n\
\n\
uint8 CLASS_ID = 6\n\
uint8 MESSAGE_ID = 0\n\
\n\
uint8 portID              # Port Identifier Number\n\
uint8 PORT_ID_DDC = 0\n\
uint8 PORT_ID_UART1 = 1\n\
uint8 PORT_ID_UART2 = 2\n\
uint8 PORT_ID_USB = 3\n\
uint8 PORT_ID_SPI = 4\n\
\n\
uint8 reserved0           # Reserved\n\
\n\
uint16 txReady            # TX ready PIN configuration (since Firmware 7.01)\n\
                          # reserved (Always set to zero) up to Firmware 7.01\n\
                          \n\
uint16 TX_READY_EN = 1                    # Enable TX ready feature for this \n\
                                          # port\n\
uint16 TX_READY_POLARITY_HIGH_ACTIVE = 0  # Polarity High-active\n\
uint16 TX_READY_POLARITY_LOW_ACTIVE = 2   # Polarity Low-active\n\
uint16 TX_READY_PIN_SHIFT = 2             # PIO to be used (must not be in use\n\
                                          # already by another function)\n\
uint16 TX_READY_PIN_MASK = 124            #\n\
uint16 TX_READY_THRES_SHIFT = 7           # Threshold\n\
uint16 TX_READY_THRES_MASK = 65408        # The given threshold is multiplied by\n\
                                          # 8 bytes.\n\
                                          # The TX ready PIN goes active \n\
                                          # after >= thres*8 bytes are pending\n\
                                          # for the port and going inactive\n\
                                          # after the last pending bytes have\n\
                                          # been written to hardware (0-4 bytes\n\
                                          # before end of stream).\n\
\n\
uint32 mode               # A bit mask describing the DDC, UART or SPI mode \n\
                          # Reserved for USB\n\
# DDC Mode Constants\n\
uint32 MODE_DDC_SLAVE_ADDR_SHIFT = 1      \n\
uint32 MODE_DDC_SLAVE_ADDR_MASK = 254     # Slave address\n\
                                          # Range: 0x07 < slaveAddr < 0x78. \n\
# UART Mode Constants\n\
uint32 MODE_RESERVED1 = 16                # Default 1 for compatibility with A4\n\
uint32 MODE_CHAR_LEN_MASK = 192           # Character Length\n\
uint32 MODE_CHAR_LEN_5BIT = 0               # 5bit (not supported)\n\
uint32 MODE_CHAR_LEN_6BIT = 64              # 6bit (not supported)\n\
uint32 MODE_CHAR_LEN_7BIT = 128             # 7bit (supported only with parity)\n\
uint32 MODE_CHAR_LEN_8BIT = 192             # 8bit\n\
uint32 MODE_PARITY_MASK = 3584            #\n\
uint32 MODE_PARITY_EVEN = 0                 # Even Parity\n\
uint32 MODE_PARITY_ODD = 512                # Odd Parity\n\
uint32 MODE_PARITY_NO = 2048                # No Parity (even/odd ignored)\n\
uint32 MODE_STOP_BITS_MASK = 12288        # Number of Stop Bits\n\
uint32 MODE_STOP_BITS_1 = 0                 # 1 Stop Bit\n\
uint32 MODE_STOP_BITS_15 = 4096             # 1.5 Stop Bit\n\
uint32 MODE_STOP_BITS_2 = 8192              # 2 Stop Bit\n\
uint32 MODE_STOP_BITS_05 = 12288            # 0.5 Stop Bit\n\
# SPI Mode Constants\n\
uint32 MODE_SPI_SPI_MODE_CPOL = 4         # SPI Mode CPOL (0/1)\n\
uint32 MODE_SPI_SPI_MODE_CPHA = 2         # SPI Mode CPH (0/1)\n\
                                          # (both CPOL/CPHA) can be = 1\n\
uint32 MODE_SPI_FLOW_CONTROL = 64         # (u-blox 6 only)\n\
                                          # 0 Flow control disabled\n\
                                          # 1 Flow control enabled (9-bit mode)\n\
uint32 MODE_SPI_FF_COUNT_SHIFT = 8\n\
uint32 MODE_SPI_FF_COUNT_MASK = 16128     # Number of bytes containing 0xFF to\n\
                                          # receive before switching off \n\
                                          # reception. \n\
                                          # Range: 0(mechanism off)-63\n\
\n\
uint32 baudRate           # UART Baudrate in bits/second [bits/s]\n\
                          # Reserved for USB, SPI, DDC\n\
                          # Possible values: 4800, 9600, 19200, 38400, 57600, \n\
                          #                  115200, 230400, 460800\n\
\n\
uint16 inProtoMask        # A mask describing which input protocols are active.\n\
                          # Each bit of this mask is used for a protocol.\n\
                          # Through that, multiple protocols can be defined\n\
                          # on a single port.\n\
\n\
uint16 outProtoMask       # A mask describing which output protocols are active.\n\
                          # Each bit of this mask is used for a protocol.\n\
                          # Through that, multiple protocols can be defined\n\
                          # on a single port.\n\
\n\
uint16 PROTO_UBX = 1\n\
uint16 PROTO_NMEA = 2\n\
uint16 PROTO_RTCM = 4     # only for inProtoMask\n\
uint16 PROTO_RTCM3 = 32   # (not supported in protocol versions less than 20)\n\
\n\
uint16 flags              # Flags for UART & SPI, Reserved for USB\n\
uint16 FLAGS_EXTENDED_TX_TIMEOUT = 2  # if set, the port will timeout if \n\
                                      # allocated TX memory >=4 kB and no \n\
                                      # activity for 1.5s. If not set the port \n\
                                      # will timoout if no activity for 1.5s \n\
                                      # regardless on the amount of allocated \n\
                                      # TX memory.\n\
\n\
uint16 reserved1          # Always set to zero\n\
";
  }

  static const char* value(const ::ublox_msgs::CfgPRT_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ublox_msgs::CfgPRT_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.portID);
      stream.next(m.reserved0);
      stream.next(m.txReady);
      stream.next(m.mode);
      stream.next(m.baudRate);
      stream.next(m.inProtoMask);
      stream.next(m.outProtoMask);
      stream.next(m.flags);
      stream.next(m.reserved1);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CfgPRT_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ublox_msgs::CfgPRT_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ublox_msgs::CfgPRT_<ContainerAllocator>& v)
  {
    s << indent << "portID: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.portID);
    s << indent << "reserved0: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.reserved0);
    s << indent << "txReady: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.txReady);
    s << indent << "mode: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.mode);
    s << indent << "baudRate: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.baudRate);
    s << indent << "inProtoMask: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.inProtoMask);
    s << indent << "outProtoMask: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.outProtoMask);
    s << indent << "flags: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.flags);
    s << indent << "reserved1: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.reserved1);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UBLOX_MSGS_MESSAGE_CFGPRT_H
