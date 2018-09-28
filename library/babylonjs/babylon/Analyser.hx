package babylonjs.babylon;

/**
 * Class used to work with sound analyzer using fast fourier transform (FFT)
 * @see http://doc.babylonjs.com/how_to/playing_sounds_and_music
 */
@:native("BABYLON.Analyser")
extern class Analyser
{
	/**
	 * Gets or sets the smoothing
	 * @ignorenaming
	 */
	var SMOOTHING : Float;
	/**
	 * Gets or sets the FFT table size
	 * @ignorenaming
	 */
	var FFT_SIZE : Float;
	/**
	 * Gets or sets the bar graph amplitude
	 * @ignorenaming
	 */
	var BARGRAPHAMPLITUDE : Float;
	/**
	 * Gets or sets the position of the debug canvas
	 * @ignorenaming
	 */
	var DEBUGCANVASPOS : { var x : Float; var y : Float; };
	/**
	 * Gets or sets the debug canvas size
	 * @ignorenaming
	 */
	var DEBUGCANVASSIZE : { var width : Float; var height : Float; };
	private var _byteFreqs : Dynamic;
	private var _byteTime : Dynamic;
	private var _floatFreqs : Dynamic;
	private var _webAudioAnalyser : Dynamic;
	private var _debugCanvas : Dynamic;
	private var _debugCanvasContext : Dynamic;
	private var _scene : Dynamic;
	private var _registerFunc : Dynamic;
	private var _audioEngine : Dynamic;

	/**
	 * Class used to work with sound analyzer using fast fourier transform (FFT)
	 * @see http://doc.babylonjs.com/how_to/playing_sounds_and_music
	 */
	function new(scene:Scene) : Void;
	/**
	 * Get the number of data values you will have to play with for the visualization
	 * @see https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode/frequencyBinCount
	 * @returns a number
	 */
	function getFrequencyBinCount() : Float;
	/**
	 * Gets the current frequency data as a byte array
	 * @see https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode/getByteFrequencyData
	 * @returns a Uint8Array
	 */
	function getByteFrequencyData() : js.html.Uint8Array;
	/**
	 * Gets the current waveform as a byte array
	 * @see https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode/getByteTimeDomainData
	 * @returns a Uint8Array
	 */
	function getByteTimeDomainData() : js.html.Uint8Array;
	/**
	 * Gets the current frequency data as a float array
	 * @see https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode/getByteFrequencyData
	 * @returns a Float32Array
	 */
	function getFloatFrequencyData() : js.html.Float32Array;
	/**
	 * Renders the debug canvas
	 */
	function drawDebugCanvas() : Void;
	/**
	 * Stops rendering the debug canvas and removes it
	 */
	function stopDebugCanvas() : Void;
	/**
	 * Connects two audio nodes
	 */
	function connectAudioNodes(inputAudioNode:js.html.audio.AudioNode, outputAudioNode:js.html.audio.AudioNode) : Void;
	/**
	 * Releases all associated resources
	 */
	function dispose() : Void;
}