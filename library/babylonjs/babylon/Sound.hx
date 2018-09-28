package babylonjs.babylon;

@:native("BABYLON.Sound")
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
	private var _panningModel : Dynamic;
	var onended : Void->Dynamic;
	private var _playbackRate : Dynamic;
	private var _streaming : Dynamic;
	private var _startTime : Dynamic;
	private var _startOffset : Dynamic;
	private var _position : Dynamic;
	private var _localDirection : Dynamic;
	private var _volume : Dynamic;
	private var _isReadyToPlay : Dynamic;
	var isPlaying : Bool;
	var isPaused : Bool;
	private var _isDirectional : Dynamic;
	private var _readyToPlayCallback : Dynamic;
	private var _audioBuffer : Dynamic;
	private var _soundSource : Dynamic;
	private var _streamingSource : Dynamic;
	private var _soundPanner : Dynamic;
	private var _soundGain : Dynamic;
	private var _inputAudioNode : Dynamic;
	private var _ouputAudioNode : Dynamic;
	private var _coneInnerAngle : Dynamic;
	private var _coneOuterAngle : Dynamic;
	private var _coneOuterGain : Dynamic;
	private var _scene : Dynamic;
	private var _connectedMesh : Dynamic;
	private var _customAttenuationFunction : Dynamic;
	private var _registerFunc : Dynamic;
	private var _isOutputConnected : Dynamic;
	private var _htmlAudioElement : Dynamic;
	private var _urlType : Dynamic;

	function new(name:String, urlOrArrayBuffer:Dynamic, scene:Scene, ?readyToPlayCallback:Null<Void->Void>, ?options:Dynamic) : Void;
	function dispose() : Void;
	function isReady() : Bool;
	private function _soundLoaded(audioData:Dynamic) : Dynamic;
	function setAudioBuffer(audioBuffer:js.html.audio.AudioBuffer) : Void;
	function updateOptions(options:Dynamic) : Void;
	private function _createSpatialParameters() : Dynamic;
	private function _updateSpatialParameters() : Dynamic;
	function switchPanningModelToHRTF() : Void;
	function switchPanningModelToEqualPower() : Void;
	private function _switchPanningModel() : Dynamic;
	function connectToSoundTrackAudioNode(soundTrackAudioNode:js.html.audio.AudioNode) : Void;
	/**
	 * Transform this sound into a directional source
	 */
	function setDirectionalCone(coneInnerAngle:Float, coneOuterAngle:Float, coneOuterGain:Float) : Void;
	function setPosition(newPosition:Vector3) : Void;
	function setLocalDirectionToMesh(newLocalDirection:Vector3) : Void;
	private function _updateDirection() : Dynamic;
	function updateDistanceFromListener() : Void;
	function setAttenuationFunction(callback:Float->Float->Float->Float->Float->Float) : Void;
	/**
	 * Play the sound
	 */
	function play(?time:Float, ?offset:Float) : Void;
	private function _onended() : Dynamic;
	/**
	 * Stop the sound
	 */
	function stop(?time:Float) : Void;
	function pause() : Void;
	function setVolume(newVolume:Float, ?time:Float) : Void;
	function setPlaybackRate(newPlaybackRate:Float) : Void;
	function getVolume() : Float;
	function attachToMesh(meshToConnectTo:AbstractMesh) : Void;
	function detachFromMesh() : Void;
	private function _onRegisterAfterWorldMatrixUpdate(node:Dynamic) : Dynamic;
	function clone() : Null<Sound>;
	function getAudioBuffer() : js.html.audio.AudioBuffer;
	function serialize() : Dynamic;
	static function Parse(parsedSound:Dynamic, scene:Scene, rootUrl:String, ?sourceSound:Sound) : Sound;
}