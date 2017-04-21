package babylon;

extern class LensRenderingPipeline extends PostProcessRenderPipeline
{
	/**
	* The chromatic aberration PostProcess id in the pipeline
	* @type {string}
	*/
	var LensChromaticAberrationEffect : String;
	/**
	* The highlights enhancing PostProcess id in the pipeline
	* @type {string}
	*/
	var HighlightsEnhancingEffect : String;
	/**
	* The depth-of-field PostProcess id in the pipeline
	* @type {string}
	*/
	var LensDepthOfFieldEffect : String;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _depthTexture : Dynamic/*UNKNOW_TYPE*/;
	private var _grainTexture : Dynamic/*UNKNOW_TYPE*/;
	private var _chromaticAberrationPostProcess : Dynamic/*UNKNOW_TYPE*/;
	private var _highlightsPostProcess : Dynamic/*UNKNOW_TYPE*/;
	private var _depthOfFieldPostProcess : Dynamic/*UNKNOW_TYPE*/;
	private var _edgeBlur : Dynamic/*UNKNOW_TYPE*/;
	private var _grainAmount : Dynamic/*UNKNOW_TYPE*/;
	private var _chromaticAberration : Dynamic/*UNKNOW_TYPE*/;
	private var _distortion : Dynamic/*UNKNOW_TYPE*/;
	private var _highlightsGain : Dynamic/*UNKNOW_TYPE*/;
	private var _highlightsThreshold : Dynamic/*UNKNOW_TYPE*/;
	private var _dofDistance : Dynamic/*UNKNOW_TYPE*/;
	private var _dofAperture : Dynamic/*UNKNOW_TYPE*/;
	private var _dofDarken : Dynamic/*UNKNOW_TYPE*/;
	private var _dofPentagon : Dynamic/*UNKNOW_TYPE*/;
	private var _blurNoise : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * @constructor
	 *
	 * Effect parameters are as follow:
	 * {
	 *      chromatic_aberration: Float;       // from 0 to x (1 for realism)
	 *      edge_blur: Float;                  // from 0 to x (1 for realism)
	 *      distortion: Float;                 // from 0 to x (1 for realism)
	 *      grain_amount: Float;               // from 0 to 1
	 *      grain_texture: BABYLON.Texture;     // texture to use for grain effect; if unset, use random B&W noise
	 *      dof_focus_distance: Float;         // depth-of-field: focus distance; unset to disable (disabled by default)
	 *      dof_aperture: Float;               // depth-of-field: focus blur bias (default: 1)
	 *      dof_darken: Float;                 // depth-of-field: darken that which is out of focus (from 0 to 1, disabled by default)
	 *      dof_pentagon: Bool;              // depth-of-field: makes a pentagon-like "bokeh" effect
	 *      dof_gain: Float;                   // depth-of-field: highlights gain; unset to disable (disabled by default)
	 *      dof_threshold: Float;              // depth-of-field: highlights threshold (default: 1)
	 *      blur_noise: Bool;                // add a little bit of noise to the blur (default: true)
	 * }
	 * Note: if an effect parameter is unset, effect is disabled
	 *
	 * @param {string} name - The rendering pipeline name
	 * @param {object} parameters - An object containing all parameters (see above)
	 * @param {BABYLON.Scene} scene - The scene linked to this pipeline
	 * @param {number} ratio - The size of the postprocesses (0.5 means that your postprocess will have a width = canvas.width 0.5 and a height = canvas.height 0.5)
	 * @param {BABYLON.Camera[]} cameras - The array of cameras that the rendering pipeline will be attached to
	 */
	function new(name:String, parameters:Dynamic, scene:Scene, ?ratio:Float, ?cameras:Array<Camera>) : Void;
	function setEdgeBlur(amount:Float) : Void;
	function disableEdgeBlur() : Void;
	function setGrainAmount(amount:Float) : Void;
	function disableGrain() : Void;
	function setChromaticAberration(amount:Float) : Void;
	function disableChromaticAberration() : Void;
	function setEdgeDistortion(amount:Float) : Void;
	function disableEdgeDistortion() : Void;
	function setFocusDistance(amount:Float) : Void;
	function disableDepthOfField() : Void;
	function setAperture(amount:Float) : Void;
	function setDarkenOutOfFocus(amount:Float) : Void;
	function enablePentagonBokeh() : Void;
	function disablePentagonBokeh() : Void;
	function enableNoiseBlur() : Void;
	function disableNoiseBlur() : Void;
	function setHighlightsGain(amount:Float) : Void;
	function setHighlightsThreshold(amount:Float) : Void;
	function disableHighlights() : Void;
	/**
	 * Removes the internal pipeline assets and detaches the pipeline from the scene cameras
	 */
	function dispose(?disableDepthRender:Bool) : Void;
	private function _createChromaticAberrationPostProcess(ratio);
	private function _createHighlightsPostProcess(ratio);
	private function _createDepthOfFieldPostProcess(ratio);
	private function _createGrainTexture();
}