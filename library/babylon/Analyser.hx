package babylon;

extern class Analyser
{
	var SMOOTHING : Float;
	var FFT_SIZE : Float;
	var BARGRAPHAMPLITUDE : Float;
	var DEBUGCANVASPOS :
	{
		x: Float,
		y: Float
	};
	var DEBUGCANVASSIZE :
	{
		width: Float,
		height: Float
	};
	private _byteFreqs : Dynamic/*UNKNOW_TYPE*/;
	private _byteTime : Dynamic/*UNKNOW_TYPE*/;
	private _floatFreqs : Dynamic/*UNKNOW_TYPE*/;
	private _webAudioAnalyser : Dynamic/*UNKNOW_TYPE*/;
	private _debugCanvas : Dynamic/*UNKNOW_TYPE*/;
	private _debugCanvasContext : Dynamic/*UNKNOW_TYPE*/;
	private _scene : Dynamic/*UNKNOW_TYPE*/;
	private _registerFunc : Dynamic/*UNKNOW_TYPE*/;
	private _audioEngine : Dynamic/*UNKNOW_TYPE*/;
	function new(scene:Scene) : Void;
	function getFrequencyBinCount() : Float;
	function getByteFrequencyData() : Uint8Array;
	function getByteTimeDomainData() : Uint8Array;
	function getFloatFrequencyData() : Uint8Array;
	function drawDebugCanvas() : Void;
	function stopDebugCanvas() : Void;
	function connectAudioNodes(inputAudioNode:AudioNode, outputAudioNode:AudioNode) : Void;
	function dispose() : Void;
}