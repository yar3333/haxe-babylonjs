package babylon;

extern class StandardRenderingPipeline extends PostProcessRenderPipeline implements IDisposable implements IAnimatable
{
	/**
	* Public members
	*/
	var originalPostProcess : PostProcess;
	var downSampleX4PostProcess : PostProcess;
	var brightPassPostProcess : PostProcess;
	var gaussianBlurHPostProcesses : Array<PostProcess>;
	var gaussianBlurVPostProcesses : Array<PostProcess>;
	var textureAdderPostProcess : PostProcess;
	var textureAdderFinalPostProcess : PostProcess;
	var lensFlarePostProcess : PostProcess;
	var lensFlareComposePostProcess : PostProcess;
	var depthOfFieldPostProcess : PostProcess;
	var brightThreshold : Float;
	var blurWidth : Float;
	var gaussianCoefficient : Float;
	var gaussianMean : Float;
	var gaussianStandardDeviation : Float;
	var exposure : Float;
	var lensTexture : Texture;
	var lensColorTexture : Texture;
	var lensFlareStrength : Float;
	var lensFlareGhostDispersal : Float;
	var lensFlareHaloWidth : Float;
	var lensFlareDistortionStrength : Float;
	var lensStarTexture : Texture;
	var lensFlareDirtTexture : Texture;
	var depthOfFieldDistance : Float;
	var animations : Array<Animation>;
	/**
	* Private members
	*/
	private var _scene : Dynamic/*UNKNOW_TYPE*/;
	private var _depthRenderer : Dynamic/*UNKNOW_TYPE*/;
	private var _depthOfFieldEnabled : Dynamic/*UNKNOW_TYPE*/;
	private var _lensFlareEnabled : Dynamic/*UNKNOW_TYPE*/;
	var DepthOfFieldEnabled : Bool;
	var LensFlareEnabled : Bool;
	/**
	 * @constructor
	 * @param {string} name - The rendering pipeline name
	 * @param {BABYLON.Scene} scene - The scene linked to this pipeline
	 * @param {any} ratio - The size of the postprocesses (0.5 means that your postprocess will have a width = canvas.width 0.5 and a height = canvas.height 0.5)
	 * @param {BABYLON.PostProcess} originalPostProcess - the custom original color post-process. Must be "reusable". Can be null.
	 * @param {BABYLON.Camera[]} cameras - The array of cameras that the rendering pipeline will be attached to
	 */
	function new(name:String, scene:Scene, ratio:Float, ?originalPostProcess:PostProcess, ?cameras:Array<Camera>) : Void;
	private function _createDownSampleX4PostProcess(scene, ratio);
	private function _createBrightPassPostProcess(scene, ratio);
	private function _createGaussianBlurPostProcesses(scene, ratio, indice);
	private function _createTextureAdderPostProcess(scene, ratio);
	private function _createLensFlarePostProcess(scene, ratio);
	private function _createDepthOfFieldPostProcess(scene, ratio);
	function dispose() : Void;
}