package babylon;

extern class SoundTrack
{
	private var _outputAudioNode : Dynamic/*UNKNOW_TYPE*/;
	private var _inputAudioNode : Dynamic/*UNKNOW_TYPE*/;
	private var _trackConvolver : Dynamic/*UNKNOW_TYPE*/;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	var id : Float;
	var soundCollection : Array<Sound>;
	private var _isMainTrack : Dynamic/*UNKNOW_TYPE*/;
	private var _connectedAnalyser : Dynamic/*UNKNOW_TYPE*/;
	private var _options : Dynamic/*UNKNOW_TYPE*/;
	private var _isInitialized : Dynamic/*UNKNOW_TYPE*/;
	function new(scene:Scene, ?options:Dynamic) : Void;
	private function _initializeSoundTrackAudioGraph();
	function dispose() : Void;
	function AddSound(sound:Sound) : Void;
	function RemoveSound(sound:Sound) : Void;
	function setVolume(newVolume:Float) : Void;
	function switchPanningModelToHRTF() : Void;
	function switchPanningModelToEqualPower() : Void;
	function connectToAnalyser(analyser:Analyser) : Void;
}