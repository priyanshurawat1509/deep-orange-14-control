// Auto-generated. Do not edit!

// (in-package pdu_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RelayState = require('./RelayState.js');

//-----------------------------------------------------------

class RelayCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.relay_1 = null;
      this.relay_2 = null;
      this.relay_3 = null;
      this.relay_4 = null;
      this.relay_5 = null;
      this.relay_6 = null;
      this.relay_7 = null;
      this.relay_8 = null;
    }
    else {
      if (initObj.hasOwnProperty('relay_1')) {
        this.relay_1 = initObj.relay_1
      }
      else {
        this.relay_1 = new RelayState();
      }
      if (initObj.hasOwnProperty('relay_2')) {
        this.relay_2 = initObj.relay_2
      }
      else {
        this.relay_2 = new RelayState();
      }
      if (initObj.hasOwnProperty('relay_3')) {
        this.relay_3 = initObj.relay_3
      }
      else {
        this.relay_3 = new RelayState();
      }
      if (initObj.hasOwnProperty('relay_4')) {
        this.relay_4 = initObj.relay_4
      }
      else {
        this.relay_4 = new RelayState();
      }
      if (initObj.hasOwnProperty('relay_5')) {
        this.relay_5 = initObj.relay_5
      }
      else {
        this.relay_5 = new RelayState();
      }
      if (initObj.hasOwnProperty('relay_6')) {
        this.relay_6 = initObj.relay_6
      }
      else {
        this.relay_6 = new RelayState();
      }
      if (initObj.hasOwnProperty('relay_7')) {
        this.relay_7 = initObj.relay_7
      }
      else {
        this.relay_7 = new RelayState();
      }
      if (initObj.hasOwnProperty('relay_8')) {
        this.relay_8 = initObj.relay_8
      }
      else {
        this.relay_8 = new RelayState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RelayCommand
    // Serialize message field [relay_1]
    bufferOffset = RelayState.serialize(obj.relay_1, buffer, bufferOffset);
    // Serialize message field [relay_2]
    bufferOffset = RelayState.serialize(obj.relay_2, buffer, bufferOffset);
    // Serialize message field [relay_3]
    bufferOffset = RelayState.serialize(obj.relay_3, buffer, bufferOffset);
    // Serialize message field [relay_4]
    bufferOffset = RelayState.serialize(obj.relay_4, buffer, bufferOffset);
    // Serialize message field [relay_5]
    bufferOffset = RelayState.serialize(obj.relay_5, buffer, bufferOffset);
    // Serialize message field [relay_6]
    bufferOffset = RelayState.serialize(obj.relay_6, buffer, bufferOffset);
    // Serialize message field [relay_7]
    bufferOffset = RelayState.serialize(obj.relay_7, buffer, bufferOffset);
    // Serialize message field [relay_8]
    bufferOffset = RelayState.serialize(obj.relay_8, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RelayCommand
    let len;
    let data = new RelayCommand(null);
    // Deserialize message field [relay_1]
    data.relay_1 = RelayState.deserialize(buffer, bufferOffset);
    // Deserialize message field [relay_2]
    data.relay_2 = RelayState.deserialize(buffer, bufferOffset);
    // Deserialize message field [relay_3]
    data.relay_3 = RelayState.deserialize(buffer, bufferOffset);
    // Deserialize message field [relay_4]
    data.relay_4 = RelayState.deserialize(buffer, bufferOffset);
    // Deserialize message field [relay_5]
    data.relay_5 = RelayState.deserialize(buffer, bufferOffset);
    // Deserialize message field [relay_6]
    data.relay_6 = RelayState.deserialize(buffer, bufferOffset);
    // Deserialize message field [relay_7]
    data.relay_7 = RelayState.deserialize(buffer, bufferOffset);
    // Deserialize message field [relay_8]
    data.relay_8 = RelayState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pdu_msgs/RelayCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2244ce8be7c2912abb85c303db68d2b3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Relay state enumerations
    
    RelayState relay_1
    RelayState relay_2
    RelayState relay_3
    RelayState relay_4
    RelayState relay_5
    RelayState relay_6
    RelayState relay_7
    RelayState relay_8
    
    ================================================================================
    MSG: pdu_msgs/RelayState
    uint8 value
    
    # MAINTAIN_STATE items perform the same function.
    uint8 RELAY_OFF = 0
    uint8 RELAY_ON = 1
    uint8 MAINTAIN_STATE = 2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RelayCommand(null);
    if (msg.relay_1 !== undefined) {
      resolved.relay_1 = RelayState.Resolve(msg.relay_1)
    }
    else {
      resolved.relay_1 = new RelayState()
    }

    if (msg.relay_2 !== undefined) {
      resolved.relay_2 = RelayState.Resolve(msg.relay_2)
    }
    else {
      resolved.relay_2 = new RelayState()
    }

    if (msg.relay_3 !== undefined) {
      resolved.relay_3 = RelayState.Resolve(msg.relay_3)
    }
    else {
      resolved.relay_3 = new RelayState()
    }

    if (msg.relay_4 !== undefined) {
      resolved.relay_4 = RelayState.Resolve(msg.relay_4)
    }
    else {
      resolved.relay_4 = new RelayState()
    }

    if (msg.relay_5 !== undefined) {
      resolved.relay_5 = RelayState.Resolve(msg.relay_5)
    }
    else {
      resolved.relay_5 = new RelayState()
    }

    if (msg.relay_6 !== undefined) {
      resolved.relay_6 = RelayState.Resolve(msg.relay_6)
    }
    else {
      resolved.relay_6 = new RelayState()
    }

    if (msg.relay_7 !== undefined) {
      resolved.relay_7 = RelayState.Resolve(msg.relay_7)
    }
    else {
      resolved.relay_7 = new RelayState()
    }

    if (msg.relay_8 !== undefined) {
      resolved.relay_8 = RelayState.Resolve(msg.relay_8)
    }
    else {
      resolved.relay_8 = new RelayState()
    }

    return resolved;
    }
};

module.exports = RelayCommand;
