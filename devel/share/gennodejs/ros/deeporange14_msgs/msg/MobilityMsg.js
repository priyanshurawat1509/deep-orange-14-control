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
      this.left_torque = null;
      this.right_torque = null;
      this.left_brkPressure = null;
      this.right_brkPressure = null;
      this.au_state = null;
      this.brake_enable = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('left_torque')) {
        this.left_torque = initObj.left_torque
      }
      else {
        this.left_torque = 0.0;
      }
      if (initObj.hasOwnProperty('right_torque')) {
        this.right_torque = initObj.right_torque
      }
      else {
        this.right_torque = 0.0;
      }
      if (initObj.hasOwnProperty('left_brkPressure')) {
        this.left_brkPressure = initObj.left_brkPressure
      }
      else {
        this.left_brkPressure = 0;
      }
      if (initObj.hasOwnProperty('right_brkPressure')) {
        this.right_brkPressure = initObj.right_brkPressure
      }
      else {
        this.right_brkPressure = 0;
      }
      if (initObj.hasOwnProperty('au_state')) {
        this.au_state = initObj.au_state
      }
      else {
        this.au_state = 0;
      }
      if (initObj.hasOwnProperty('brake_enable')) {
        this.brake_enable = initObj.brake_enable
      }
      else {
        this.brake_enable = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MobilityMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [left_torque]
    bufferOffset = _serializer.float64(obj.left_torque, buffer, bufferOffset);
    // Serialize message field [right_torque]
    bufferOffset = _serializer.float64(obj.right_torque, buffer, bufferOffset);
    // Serialize message field [left_brkPressure]
    bufferOffset = _serializer.uint8(obj.left_brkPressure, buffer, bufferOffset);
    // Serialize message field [right_brkPressure]
    bufferOffset = _serializer.uint8(obj.right_brkPressure, buffer, bufferOffset);
    // Serialize message field [au_state]
    bufferOffset = _serializer.uint8(obj.au_state, buffer, bufferOffset);
    // Serialize message field [brake_enable]
    bufferOffset = _serializer.bool(obj.brake_enable, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MobilityMsg
    let len;
    let data = new MobilityMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_torque]
    data.left_torque = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_torque]
    data.right_torque = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [left_brkPressure]
    data.left_brkPressure = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [right_brkPressure]
    data.right_brkPressure = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [au_state]
    data.au_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [brake_enable]
    data.brake_enable = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'deeporange14_msgs/MobilityMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0eaaf6b23ead9b732ddff611e74f7ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #This represents a vector in free space -- currently defined to hold the left and right track #velocities
    Header header
    
    float64 left_torque
    float64 right_torque
    uint8 left_brkPressure
    uint8 right_brkPressure
    uint8 au_state 
    bool brake_enable
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

    if (msg.left_torque !== undefined) {
      resolved.left_torque = msg.left_torque;
    }
    else {
      resolved.left_torque = 0.0
    }

    if (msg.right_torque !== undefined) {
      resolved.right_torque = msg.right_torque;
    }
    else {
      resolved.right_torque = 0.0
    }

    if (msg.left_brkPressure !== undefined) {
      resolved.left_brkPressure = msg.left_brkPressure;
    }
    else {
      resolved.left_brkPressure = 0
    }

    if (msg.right_brkPressure !== undefined) {
      resolved.right_brkPressure = msg.right_brkPressure;
    }
    else {
      resolved.right_brkPressure = 0
    }

    if (msg.au_state !== undefined) {
      resolved.au_state = msg.au_state;
    }
    else {
      resolved.au_state = 0
    }

    if (msg.brake_enable !== undefined) {
      resolved.brake_enable = msg.brake_enable;
    }
    else {
      resolved.brake_enable = false
    }

    return resolved;
    }
};

module.exports = MobilityMsg;
