// Auto-generated. Do not edit!

// (in-package raptor_dbw_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HmiGlobalEnableReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.enable_request = null;
      this.disable_request = null;
      this.checksum = null;
      this.ecu_build_number = null;
      this.rolling_counter = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('enable_request')) {
        this.enable_request = initObj.enable_request
      }
      else {
        this.enable_request = false;
      }
      if (initObj.hasOwnProperty('disable_request')) {
        this.disable_request = initObj.disable_request
      }
      else {
        this.disable_request = false;
      }
      if (initObj.hasOwnProperty('checksum')) {
        this.checksum = initObj.checksum
      }
      else {
        this.checksum = 0;
      }
      if (initObj.hasOwnProperty('ecu_build_number')) {
        this.ecu_build_number = initObj.ecu_build_number
      }
      else {
        this.ecu_build_number = 0;
      }
      if (initObj.hasOwnProperty('rolling_counter')) {
        this.rolling_counter = initObj.rolling_counter
      }
      else {
        this.rolling_counter = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HmiGlobalEnableReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [enable_request]
    bufferOffset = _serializer.bool(obj.enable_request, buffer, bufferOffset);
    // Serialize message field [disable_request]
    bufferOffset = _serializer.bool(obj.disable_request, buffer, bufferOffset);
    // Serialize message field [checksum]
    bufferOffset = _serializer.uint8(obj.checksum, buffer, bufferOffset);
    // Serialize message field [ecu_build_number]
    bufferOffset = _serializer.uint16(obj.ecu_build_number, buffer, bufferOffset);
    // Serialize message field [rolling_counter]
    bufferOffset = _serializer.uint8(obj.rolling_counter, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HmiGlobalEnableReport
    let len;
    let data = new HmiGlobalEnableReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [enable_request]
    data.enable_request = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [disable_request]
    data.disable_request = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [checksum]
    data.checksum = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ecu_build_number]
    data.ecu_build_number = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [rolling_counter]
    data.rolling_counter = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'raptor_dbw_msgs/HmiGlobalEnableReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '29d00e37d7749f78ca339d3a70968c0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    bool enable_request
    
    bool disable_request
    
    uint8 checksum
    
    uint16 ecu_build_number
    
    uint8 rolling_counter
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HmiGlobalEnableReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.enable_request !== undefined) {
      resolved.enable_request = msg.enable_request;
    }
    else {
      resolved.enable_request = false
    }

    if (msg.disable_request !== undefined) {
      resolved.disable_request = msg.disable_request;
    }
    else {
      resolved.disable_request = false
    }

    if (msg.checksum !== undefined) {
      resolved.checksum = msg.checksum;
    }
    else {
      resolved.checksum = 0
    }

    if (msg.ecu_build_number !== undefined) {
      resolved.ecu_build_number = msg.ecu_build_number;
    }
    else {
      resolved.ecu_build_number = 0
    }

    if (msg.rolling_counter !== undefined) {
      resolved.rolling_counter = msg.rolling_counter;
    }
    else {
      resolved.rolling_counter = 0
    }

    return resolved;
    }
};

module.exports = HmiGlobalEnableReport;
