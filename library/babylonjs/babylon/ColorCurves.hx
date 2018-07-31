package babylon;

extern class ColorCurves
{
	private var _dirty : Dynamic/*UNKNOW_TYPE*/;
	private var _tempColor : Dynamic/*UNKNOW_TYPE*/;
	private var _globalCurve : Dynamic/*UNKNOW_TYPE*/;
	private var _highlightsCurve : Dynamic/*UNKNOW_TYPE*/;
	private var _midtonesCurve : Dynamic/*UNKNOW_TYPE*/;
	private var _shadowsCurve : Dynamic/*UNKNOW_TYPE*/;
	private var _positiveCurve : Dynamic/*UNKNOW_TYPE*/;
	private var _negativeCurve : Dynamic/*UNKNOW_TYPE*/;
	private var _globalHue : Dynamic/*UNKNOW_TYPE*/;
	private var _globalDensity : Dynamic/*UNKNOW_TYPE*/;
	private var _globalSaturation : Dynamic/*UNKNOW_TYPE*/;
	private var _globalExposure : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * Gets the global Hue value.
	 * The hue value is a standard HSB hue in the range [0,360] where 0=red, 120=green and 240=blue. The default value is 30 degrees (orange).
	 */
	/**
	 * Sets the global Hue value.
	 * The hue value is a standard HSB hue in the range [0,360] where 0=red, 120=green and 240=blue. The default value is 30 degrees (orange).
	 */
	var GlobalHue : Float;
	/**
	 * Gets the global Density value.
	 * The density value is in range [-100,+100] where 0 means the color filter has no effect and +100 means the color filter has maximum effect.
	 * Values less than zero provide a filter of opposite hue.
	 */
	/**
	 * Sets the global Density value.
	 * The density value is in range [-100,+100] where 0 means the color filter has no effect and +100 means the color filter has maximum effect.
	 * Values less than zero provide a filter of opposite hue.
	 */
	var GlobalDensity : Float;
	/**
	 * Gets the global Saturation value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase saturation and negative values decrease saturation.
	 */
	/**
	 * Sets the global Saturation value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase saturation and negative values decrease saturation.
	 */
	var GlobalSaturation : Float;
	private var _highlightsHue : Dynamic/*UNKNOW_TYPE*/;
	private var _highlightsDensity : Dynamic/*UNKNOW_TYPE*/;
	private var _highlightsSaturation : Dynamic/*UNKNOW_TYPE*/;
	private var _highlightsExposure : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * Gets the highlights Hue value.
	 * The hue value is a standard HSB hue in the range [0,360] where 0=red, 120=green and 240=blue. The default value is 30 degrees (orange).
	 */
	/**
	 * Sets the highlights Hue value.
	 * The hue value is a standard HSB hue in the range [0,360] where 0=red, 120=green and 240=blue. The default value is 30 degrees (orange).
	 */
	var HighlightsHue : Float;
	/**
	 * Gets the highlights Density value.
	 * The density value is in range [-100,+100] where 0 means the color filter has no effect and +100 means the color filter has maximum effect.
	 * Values less than zero provide a filter of opposite hue.
	 */
	/**
	 * Sets the highlights Density value.
	 * The density value is in range [-100,+100] where 0 means the color filter has no effect and +100 means the color filter has maximum effect.
	 * Values less than zero provide a filter of opposite hue.
	 */
	var HighlightsDensity : Float;
	/**
	 * Gets the highlights Saturation value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase saturation and negative values decrease saturation.
	 */
	/**
	 * Sets the highlights Saturation value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase saturation and negative values decrease saturation.
	 */
	var HighlightsSaturation : Float;
	/**
	 * Gets the highlights Exposure value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase exposure and negative values decrease exposure.
	 */
	/**
	 * Sets the highlights Exposure value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase exposure and negative values decrease exposure.
	 */
	var HighlightsExposure : Float;
	private var _midtonesHue : Dynamic/*UNKNOW_TYPE*/;
	private var _midtonesDensity : Dynamic/*UNKNOW_TYPE*/;
	private var _midtonesSaturation : Dynamic/*UNKNOW_TYPE*/;
	private var _midtonesExposure : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * Gets the midtones Hue value.
	 * The hue value is a standard HSB hue in the range [0,360] where 0=red, 120=green and 240=blue. The default value is 30 degrees (orange).
	 */
	/**
	 * Sets the midtones Hue value.
	 * The hue value is a standard HSB hue in the range [0,360] where 0=red, 120=green and 240=blue. The default value is 30 degrees (orange).
	 */
	var MidtonesHue : Float;
	/**
	 * Gets the midtones Density value.
	 * The density value is in range [-100,+100] where 0 means the color filter has no effect and +100 means the color filter has maximum effect.
	 * Values less than zero provide a filter of opposite hue.
	 */
	/**
	 * Sets the midtones Density value.
	 * The density value is in range [-100,+100] where 0 means the color filter has no effect and +100 means the color filter has maximum effect.
	 * Values less than zero provide a filter of opposite hue.
	 */
	var MidtonesDensity : Float;
	/**
	 * Gets the midtones Saturation value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase saturation and negative values decrease saturation.
	 */
	/**
	 * Sets the midtones Saturation value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase saturation and negative values decrease saturation.
	 */
	var MidtonesSaturation : Float;
	/**
	 * Gets the midtones Exposure value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase exposure and negative values decrease exposure.
	 */
	/**
	 * Sets the midtones Exposure value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase exposure and negative values decrease exposure.
	 */
	var MidtonesExposure : Float;
	private var _shadowsHue : Dynamic/*UNKNOW_TYPE*/;
	private var _shadowsDensity : Dynamic/*UNKNOW_TYPE*/;
	private var _shadowsSaturation : Dynamic/*UNKNOW_TYPE*/;
	private var _shadowsExposure : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * Gets the shadows Hue value.
	 * The hue value is a standard HSB hue in the range [0,360] where 0=red, 120=green and 240=blue. The default value is 30 degrees (orange).
	 */
	/**
	 * Sets the shadows Hue value.
	 * The hue value is a standard HSB hue in the range [0,360] where 0=red, 120=green and 240=blue. The default value is 30 degrees (orange).
	 */
	var ShadowsHue : Float;
	/**
	 * Gets the shadows Density value.
	 * The density value is in range [-100,+100] where 0 means the color filter has no effect and +100 means the color filter has maximum effect.
	 * Values less than zero provide a filter of opposite hue.
	 */
	/**
	 * Sets the shadows Density value.
	 * The density value is in range [-100,+100] where 0 means the color filter has no effect and +100 means the color filter has maximum effect.
	 * Values less than zero provide a filter of opposite hue.
	 */
	var ShadowsDensity : Float;
	/**
	 * Gets the shadows Saturation value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase saturation and negative values decrease saturation.
	 */
	/**
	 * Sets the shadows Saturation value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase saturation and negative values decrease saturation.
	 */
	var ShadowsSaturation : Float;
	/**
	 * Gets the shadows Exposure value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase exposure and negative values decrease exposure.
	 */
	/**
	 * Sets the shadows Exposure value.
	 * This is an adjustment value in the range [-100,+100], where the default value of 0.0 makes no adjustment, positive values increase exposure and negative values decrease exposure.
	 */
	var ShadowsExposure : Float;
	/**
	 * Binds the color curves to the shader.
	 * @param colorCurves The color curve to bind
	 * @param effect The effect to bind to
	 */
	static function Bind(colorCurves:ColorCurves, effect:Effect) : Void;
	/**
	 * Prepare the list of uniforms associated with the ColorCurves effects.
	 * @param uniformsList The list of uniforms used in the effect
	 */
	static function PrepareUniforms(uniformsList:Array<String>) : Void;
	/**
	 * Returns color grading data based on a hue, density, saturation and exposure value.
	 * @param filterHue The hue of the color filter.
	 * @param filterDensity The density of the color filter.
	 * @param saturation The saturation.
	 * @param exposure The exposure.
	 * @param result The result data container.
	 */
	private function getColorGradingDataToRef(hue, density, saturation, exposure, result);
	/**
	 * Takes an input slider value and returns an adjusted value that provides extra control near the centre.
	 * @param value The input slider value in range [-100,100].
	 * @returns Adjusted value.
	 */
	private static function applyColorGradingSliderNonlinear(value);
	/**
	 * Returns an RGBA Color4 based on Hue, Saturation and Brightness (also referred to as value, HSV).
	 * @param hue The hue (H) input.
	 * @param saturation The saturation (S) input.
	 * @param brightness The brightness (B) input.
	 * @result An RGBA color represented as Vector4.
	 */
	private static function fromHSBToRef(hue, saturation, brightness, result);
	/**
	 * Returns a value clamped between min and max
	 * @param value The value to clamp
	 * @param min The minimum of value
	 * @param max The maximum of value
	 * @returns The clamped value.
	 */
	private static function clamp(value, min, max);
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
	 * @param source the JSON source to parse
	 * @return The parsed curves
	 */
	static function Parse(source:Dynamic) : ColorCurves;
}