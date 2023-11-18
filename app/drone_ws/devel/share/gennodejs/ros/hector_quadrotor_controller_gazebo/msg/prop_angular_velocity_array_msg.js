// Auto-generated. Do not edit!

// (in-package hector_quadrotor_controller_gazebo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let prop_angular_velocity_msg = require('./prop_angular_velocity_msg.js');

//-----------------------------------------------------------

class prop_angular_velocity_array_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.props = null;
    }
    else {
      if (initObj.hasOwnProperty('props')) {
        this.props = initObj.props
      }
      else {
        this.props = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type prop_angular_velocity_array_msg
    // Serialize message field [props]
    // Serialize the length for message field [props]
    bufferOffset = _serializer.uint32(obj.props.length, buffer, bufferOffset);
    obj.props.forEach((val) => {
      bufferOffset = prop_angular_velocity_msg.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type prop_angular_velocity_array_msg
    let len;
    let data = new prop_angular_velocity_array_msg(null);
    // Deserialize message field [props]
    // Deserialize array length for message field [props]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.props = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.props[i] = prop_angular_velocity_msg.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.props.forEach((val) => {
      length += prop_angular_velocity_msg.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hector_quadrotor_controller_gazebo/prop_angular_velocity_array_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b2c9f426c481da0990f4731d761f6df3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    prop_angular_velocity_msg[] props
    
    ================================================================================
    MSG: hector_quadrotor_controller_gazebo/prop_angular_velocity_msg
    string prop_name
    float64 angular_velocity
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new prop_angular_velocity_array_msg(null);
    if (msg.props !== undefined) {
      resolved.props = new Array(msg.props.length);
      for (let i = 0; i < resolved.props.length; ++i) {
        resolved.props[i] = prop_angular_velocity_msg.Resolve(msg.props[i]);
      }
    }
    else {
      resolved.props = []
    }

    return resolved;
    }
};

module.exports = prop_angular_velocity_array_msg;
