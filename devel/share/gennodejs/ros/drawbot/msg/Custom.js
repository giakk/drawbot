// Auto-generated. Do not edit!

// (in-package drawbot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Custom {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motor_r = null;
      this.motor_l = null;
      this.change = null;
    }
    else {
      if (initObj.hasOwnProperty('motor_r')) {
        this.motor_r = initObj.motor_r
      }
      else {
        this.motor_r = 0.0;
      }
      if (initObj.hasOwnProperty('motor_l')) {
        this.motor_l = initObj.motor_l
      }
      else {
        this.motor_l = 0.0;
      }
      if (initObj.hasOwnProperty('change')) {
        this.change = initObj.change
      }
      else {
        this.change = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Custom
    // Serialize message field [motor_r]
    bufferOffset = _serializer.float32(obj.motor_r, buffer, bufferOffset);
    // Serialize message field [motor_l]
    bufferOffset = _serializer.float32(obj.motor_l, buffer, bufferOffset);
    // Serialize message field [change]
    bufferOffset = _serializer.bool(obj.change, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Custom
    let len;
    let data = new Custom(null);
    // Deserialize message field [motor_r]
    data.motor_r = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [motor_l]
    data.motor_l = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [change]
    data.change = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'drawbot/Custom';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b3086714753979f6aef080bf1f3ae63';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 motor_r
    float32 motor_l
    bool change
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Custom(null);
    if (msg.motor_r !== undefined) {
      resolved.motor_r = msg.motor_r;
    }
    else {
      resolved.motor_r = 0.0
    }

    if (msg.motor_l !== undefined) {
      resolved.motor_l = msg.motor_l;
    }
    else {
      resolved.motor_l = 0.0
    }

    if (msg.change !== undefined) {
      resolved.change = msg.change;
    }
    else {
      resolved.change = false
    }

    return resolved;
    }
};

module.exports = Custom;
