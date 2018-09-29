package babylonjs;

@:native("BABYLON.AudioEngine")
extern class AudioEngine
{
	private var _audioContext : Dynamic;
	private var _audioContextInitialized : Dynamic;
	var canUseWebAudio : Bool;
	var masterGain : js.html.audio.GainNode;
	private var _connectedAnalyser : Dynamic;
	var WarnedWebAudioUnsupported : Bool;
	var unlocked : Bool;
	var onAudioUnlocked : Void->Dynamic;
	var isMP3supported : Bool;
	var isOGGsupported : Bool;
	var audioContext(default, null) : Null<js.html.audio.AudioContext>;

	function new() : Void;
	private function _unlockiOSaudio() : Dynamic;
	private function _initializeAudioContext() : Dynamic;
	function dispose() : Void;
	function getGlobalVolume() : Float;
	function setGlobalVolume(newVolume:Float) : Void;
	function connectToAnalyser(analyser:Analyser) : Void;
}