// Auto-generated. Do not edit!

// (in-package pdu_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FuseStatus = require('./FuseStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FuseReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.GridAddress = null;
      this.fuse_1 = null;
      this.fuse_2 = null;
      this.fuse_3 = null;
      this.fuse_4 = null;
      this.fuse_5 = null;
      this.fuse_6 = null;
      this.fuse_7 = null;
      this.fuse_8 = null;
      this.fuse_9 = null;
      this.fuse_10 = null;
      this.fuse_11 = null;
      this.fuse_12 = null;
      this.fuse_13 = null;
      this.fuse_14 = null;
      this.fuse_15 = null;
      this.fuse_16 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('GridAddress')) {
        this.GridAddress = initObj.GridAddress
      }
      else {
        this.GridAddress = 0;
      }
      if (initObj.hasOwnProperty('fuse_1')) {
        this.fuse_1 = initObj.fuse_1
      }
      else {
        this.fuse_1 = new FuseStatus();
      }
      if (initObj.hasOwnProperty('fuse_2')) {
        this.fuse_2 = initObj.fuse_2
      }
      else {
        this.fuse_2 = new FuseStatus();
      }
      if (initObj.hasOwnProperty('fuse_3')) {
        this.fuse_3 = initObj.fuse_3
      }
      else {
        this.fuse_3 = new FuseStatus();
      }
      if (initObj.hasOwnProperty('fuse_4')) {
        this.fuse_4 = initObj.fuse_4
      }
      else {
        this.fuse_4 = new FuseStatus();
      }
      if (initObj.hasOwnProperty('fuse_5')) {
        this.fuse_5 = initObj.fuse_5
      }
      else {
        this.fuse_5 = new FuseStatus();
      }
      if (initObj.hasOwnProperty('fuse_6')) {
        this.fuse_6 = initObj.fuse_6
      }
      else {
        this.fuse_6 = new FuseStatus();
      }
      if (initObj.hasOwnProperty('fuse_7')) {
        this.fuse_7 = initObj.fuse_7
      }
      else {
        this.fuse_7 = new FuseStatus();
      }
      if (initObj.hasOwnProperty('fuse_8')) {
        this.fuse_8 = initObj.fuse_8
      }
      else {
        this.fuse_8 = new FuseStatus();
      }
      if (initObj.hasOwnProperty('fuse_9')) {
        this.fuse_9 = initObj.fuse_9
      }
      else {
        this.fuse_9 = new FuseStatus();
      }
      if (initObj.hasOwnProperty('fuse_10')) {
        this.fuse_10 = initObj.fuse_10
      }
      else {
        this.fuse_10 = new FuseStatus();
      }
      if (initObj.hasOwnProperty('fuse_11')) {
        this.fuse_11 = initObj.fuse_11
      }
      else {
        this.fuse_11 = new FuseStatus();
      }
      if (initObj.hasOwnProperty('fuse_12')) {
        this.fuse_12 = initObj.fuse_12
      }
      else {
        this.fuse_12 = new FuseStatus();
      }
      if (initObj.hasOwnProperty('fuse_13')) {
        this.fuse_13 = initObj.fuse_13
      }
      else {
        this.fuse_13 = new FuseStatus();
      }
      if (initObj.hasOwnProperty('fuse_14')) {
        this.fuse_14 = initObj.fuse_14
      }
      else {
        this.fuse_14 = new FuseStatus();
      }
      if (initObj.hasOwnProperty('fuse_15')) {
        this.fuse_15 = initObj.fuse_15
      }
      else {
        this.fuse_15 = new FuseStatus();
      }
      if (initObj.hasOwnProperty('fuse_16')) {
        this.fuse_16 = initObj.fuse_16
      }
      else {
        this.fuse_16 = new FuseStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FuseReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [GridAddress]
    bufferOffset = _serializer.uint8(obj.GridAddress, buffer, bufferOffset);
    // Serialize message field [fuse_1]
    bufferOffset = FuseStatus.serialize(obj.fuse_1, buffer, bufferOffset);
    // Serialize message field [fuse_2]
    bufferOffset = FuseStatus.serialize(obj.fuse_2, buffer, bufferOffset);
    // Serialize message field [fuse_3]
    bufferOffset = FuseStatus.serialize(obj.fuse_3, buffer, bufferOffset);
    // Serialize message field [fuse_4]
    bufferOffset = FuseStatus.serialize(obj.fuse_4, buffer, bufferOffset);
    // Serialize message field [fuse_5]
    bufferOffset = FuseStatus.serialize(obj.fuse_5, buffer, bufferOffset);
    // Serialize message field [fuse_6]
    bufferOffset = FuseStatus.serialize(obj.fuse_6, buffer, bufferOffset);
    // Serialize message field [fuse_7]
    bufferOffset = FuseStatus.serialize(obj.fuse_7, buffer, bufferOffset);
    // Serialize message field [fuse_8]
    bufferOffset = FuseStatus.serialize(obj.fuse_8, buffer, bufferOffset);
    // Serialize message field [fuse_9]
    bufferOffset = FuseStatus.serialize(obj.fuse_9, buffer, bufferOffset);
    // Serialize message field [fuse_10]
    bufferOffset = FuseStatus.serialize(obj.fuse_10, buffer, bufferOffset);
    // Serialize message field [fuse_11]
    bufferOffset = FuseStatus.serialize(obj.fuse_11, buffer, bufferOffset);
    // Serialize message field [fuse_12]
    bufferOffset = FuseStatus.serialize(obj.fuse_12, buffer, bufferOffset);
    // Serialize message field [fuse_13]
    bufferOffset = FuseStatus.serialize(obj.fuse_13, buffer, bufferOffset);
    // Serialize message field [fuse_14]
    bufferOffset = FuseStatus.serialize(obj.fuse_14, buffer, bufferOffset);
    // Serialize message field [fuse_15]
    bufferOffset = FuseStatus.serialize(obj.fuse_15, buffer, bufferOffset);
    // Serialize message field [fuse_16]
    bufferOffset = FuseStatus.serialize(obj.fuse_16, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FuseReport
    let len;
    let data = new FuseReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [GridAddress]
    data.GridAddress = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fuse_1]
    data.fuse_1 = FuseStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [fuse_2]
    data.fuse_2 = FuseStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [fuse_3]
    data.fuse_3 = FuseStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [fuse_4]
    data.fuse_4 = FuseStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [fuse_5]
    data.fuse_5 = FuseStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [fuse_6]
    data.fuse_6 = FuseStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [fuse_7]
    data.fuse_7 = FuseStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [fuse_8]
    data.fuse_8 = FuseStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [fuse_9]
    data.fuse_9 = FuseStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [fuse_10]
    data.fuse_10 = FuseStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [fuse_11]
    data.fuse_11 = FuseStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [fuse_12]
    data.fuse_12 = FuseStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [fuse_13]
    data.fuse_13 = FuseStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [fuse_14]
    data.fuse_14 = FuseStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [fuse_15]
    data.fuse_15 = FuseStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [fuse_16]
    data.fuse_16 = FuseStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pdu_msgs/FuseReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f4b7abf88dd96ecf35a3983dc0c26eef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # Fuse status enumeration
    uint8 GridAddress
    
    FuseStatus fuse_1
    FuseStatus fuse_2
    FuseStatus fuse_3
    FuseStatus fuse_4
    FuseStatus fuse_5
    FuseStatus fuse_6
    FuseStatus fuse_7
    FuseStatus fuse_8
    FuseStatus fuse_9
    FuseStatus fuse_10
    FuseStatus fuse_11
    FuseStatus fuse_12
    FuseStatus fuse_13
    FuseStatus fuse_14
    FuseStatus fuse_15
    FuseStatus fuse_16
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: pdu_msgs/FuseStatus
    uint8 value
    
    uint8 NO_FAULT = 0
    uint8 BLOWN = 1
    uint8 NOT_POWERED = 2
    uint8 NOT_USED = 3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FuseReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.GridAddress !== undefined) {
      resolved.GridAddress = msg.GridAddress;
    }
    else {
      resolved.GridAddress = 0
    }

    if (msg.fuse_1 !== undefined) {
      resolved.fuse_1 = FuseStatus.Resolve(msg.fuse_1)
    }
    else {
      resolved.fuse_1 = new FuseStatus()
    }

    if (msg.fuse_2 !== undefined) {
      resolved.fuse_2 = FuseStatus.Resolve(msg.fuse_2)
    }
    else {
      resolved.fuse_2 = new FuseStatus()
    }

    if (msg.fuse_3 !== undefined) {
      resolved.fuse_3 = FuseStatus.Resolve(msg.fuse_3)
    }
    else {
      resolved.fuse_3 = new FuseStatus()
    }

    if (msg.fuse_4 !== undefined) {
      resolved.fuse_4 = FuseStatus.Resolve(msg.fuse_4)
    }
    else {
      resolved.fuse_4 = new FuseStatus()
    }

    if (msg.fuse_5 !== undefined) {
      resolved.fuse_5 = FuseStatus.Resolve(msg.fuse_5)
    }
    else {
      resolved.fuse_5 = new FuseStatus()
    }

    if (msg.fuse_6 !== undefined) {
      resolved.fuse_6 = FuseStatus.Resolve(msg.fuse_6)
    }
    else {
      resolved.fuse_6 = new FuseStatus()
    }

    if (msg.fuse_7 !== undefined) {
      resolved.fuse_7 = FuseStatus.Resolve(msg.fuse_7)
    }
    else {
      resolved.fuse_7 = new FuseStatus()
    }

    if (msg.fuse_8 !== undefined) {
      resolved.fuse_8 = FuseStatus.Resolve(msg.fuse_8)
    }
    else {
      resolved.fuse_8 = new FuseStatus()
    }

    if (msg.fuse_9 !== undefined) {
      resolved.fuse_9 = FuseStatus.Resolve(msg.fuse_9)
    }
    else {
      resolved.fuse_9 = new FuseStatus()
    }

    if (msg.fuse_10 !== undefined) {
      resolved.fuse_10 = FuseStatus.Resolve(msg.fuse_10)
    }
    else {
      resolved.fuse_10 = new FuseStatus()
    }

    if (msg.fuse_11 !== undefined) {
      resolved.fuse_11 = FuseStatus.Resolve(msg.fuse_11)
    }
    else {
      resolved.fuse_11 = new FuseStatus()
    }

    if (msg.fuse_12 !== undefined) {
      resolved.fuse_12 = FuseStatus.Resolve(msg.fuse_12)
    }
    else {
      resolved.fuse_12 = new FuseStatus()
    }

    if (msg.fuse_13 !== undefined) {
      resolved.fuse_13 = FuseStatus.Resolve(msg.fuse_13)
    }
    else {
      resolved.fuse_13 = new FuseStatus()
    }

    if (msg.fuse_14 !== undefined) {
      resolved.fuse_14 = FuseStatus.Resolve(msg.fuse_14)
    }
    else {
      resolved.fuse_14 = new FuseStatus()
    }

    if (msg.fuse_15 !== undefined) {
      resolved.fuse_15 = FuseStatus.Resolve(msg.fuse_15)
    }
    else {
      resolved.fuse_15 = new FuseStatus()
    }

    if (msg.fuse_16 !== undefined) {
      resolved.fuse_16 = FuseStatus.Resolve(msg.fuse_16)
    }
    else {
      resolved.fuse_16 = new FuseStatus()
    }

    return resolved;
    }
};

module.exports = FuseReport;
