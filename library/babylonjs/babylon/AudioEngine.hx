package babylon;

extern class AudioEngine
{
	private var _audioContext : Dynamic/*UNKNOW_TYPE*/;
	private var _audioContextInitialized : Dynamic/*UNKNOW_TYPE*/;
	var canUseWebAudio : Bool;
	var masterGain : js.html.audio.GainNode;
	private var _connectedAnalyser : Dynamic/*UNKNOW_TYPE*/;
	var WarnedWebAudioUnsupported : Bool;
	var unlocked : Bool;
	var onAudioUnlocked : Void->Dynamic;
	var isMP3supported : Bool;
	var isOGGsupported : Bool;
	var audioContext : js.html.audio.AudioContext;
	function new() : Void;
	private function _unlockiOSaudio();
	private function _initializeAudioContext();
	function dispose() : Void;
	function getGlobalVolume() : Float;
	function setGlobalVolume(newVolume:Float) : Void;
	function connectToAnalyser(analyser:Analyser) : Void;
}