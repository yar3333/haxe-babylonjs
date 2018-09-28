package babylonjs.babylon;

/**
 * Specifies the level of max blur that should be applied when using the depth of field effect
 */
@:native("BABYLON.DepthOfFieldEffectBlurLevel")
@:enum abstract DepthOfFieldEffectBlurLevel(Dynamic)
{
	/**
	 * Subtle blur
	 */
	var Low = 0;
	/**
	 * Medium blur
	 */
	var Medium = 1;
	/**
	 * Large blur
	 */
	var High = 2;
}