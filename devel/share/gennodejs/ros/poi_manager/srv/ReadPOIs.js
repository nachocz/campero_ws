// Auto-generated. Do not edit!

// (in-package poi_manager.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let LabeledPose = require('../msg/LabeledPose.js');

//-----------------------------------------------------------

class ReadPOIsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReadPOIsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReadPOIsRequest
    let len;
    let data = new ReadPOIsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poi_manager/ReadPOIsRequest';
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
    const resolved = new ReadPOIsRequest(null);
    return resolved;
    }
};

class ReadPOIsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_list = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_list')) {
        this.pose_list = initObj.pose_list
      }
      else {
        this.pose_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReadPOIsResponse
    // Serialize message field [pose_list]
    // Serialize the length for message field [pose_list]
    bufferOffset = _serializer.uint32(obj.pose_list.length, buffer, bufferOffset);
    obj.pose_list.forEach((val) => {
      bufferOffset = LabeledPose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReadPOIsResponse
    let len;
    let data = new ReadPOIsResponse(null);
    // Deserialize message field [pose_list]
    // Deserialize array length for message field [pose_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pose_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pose_list[i] = LabeledPose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.pose_list.forEach((val) => {
      length += LabeledPose.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poi_manager/ReadPOIsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c28755b56158f239ec1c46a03550b3d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    LabeledPose[] pose_list
    
    
    ================================================================================
    MSG: poi_manager/LabeledPose
    string label
    geometry_msgs/Pose2D pose
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReadPOIsResponse(null);
    if (msg.pose_list !== undefined) {
      resolved.pose_list = new Array(msg.pose_list.length);
      for (let i = 0; i < resolved.pose_list.length; ++i) {
        resolved.pose_list[i] = LabeledPose.Resolve(msg.pose_list[i]);
      }
    }
    else {
      resolved.pose_list = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ReadPOIsRequest,
  Response: ReadPOIsResponse,
  md5sum() { return 'c28755b56158f239ec1c46a03550b3d2'; },
  datatype() { return 'poi_manager/ReadPOIs'; }
};
