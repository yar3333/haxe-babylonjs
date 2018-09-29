package babylonjs;

@:native("BABYLON.StandardRenderingPipeline")
extern class StandardRenderingPipeline extends PostProcessRenderPipeline
	implements IDisposable
	implements IAnimatable
{
	/**
	 * Public members
	 */
	var originalPostProcess : Null<PostProcess>;
	var downSampleX4PostProcess : Null<PostProcess>;
	var brightPassPostProcess : Null<PostProcess>;
	var blurHPostProcesses : Array<PostProcess>;
	var blurVPostProcesses : Array<PostProcess>;
	var textureAdderPostProcess : Null<PostProcess>;
	var volumetricLightPostProcess : Null<PostProcess>;
	var volumetricLightSmoothXPostProcess : Null<BlurPostProcess>;
	var volumetricLightSmoothYPostProcess : Null<BlurPostProcess>;
	var volumetricLightMergePostProces : Null<PostProcess>;
	var volumetricLightFinalPostProcess : Null<PostProcess>;
	var luminancePostProcess : Null<PostProcess>;
	var luminanceDownSamplePostProcesses : Array<PostProcess>;
	var hdrPostProcess : Null<PostProcess>;
	var textureAdderFinalPostProcess : Null<PostProcess>;
	var lensFlareFinalPostProcess : Null<PostProcess>;
	var hdrFinalPostProcess : Null<PostProcess>;
	var lensFlarePostProcess : Null<PostProcess>;
	var lensFlareComposePostProcess : Null<PostProcess>;
	var motionBlurPostProcess : Null<PostProcess>;
	var depthOfFieldPostProcess : Null<PostProcess>;
	var brightThreshold : Float;
	var blurWidth : Float;
	var horizontalBlur : Bool;
	var exposure : Float;
	var lensTexture : Null<Texture>;
	var volumetricLightCoefficient : Float;
	var volumetricLightPower : Float;
	var volumetricLightBlurScale : Float;
	var sourceLight : Null<haxe.extern.EitherType<SpotLight, DirectionalLight>>;
	var hdrMinimumLuminance : Float;
	var hdrDecreaseRate : Float;
	var hdrIncreaseRate : Float;
	var lensColorTexture : Null<Texture>;
	var lensFlareStrength : Float;
	var lensFlareGhostDispersal : Float;
	var lensFlareHaloWidth : Float;
	var lensFlareDistortionStrength : Float;
	var lensStarTexture : Null<Texture>;
	var lensFlareDirtTexture : Null<Texture>;
	var depthOfFieldDistance : Float;
	var depthOfFieldBlurWidth : Float;
	var motionStrength : Float;
	var animations : Array<Animation>;
	/**
	 * Private members
	 */
	private var _scene : Dynamic;
	private var _currentDepthOfFieldSource : Dynamic;
	private var _basePostProcess : Dynamic;
	private var _hdrCurrentLuminance : Dynamic;
	private var _floatTextureType : Dynamic;
	private var _ratio : Dynamic;
	private var _bloomEnabled : Dynamic;
	private var _depthOfFieldEnabled : Dynamic;
	private var _vlsEnabled : Dynamic;
	private var _lensFlareEnabled : Dynamic;
	private var _hdrEnabled : Dynamic;
	private var _motionBlurEnabled : Dynamic;
	private var _motionBlurSamples : Dynamic;
	private var _volumetricLightStepsCount : Dynamic;
	var BloomEnabled : Bool;
	var DepthOfFieldEnabled : Bool;
	var LensFlareEnabled : Bool;
	var HDREnabled : Bool;
	var VLSEnabled : Bool;
	var MotionBlurEnabled : Bool;
	var volumetricLightStepsCount : Float;
	var motionBlurSamples : Float;
	static var LuminanceSteps : Float;

	@:overload(function(name:String, scene:Scene, ratio:Float,?originalPostProcess:Null<PostProcess>,?cameras:Array<Camera>): Void{})
	function new(engine:Engine, name:String) : Void;
	private function _buildPipeline() : Dynamic;
	private function _createDownSampleX4PostProcess(scene:Dynamic, ratio:Dynamic) : Dynamic;
	private function _createBrightPassPostProcess(scene:Dynamic, ratio:Dynamic) : Dynamic;
	private function _createBlurPostProcesses(scene:Dynamic, ratio:Dynamic, indice:Dynamic, ?blurWidthKey:Dynamic) : Dynamic;
	private function _createTextureAdderPostProcess(scene:Dynamic, ratio:Dynamic) : Dynamic;
	private function _createVolumetricLightPostProcess(scene:Dynamic, ratio:Dynamic) : Dynamic;
	private function _createLuminancePostProcesses(scene:Dynamic, textureType:Dynamic) : Dynamic;
	private function _createHdrPostProcess(scene:Dynamic, ratio:Dynamic) : Dynamic;
	private function _createLensFlarePostProcess(scene:Dynamic, ratio:Dynamic) : Dynamic;
	private function _createDepthOfFieldPostProcess(scene:Dynamic, ratio:Dynamic) : Dynamic;
	private function _createMotionBlurPostProcess(scene:Dynamic, ratio:Dynamic) : Dynamic;
	private function _getDepthTexture() : Dynamic;
	private function _disposePostProcesses() : Dynamic;
	/**
	 * Dispose of the pipeline and stop all post processes
	 */
	override function dispose() : Void;
	/**
	 * Serialize the rendering pipeline (Used when exporting)
	 * @returns the serialized object
	 */
	function serialize() : Dynamic;
	/**
	 * Parse the serialized pipeline
	 * @returns An instantiated pipeline from the serialized object.
	 */
	static function Parse(source:Dynamic, scene:Scene, rootUrl:String) : StandardRenderingPipeline;
}