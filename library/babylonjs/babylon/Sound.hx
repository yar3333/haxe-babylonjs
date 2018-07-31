package babylon;

extern class Sound
{
	var name : String;
	var autoplay : Bool;
	var loop : Bool;
	var useCustomAttenuation : Bool;
	var soundTrackId : Float;
	var spatialSound : Bool;
	var refDistance : Float;
	var rolloffFactor : Float;
	var maxDistance : Float;
	var distanceModel : String;
	private var _panningModel : Dynamic/*UNKNOW_TYPE*/;
	var onended : Void->Dynamic;
	private var _playbackRate : Dynamic/*UNKNOW_TYPE*/;
	private var _streaming : Dynamic/*UNKNOW_TYPE*/;
	private var _startTime : Dynamic/*UNKNOW_TYPE*/;
	private var _startOffset : Dynamic/*UNKNOW_TYPE*/;
	private var _position : Dynamic/*UNKNOW_TYPE*/;
	private var _localDirection : Dynamic/*UNKNOW_TYPE*/;
	private var _volume : Dynamic/*UNKNOW_TYPE*/;
	private var _isLoaded : Dynamic/*UNKNOW_TYPE*/;
	private var _isReadyToPlay : Dynamic/*UNKNOW_TYPE*/;
	var isPlaying : Bool;
	var isPaused : Bool;
	private var _isDirectional : Dynamic/*UNKNOW_TYPE*/;
	private var _readyToPlayCallback : Dynamic/*UNKNOW_TYPE*/;
	private var _audioBuffer : Dynamic/*UNKNOW_TYPE*/;
	private var _soundSource : Dynamic/*UNKNOW_TYPE*/;
	private var _streamingSource : Dynamic/*UNKNOW_TYPE*/;
	private var _soundPanner : Dynamic/*UNKNOW_TYPE*/;
	private var _soundGain : Dynamic/*UNKNOW_TYPE*/;
	private var _inputAudioNode : Dynamic/*UNKNOW_TYPE*/;
	private var _ouputAudioNode : Dynamic/*UNKNOW_TYPE*/;
	private var _coneInnerAngle : Dynamic/*UNKNOW_TYPE*/;
	private var _coneOuterAngle : Dynamic/*UNKNOW_TYPE*/;
	private var _coneOuterGain : Dynamic/*UNKNOW_TYPE*/;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _connectedMesh : Dynamic/*UNKNOW_TYPE*/;
	private var _customAttenuationFunction : Dynamic/*UNKNOW_TYPE*/;
	private var _registerFunc : Dynamic/*UNKNOW_TYPE*/;
	private var _isOutputConnected : Dynamic/*UNKNOW_TYPE*/;
	private var _htmlAudioElement : Dynamic/*UNKNOW_TYPE*/;
	private var _urlType : Dynamic/*UNKNOW_TYPE*/;
	/**
	* Create a sound and attach it to a scene
	* @param name Name of your sound
	* @param urlOrArrayBuffer Url to the sound to load async or ArrayBuffer
	* @param readyToPlayCallback Provide a callback function if you'd like to load your code once the sound is ready to be played
	* @param options Objects to provide with the current available options: autoplay, loop, volume, spatialSound, maxDistance, rolloffFactor, refDistance, distanceModel, panningModel, streaming
	*/
	function new(name:String, urlOrArrayBuffer:Dynamic, scene:Scene, ?readyToPlayCallback:Void->Void, ?options:Dynamic) : Void;
	function dispose() : Void;
	private function _soundLoaded(audioData);
	function setAudioBuffer(audioBuffer:AudioBuffer) : Void;
	function updateOptions(options:Dynamic) : Void;
	private function _createSpatialParameters();
	private function _updateSpatialParameters();
	function switchPanningModelToHRTF() : Void;
	function switchPanningModelToEqualPower() : Void;
	private function _switchPanningModel();
	function connectToSoundTrackAudioNode(soundTrackAudioNode:AudioNode) : Void;
	/**
	* Transform this sound into a directional source
	* @param coneInnerAngle Size of the inner cone in degree
	* @param coneOuterAngle Size of the outer cone in degree
	* @param coneOuterGain Volume of the sound outside the outer cone (between 0.0 and 1.0)
	*/
	function setDirectionalCone(coneInnerAngle:Float, coneOuterAngle:Float, coneOuterGain:Float) : Void;
	function setPosition(newPosition:Vector3) : Void;
	function setLocalDirectionToMesh(newLocalDirection:Vector3) : Void;
	private function _updateDirection();
	function updateDistanceFromListener() : Void;
	function setAttenuationFunction(callback:Float->Float->Float->Float->Float->Float) : Void;
	/**
	* Play the sound
	* @param time (optional) Start the sound after X seconds. Start immediately (0) by default.
	* @param offset (optional) Start the sound setting it at a specific time
	*/
	function play(?time:Float, ?offset:Float) : Void;
	private function _onended();
	/**
	* Stop the sound
	* @param time (optional) Stop the sound after X seconds. Stop immediately (0) by default.
	*/
	function stop(?time:Float) : Void;
	function pause() : Void;
	function setVolume(newVolume:Float, ?time:Float) : Void;
	function setPlaybackRate(newPlaybackRate:Float) : Void;
	function getVolume() : Float;
	function attachToMesh(meshToConnectTo:AbstractMesh) : Void;
	function detachFromMesh() : Void;
	private function _onRegisterAfterWorldMatrixUpdate(connectedMesh);
	function clone() : Sound;
	function getAudioBuffer() : AudioBuffer;
	function serialize() : Dynamic;
	static function Parse(parsedSound:Dynamic, scene:Scene, rootUrl:String, ?sourceSound:Sound) : Sound;
}