package babylonjs.babylon;

@:native("BABYLON.ImageProcessingPostProcess")
extern class ImageProcessingPostProcess extends PostProcess
{
	/**
	 * Default configuration related to image processing available in the PBR Material.
	 */
	private var _imageProcessingConfiguration : ImageProcessingConfiguration;
	/**
	 * Gets the image processing configuration used either in this material.
	 * Sets the Default image processing configuration used either in the this material.
	 * 
	 * If sets to null, the scene one is in use.
	 */
	var imageProcessingConfiguration : ImageProcessingConfiguration;
	/**
	 * Keep track of the image processing observer to allow dispose and replace.
	 */
	private var _imageProcessingObserver : Dynamic;
	/**
	 * Gets Color curves setup used in the effect if colorCurvesEnabled is set to true .
	 * Sets Color curves setup used in the effect if colorCurvesEnabled is set to true .
	 */
	var colorCurves : Null<ColorCurves>;
	/**
	 * Gets wether the color curves effect is enabled.
	 * Sets wether the color curves effect is enabled.
	 */
	var colorCurvesEnabled : Bool;
	/**
	 * Gets Color grading LUT texture used in the effect if colorGradingEnabled is set to true.
	 * Sets Color grading LUT texture used in the effect if colorGradingEnabled is set to true.
	 */
	var colorGradingTexture : Null<BaseTexture>;
	/**
	 * Gets wether the color grading effect is enabled.
	 * Gets wether the color grading effect is enabled.
	 */
	var colorGradingEnabled : Bool;
	/**
	 * Gets exposure used in the effect.
	 * Sets exposure used in the effect.
	 */
	var exposure : Float;
	/**
	 * Gets wether tonemapping is enabled or not.
	 * Sets wether tonemapping is enabled or not
	 */
	var toneMappingEnabled : Bool;
	/**
	 * Gets contrast used in the effect.
	 * Sets contrast used in the effect.
	 */
	var contrast : Float;
	/**
	 * Gets Vignette stretch size.
	 * Sets Vignette stretch size.
	 */
	var vignetteStretch : Float;
	/**
	 * Gets Vignette centre X Offset.
	 * Sets Vignette centre X Offset.
	 */
	var vignetteCentreX : Float;
	/**
	 * Gets Vignette centre Y Offset.
	 * Sets Vignette centre Y Offset.
	 */
	var vignetteCentreY : Float;
	/**
	 * Gets Vignette weight or intensity of the vignette effect.
	 * Sets Vignette weight or intensity of the vignette effect.
	 */
	var vignetteWeight : Float;
	/**
	 * Gets Color of the vignette applied on the screen through the chosen blend mode (vignetteBlendMode)
	 * if vignetteEnabled is set to true.
	 * Sets Color of the vignette applied on the screen through the chosen blend mode (vignetteBlendMode)
	 * if vignetteEnabled is set to true.
	 */
	var vignetteColor : Color4;
	/**
	 * Gets Camera field of view used by the Vignette effect.
	 * Sets Camera field of view used by the Vignette effect.
	 */
	var vignetteCameraFov : Float;
	/**
	 * Gets the vignette blend mode allowing different kind of effect.
	 * Sets the vignette blend mode allowing different kind of effect.
	 */
	var vignetteBlendMode : Float;
	/**
	 * Gets wether the vignette effect is enabled.
	 * Sets wether the vignette effect is enabled.
	 */
	var vignetteEnabled : Bool;
	private var _fromLinearSpace : Dynamic;
	/**
	 * Gets wether the input of the processing is in Gamma or Linear Space.
	 * Sets wether the input of the processing is in Gamma or Linear Space.
	 */
	var fromLinearSpace : Bool;
	/**
	 * Defines cache preventing GC.
	 */
	private var _defines : Dynamic;

	/**
	 * Attaches a new image processing configuration to the PBR Material.
	 */
	function _attachImageProcessingConfiguration(configuration:Null<ImageProcessingConfiguration>, ?doNotBuild:Bool) : Void;
	@:overload(function(name:String, options:haxe.extern.EitherType<Float, PostProcessOptions>,?camera:Null<Camera>,?samplingMode:Float,?engine:Engine,?reusable:Bool,?textureType:Float,?imageProcessingConfiguration:ImageProcessingConfiguration): Void{})
	function new(name:String, fragmentUrl:String, parameters:Null<Array<String>>, samplers:Null<Array<String>>, options:haxe.extern.EitherType<Float, PostProcessOptions>, camera:Null<Camera>, ?samplingMode:Float, ?engine:Engine, ?reusable:Bool, ?defines:Null<String>, ?textureType:Float, ?vertexUrl:String, ?indexParameters:Dynamic, ?blockCompilation:Bool) : Void;
	function getClassName() : String;
	function _updateParameters() : Void;
	override function dispose(?camera:Camera) : Void;
}