package babylonjs.babylon;

/**
 * Class used to override all child animations of a given target
 */
@:native("BABYLON.AnimationPropertiesOverride")
extern class AnimationPropertiesOverride
{
	/**
	 * Gets or sets a value indicating if animation blending must be used
	 */
	var enableBlending : Bool;
	/**
	 * Gets or sets the blending speed to use when enableBlending is true
	 */
	var blendingSpeed : Float;
	/**
	 * Gets or sets the default loop mode to use
	 */
	var loopMode : Float;
}