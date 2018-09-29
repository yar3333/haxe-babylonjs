package babylonjs;

@:native("BABYLON.SSAORenderingPipeline")
extern class SSAORenderingPipeline extends PostProcessRenderPipeline
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
	 * The radius around the analyzed pixel used by the SSAO post-process. Default value is 0.0006
	 */
	var radius : Float;
	/**
	 * Related to fallOff, used to interpolate SSAO samples (first interpolate function input) based on the occlusion difference of each pixel
	 * Must not be equal to fallOff and superior to fallOff.
	 * Default value is 0.975
	 */
	var area : Float;
	/**
	 * Related to area, used to interpolate SSAO samples (second interpolate function input) based on the occlusion difference of each pixel
	 * Must not be equal to area and inferior to area.
	 * Default value is 0.0
	 */
	var fallOff : Float;
	/**
	 * The base color of the SSAO post-process
	 * The final result is "base + ssao" between [0, 1]
	 */
	var base : Float;
	private var _scene : Dynamic;
	private var _depthTexture : Dynamic;
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
	@:overload(function(?disableDepthRender:Bool): Void{})
	override function dispose() : Void;
	private function _createBlurPostProcess(ratio:Dynamic) : Dynamic;
	override function _rebuild() : Void;
	private function _createSSAOPostProcess(ratio:Dynamic) : Dynamic;
	private function _createSSAOCombinePostProcess(ratio:Dynamic) : Dynamic;
	private function _createRandomTexture() : Dynamic;
}