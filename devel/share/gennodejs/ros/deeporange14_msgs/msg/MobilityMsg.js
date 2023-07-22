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

class MobilityMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.seq = null;
      this.stamp = null;
      this.tqL_cmd = null;
      this.tqR_cmd = null;
      this.brkL_cmd = null;
      this.brkR_cmd = null;
      this.au_state = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('seq')) {
        this.seq = initObj.seq
      }
      else {
        this.seq = 0;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
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
      if (initObj.hasOwnProperty('brkL_cmd')) {
        this.brkL_cmd = initObj.brkL_cmd
      }
      else {
        this.brkL_cmd = 0;
      }
      if (initObj.hasOwnProperty('brkR_cmd')) {
        this.brkR_cmd = initObj.brkR_cmd
      }
      else {
        this.brkR_cmd = 0;
      }
      if (initObj.hasOwnProperty('au_state')) {
        this.au_state = initObj.au_state
      }
      else {
        this.au_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MobilityMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [seq]
    bufferOffset = _serializer.uint32(obj.seq, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [tqL_cmd]
    bufferOffset = _serializer.float64(obj.tqL_cmd, buffer, bufferOffset);
    // Serialize message field [tqR_cmd]
    bufferOffset = _serializer.float64(obj.tqR_cmd, buffer, bufferOffset);
    // Serialize message field [brkL_cmd]
    bufferOffset = _serializer.uint8(obj.brkL_cmd, buffer, bufferOffset);
    // Serialize message field [brkR_cmd]
    bufferOffset = _serializer.uint8(obj.brkR_cmd, buffer, bufferOffset);
    // Serialize message field [au_state]
    bufferOffset = _serializer.uint8(obj.au_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MobilityMsg
    let len;
    let data = new MobilityMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [seq]
    data.seq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [tqL_cmd]
    data.tqL_cmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tqR_cmd]
    data.tqR_cmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brkL_cmd]
    data.brkL_cmd = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [brkR_cmd]
    data.brkR_cmd = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [au_state]
    data.au_state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 31;
  }

  static datatype() {
    // Returns string type for a message object
    return 'deeporange14_msgs/MobilityMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '52b5461a1748b83406c477db1e2e86bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #This represents a vector in free space -- currently defined to hold the left and right track #velocities
    Header header
      uint32 seq
      time stamp
    
    float64 tqL_cmd
    float64 tqR_cmd
    uint8 brkL_cmd
    uint8 brkR_cmd
    uint8 au_state 
    
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
    const resolved = new MobilityMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.seq !== undefined) {
      resolved.seq = msg.seq;
    }
    else {
      resolved.seq = 0
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
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

    if (msg.brkL_cmd !== undefined) {
      resolved.brkL_cmd = msg.brkL_cmd;
    }
    else {
      resolved.brkL_cmd = 0
    }

    if (msg.brkR_cmd !== undefined) {
      resolved.brkR_cmd = msg.brkR_cmd;
    }
    else {
      resolved.brkR_cmd = 0
    }

    if (msg.au_state !== undefined) {
      resolved.au_state = msg.au_state;
    }
    else {
      resolved.au_state = 0
    }

    return resolved;
    }
};

module.exports = MobilityMsg;
