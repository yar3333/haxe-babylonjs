package babylon;

extern class HDRRenderingPipeline extends PostProcessRenderPipeline implements IDisposable
{
	/**
	* Public members
	*/
	/**
	* Gaussian blur coefficient
	* @type {number}
	*/
	var gaussCoeff : Float;
	/**
	* Gaussian blur mean
	* @type {number}
	*/
	var gaussMean : Float;
	/**
	* Gaussian blur standard deviation
	* @type {number}
	*/
	var gaussStandDev : Float;
	/**
	* Gaussian blur multiplier. Multiplies the blur effect
	* @type {number}
	*/
	var gaussMultiplier : Float;
	/**
	* Exposure, controls the overall intensity of the pipeline
	* @type {number}
	*/
	var exposure : Float;
	/**
	* Minimum luminance that the post-process can output. Luminance is >= 0
	* @type {number}
	*/
	var minimumLuminance : Float;
	/**
	* Maximum luminance that the post-process can output. Must be suprerior to minimumLuminance
	* @type {number}
	*/
	var maximumLuminance : Float;
	/**
	* Increase rate for luminance: eye adaptation speed to dark
	* @type {number}
	*/
	var luminanceIncreaserate : Float;
	/**
	* Decrease rate for luminance: eye adaptation speed to bright
	* @type {number}
	*/
	var luminanceDecreaseRate : Float;
	/**
	* Minimum luminance needed to compute HDR
	* @type {number}
	*/
	var brightThreshold : Float;
	/**
	* Private members
	*/
	private var _guassianBlurHPostProcess : Dynamic/*UNKNOW_TYPE*/;
	private var _guassianBlurVPostProcess : Dynamic/*UNKNOW_TYPE*/;
	private var _brightPassPostProcess : Dynamic/*UNKNOW_TYPE*/;
	private var _textureAdderPostProcess : Dynamic/*UNKNOW_TYPE*/;
	private var _downSampleX4PostProcess : Dynamic/*UNKNOW_TYPE*/;
	private var _originalPostProcess : Dynamic/*UNKNOW_TYPE*/;
	private var _hdrPostProcess : Dynamic/*UNKNOW_TYPE*/;
	private var _hdrCurrentLuminance : Dynamic/*UNKNOW_TYPE*/;
	private var _hdrOutputLuminance : Dynamic/*UNKNOW_TYPE*/;
	static var LUM_STEPS : Float;
	private var _downSamplePostProcesses : Dynamic/*UNKNOW_TYPE*/;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _needUpdate : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * @constructor
	 * @param {string} name - The rendering pipeline name
	 * @param {BABYLON.Scene} scene - The scene linked to this pipeline
	 * @param {any} ratio - The size of the postprocesses (0.5 means that your postprocess will have a width = canvas.width 0.5 and a height = canvas.height 0.5)
	 * @param {BABYLON.PostProcess} originalPostProcess - the custom original color post-process. Must be "reusable". Can be null.
	 * @param {BABYLON.Camera[]} cameras - The array of cameras that the rendering pipeline will be attached to
	 */
	function new(name:String, scene:Scene, ratio:Float, ?originalPostProcess:PostProcess, ?cameras:Array<Camera>) : Void;
	/**
	* Tells the pipeline to update its post-processes
	*/
	function update() : Void;
	/**
	* Returns the current calculated luminance
	*/
	function getCurrentLuminance() : Float;
	/**
	* Returns the currently drawn luminance
	*/
	function getOutputLuminance() : Float;
	/**
	* Releases the rendering pipeline and its internal effects. Detaches pipeline from cameras
	*/
	function dispose() : Void;
	/**
	* Creates the HDR post-process and computes the luminance adaptation
	*/
	private function _createHDRPostProcess(scene, ratio);
	/**
	* Texture Adder post-process
	*/
	private function _createTextureAdderPostProcess(scene, ratio);
	/**
	* Down sample X4 post-process
	*/
	private function _createDownSampleX4PostProcess(scene, ratio);
	/**
	* Bright pass post-process
	*/
	private function _createBrightPassPostProcess(scene, ratio);
	/**
	* Luminance generator. Creates the luminance post-process and down sample post-processes
	*/
	private function _createLuminanceGeneratorPostProcess(scene);
	/**
	* Gaussian blur post-processes. Horizontal and Vertical
	*/
	private function _createGaussianBlurPostProcess(scene, ratio);
}