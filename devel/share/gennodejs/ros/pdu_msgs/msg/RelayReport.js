// Auto-generated. Do not edit!

// (in-package pdu_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RelayStatus = require('./RelayStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RelayReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.GridAddress = null;
      this.relay_1 = null;
      this.relay_2 = null;
      this.relay_3 = null;
      this.relay_4 = null;
      this.relay_5 = null;
      this.relay_6 = null;
      this.relay_7 = null;
      this.relay_8 = null;
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
      if (initObj.hasOwnProperty('relay_1')) {
        this.relay_1 = initObj.relay_1
      }
      else {
        this.relay_1 = new RelayStatus();
      }
      if (initObj.hasOwnProperty('relay_2')) {
        this.relay_2 = initObj.relay_2
      }
      else {
        this.relay_2 = new RelayStatus();
      }
      if (initObj.hasOwnProperty('relay_3')) {
        this.relay_3 = initObj.relay_3
      }
      else {
        this.relay_3 = new RelayStatus();
      }
      if (initObj.hasOwnProperty('relay_4')) {
        this.relay_4 = initObj.relay_4
      }
      else {
        this.relay_4 = new RelayStatus();
      }
      if (initObj.hasOwnProperty('relay_5')) {
        this.relay_5 = initObj.relay_5
      }
      else {
        this.relay_5 = new RelayStatus();
      }
      if (initObj.hasOwnProperty('relay_6')) {
        this.relay_6 = initObj.relay_6
      }
      else {
        this.relay_6 = new RelayStatus();
      }
      if (initObj.hasOwnProperty('relay_7')) {
        this.relay_7 = initObj.relay_7
      }
      else {
        this.relay_7 = new RelayStatus();
      }
      if (initObj.hasOwnProperty('relay_8')) {
        this.relay_8 = initObj.relay_8
      }
      else {
        this.relay_8 = new RelayStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RelayReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [GridAddress]
    bufferOffset = _serializer.uint8(obj.GridAddress, buffer, bufferOffset);
    // Serialize message field [relay_1]
    bufferOffset = RelayStatus.serialize(obj.relay_1, buffer, bufferOffset);
    // Serialize message field [relay_2]
    bufferOffset = RelayStatus.serialize(obj.relay_2, buffer, bufferOffset);
    // Serialize message field [relay_3]
    bufferOffset = RelayStatus.serialize(obj.relay_3, buffer, bufferOffset);
    // Serialize message field [relay_4]
    bufferOffset = RelayStatus.serialize(obj.relay_4, buffer, bufferOffset);
    // Serialize message field [relay_5]
    bufferOffset = RelayStatus.serialize(obj.relay_5, buffer, bufferOffset);
    // Serialize message field [relay_6]
    bufferOffset = RelayStatus.serialize(obj.relay_6, buffer, bufferOffset);
    // Serialize message field [relay_7]
    bufferOffset = RelayStatus.serialize(obj.relay_7, buffer, bufferOffset);
    // Serialize message field [relay_8]
    bufferOffset = RelayStatus.serialize(obj.relay_8, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RelayReport
    let len;
    let data = new RelayReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [GridAddress]
    data.GridAddress = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [relay_1]
    data.relay_1 = RelayStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [relay_2]
    data.relay_2 = RelayStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [relay_3]
    data.relay_3 = RelayStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [relay_4]
    data.relay_4 = RelayStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [relay_5]
    data.relay_5 = RelayStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [relay_6]
    data.relay_6 = RelayStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [relay_7]
    data.relay_7 = RelayStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [relay_8]
    data.relay_8 = RelayStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pdu_msgs/RelayReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5013cdfb5b7f5657dbdcb6339106d711';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # Fuse status enumeration
    uint8 GridAddress
    
    RelayStatus relay_1
    RelayStatus relay_2
    RelayStatus relay_3
    RelayStatus relay_4
    RelayStatus relay_5
    RelayStatus relay_6
    RelayStatus relay_7
    RelayStatus relay_8
    
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
    MSG: pdu_msgs/RelayStatus
    uint8 value
    
    uint8 OK = 0
    uint8 RELAY_COIL_OPEN = 1
    uint8 RELAY_COIL_SHORTED = 2
    uint8 NORM_OPEN_RELAY_OPEN = 3
    uint8 NORM_CLOSED_RELAY_OPEN = 4
    uint8 COIL_NOT_POWERED = 5
    uint8 NORM_OPEN_RELAY_SHORTED = 6
    uint8 NORM_CLOSED_RELAY_SHORTED = 7
    uint8 RESERVED_01 = 8
    uint8 RESERVED_02 = 9
    uint8 RESERVED_03 = 10
    uint8 HIGH_SIDE_FAULT = 11
    uint8 HIGH_SIDE_OPEN_LOAD = 12
    uint8 HIGH_SIDE_OVER_VOLTAGE = 13
    uint8 RESERVED_04 = 14
    uint8 RELAY_LOCATION_NOT_USED = 15
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RelayReport(null);
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

    if (msg.relay_1 !== undefined) {
      resolved.relay_1 = RelayStatus.Resolve(msg.relay_1)
    }
    else {
      resolved.relay_1 = new RelayStatus()
    }

    if (msg.relay_2 !== undefined) {
      resolved.relay_2 = RelayStatus.Resolve(msg.relay_2)
    }
    else {
      resolved.relay_2 = new RelayStatus()
    }

    if (msg.relay_3 !== undefined) {
      resolved.relay_3 = RelayStatus.Resolve(msg.relay_3)
    }
    else {
      resolved.relay_3 = new RelayStatus()
    }

    if (msg.relay_4 !== undefined) {
      resolved.relay_4 = RelayStatus.Resolve(msg.relay_4)
    }
    else {
      resolved.relay_4 = new RelayStatus()
    }

    if (msg.relay_5 !== undefined) {
      resolved.relay_5 = RelayStatus.Resolve(msg.relay_5)
    }
    else {
      resolved.relay_5 = new RelayStatus()
    }

    if (msg.relay_6 !== undefined) {
      resolved.relay_6 = RelayStatus.Resolve(msg.relay_6)
    }
    else {
      resolved.relay_6 = new RelayStatus()
    }

    if (msg.relay_7 !== undefined) {
      resolved.relay_7 = RelayStatus.Resolve(msg.relay_7)
    }
    else {
      resolved.relay_7 = new RelayStatus()
    }

    if (msg.relay_8 !== undefined) {
      resolved.relay_8 = RelayStatus.Resolve(msg.relay_8)
    }
    else {
      resolved.relay_8 = new RelayStatus()
    }

    return resolved;
    }
};

module.exports = RelayReport;
