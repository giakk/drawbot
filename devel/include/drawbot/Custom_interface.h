// Generated by gencpp from file drawbot/Custom_interface.msg
// DO NOT EDIT!


#ifndef DRAWBOT_MESSAGE_CUSTOM_INTERFACE_H
#define DRAWBOT_MESSAGE_CUSTOM_INTERFACE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace drawbot
{
template <class ContainerAllocator>
struct Custom_interface_
{
  typedef Custom_interface_<ContainerAllocator> Type;

  Custom_interface_()
    : x(0)
    , y(0)  {
    }
  Custom_interface_(const ContainerAllocator& _alloc)
    : x(0)
    , y(0)  {
  (void)_alloc;
    }



   typedef int16_t _x_type;
  _x_type x;

   typedef int16_t _y_type;
  _y_type y;





  typedef boost::shared_ptr< ::drawbot::Custom_interface_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::drawbot::Custom_interface_<ContainerAllocator> const> ConstPtr;

}; // struct Custom_interface_

typedef ::drawbot::Custom_interface_<std::allocator<void> > Custom_interface;

typedef boost::shared_ptr< ::drawbot::Custom_interface > Custom_interfacePtr;
typedef boost::shared_ptr< ::drawbot::Custom_interface const> Custom_interfaceConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::drawbot::Custom_interface_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::drawbot::Custom_interface_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::drawbot::Custom_interface_<ContainerAllocator1> & lhs, const ::drawbot::Custom_interface_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::drawbot::Custom_interface_<ContainerAllocator1> & lhs, const ::drawbot::Custom_interface_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace drawbot

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::drawbot::Custom_interface_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::drawbot::Custom_interface_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::drawbot::Custom_interface_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::drawbot::Custom_interface_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::drawbot::Custom_interface_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::drawbot::Custom_interface_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::drawbot::Custom_interface_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6d78a6b8c9650c754bf0432d3d1707c3";
  }

  static const char* value(const ::drawbot::Custom_interface_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6d78a6b8c9650c75ULL;
  static const uint64_t static_value2 = 0x4bf0432d3d1707c3ULL;
};

template<class ContainerAllocator>
struct DataType< ::drawbot::Custom_interface_<ContainerAllocator> >
{
  static const char* value()
  {
    return "drawbot/Custom_interface";
  }

  static const char* value(const ::drawbot::Custom_interface_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::drawbot::Custom_interface_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 x\n"
"int16 y\n"
;
  }

  static const char* value(const ::drawbot::Custom_interface_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::drawbot::Custom_interface_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Custom_interface_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::drawbot::Custom_interface_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::drawbot::Custom_interface_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<int16_t>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<int16_t>::stream(s, indent + "  ", v.y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DRAWBOT_MESSAGE_CUSTOM_INTERFACE_H
