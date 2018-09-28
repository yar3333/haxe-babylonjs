package babylonjs.babylon;

@:native("BABYLON.SSAO2RenderingPipeline")
extern class SSAO2RenderingPipeline extends PostProcessRenderPipeline
{
	/**
	 * The PassPostProcess id in the pipeline that contains the original scene color
	 */
	var SSAOOriginalSceneColorEffect : String;
	/**
	 * The SSAO PostProcess id in the pipeline
	 */
	var SSAORenderEffect : String;
	/**
	 * The horizontal blur PostProcess id in the pipeline
	 */
	var SSAOBlurHRenderEffect : String;
	/**
	 * The vertical blur PostProcess id in the pipeline
	 */
	var SSAOBlurVRenderEffect : String;
	/**
	 * The PostProcess id in the pipeline that combines the SSAO-Blur output with the original scene color (SSAOOriginalSceneColorEffect)
	 */
	var SSAOCombineRenderEffect : String;
	/**
	 * The output strength of the SSAO post-process. Default value is 1.0.
	 */
	var totalStrength : Float;
	/**
	 * Maximum depth value to still render AO. A smooth falloff makes the dimming more natural, so there will be no abrupt shading change.
	 */
	var maxZ : Float;
	/**
	 * In order to save performances, SSAO radius is clamped on close geometry. This ratio changes by how much
	 */
	var minZAspect : Float;
	/**
	 * Number of samples used for the SSAO calculations. Default value is 8
	 */
	private var _samples : Dynamic;
	/**
	 * Ratio object used for SSAO ratio and blur ratio
	 */
	private var _ratio : Dynamic;
	/**
	 * Dynamically generated sphere sampler.
	 */
	private var _sampleSphere : Dynamic;
	/**
	 * Blur filter offsets
	 */
	private var _samplerOffsets : Dynamic;
	var samples : Float;
	/**
	 * Are we using bilateral blur ?
	 */
	private var _expensiveBlur : Dynamic;
	var expensiveBlur : Bool;
	/**
	 * The radius around the analyzed pixel used by the SSAO post-process. Default value is 2.0
	 */
	var radius : Float;
	/**
	 * The base color of the SSAO post-process
	 * The final result is "base + ssao" between [0, 1]
	 */
	var base : Float;
	/**
	 * Support test.
	 */
	static var IsSupported(default, null) : Bool;
	private var _scene : Dynamic;
	private var _depthTexture : Dynamic;
	private var _normalTexture : Dynamic;
	private var _randomTexture : Dynamic;
	private var _originalColorPostProcess : Dynamic;
	private var _ssaoPostProcess : Dynamic;
	private var _blurHPostProcess : Dynamic;
	private var _blurVPostProcess : Dynamic;
	private var _ssaoCombinePostProcess : Dynamic;
	private var _firstUpdate : Dynamic;

	@:overload(function(name:String, scene:Scene, ratio:Dynamic,?cameras:Array<Camera>): Void{})
	function new(engine:Engine, name:String) : Void;
	/**
	 * Removes the internal pipeline assets and detatches the pipeline from the scene cameras
	 */
	@:overload(function(?disableGeometryBufferRenderer:Bool): Void{})
	override function dispose() : Void;
	private function _createBlurPostProcess(ssaoRatio:Dynamic, blurRatio:Dynamic) : Dynamic;
	override function _rebuild() : Void;
	private function _generateHemisphere() : Dynamic;
	private function _createSSAOPostProcess(ratio:Dynamic) : Dynamic;
	private function _createSSAOCombinePostProcess(ratio:Dynamic) : Dynamic;
	private function _createRandomTexture() : Dynamic;
	/**
	 * Serialize the rendering pipeline (Used when exporting)
	 * @returns the serialized object
	 */
	function serialize() : Dynamic;
	/**
	 * Parse the serialized pipeline
	 * @returns An instantiated pipeline from the serialized object.
	 */
	static function Parse(source:Dynamic, scene:Scene, rootUrl:String) : SSAO2RenderingPipeline;
}