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

class TorqueCmdStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tqL_cmd = null;
      this.tqR_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('tqL_cmd')) {
        this.tqL_cmd = initObj.tqL_cmd
      }
      else {
        this.tqL_cmd = 0.0;
      }
      if (initObj.hasOwnProperty('tqR_cmd')) {
        this.tqR_cmd = initObj.tqR_cmd
      }
      else {
        this.tqR_cmd = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TorqueCmdStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tqL_cmd]
    bufferOffset = _serializer.float64(obj.tqL_cmd, buffer, bufferOffset);
    // Serialize message field [tqR_cmd]
    bufferOffset = _serializer.float64(obj.tqR_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TorqueCmdStamped
    let len;
    let data = new TorqueCmdStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tqL_cmd]
    data.tqL_cmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tqR_cmd]
    data.tqR_cmd = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'deeporange14_msgs/TorqueCmdStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd2b993d9f9c7329f407ee1c3b8d87a65';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Message contains timestamped torque commands
    Header header
    
    float64 tqL_cmd
    float64 tqR_cmd
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
    const resolved = new TorqueCmdStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.tqL_cmd !== undefined) {
      resolved.tqL_cmd = msg.tqL_cmd;
    }
    else {
      resolved.tqL_cmd = 0.0
    }

    if (msg.tqR_cmd !== undefined) {
      resolved.tqR_cmd = msg.tqR_cmd;
    }
    else {
      resolved.tqR_cmd = 0.0
    }

    return resolved;
    }
};

module.exports = TorqueCmdStamped;
