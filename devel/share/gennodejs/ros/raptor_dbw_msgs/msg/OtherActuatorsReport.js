// Auto-generated. Do not edit!

// (in-package raptor_dbw_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TurnSignal = require('./TurnSignal.js');
let DoorState = require('./DoorState.js');
let HighBeamState = require('./HighBeamState.js');
let WiperFront = require('./WiperFront.js');
let WiperRear = require('./WiperRear.js');
let Ignition = require('./Ignition.js');
let HornState = require('./HornState.js');
let LowBeam = require('./LowBeam.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class OtherActuatorsReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.turn_signal_state = null;
      this.right_rear_door_state = null;
      this.high_beam_state = null;
      this.front_wiper_state = null;
      this.rear_wiper_state = null;
      this.ignition_state = null;
      this.left_rear_door_state = null;
      this.liftgate_door_state = null;
      this.horn_state = null;
      this.low_beam_state = null;
      this.rolling_counter = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('turn_signal_state')) {
        this.turn_signal_state = initObj.turn_signal_state
      }
      else {
        this.turn_signal_state = new TurnSignal();
      }
      if (initObj.hasOwnProperty('right_rear_door_state')) {
        this.right_rear_door_state = initObj.right_rear_door_state
      }
      else {
        this.right_rear_door_state = new DoorState();
      }
      if (initObj.hasOwnProperty('high_beam_state')) {
        this.high_beam_state = initObj.high_beam_state
      }
      else {
        this.high_beam_state = new HighBeamState();
      }
      if (initObj.hasOwnProperty('front_wiper_state')) {
        this.front_wiper_state = initObj.front_wiper_state
      }
      else {
        this.front_wiper_state = new WiperFront();
      }
      if (initObj.hasOwnProperty('rear_wiper_state')) {
        this.rear_wiper_state = initObj.rear_wiper_state
      }
      else {
        this.rear_wiper_state = new WiperRear();
      }
      if (initObj.hasOwnProperty('ignition_state')) {
        this.ignition_state = initObj.ignition_state
      }
      else {
        this.ignition_state = new Ignition();
      }
      if (initObj.hasOwnProperty('left_rear_door_state')) {
        this.left_rear_door_state = initObj.left_rear_door_state
      }
      else {
        this.left_rear_door_state = new DoorState();
      }
      if (initObj.hasOwnProperty('liftgate_door_state')) {
        this.liftgate_door_state = initObj.liftgate_door_state
      }
      else {
        this.liftgate_door_state = new DoorState();
      }
      if (initObj.hasOwnProperty('horn_state')) {
        this.horn_state = initObj.horn_state
      }
      else {
        this.horn_state = new HornState();
      }
      if (initObj.hasOwnProperty('low_beam_state')) {
        this.low_beam_state = initObj.low_beam_state
      }
      else {
        this.low_beam_state = new LowBeam();
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
    // Serializes a message object of type OtherActuatorsReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [turn_signal_state]
    bufferOffset = TurnSignal.serialize(obj.turn_signal_state, buffer, bufferOffset);
    // Serialize message field [right_rear_door_state]
    bufferOffset = DoorState.serialize(obj.right_rear_door_state, buffer, bufferOffset);
    // Serialize message field [high_beam_state]
    bufferOffset = HighBeamState.serialize(obj.high_beam_state, buffer, bufferOffset);
    // Serialize message field [front_wiper_state]
    bufferOffset = WiperFront.serialize(obj.front_wiper_state, buffer, bufferOffset);
    // Serialize message field [rear_wiper_state]
    bufferOffset = WiperRear.serialize(obj.rear_wiper_state, buffer, bufferOffset);
    // Serialize message field [ignition_state]
    bufferOffset = Ignition.serialize(obj.ignition_state, buffer, bufferOffset);
    // Serialize message field [left_rear_door_state]
    bufferOffset = DoorState.serialize(obj.left_rear_door_state, buffer, bufferOffset);
    // Serialize message field [liftgate_door_state]
    bufferOffset = DoorState.serialize(obj.liftgate_door_state, buffer, bufferOffset);
    // Serialize message field [horn_state]
    bufferOffset = HornState.serialize(obj.horn_state, buffer, bufferOffset);
    // Serialize message field [low_beam_state]
    bufferOffset = LowBeam.serialize(obj.low_beam_state, buffer, bufferOffset);
    // Serialize message field [rolling_counter]
    bufferOffset = _serializer.uint8(obj.rolling_counter, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OtherActuatorsReport
    let len;
    let data = new OtherActuatorsReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [turn_signal_state]
    data.turn_signal_state = TurnSignal.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_rear_door_state]
    data.right_rear_door_state = DoorState.deserialize(buffer, bufferOffset);
    // Deserialize message field [high_beam_state]
    data.high_beam_state = HighBeamState.deserialize(buffer, bufferOffset);
    // Deserialize message field [front_wiper_state]
    data.front_wiper_state = WiperFront.deserialize(buffer, bufferOffset);
    // Deserialize message field [rear_wiper_state]
    data.rear_wiper_state = WiperRear.deserialize(buffer, bufferOffset);
    // Deserialize message field [ignition_state]
    data.ignition_state = Ignition.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_rear_door_state]
    data.left_rear_door_state = DoorState.deserialize(buffer, bufferOffset);
    // Deserialize message field [liftgate_door_state]
    data.liftgate_door_state = DoorState.deserialize(buffer, bufferOffset);
    // Deserialize message field [horn_state]
    data.horn_state = HornState.deserialize(buffer, bufferOffset);
    // Deserialize message field [low_beam_state]
    data.low_beam_state = LowBeam.deserialize(buffer, bufferOffset);
    // Deserialize message field [rolling_counter]
    data.rolling_counter = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'raptor_dbw_msgs/OtherActuatorsReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2109072233b64ea71bab77b539413ada';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    TurnSignal turn_signal_state 
    DoorState right_rear_door_state 
    HighBeamState high_beam_state 
    WiperFront front_wiper_state 
    WiperRear rear_wiper_state 
    Ignition ignition_state 
    DoorState left_rear_door_state 
    DoorState liftgate_door_state 
    HornState horn_state 
    LowBeam low_beam_state 
    
    uint8 rolling_counter
    
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
    
    ================================================================================
    MSG: raptor_dbw_msgs/TurnSignal
    uint8 value
    
    uint8 NONE = 0
    uint8 LEFT = 1
    uint8 RIGHT = 2
    uint8 HAZARDS = 3
    uint8 SNA = 7
    ================================================================================
    MSG: raptor_dbw_msgs/DoorState
    uint8 value
    
    uint8 UNDEFINED = 0
    uint8 CLOSED = 1
    uint8 OPEN = 2
    uint8 SNA = 3
    
    ================================================================================
    MSG: raptor_dbw_msgs/HighBeamState
    uint8 value
    
    uint8 SNA = 0
    uint8 RESERVED = 1
    uint8 ON = 2
    uint8 OFF = 0
    ================================================================================
    MSG: raptor_dbw_msgs/WiperFront
    uint8 status
    
    uint8 OFF = 0
    uint8 INTERVAL_1 = 1
    uint8 INTERVAL_2 = 2
    uint8 INTERVAL_3 = 3
    uint8 INTERVAL_4 = 4
    uint8 INTERVAL_5 = 5
    uint8 INTERVAL_6 = 6
    uint8 CONSTANT_LOW = 11
    uint8 CONSTANT_HIGH = 12
    uint8 WASH_BRIEF = 13
    uint8 WASH_CONTINUOUS = 14
    uint8 SNA = 15
    ================================================================================
    MSG: raptor_dbw_msgs/WiperRear
    uint8 status
    
    uint8 OFF = 0
    uint8 INTERVAL_1 = 1
    uint8 CONSTANT_LOW = 11
    uint8 CONSTANT_HIGH = 12
    uint8 WASH_BRIEF = 13
    uint8 WASH_CONTINUOUS = 14
    uint8 SNA = 15
    ================================================================================
    MSG: raptor_dbw_msgs/Ignition
    uint8 status
    
    uint8 NO_REQUEST = 0
    uint8 FORCE_OFF = 1
    uint8 ACCESSORY = 2
    uint8 RUN = 3
    uint8 CRANK = 4
    ================================================================================
    MSG: raptor_dbw_msgs/HornState
    uint8 status
    
    uint8 OFF = 0
    uint8 ON = 1
    uint8 SNA = 2
    
    ================================================================================
    MSG: raptor_dbw_msgs/LowBeam
    uint8 status
    
    uint8 OFF = 0
    uint8 RESERVED = 1
    uint8 ON = 2
    uint8 RESERVED_1 = 3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OtherActuatorsReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.turn_signal_state !== undefined) {
      resolved.turn_signal_state = TurnSignal.Resolve(msg.turn_signal_state)
    }
    else {
      resolved.turn_signal_state = new TurnSignal()
    }

    if (msg.right_rear_door_state !== undefined) {
      resolved.right_rear_door_state = DoorState.Resolve(msg.right_rear_door_state)
    }
    else {
      resolved.right_rear_door_state = new DoorState()
    }

    if (msg.high_beam_state !== undefined) {
      resolved.high_beam_state = HighBeamState.Resolve(msg.high_beam_state)
    }
    else {
      resolved.high_beam_state = new HighBeamState()
    }

    if (msg.front_wiper_state !== undefined) {
      resolved.front_wiper_state = WiperFront.Resolve(msg.front_wiper_state)
    }
    else {
      resolved.front_wiper_state = new WiperFront()
    }

    if (msg.rear_wiper_state !== undefined) {
      resolved.rear_wiper_state = WiperRear.Resolve(msg.rear_wiper_state)
    }
    else {
      resolved.rear_wiper_state = new WiperRear()
    }

    if (msg.ignition_state !== undefined) {
      resolved.ignition_state = Ignition.Resolve(msg.ignition_state)
    }
    else {
      resolved.ignition_state = new Ignition()
    }

    if (msg.left_rear_door_state !== undefined) {
      resolved.left_rear_door_state = DoorState.Resolve(msg.left_rear_door_state)
    }
    else {
      resolved.left_rear_door_state = new DoorState()
    }

    if (msg.liftgate_door_state !== undefined) {
      resolved.liftgate_door_state = DoorState.Resolve(msg.liftgate_door_state)
    }
    else {
      resolved.liftgate_door_state = new DoorState()
    }

    if (msg.horn_state !== undefined) {
      resolved.horn_state = HornState.Resolve(msg.horn_state)
    }
    else {
      resolved.horn_state = new HornState()
    }

    if (msg.low_beam_state !== undefined) {
      resolved.low_beam_state = LowBeam.Resolve(msg.low_beam_state)
    }
    else {
      resolved.low_beam_state = new LowBeam()
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

module.exports = OtherActuatorsReport;
