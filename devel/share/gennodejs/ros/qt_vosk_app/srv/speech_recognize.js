// Auto-generated. Do not edit!

// (in-package qt_vosk_app.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class speech_recognizeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.language = null;
      this.options = null;
      this.timeout = null;
    }
    else {
      if (initObj.hasOwnProperty('language')) {
        this.language = initObj.language
      }
      else {
        this.language = '';
      }
      if (initObj.hasOwnProperty('options')) {
        this.options = initObj.options
      }
      else {
        this.options = [];
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type speech_recognizeRequest
    // Serialize message field [language]
    bufferOffset = _serializer.string(obj.language, buffer, bufferOffset);
    // Serialize message field [options]
    bufferOffset = _arraySerializer.string(obj.options, buffer, bufferOffset, null);
    // Serialize message field [timeout]
    bufferOffset = _serializer.int64(obj.timeout, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type speech_recognizeRequest
    let len;
    let data = new speech_recognizeRequest(null);
    // Deserialize message field [language]
    data.language = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [options]
    data.options = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [timeout]
    data.timeout = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.language);
    object.options.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'qt_vosk_app/speech_recognizeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '59e07ffbd2874b74f07ac395b9d4708f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string language
    string[] options
    int64 timeout
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new speech_recognizeRequest(null);
    if (msg.language !== undefined) {
      resolved.language = msg.language;
    }
    else {
      resolved.language = ''
    }

    if (msg.options !== undefined) {
      resolved.options = msg.options;
    }
    else {
      resolved.options = []
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = 0
    }

    return resolved;
    }
};

class speech_recognizeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.transcript = null;
    }
    else {
      if (initObj.hasOwnProperty('transcript')) {
        this.transcript = initObj.transcript
      }
      else {
        this.transcript = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type speech_recognizeResponse
    // Serialize message field [transcript]
    bufferOffset = _serializer.string(obj.transcript, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type speech_recognizeResponse
    let len;
    let data = new speech_recognizeResponse(null);
    // Deserialize message field [transcript]
    data.transcript = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.transcript);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'qt_vosk_app/speech_recognizeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd57af9fafe11c5c53756ce2839af175d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string transcript
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new speech_recognizeResponse(null);
    if (msg.transcript !== undefined) {
      resolved.transcript = msg.transcript;
    }
    else {
      resolved.transcript = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: speech_recognizeRequest,
  Response: speech_recognizeResponse,
  md5sum() { return '75ea4008cc551c1370d02f534ba1f8f9'; },
  datatype() { return 'qt_vosk_app/speech_recognize'; }
};
