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

class RaptorStateMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.system_state = null;
      this.dbw_mode = null;
      this.brake_enable_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('system_state')) {
        this.system_state = initObj.system_state
      }
      else {
        this.system_state = 0;
      }
      if (initObj.hasOwnProperty('dbw_mode')) {
        this.dbw_mode = initObj.dbw_mode
      }
      else {
        this.dbw_mode = 0;
      }
      if (initObj.hasOwnProperty('brake_enable_status')) {
        this.brake_enable_status = initObj.brake_enable_status
      }
      else {
        this.brake_enable_status = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RaptorStateMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [system_state]
    bufferOffset = _serializer.uint8(obj.system_state, buffer, bufferOffset);
    // Serialize message field [dbw_mode]
    bufferOffset = _serializer.uint8(obj.dbw_mode, buffer, bufferOffset);
    // Serialize message field [brake_enable_status]
    bufferOffset = _serializer.bool(obj.brake_enable_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RaptorStateMsg
    let len;
    let data = new RaptorStateMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [system_state]
    data.system_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dbw_mode]
    data.dbw_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [brake_enable_status]
    data.brake_enable_status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'deeporange14_msgs/RaptorStateMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae18ce3d33a6f151cb9a6cb40431fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint8 system_state
    uint8 dbw_mode
    bool brake_enable_status
    
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
    const resolved = new RaptorStateMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.system_state !== undefined) {
      resolved.system_state = msg.system_state;
    }
    else {
      resolved.system_state = 0
    }

    if (msg.dbw_mode !== undefined) {
      resolved.dbw_mode = msg.dbw_mode;
    }
    else {
      resolved.dbw_mode = 0
    }

    if (msg.brake_enable_status !== undefined) {
      resolved.brake_enable_status = msg.brake_enable_status;
    }
    else {
      resolved.brake_enable_status = false
    }

    return resolved;
    }
};

module.exports = RaptorStateMsg;
