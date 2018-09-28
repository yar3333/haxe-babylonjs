package babylonjs.babylon;

extern interface IAnimationKey
{
	/**
	 * Frame of the key frame
	 */
	var frame : Float;
	/**
	 * Value at the specifies key frame
	 */
	var value : Dynamic;
	/**
	 * The input tangent for the cubic hermite spline
	 */
	@:optional var inTangent : Dynamic;
	/**
	 * The output tangent for the cubic hermite spline
	 */
	@:optional var outTangent : Dynamic;
	/**
	 * The animation interpolation type
	 */
	@:optional var interpolation : AnimationKeyInterpolation;
}