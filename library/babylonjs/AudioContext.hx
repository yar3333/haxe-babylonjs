package root;

extern interface AudioContext extends EventTarget
{
function decodeAudioData(audioData:ArrayBuffer, successCallback:DecodeSuccessCallback, ?errorCallback:Dynamic) : Void;
}