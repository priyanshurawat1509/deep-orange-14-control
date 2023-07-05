// Auto-generated. Do not edit!

// (in-package raptor_dbw_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FaultActionsReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.autonomous_disabled_no_brakes = null;
      this.autonomous_disabled_apply_brakes = null;
      this.can_gateway_disabled = null;
      this.inverter_contactor_disabled = null;
      this.prevent_enter_autonomous_mode = null;
      this.warn_driver_only = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('autonomous_disabled_no_brakes')) {
        this.autonomous_disabled_no_brakes = initObj.autonomous_disabled_no_brakes
      }
      else {
        this.autonomous_disabled_no_brakes = false;
      }
      if (initObj.hasOwnProperty('autonomous_disabled_apply_brakes')) {
        this.autonomous_disabled_apply_brakes = initObj.autonomous_disabled_apply_brakes
      }
      else {
        this.autonomous_disabled_apply_brakes = false;
      }
      if (initObj.hasOwnProperty('can_gateway_disabled')) {
        this.can_gateway_disabled = initObj.can_gateway_disabled
      }
      else {
        this.can_gateway_disabled = false;
      }
      if (initObj.hasOwnProperty('inverter_contactor_disabled')) {
        this.inverter_contactor_disabled = initObj.inverter_contactor_disabled
      }
      else {
        this.inverter_contactor_disabled = false;
      }
      if (initObj.hasOwnProperty('prevent_enter_autonomous_mode')) {
        this.prevent_enter_autonomous_mode = initObj.prevent_enter_autonomous_mode
      }
      else {
        this.prevent_enter_autonomous_mode = false;
      }
      if (initObj.hasOwnProperty('warn_driver_only')) {
        this.warn_driver_only = initObj.warn_driver_only
      }
      else {
        this.warn_driver_only = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FaultActionsReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [autonomous_disabled_no_brakes]
    bufferOffset = _serializer.bool(obj.autonomous_disabled_no_brakes, buffer, bufferOffset);
    // Serialize message field [autonomous_disabled_apply_brakes]
    bufferOffset = _serializer.bool(obj.autonomous_disabled_apply_brakes, buffer, bufferOffset);
    // Serialize message field [can_gateway_disabled]
    bufferOffset = _serializer.bool(obj.can_gateway_disabled, buffer, bufferOffset);
    // Serialize message field [inverter_contactor_disabled]
    bufferOffset = _serializer.bool(obj.inverter_contactor_disabled, buffer, bufferOffset);
    // Serialize message field [prevent_enter_autonomous_mode]
    bufferOffset = _serializer.bool(obj.prevent_enter_autonomous_mode, buffer, bufferOffset);
    // Serialize message field [warn_driver_only]
    bufferOffset = _serializer.bool(obj.warn_driver_only, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FaultActionsReport
    let len;
    let data = new FaultActionsReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [autonomous_disabled_no_brakes]
    data.autonomous_disabled_no_brakes = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [autonomous_disabled_apply_brakes]
    data.autonomous_disabled_apply_brakes = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [can_gateway_disabled]
    data.can_gateway_disabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [inverter_contactor_disabled]
    data.inverter_contactor_disabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [prevent_enter_autonomous_mode]
    data.prevent_enter_autonomous_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [warn_driver_only]
    data.warn_driver_only = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'raptor_dbw_msgs/FaultActionsReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '01de9bc391b21fe215ee7cfdd1f13e1f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    bool autonomous_disabled_no_brakes 
    bool autonomous_disabled_apply_brakes 
    bool can_gateway_disabled 
    bool inverter_contactor_disabled 
    bool prevent_enter_autonomous_mode 
    bool warn_driver_only 
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
    const resolved = new FaultActionsReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.autonomous_disabled_no_brakes !== undefined) {
      resolved.autonomous_disabled_no_brakes = msg.autonomous_disabled_no_brakes;
    }
    else {
      resolved.autonomous_disabled_no_brakes = false
    }

    if (msg.autonomous_disabled_apply_brakes !== undefined) {
      resolved.autonomous_disabled_apply_brakes = msg.autonomous_disabled_apply_brakes;
    }
    else {
      resolved.autonomous_disabled_apply_brakes = false
    }

    if (msg.can_gateway_disabled !== undefined) {
      resolved.can_gateway_disabled = msg.can_gateway_disabled;
    }
    else {
      resolved.can_gateway_disabled = false
    }

    if (msg.inverter_contactor_disabled !== undefined) {
      resolved.inverter_contactor_disabled = msg.inverter_contactor_disabled;
    }
    else {
      resolved.inverter_contactor_disabled = false
    }

    if (msg.prevent_enter_autonomous_mode !== undefined) {
      resolved.prevent_enter_autonomous_mode = msg.prevent_enter_autonomous_mode;
    }
    else {
      resolved.prevent_enter_autonomous_mode = false
    }

    if (msg.warn_driver_only !== undefined) {
      resolved.warn_driver_only = msg.warn_driver_only;
    }
    else {
      resolved.warn_driver_only = false
    }

    return resolved;
    }
};

module.exports = FaultActionsReport;
