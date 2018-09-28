package babylonjs.babylon;

/**
 * The default rendering pipeline can be added to a scene to apply common post processing effects such as anti-aliasing or depth of field.
 * See https://doc.babylonjs.com/how_to/using_default_rendering_pipeline
 */
@:native("BABYLON.DefaultRenderingPipeline")
extern class DefaultRenderingPipeline extends PostProcessRenderPipeline
	implements IDisposable
	implements IAnimatable
{
	private var _scene : Dynamic;
	private var _originalCameras : Dynamic;
	/**
	 * ID of the sharpen post process,
	 */
	private var SharpenPostProcessId(default, null) : Dynamic;
	/**
	 * ID of the image processing post process;
	 */
	var ImageProcessingPostProcessId(default, null) : String;
	/**
	 * ID of the Fast Approximate Anti-Aliasing post process;
	 */
	var FxaaPostProcessId(default, null) : String;
	/**
	 * ID of the chromatic aberration post process,
	 */
	private var ChromaticAberrationPostProcessId(default, null) : Dynamic;
	/**
	 * ID of the grain post process
	 */
	private var GrainPostProcessId(default, null) : Dynamic;
	/**
	 * Sharpen post process which will apply a sharpen convolution to enhance edges
	 */
	var sharpen : SharpenPostProcess;
	private var _sharpenEffect : Dynamic;
	private var bloom : Dynamic;
	/**
	 * Depth of field effect, applies a blur based on how far away objects are from the focus distance.
	 */
	var depthOfField : DepthOfFieldEffect;
	/**
	 * The Fast Approximate Anti-Aliasing post process which attemps to remove aliasing from an image.
	 */
	var fxaa : FxaaPostProcess;
	/**
	 * Image post processing pass used to perform operations such as tone mapping or color grading.
	 */
	var imageProcessing : ImageProcessingPostProcess;
	/**
	 * Chromatic aberration post process which will shift rgb colors in the image
	 */
	var chromaticAberration : ChromaticAberrationPostProcess;
	private var _chromaticAberrationEffect : Dynamic;
	/**
	 * Grain post process which add noise to the image
	 */
	var grain : GrainPostProcess;
	private var _grainEffect : Dynamic;
	/**
	 * Animations which can be used to tweak settings over a period of time
	 */
	var animations : Array<Animation>;
	private var _imageProcessingConfigurationObserver : Dynamic;
	private var _sharpenEnabled : Dynamic;
	private var _bloomEnabled : Dynamic;
	private var _depthOfFieldEnabled : Dynamic;
	private var _depthOfFieldBlurLevel : Dynamic;
	private var _fxaaEnabled : Dynamic;
	private var _imageProcessingEnabled : Dynamic;
	private var _defaultPipelineTextureType : Dynamic;
	private var _bloomScale : Dynamic;
	private var _chromaticAberrationEnabled : Dynamic;
	private var _grainEnabled : Dynamic;
	private var _buildAllowed : Dynamic;
	/**
	 * Enable or disable the sharpen process from the pipeline
	 */
	var sharpenEnabled : Bool;
	private var _resizeObserver : Dynamic;
	private var _hardwareScaleLevel : Dynamic;
	private var _bloomKernel : Dynamic;
	/**
	 * Specifies the size of the bloom blur kernel, relative to the final output size
	 */
	var bloomKernel : Float;
	/**
	 * Specifies the weight of the bloom in the final rendering
	 */
	private var _bloomWeight : Dynamic;
	/**
	 * Specifies the luma threshold for the area that will be blurred by the bloom
	 */
	private var _bloomThreshold : Dynamic;
	private var _hdr : Dynamic;
	/**
	 * The strength of the bloom.
	 */
	var bloomWeight : Float;
	/**
	 * The strength of the bloom.
	 */
	var bloomThreshold : Float;
	/**
	 * The scale of the bloom, lower value will provide better performance.
	 */
	var bloomScale : Float;
	/**
	 * Enable or disable the bloom from the pipeline
	 */
	var bloomEnabled : Bool;
	/**
	 * If the depth of field is enabled.
	 */
	var depthOfFieldEnabled : Bool;
	/**
	 * Blur level of the depth of field effect. (Higher blur will effect performance)
	 */
	var depthOfFieldBlurLevel : DepthOfFieldEffectBlurLevel;
	/**
	 * If the anti aliasing is enabled.
	 */
	var fxaaEnabled : Bool;
	private var _samples : Dynamic;
	/**
	 * MSAA sample count, setting this to 4 will provide 4x anti aliasing. (default: 1)
	 */
	var samples : Float;
	/**
	 * If image processing is enabled.
	 */
	var imageProcessingEnabled : Bool;
	/**
	 * Enable or disable the chromaticAberration process from the pipeline
	 */
	var chromaticAberrationEnabled : Bool;
	/**
	 * Enable or disable the grain process from the pipeline
	 */
	var grainEnabled : Bool;
	private var _hasCleared : Dynamic;
	private var _prevPostProcess : Dynamic;
	private var _prevPrevPostProcess : Dynamic;

	private function _rebuildBloom() : Dynamic;
	/**
	 * The default rendering pipeline can be added to a scene to apply common post processing effects such as anti-aliasing or depth of field.
	 * See https://doc.babylonjs.com/how_to/using_default_rendering_pipeline
	 */
	@:overload(function(name:String, hdr:Bool, scene:Scene,?cameras:Array<Camera>,?automaticBuild:Bool): Void{})
	function new(engine:Engine, name:String) : Void;
	/**
	 * Force the compilation of the entire pipeline.
	 */
	function prepare() : Void;
	private function _setAutoClearAndTextureSharing(postProcess:Dynamic, ?skipTextureSharing:Dynamic) : Dynamic;
	private function _buildPipeline() : Dynamic;
	private function _disposePostProcesses(?disposeNonRecreated:Dynamic) : Dynamic;
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
	static function Parse(source:Dynamic, scene:Scene, rootUrl:String) : DefaultRenderingPipeline;
}