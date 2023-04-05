
"use strict";

let setting_info = require('./setting_info.js')
let setting_download = require('./setting_download.js')
let speech_config = require('./speech_config.js')
let speech_say = require('./speech_say.js')
let emotion_show = require('./emotion_show.js')
let setting_upload = require('./setting_upload.js')
let setting_setVolume = require('./setting_setVolume.js')
let emotion_stop = require('./emotion_stop.js')
let behavior_talk_audio = require('./behavior_talk_audio.js')
let behavior_talk_text = require('./behavior_talk_text.js')
let audio_stop = require('./audio_stop.js')
let gesture_play = require('./gesture_play.js')
let speech_stop = require('./speech_stop.js')
let audio_play = require('./audio_play.js')

module.exports = {
  setting_info: setting_info,
  setting_download: setting_download,
  speech_config: speech_config,
  speech_say: speech_say,
  emotion_show: emotion_show,
  setting_upload: setting_upload,
  setting_setVolume: setting_setVolume,
  emotion_stop: emotion_stop,
  behavior_talk_audio: behavior_talk_audio,
  behavior_talk_text: behavior_talk_text,
  audio_stop: audio_stop,
  gesture_play: gesture_play,
  speech_stop: speech_stop,
  audio_play: audio_play,
};
