// Auto-generated. Do not edit!

// (in-package hector_quadrotor_controller_gazebo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class prop_angular_velocity_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prop_name = null;
      this.angular_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('prop_name')) {
        this.prop_name = initObj.prop_name
      }
      else {
        this.prop_name = '';
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type prop_angular_velocity_msg
    // Serialize message field [prop_name]
    bufferOffset = _serializer.string(obj.prop_name, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = _serializer.float64(obj.angular_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type prop_angular_velocity_msg
    let len;
    let data = new prop_angular_velocity_msg(null);
    // Deserialize message field [prop_name]
    data.prop_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.prop_name);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hector_quadrotor_controller_gazebo/prop_angular_velocity_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '34fd363f50e9c618a6d6b7d2b7a53747';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string prop_name
    float64 angular_velocity
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new prop_angular_velocity_msg(null);
    if (msg.prop_name !== undefined) {
      resolved.prop_name = msg.prop_name;
    }
    else {
      resolved.prop_name = ''
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = msg.angular_velocity;
    }
    else {
      resolved.angular_velocity = 0.0
    }

    return resolved;
    }
};

module.exports = prop_angular_velocity_msg;
