package babylonjs;

/**
 * This groups together the common properties used for image processing either in direct forward pass
 * or through post processing effect depending on the use of the image processing pipeline in your scene
 * or not.
 */
@:native("BABYLON.ImageProcessingConfiguration")
extern class ImageProcessingConfiguration
{
	/**
	 * Color curves setup used in the effect if colorCurvesEnabled is set to true
	 */
	var colorCurves : Null<ColorCurves>;
	private var _colorCurvesEnabled : Dynamic;
	/**
	 * Gets wether the color curves effect is enabled.
	 * Sets wether the color curves effect is enabled.
	 */
	var colorCurvesEnabled : Bool;
	/**
	 * Color grading LUT texture used in the effect if colorGradingEnabled is set to true
	 */
	var colorGradingTexture : Null<BaseTexture>;
	private var _colorGradingEnabled : Dynamic;
	/**
	 * Gets wether the color grading effect is enabled.
	 * Sets wether the color grading effect is enabled.
	 */
	var colorGradingEnabled : Bool;
	private var _colorGradingWithGreenDepth : Dynamic;
	/**
	 * Gets wether the color grading effect is using a green depth for the 3d Texture.
	 * Sets wether the color grading effect is using a green depth for the 3d Texture.
	 */
	var colorGradingWithGreenDepth : Bool;
	private var _colorGradingBGR : Dynamic;
	/**
	 * Gets wether the color grading texture contains BGR values.
	 * Sets wether the color grading texture contains BGR values.
	 */
	var colorGradingBGR : Bool;
	var _exposure : Float;
	/**
	 * Gets the Exposure used in the effect.
	 * Sets the Exposure used in the effect.
	 */
	var exposure : Float;
	private var _toneMappingEnabled : Dynamic;
	/**
	 * Gets wether the tone mapping effect is enabled.
	 * Sets wether the tone mapping effect is enabled.
	 */
	var toneMappingEnabled : Bool;
	private var _contrast : Float;
	/**
	 * Gets the contrast used in the effect.
	 * Sets the contrast used in the effect.
	 */
	var contrast : Float;
	/**
	 * Vignette stretch size.
	 */
	var vignetteStretch : Float;
	/**
	 * Vignette centre X Offset.
	 */
	var vignetteCentreX : Float;
	/**
	 * Vignette centre Y Offset.
	 */
	var vignetteCentreY : Float;
	/**
	 * Vignette weight or intensity of the vignette effect.
	 */
	var vignetteWeight : Float;
	/**
	 * Color of the vignette applied on the screen through the chosen blend mode (vignetteBlendMode)
	 * if vignetteEnabled is set to true.
	 */
	var vignetteColor : Color4;
	/**
	 * Camera field of view used by the Vignette effect.
	 */
	var vignetteCameraFov : Float;
	private var _vignetteBlendMode : Dynamic;
	/**
	 * Gets the vignette blend mode allowing different kind of effect.
	 * Sets the vignette blend mode allowing different kind of effect.
	 */
	var vignetteBlendMode : Float;
	private var _vignetteEnabled : Dynamic;
	/**
	 * Gets wether the vignette effect is enabled.
	 * Sets wether the vignette effect is enabled.
	 */
	var vignetteEnabled : Bool;
	private var _applyByPostProcess : Dynamic;
	/**
	 * Gets wether the image processing is applied through a post process or not.
	 * Sets wether the image processing is applied through a post process or not.
	 */
	var applyByPostProcess : Bool;
	private var _isEnabled : Dynamic;
	/**
	 * Gets wether the image processing is enabled or not.
	 * Sets wether the image processing is enabled or not.
	 */
	var isEnabled : Bool;
	/**
	 * An event triggered when the configuration changes and requires Shader to Update some parameters.
	 */
	var onUpdateParameters : Observable<ImageProcessingConfiguration>;
	private static var _VIGNETTEMODE_MULTIPLY : Dynamic;
	private static var _VIGNETTEMODE_OPAQUE : Dynamic;
	/**
	 * Used to apply the vignette as a mix with the pixel color.
	 */
	static var VIGNETTEMODE_MULTIPLY(default, null) : Float;
	/**
	 * Used to apply the vignette as a replacement of the pixel color.
	 */
	static var VIGNETTEMODE_OPAQUE(default, null) : Float;

	/**
	 * Method called each time the image processing information changes requires to recompile the effect.
	 */
	function _updateParameters() : Void;
	function getClassName() : String;
	/**
	 * Prepare the list of uniforms associated with the Image Processing effects.
	 */
	static function PrepareUniforms(uniforms:Array<String>, defines:IImageProcessingConfigurationDefines) : Void;
	/**
	 * Prepare the list of samplers associated with the Image Processing effects.
	 */
	static function PrepareSamplers(samplersList:Array<String>, defines:IImageProcessingConfigurationDefines) : Void;
	/**
	 * Prepare the list of defines associated to the shader.
	 */
	function prepareDefines(defines:IImageProcessingConfigurationDefines, ?forPostProcess:Bool) : Void;
	/**
	 * Returns true if all the image processing information are ready.
	 */
	function isReady() : Bool;
	/**
	 * Binds the image processing to the shader.
	 */
	function bind(effect:Effect, ?aspectRatio:Float) : Void;
	/**
	 * Clones the current image processing instance.
	 * @return The cloned image processing
	 */
	function clone() : ImageProcessingConfiguration;
	/**
	 * Serializes the current image processing instance to a json representation.
	 * @return a JSON representation
	 */
	function serialize() : Dynamic;
	/**
	 * Parses the image processing from a json representation.
	 * @return The parsed image processing
	 */
	static function Parse(source:Dynamic) : ImageProcessingConfiguration;
}