package babylonjs.babylon;

/**
 * The color grading curves provide additional color adjustmnent that is applied after any color grading transform (3D LUT).
 * They allow basic adjustment of saturation and small exposure adjustments, along with color filter tinting to provide white balance adjustment or more stylistic effects.
 * These are similar to controls found in many professional imaging or colorist software. The global controls are applied to the entire image. For advanced tuning, extra controls are provided to adjust the shadow, midtone and highlight areas of the image;
 * corresponding to low luminance, medium luminance, and high luminance areas respectively.
 */
@:native("BABYLON.ColorCurves")
extern class ColorCurves
{
	private var _dirty : Dynamic;
	private var _tempColor : Dynamic;
	private var _globalCurve : Dynamic;
	private var _highlightsCurve : Dynamic;
	private var _midtonesCurve : Dynamic;
	private var _shadowsCurve : Dynamic;
	private var _positiveCurve : Dynamic;
	private var _negativeCurve : Dynamic;
	private var _globalHue : Dynamic;
	private var _globalDensity : Dynamic;
	private var _globalSaturation : Dynamic;
	private var _globalExposure : Dynamic;
	/**
	 * Gets the global Hue value.
	 * The hue value is a standard HSB hue in the range [0,360] where 0=red, 120=green and 240=blue. The default value is 30 degrees (orange).
	 * Sets the global Hue value.
	 * The hue value is a standard HSB hue in the range [0,360] where 0=red, 120=green and 240=blue. The default value is 30 degrees (orange).
	 */
	var globalHue : Float;
	/**
	 * Gets the global Density value.
	 * The density value is in range [-100,+100] where 0 means the color filter has no effect and +100 means the color filter has maximum effect.
	 * Values less than zero provide a filter of opposite hue.
	 * Sets the global Density value.
	 * The density value is in range [-100,+100] where 0 means the color filter has no effect and +100 means the color filter has maximum effect.
	 * Values less than zero provide a filter of opposite hue.
	 */
	var globalDensity : Float;
	/**
	 * Gets the global Saturation value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase saturation and negative values decrease saturation.
	 * Sets the global Saturation value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase saturation and negative values decrease saturation.
	 */
	var globalSaturation : Float;
	private var _highlightsHue : Dynamic;
	private var _highlightsDensity : Dynamic;
	private var _highlightsSaturation : Dynamic;
	private var _highlightsExposure : Dynamic;
	/**
	 * Gets the highlights Hue value.
	 * The hue value is a standard HSB hue in the range [0,360] where 0=red, 120=green and 240=blue. The default value is 30 degrees (orange).
	 * Sets the highlights Hue value.
	 * The hue value is a standard HSB hue in the range [0,360] where 0=red, 120=green and 240=blue. The default value is 30 degrees (orange).
	 */
	var highlightsHue : Float;
	/**
	 * Gets the highlights Density value.
	 * The density value is in range [-100,+100] where 0 means the color filter has no effect and +100 means the color filter has maximum effect.
	 * Values less than zero provide a filter of opposite hue.
	 * Sets the highlights Density value.
	 * The density value is in range [-100,+100] where 0 means the color filter has no effect and +100 means the color filter has maximum effect.
	 * Values less than zero provide a filter of opposite hue.
	 */
	var highlightsDensity : Float;
	/**
	 * Gets the highlights Saturation value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase saturation and negative values decrease saturation.
	 * Sets the highlights Saturation value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase saturation and negative values decrease saturation.
	 */
	var highlightsSaturation : Float;
	/**
	 * Gets the highlights Exposure value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase exposure and negative values decrease exposure.
	 * Sets the highlights Exposure value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase exposure and negative values decrease exposure.
	 */
	var highlightsExposure : Float;
	private var _midtonesHue : Dynamic;
	private var _midtonesDensity : Dynamic;
	private var _midtonesSaturation : Dynamic;
	private var _midtonesExposure : Dynamic;
	/**
	 * Gets the midtones Hue value.
	 * The hue value is a standard HSB hue in the range [0,360] where 0=red, 120=green and 240=blue. The default value is 30 degrees (orange).
	 * Sets the midtones Hue value.
	 * The hue value is a standard HSB hue in the range [0,360] where 0=red, 120=green and 240=blue. The default value is 30 degrees (orange).
	 */
	var midtonesHue : Float;
	/**
	 * Gets the midtones Density value.
	 * The density value is in range [-100,+100] where 0 means the color filter has no effect and +100 means the color filter has maximum effect.
	 * Values less than zero provide a filter of opposite hue.
	 * Sets the midtones Density value.
	 * The density value is in range [-100,+100] where 0 means the color filter has no effect and +100 means the color filter has maximum effect.
	 * Values less than zero provide a filter of opposite hue.
	 */
	var midtonesDensity : Float;
	/**
	 * Gets the midtones Saturation value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase saturation and negative values decrease saturation.
	 * Sets the midtones Saturation value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase saturation and negative values decrease saturation.
	 */
	var midtonesSaturation : Float;
	/**
	 * Gets the midtones Exposure value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase exposure and negative values decrease exposure.
	 * Sets the midtones Exposure value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase exposure and negative values decrease exposure.
	 */
	var midtonesExposure : Float;
	private var _shadowsHue : Dynamic;
	private var _shadowsDensity : Dynamic;
	private var _shadowsSaturation : Dynamic;
	private var _shadowsExposure : Dynamic;
	/**
	 * Gets the shadows Hue value.
	 * The hue value is a standard HSB hue in the range [0,360] where 0=red, 120=green and 240=blue. The default value is 30 degrees (orange).
	 * Sets the shadows Hue value.
	 * The hue value is a standard HSB hue in the range [0,360] where 0=red, 120=green and 240=blue. The default value is 30 degrees (orange).
	 */
	var shadowsHue : Float;
	/**
	 * Gets the shadows Density value.
	 * The density value is in range [-100,+100] where 0 means the color filter has no effect and +100 means the color filter has maximum effect.
	 * Values less than zero provide a filter of opposite hue.
	 * Sets the shadows Density value.
	 * The density value is in range [-100,+100] where 0 means the color filter has no effect and +100 means the color filter has maximum effect.
	 * Values less than zero provide a filter of opposite hue.
	 */
	var shadowsDensity : Float;
	/**
	 * Gets the shadows Saturation value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase saturation and negative values decrease saturation.
	 * Sets the shadows Saturation value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase saturation and negative values decrease saturation.
	 */
	var shadowsSaturation : Float;
	/**
	 * Gets the shadows Exposure value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase exposure and negative values decrease exposure.
	 * Sets the shadows Exposure value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase exposure and negative values decrease exposure.
	 */
	var shadowsExposure : Float;

	function getClassName() : String;
	/**
	 * Binds the color curves to the shader.
	 */
	static function Bind(colorCurves:ColorCurves, effect:Effect, ?positiveUniform:String, ?neutralUniform:String, ?negativeUniform:String) : Void;
	/**
	 * Prepare the list of uniforms associated with the ColorCurves effects.
	 */
	static function PrepareUniforms(uniformsList:Array<String>) : Void;
	/**
	 * Returns color grading data based on a hue, density, saturation and exposure value.
	 */
	private function getColorGradingDataToRef(hue:Dynamic, density:Dynamic, saturation:Dynamic, exposure:Dynamic, result:Dynamic) : Dynamic;
	/**
	 * Takes an input slider value and returns an adjusted value that provides extra control near the centre.
	 * @returns Adjusted value.
	 */
	private static function applyColorGradingSliderNonlinear(value:Dynamic) : Dynamic;
	/**
	 * Returns an RGBA Color4 based on Hue, Saturation and Brightness (also referred to as value, HSV).
	 * @result An RGBA color represented as Vector4.
	 */
	private static function fromHSBToRef(hue:Dynamic, saturation:Dynamic, brightness:Dynamic, result:Dynamic) : Dynamic;
	/**
	 * Returns a value clamped between min and max
	 * @returns The clamped value.
	 */
	private static function clamp(value:Dynamic, min:Dynamic, max:Dynamic) : Dynamic;
	/**
	 * Clones the current color curve instance.
	 * @return The cloned curves
	 */
	function clone() : ColorCurves;
	/**
	 * Serializes the current color curve instance to a json representation.
	 * @return a JSON representation
	 */
	function serialize() : Dynamic;
	/**
	 * Parses the color curve from a json representation.
	 * @return The parsed curves
	 */
	static function Parse(source:Dynamic) : ColorCurves;
}