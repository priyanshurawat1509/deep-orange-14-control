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
      this.speed_state = null;
      this.log_cmd = null;
      this.brk_Lpres = null;
      this.brk_Rpres = null;
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
      if (initObj.hasOwnProperty('speed_state')) {
        this.speed_state = initObj.speed_state
      }
      else {
        this.speed_state = 0;
      }
      if (initObj.hasOwnProperty('log_cmd')) {
        this.log_cmd = initObj.log_cmd
      }
      else {
        this.log_cmd = false;
      }
      if (initObj.hasOwnProperty('brk_Lpres')) {
        this.brk_Lpres = initObj.brk_Lpres
      }
      else {
        this.brk_Lpres = 0.0;
      }
      if (initObj.hasOwnProperty('brk_Rpres')) {
        this.brk_Rpres = initObj.brk_Rpres
      }
      else {
        this.brk_Rpres = 0.0;
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
    // Serialize message field [speed_state]
    bufferOffset = _serializer.uint8(obj.speed_state, buffer, bufferOffset);
    // Serialize message field [log_cmd]
    bufferOffset = _serializer.bool(obj.log_cmd, buffer, bufferOffset);
    // Serialize message field [brk_Lpres]
    bufferOffset = _serializer.float64(obj.brk_Lpres, buffer, bufferOffset);
    // Serialize message field [brk_Rpres]
    bufferOffset = _serializer.float64(obj.brk_Rpres, buffer, bufferOffset);
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
    // Deserialize message field [speed_state]
    data.speed_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [log_cmd]
    data.log_cmd = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [brk_Lpres]
    data.brk_Lpres = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brk_Rpres]
    data.brk_Rpres = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'deeporange14_msgs/RaptorStateMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c2bf3014b9a7a42f7e5e8b26caa8e03';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint8 system_state
    uint8 dbw_mode
    uint8 speed_state
    bool log_cmd
    float64 brk_Lpres 
    float64 brk_Rpres
    
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

    if (msg.speed_state !== undefined) {
      resolved.speed_state = msg.speed_state;
    }
    else {
      resolved.speed_state = 0
    }

    if (msg.log_cmd !== undefined) {
      resolved.log_cmd = msg.log_cmd;
    }
    else {
      resolved.log_cmd = false
    }

    if (msg.brk_Lpres !== undefined) {
      resolved.brk_Lpres = msg.brk_Lpres;
    }
    else {
      resolved.brk_Lpres = 0.0
    }

    if (msg.brk_Rpres !== undefined) {
      resolved.brk_Rpres = msg.brk_Rpres;
    }
    else {
      resolved.brk_Rpres = 0.0
    }

    return resolved;
    }
};

module.exports = RaptorStateMsg;
