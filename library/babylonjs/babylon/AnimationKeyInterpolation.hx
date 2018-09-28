package babylonjs.babylon;

/**
 * Enum for the animation key frame interpolation type
 */
@:native("BABYLON.AnimationKeyInterpolation")
@:enum abstract AnimationKeyInterpolation(Dynamic)
{
	/**
	 * Do not interpolate between keys and use the start key value only. Tangents are ignored
	 */
	var STEP = 1;
}