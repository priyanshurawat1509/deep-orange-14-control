// Auto-generated. Do not edit!

// (in-package raptor_dbw_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HighBeam {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HighBeam
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HighBeam
    let len;
    let data = new HighBeam(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'raptor_dbw_msgs/HighBeam';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'adbf7a951d077ba41a11250e8c7184ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 status
    
    uint8 OFF = 0
    uint8 ON = 1
    uint8 FORCE_ON = 2
    uint8 RESERVED = 3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HighBeam(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

// Constants for message
HighBeam.Constants = {
  OFF: 0,
  ON: 1,
  FORCE_ON: 2,
  RESERVED: 3,
}

module.exports = HighBeam;
