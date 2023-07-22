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

class AuStatusMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.seq = null;
      this.stamp = null;
      this.measuredVx = null;
      this.measuredWz = null;
      this.rtkStatus = null;
      this.timesecVx = null;
      this.timesecWz = null;
      this.timesecRtk = null;
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
      if (initObj.hasOwnProperty('measuredVx')) {
        this.measuredVx = initObj.measuredVx
      }
      else {
        this.measuredVx = 0.0;
      }
      if (initObj.hasOwnProperty('measuredWz')) {
        this.measuredWz = initObj.measuredWz
      }
      else {
        this.measuredWz = 0.0;
      }
      if (initObj.hasOwnProperty('rtkStatus')) {
        this.rtkStatus = initObj.rtkStatus
      }
      else {
        this.rtkStatus = 0;
      }
      if (initObj.hasOwnProperty('timesecVx')) {
        this.timesecVx = initObj.timesecVx
      }
      else {
        this.timesecVx = 0.0;
      }
      if (initObj.hasOwnProperty('timesecWz')) {
        this.timesecWz = initObj.timesecWz
      }
      else {
        this.timesecWz = 0.0;
      }
      if (initObj.hasOwnProperty('timesecRtk')) {
        this.timesecRtk = initObj.timesecRtk
      }
      else {
        this.timesecRtk = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AuStatusMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [seq]
    bufferOffset = _serializer.uint32(obj.seq, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [measuredVx]
    bufferOffset = _serializer.float64(obj.measuredVx, buffer, bufferOffset);
    // Serialize message field [measuredWz]
    bufferOffset = _serializer.float64(obj.measuredWz, buffer, bufferOffset);
    // Serialize message field [rtkStatus]
    bufferOffset = _serializer.uint8(obj.rtkStatus, buffer, bufferOffset);
    // Serialize message field [timesecVx]
    bufferOffset = _serializer.float64(obj.timesecVx, buffer, bufferOffset);
    // Serialize message field [timesecWz]
    bufferOffset = _serializer.float64(obj.timesecWz, buffer, bufferOffset);
    // Serialize message field [timesecRtk]
    bufferOffset = _serializer.float64(obj.timesecRtk, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AuStatusMsg
    let len;
    let data = new AuStatusMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [seq]
    data.seq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [measuredVx]
    data.measuredVx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [measuredWz]
    data.measuredWz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rtkStatus]
    data.rtkStatus = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [timesecVx]
    data.timesecVx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [timesecWz]
    data.timesecWz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [timesecRtk]
    data.timesecRtk = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 53;
  }

  static datatype() {
    // Returns string type for a message object
    return 'deeporange14_msgs/AuStatusMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '91fca660e197d2c15adbbf497ed3e284';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Measured velocities from gps; Vx -> novatel/odom; Wz -> novatel/corrimu 
    Header header
      uint32 seq
      time stamp
    float64 measuredVx
    float64 measuredWz
    uint8 rtkStatus
    float64 timesecVx
    float64 timesecWz
    float64 timesecRtk
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
    const resolved = new AuStatusMsg(null);
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

    if (msg.measuredVx !== undefined) {
      resolved.measuredVx = msg.measuredVx;
    }
    else {
      resolved.measuredVx = 0.0
    }

    if (msg.measuredWz !== undefined) {
      resolved.measuredWz = msg.measuredWz;
    }
    else {
      resolved.measuredWz = 0.0
    }

    if (msg.rtkStatus !== undefined) {
      resolved.rtkStatus = msg.rtkStatus;
    }
    else {
      resolved.rtkStatus = 0
    }

    if (msg.timesecVx !== undefined) {
      resolved.timesecVx = msg.timesecVx;
    }
    else {
      resolved.timesecVx = 0.0
    }

    if (msg.timesecWz !== undefined) {
      resolved.timesecWz = msg.timesecWz;
    }
    else {
      resolved.timesecWz = 0.0
    }

    if (msg.timesecRtk !== undefined) {
      resolved.timesecRtk = msg.timesecRtk;
    }
    else {
      resolved.timesecRtk = 0.0
    }

    return resolved;
    }
};

module.exports = AuStatusMsg;
