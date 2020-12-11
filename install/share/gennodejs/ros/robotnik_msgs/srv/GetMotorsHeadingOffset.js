// Auto-generated. Do not edit!

// (in-package robotnik_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let MotorHeadingOffset = require('../msg/MotorHeadingOffset.js');

//-----------------------------------------------------------

class GetMotorsHeadingOffsetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMotorsHeadingOffsetRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMotorsHeadingOffsetRequest
    let len;
    let data = new GetMotorsHeadingOffsetRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/GetMotorsHeadingOffsetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMotorsHeadingOffsetRequest(null);
    return resolved;
    }
};

class GetMotorsHeadingOffsetResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.offsets = null;
    }
    else {
      if (initObj.hasOwnProperty('offsets')) {
        this.offsets = initObj.offsets
      }
      else {
        this.offsets = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMotorsHeadingOffsetResponse
    // Serialize message field [offsets]
    // Serialize the length for message field [offsets]
    bufferOffset = _serializer.uint32(obj.offsets.length, buffer, bufferOffset);
    obj.offsets.forEach((val) => {
      bufferOffset = MotorHeadingOffset.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMotorsHeadingOffsetResponse
    let len;
    let data = new GetMotorsHeadingOffsetResponse(null);
    // Deserialize message field [offsets]
    // Deserialize array length for message field [offsets]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.offsets = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.offsets[i] = MotorHeadingOffset.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.offsets.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/GetMotorsHeadingOffsetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd322475eaf1465784a3a443c8adce632';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    robotnik_msgs/MotorHeadingOffset[] offsets
    
    
    ================================================================================
    MSG: robotnik_msgs/MotorHeadingOffset
    int32 motor
    int32 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMotorsHeadingOffsetResponse(null);
    if (msg.offsets !== undefined) {
      resolved.offsets = new Array(msg.offsets.length);
      for (let i = 0; i < resolved.offsets.length; ++i) {
        resolved.offsets[i] = MotorHeadingOffset.Resolve(msg.offsets[i]);
      }
    }
    else {
      resolved.offsets = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetMotorsHeadingOffsetRequest,
  Response: GetMotorsHeadingOffsetResponse,
  md5sum() { return 'd322475eaf1465784a3a443c8adce632'; },
  datatype() { return 'robotnik_msgs/GetMotorsHeadingOffset'; }
};
