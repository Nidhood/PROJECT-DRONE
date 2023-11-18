// Generated by gencpp from file drone_controller/prop_angular_velocity_msg.msg
// DO NOT EDIT!


#ifndef DRONE_CONTROLLER_MESSAGE_PROP_ANGULAR_VELOCITY_MSG_H
#define DRONE_CONTROLLER_MESSAGE_PROP_ANGULAR_VELOCITY_MSG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace drone_controller
{
template <class ContainerAllocator>
struct prop_angular_velocity_msg_
{
  typedef prop_angular_velocity_msg_<ContainerAllocator> Type;

  prop_angular_velocity_msg_()
    : prop_name()
    , angular_velocity(0.0)  {
    }
  prop_angular_velocity_msg_(const ContainerAllocator& _alloc)
    : prop_name(_alloc)
    , angular_velocity(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _prop_name_type;
  _prop_name_type prop_name;

   typedef double _angular_velocity_type;
  _angular_velocity_type angular_velocity;





  typedef boost::shared_ptr< ::drone_controller::prop_angular_velocity_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::drone_controller::prop_angular_velocity_msg_<ContainerAllocator> const> ConstPtr;

}; // struct prop_angular_velocity_msg_

typedef ::drone_controller::prop_angular_velocity_msg_<std::allocator<void> > prop_angular_velocity_msg;

typedef boost::shared_ptr< ::drone_controller::prop_angular_velocity_msg > prop_angular_velocity_msgPtr;
typedef boost::shared_ptr< ::drone_controller::prop_angular_velocity_msg const> prop_angular_velocity_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::drone_controller::prop_angular_velocity_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::drone_controller::prop_angular_velocity_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::drone_controller::prop_angular_velocity_msg_<ContainerAllocator1> & lhs, const ::drone_controller::prop_angular_velocity_msg_<ContainerAllocator2> & rhs)
{
  return lhs.prop_name == rhs.prop_name &&
    lhs.angular_velocity == rhs.angular_velocity;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::drone_controller::prop_angular_velocity_msg_<ContainerAllocator1> & lhs, const ::drone_controller::prop_angular_velocity_msg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace drone_controller

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::drone_controller::prop_angular_velocity_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::drone_controller::prop_angular_velocity_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::drone_controller::prop_angular_velocity_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::drone_controller::prop_angular_velocity_msg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::drone_controller::prop_angular_velocity_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::drone_controller::prop_angular_velocity_msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::drone_controller::prop_angular_velocity_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "34fd363f50e9c618a6d6b7d2b7a53747";
  }

  static const char* value(const ::drone_controller::prop_angular_velocity_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x34fd363f50e9c618ULL;
  static const uint64_t static_value2 = 0xa6d6b7d2b7a53747ULL;
};

template<class ContainerAllocator>
struct DataType< ::drone_controller::prop_angular_velocity_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "drone_controller/prop_angular_velocity_msg";
  }

  static const char* value(const ::drone_controller::prop_angular_velocity_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::drone_controller::prop_angular_velocity_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string prop_name\n"
"float64 angular_velocity\n"
;
  }

  static const char* value(const ::drone_controller::prop_angular_velocity_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::drone_controller::prop_angular_velocity_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.prop_name);
      stream.next(m.angular_velocity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct prop_angular_velocity_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::drone_controller::prop_angular_velocity_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::drone_controller::prop_angular_velocity_msg_<ContainerAllocator>& v)
  {
    s << indent << "prop_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.prop_name);
    s << indent << "angular_velocity: ";
    Printer<double>::stream(s, indent + "  ", v.angular_velocity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DRONE_CONTROLLER_MESSAGE_PROP_ANGULAR_VELOCITY_MSG_H