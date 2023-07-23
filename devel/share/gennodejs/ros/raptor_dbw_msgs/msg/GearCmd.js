// Auto-generated. Do not edit!

// (in-package raptor_dbw_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Gear = require('./Gear.js');

//-----------------------------------------------------------

class GearCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
      this.enable = null;
      this.rolling_counter = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = new Gear();
      }
      if (initObj.hasOwnProperty('enable')) {
        this.enable = initObj.enable
      }
      else {
        this.enable = false;
      }
      if (initObj.hasOwnProperty('rolling_counter')) {
        this.rolling_counter = initObj.rolling_counter
      }
      else {
        this.rolling_counter = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GearCmd
    // Serialize message field [cmd]
    bufferOffset = Gear.serialize(obj.cmd, buffer, bufferOffset);
    // Serialize message field [enable]
    bufferOffset = _serializer.bool(obj.enable, buffer, bufferOffset);
    // Serialize message field [rolling_counter]
    bufferOffset = _serializer.uint8(obj.rolling_counter, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GearCmd
    let len;
    let data = new GearCmd(null);
    // Deserialize message field [cmd]
    data.cmd = Gear.deserialize(buffer, bufferOffset);
    // Deserialize message field [enable]
    data.enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rolling_counter]
    data.rolling_counter = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'raptor_dbw_msgs/GearCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '027cd3ac0dc88e7a6b14c572a1f9c377';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Gear command enumeration
    Gear cmd
    
    bool enable
    
    # Watchdog counter
    uint8 rolling_counter
    
    ================================================================================
    MSG: raptor_dbw_msgs/Gear
    uint8 gear
    
    uint8 NONE=0
    uint8 PARK=1
    uint8 REVERSE=2
    uint8 NEUTRAL=3
    uint8 DRIVE=4
    uint8 LOW=5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GearCmd(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = Gear.Resolve(msg.cmd)
    }
    else {
      resolved.cmd = new Gear()
    }

    if (msg.enable !== undefined) {
      resolved.enable = msg.enable;
    }
    else {
      resolved.enable = false
    }

    if (msg.rolling_counter !== undefined) {
      resolved.rolling_counter = msg.rolling_counter;
    }
    else {
      resolved.rolling_counter = 0
    }

    return resolved;
    }
};

module.exports = GearCmd;
