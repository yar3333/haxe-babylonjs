package babylon;

extern class SSAORenderingPipeline extends PostProcessRenderPipeline
{
	/**
	* The PassPostProcess id in the pipeline that contains the original scene color
	* @type {string}
	*/
	var SSAOOriginalSceneColorEffect : String;
	/**
	* The SSAO PostProcess id in the pipeline
	* @type {string}
	*/
	var SSAORenderEffect : String;
	/**
	* The horizontal blur PostProcess id in the pipeline
	* @type {string}
	*/
	var SSAOBlurHRenderEffect : String;
	/**
	* The vertical blur PostProcess id in the pipeline
	* @type {string}
	*/
	var SSAOBlurVRenderEffect : String;
	/**
	* The PostProcess id in the pipeline that combines the SSAO-Blur output with the original scene color (SSAOOriginalSceneColorEffect)
	* @type {string}
	*/
	var SSAOCombineRenderEffect : String;
	/**
	* The output strength of the SSAO post-process. Default value is 1.0.
	* @type {number}
	*/
	var totalStrength : Float;
	/**
	* The radius around the analyzed pixel used by the SSAO post-process. Default value is 0.0006
	* @type {number}
	*/
	var radius : Float;
	/**
	* Related to fallOff, used to interpolate SSAO samples (first interpolate function input) based on the occlusion difference of each pixel
	* Must not be equal to fallOff and superior to fallOff.
	* Default value is 0.975
	* @type {number}
	*/
	var area : Float;
	/**
	* Related to area, used to interpolate SSAO samples (second interpolate function input) based on the occlusion difference of each pixel
	* Must not be equal to area and inferior to area.
	* Default value is 0.0
	* @type {number}
	*/
	var fallOff : Float;
	/**
	* The base color of the SSAO post-process
	* The final result is "base + ssao" between [0, 1]
	* @type {number}
	*/
	var base : Float;
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _depthTexture : Dynamic/*UNKNOW_TYPE*/;
	private var _randomTexture : Dynamic/*UNKNOW_TYPE*/;
	private var _originalColorPostProcess : Dynamic/*UNKNOW_TYPE*/;
	private var _ssaoPostProcess : Dynamic/*UNKNOW_TYPE*/;
	private var _blurHPostProcess : Dynamic/*UNKNOW_TYPE*/;
	private var _blurVPostProcess : Dynamic/*UNKNOW_TYPE*/;
	private var _ssaoCombinePostProcess : Dynamic/*UNKNOW_TYPE*/;
	private var _firstUpdate : Dynamic/*UNKNOW_TYPE*/;
	private var _ratio : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * @constructor
	 * @param {string} name - The rendering pipeline name
	 * @param {BABYLON.Scene} scene - The scene linked to this pipeline
	 * @param {any} ratio - The size of the postprocesses. Can be a number shared between passes or an object for more precision: { ssaoRatio: 0.5, combineRatio: 1.0 }
	 * @param {BABYLON.Camera[]} cameras - The array of cameras that the rendering pipeline will be attached to
	 */
	function new(name:String, scene:Scene, ratio:Dynamic, ?cameras:Array<Camera>) : Void;
	/**
	 * Returns the horizontal blur PostProcess
	 * @return {BABYLON.BlurPostProcess} The horizontal blur post-process
	 */
	function getBlurHPostProcess() : BlurPostProcess;
	/**
	 * Returns the vertical blur PostProcess
	 * @return {BABYLON.BlurPostProcess} The vertical blur post-process
	 */
	function getBlurVPostProcess() : BlurPostProcess;
	/**
	 * Removes the internal pipeline assets and detatches the pipeline from the scene cameras
	 */
	function dispose(?disableDepthRender:Bool) : Void;
	private function _createBlurPostProcess(ratio);
	private function _createSSAOPostProcess(ratio);
	private function _createSSAOCombinePostProcess(ratio);
	private function _createRandomTexture();
}