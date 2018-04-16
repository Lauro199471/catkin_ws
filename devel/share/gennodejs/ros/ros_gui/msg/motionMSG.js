// Auto-generated. Do not edit!

// (in-package ros_gui.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class motionMSG {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.doMotion = null;
    }
    else {
      if (initObj.hasOwnProperty('doMotion')) {
        this.doMotion = initObj.doMotion
      }
      else {
        this.doMotion = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motionMSG
    // Serialize message field [doMotion]
    bufferOffset = _serializer.bool(obj.doMotion, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motionMSG
    let len;
    let data = new motionMSG(null);
    // Deserialize message field [doMotion]
    data.doMotion = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_gui/motionMSG';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '07137fc31bb47aafc1cdc6ca1d316779';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool doMotion
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motionMSG(null);
    if (msg.doMotion !== undefined) {
      resolved.doMotion = msg.doMotion;
    }
    else {
      resolved.doMotion = false
    }

    return resolved;
    }
};

module.exports = motionMSG;
