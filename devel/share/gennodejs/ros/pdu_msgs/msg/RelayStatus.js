// Auto-generated. Do not edit!

// (in-package pdu_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RelayStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RelayStatus
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RelayStatus
    let len;
    let data = new RelayStatus(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pdu_msgs/RelayStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '747c0056a2372beaf7485ce2d5289570';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 value
    
    uint8 OK = 0
    uint8 RELAY_COIL_OPEN = 1
    uint8 RELAY_COIL_SHORTED = 2
    uint8 NORM_OPEN_RELAY_OPEN = 3
    uint8 NORM_CLOSED_RELAY_OPEN = 4
    uint8 COIL_NOT_POWERED = 5
    uint8 NORM_OPEN_RELAY_SHORTED = 6
    uint8 NORM_CLOSED_RELAY_SHORTED = 7
    uint8 RESERVED_01 = 8
    uint8 RESERVED_02 = 9
    uint8 RESERVED_03 = 10
    uint8 HIGH_SIDE_FAULT = 11
    uint8 HIGH_SIDE_OPEN_LOAD = 12
    uint8 HIGH_SIDE_OVER_VOLTAGE = 13
    uint8 RESERVED_04 = 14
    uint8 RELAY_LOCATION_NOT_USED = 15
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RelayStatus(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
RelayStatus.Constants = {
  OK: 0,
  RELAY_COIL_OPEN: 1,
  RELAY_COIL_SHORTED: 2,
  NORM_OPEN_RELAY_OPEN: 3,
  NORM_CLOSED_RELAY_OPEN: 4,
  COIL_NOT_POWERED: 5,
  NORM_OPEN_RELAY_SHORTED: 6,
  NORM_CLOSED_RELAY_SHORTED: 7,
  RESERVED_01: 8,
  RESERVED_02: 9,
  RESERVED_03: 10,
  HIGH_SIDE_FAULT: 11,
  HIGH_SIDE_OPEN_LOAD: 12,
  HIGH_SIDE_OVER_VOLTAGE: 13,
  RESERVED_04: 14,
  RELAY_LOCATION_NOT_USED: 15,
}

module.exports = RelayStatus;
