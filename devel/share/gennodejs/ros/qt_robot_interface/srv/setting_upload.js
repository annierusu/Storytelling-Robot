// Auto-generated. Do not edit!

// (in-package qt_robot_interface.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class setting_uploadRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
      this.filepath = null;
      this.permission = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = '';
      }
      if (initObj.hasOwnProperty('filepath')) {
        this.filepath = initObj.filepath
      }
      else {
        this.filepath = '';
      }
      if (initObj.hasOwnProperty('permission')) {
        this.permission = initObj.permission
      }
      else {
        this.permission = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type setting_uploadRequest
    // Serialize message field [data]
    bufferOffset = _serializer.string(obj.data, buffer, bufferOffset);
    // Serialize message field [filepath]
    bufferOffset = _serializer.string(obj.filepath, buffer, bufferOffset);
    // Serialize message field [permission]
    bufferOffset = _serializer.string(obj.permission, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type setting_uploadRequest
    let len;
    let data = new setting_uploadRequest(null);
    // Deserialize message field [data]
    data.data = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [filepath]
    data.filepath = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [permission]
    data.permission = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.data);
    length += _getByteLength(object.filepath);
    length += _getByteLength(object.permission);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'qt_robot_interface/setting_uploadRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd074cc3e8086875c3d4f70d409bba29e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string data
    string filepath
    string permission
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new setting_uploadRequest(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = ''
    }

    if (msg.filepath !== undefined) {
      resolved.filepath = msg.filepath;
    }
    else {
      resolved.filepath = ''
    }

    if (msg.permission !== undefined) {
      resolved.permission = msg.permission;
    }
    else {
      resolved.permission = ''
    }

    return resolved;
    }
};

class setting_uploadResponse {
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
        this.status = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type setting_uploadResponse
    // Serialize message field [status]
    bufferOffset = _serializer.bool(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type setting_uploadResponse
    let len;
    let data = new setting_uploadResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'qt_robot_interface/setting_uploadResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a1255d4d998bd4d6585c64639b5ee9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool status
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new setting_uploadResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = false
    }

    return resolved;
    }
};

module.exports = {
  Request: setting_uploadRequest,
  Response: setting_uploadResponse,
  md5sum() { return 'ca9249eb5cbf48983e24f8f142ef641c'; },
  datatype() { return 'qt_robot_interface/setting_upload'; }
};
