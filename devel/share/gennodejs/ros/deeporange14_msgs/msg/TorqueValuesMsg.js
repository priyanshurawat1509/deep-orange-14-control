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

class TorqueValuesMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.left_torque = null;
      this.right_torque = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TorqueValuesMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [left_torque]
    bufferOffset = _serializer.float64(obj.left_torque, buffer, bufferOffset);
    // Serialize message field [right_torque]
    bufferOffset = _serializer.float64(obj.right_torque, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TorqueValuesMsg
    let len;
    let data = new TorqueValuesMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_torque]
    data.left_torque = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_torque]
    data.right_torque = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'deeporange14_msgs/TorqueValuesMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6d520ba6826fce2ad8c1220c1158f51a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 left_torque
    float64 right_torque
    
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
    const resolved = new TorqueValuesMsg(null);
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

    return resolved;
    }
};

module.exports = TorqueValuesMsg;
