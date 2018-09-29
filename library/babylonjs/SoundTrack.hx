package babylonjs;

@:native("BABYLON.SoundTrack")
extern class SoundTrack
{
	private var _outputAudioNode : Dynamic;
	private var _scene : Dynamic;
	var id : Float;
	var soundCollection : Array<Sound>;
	private var _isMainTrack : Dynamic;
	private var _connectedAnalyser : Dynamic;
	private var _options : Dynamic;
	private var _isInitialized : Dynamic;

	function new(scene:Scene, ?options:Dynamic) : Void;
	private function _initializeSoundTrackAudioGraph() : Dynamic;
	function dispose() : Void;
	function AddSound(sound:Sound) : Void;
	function RemoveSound(sound:Sound) : Void;
	function setVolume(newVolume:Float) : Void;
	function switchPanningModelToHRTF() : Void;
	function switchPanningModelToEqualPower() : Void;
	function connectToAnalyser(analyser:Analyser) : Void;
}