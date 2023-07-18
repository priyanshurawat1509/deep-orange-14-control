// Auto-generated. Do not edit!

// (in-package deeporange14_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class BrakePressureCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.brkL_cmd = null;
      this.brkR_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('brkL_cmd')) {
        this.brkL_cmd = initObj.brkL_cmd
      }
      else {
        this.brkL_cmd = 0.0;
      }
      if (initObj.hasOwnProperty('brkR_cmd')) {
        this.brkR_cmd = initObj.brkR_cmd
      }
      else {
        this.brkR_cmd = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BrakePressureCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [brkL_cmd]
    bufferOffset = _serializer.float64(obj.brkL_cmd, buffer, bufferOffset);
    // Serialize message field [brkR_cmd]
    bufferOffset = _serializer.float64(obj.brkR_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BrakePressureCmd
    let len;
    let data = new BrakePressureCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [brkL_cmd]
    data.brkL_cmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brkR_cmd]
    data.brkR_cmd = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'deeporange14_msgs/BrakePressureCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8a6c3b4b6c9de0dcdfdf346411efc7fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Message contains timestamped Brake pressure commands
    Header header
    
    float64 brkL_cmd
    float64 brkR_cmd
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
    const resolved = new BrakePressureCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.brkL_cmd !== undefined) {
      resolved.brkL_cmd = msg.brkL_cmd;
    }
    else {
      resolved.brkL_cmd = 0.0
    }

    if (msg.brkR_cmd !== undefined) {
      resolved.brkR_cmd = msg.brkR_cmd;
    }
    else {
      resolved.brkR_cmd = 0.0
    }

    return resolved;
    }
};

module.exports = BrakePressureCmd;
