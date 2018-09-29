package babylonjs;

@:native("BABYLON.LensRenderingPipeline")
extern class LensRenderingPipeline extends PostProcessRenderPipeline
{
	/**
	 * The chromatic aberration PostProcess id in the pipeline
	 */
	var LensChromaticAberrationEffect : String;
	/**
	 * The highlights enhancing PostProcess id in the pipeline
	 */
	var HighlightsEnhancingEffect : String;
	/**
	 * The depth-of-field PostProcess id in the pipeline
	 */
	var LensDepthOfFieldEffect : String;
	private var _scene : Dynamic;
	private var _depthTexture : Dynamic;
	private var _grainTexture : Dynamic;
	private var _chromaticAberrationPostProcess : Dynamic;
	private var _highlightsPostProcess : Dynamic;
	private var _depthOfFieldPostProcess : Dynamic;
	private var _edgeBlur : Dynamic;
	private var _grainAmount : Dynamic;
	private var _chromaticAberration : Dynamic;
	private var _distortion : Dynamic;
	private var _highlightsGain : Dynamic;
	private var _highlightsThreshold : Dynamic;
	private var _dofDistance : Dynamic;
	private var _dofAperture : Dynamic;
	private var _dofDarken : Dynamic;
	private var _dofPentagon : Dynamic;
	private var _blurNoise : Dynamic;

	@:overload(function(name:String, parameters:Dynamic, scene:Scene,?ratio:Float,?cameras:Array<Camera>): Void{})
	function new(engine:Engine, name:String) : Void;
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
	@:overload(function(?disableDepthRender:Bool): Void{})
	override function dispose() : Void;
	private function _createChromaticAberrationPostProcess(ratio:Dynamic) : Dynamic;
	private function _createHighlightsPostProcess(ratio:Dynamic) : Dynamic;
	private function _createDepthOfFieldPostProcess(ratio:Dynamic) : Dynamic;
	private function _createGrainTexture() : Dynamic;
}