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

class Data_arduino {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ref_speed_r = null;
      this.ref_speed_l = null;
      this.mesu_speed_r = null;
      this.mesu_speed_l = null;
      this.controller_speed_r = null;
      this.controller_speed_l = null;
      this.err_speed_r = null;
      this.err_speed_l = null;
      this.err_sum_speed_r = null;
      this.err_sum_speed_l = null;
      this.time_of_measure = null;
    }
    else {
      if (initObj.hasOwnProperty('ref_speed_r')) {
        this.ref_speed_r = initObj.ref_speed_r
      }
      else {
        this.ref_speed_r = 0.0;
      }
      if (initObj.hasOwnProperty('ref_speed_l')) {
        this.ref_speed_l = initObj.ref_speed_l
      }
      else {
        this.ref_speed_l = 0.0;
      }
      if (initObj.hasOwnProperty('mesu_speed_r')) {
        this.mesu_speed_r = initObj.mesu_speed_r
      }
      else {
        this.mesu_speed_r = 0.0;
      }
      if (initObj.hasOwnProperty('mesu_speed_l')) {
        this.mesu_speed_l = initObj.mesu_speed_l
      }
      else {
        this.mesu_speed_l = 0.0;
      }
      if (initObj.hasOwnProperty('controller_speed_r')) {
        this.controller_speed_r = initObj.controller_speed_r
      }
      else {
        this.controller_speed_r = 0.0;
      }
      if (initObj.hasOwnProperty('controller_speed_l')) {
        this.controller_speed_l = initObj.controller_speed_l
      }
      else {
        this.controller_speed_l = 0.0;
      }
      if (initObj.hasOwnProperty('err_speed_r')) {
        this.err_speed_r = initObj.err_speed_r
      }
      else {
        this.err_speed_r = 0.0;
      }
      if (initObj.hasOwnProperty('err_speed_l')) {
        this.err_speed_l = initObj.err_speed_l
      }
      else {
        this.err_speed_l = 0.0;
      }
      if (initObj.hasOwnProperty('err_sum_speed_r')) {
        this.err_sum_speed_r = initObj.err_sum_speed_r
      }
      else {
        this.err_sum_speed_r = 0.0;
      }
      if (initObj.hasOwnProperty('err_sum_speed_l')) {
        this.err_sum_speed_l = initObj.err_sum_speed_l
      }
      else {
        this.err_sum_speed_l = 0.0;
      }
      if (initObj.hasOwnProperty('time_of_measure')) {
        this.time_of_measure = initObj.time_of_measure
      }
      else {
        this.time_of_measure = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Data_arduino
    // Serialize message field [ref_speed_r]
    bufferOffset = _serializer.float32(obj.ref_speed_r, buffer, bufferOffset);
    // Serialize message field [ref_speed_l]
    bufferOffset = _serializer.float32(obj.ref_speed_l, buffer, bufferOffset);
    // Serialize message field [mesu_speed_r]
    bufferOffset = _serializer.float32(obj.mesu_speed_r, buffer, bufferOffset);
    // Serialize message field [mesu_speed_l]
    bufferOffset = _serializer.float32(obj.mesu_speed_l, buffer, bufferOffset);
    // Serialize message field [controller_speed_r]
    bufferOffset = _serializer.float32(obj.controller_speed_r, buffer, bufferOffset);
    // Serialize message field [controller_speed_l]
    bufferOffset = _serializer.float32(obj.controller_speed_l, buffer, bufferOffset);
    // Serialize message field [err_speed_r]
    bufferOffset = _serializer.float32(obj.err_speed_r, buffer, bufferOffset);
    // Serialize message field [err_speed_l]
    bufferOffset = _serializer.float32(obj.err_speed_l, buffer, bufferOffset);
    // Serialize message field [err_sum_speed_r]
    bufferOffset = _serializer.float32(obj.err_sum_speed_r, buffer, bufferOffset);
    // Serialize message field [err_sum_speed_l]
    bufferOffset = _serializer.float32(obj.err_sum_speed_l, buffer, bufferOffset);
    // Serialize message field [time_of_measure]
    bufferOffset = _serializer.float32(obj.time_of_measure, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Data_arduino
    let len;
    let data = new Data_arduino(null);
    // Deserialize message field [ref_speed_r]
    data.ref_speed_r = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ref_speed_l]
    data.ref_speed_l = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mesu_speed_r]
    data.mesu_speed_r = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mesu_speed_l]
    data.mesu_speed_l = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [controller_speed_r]
    data.controller_speed_r = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [controller_speed_l]
    data.controller_speed_l = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [err_speed_r]
    data.err_speed_r = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [err_speed_l]
    data.err_speed_l = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [err_sum_speed_r]
    data.err_sum_speed_r = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [err_sum_speed_l]
    data.err_sum_speed_l = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [time_of_measure]
    data.time_of_measure = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'drawbot/Data_arduino';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0ea41ce24b57574c9a377aecfc3f65a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 ref_speed_r
    float32 ref_speed_l
    float32 mesu_speed_r
    float32 mesu_speed_l
    float32 controller_speed_r
    float32 controller_speed_l
    float32 err_speed_r
    float32 err_speed_l
    float32 err_sum_speed_r
    float32 err_sum_speed_l
    float32 time_of_measure
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Data_arduino(null);
    if (msg.ref_speed_r !== undefined) {
      resolved.ref_speed_r = msg.ref_speed_r;
    }
    else {
      resolved.ref_speed_r = 0.0
    }

    if (msg.ref_speed_l !== undefined) {
      resolved.ref_speed_l = msg.ref_speed_l;
    }
    else {
      resolved.ref_speed_l = 0.0
    }

    if (msg.mesu_speed_r !== undefined) {
      resolved.mesu_speed_r = msg.mesu_speed_r;
    }
    else {
      resolved.mesu_speed_r = 0.0
    }

    if (msg.mesu_speed_l !== undefined) {
      resolved.mesu_speed_l = msg.mesu_speed_l;
    }
    else {
      resolved.mesu_speed_l = 0.0
    }

    if (msg.controller_speed_r !== undefined) {
      resolved.controller_speed_r = msg.controller_speed_r;
    }
    else {
      resolved.controller_speed_r = 0.0
    }

    if (msg.controller_speed_l !== undefined) {
      resolved.controller_speed_l = msg.controller_speed_l;
    }
    else {
      resolved.controller_speed_l = 0.0
    }

    if (msg.err_speed_r !== undefined) {
      resolved.err_speed_r = msg.err_speed_r;
    }
    else {
      resolved.err_speed_r = 0.0
    }

    if (msg.err_speed_l !== undefined) {
      resolved.err_speed_l = msg.err_speed_l;
    }
    else {
      resolved.err_speed_l = 0.0
    }

    if (msg.err_sum_speed_r !== undefined) {
      resolved.err_sum_speed_r = msg.err_sum_speed_r;
    }
    else {
      resolved.err_sum_speed_r = 0.0
    }

    if (msg.err_sum_speed_l !== undefined) {
      resolved.err_sum_speed_l = msg.err_sum_speed_l;
    }
    else {
      resolved.err_sum_speed_l = 0.0
    }

    if (msg.time_of_measure !== undefined) {
      resolved.time_of_measure = msg.time_of_measure;
    }
    else {
      resolved.time_of_measure = 0.0
    }

    return resolved;
    }
};

module.exports = Data_arduino;
