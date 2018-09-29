package babylonjs;

@:native("BABYLON.Scalar")
extern class Scalar
{
	/**
	 * Two pi constants convenient for computation.
	 */
	static var TwoPi : Float;

	/**
	 * Boolean : true if the absolute difference between a and b is lower than epsilon (default = 1.401298E-45)
	 */
	static function WithinEpsilon(a:Float, b:Float, ?epsilon:Float) : Bool;
	/**
	 * Returns a string : the upper case translation of the number i to hexadecimal.
	 */
	static function ToHex(i:Int) : String;
	/**
	 * Returns -1 if value is negative and +1 is value is positive.
	 * Returns the value itself if it's equal to zero.
	 */
	static function Sign(value:Float) : Float;
	/**
	 * Returns the value itself if it's between min and max.
	 * Returns min if the value is lower than min.
	 * Returns max if the value is greater than max.
	 */
	static function Clamp(value:Float, ?min:Float, ?max:Float) : Float;
	/**
	 * Returns the log2 of value.
	 */
	static function Log2(value:Float) : Float;
	/**
	 * Loops the value, so that it is never larger than length and never smaller than 0.
	 * 
	 * This is similar to the modulo operator but it works with floating point numbers.
	 * For example, using 3.0 for t and 2.5 for length, the result would be 0.5.
	 * With t = 5 and length = 2.5, the result would be 0.0.
	 * Note, however, that the behaviour is not defined for negative numbers as it is for the modulo operator
	 */
	static function Repeat(value:Float, length:Float) : Float;
	/**
	 * Normalize the value between 0.0 and 1.0 using min and max values
	 */
	static function Normalize(value:Float, min:Float, max:Float) : Float;
	/**
	 * Denormalize the value from 0.0 and 1.0 using min and max values
	 */
	static function Denormalize(normalized:Float, min:Float, max:Float) : Float;
	/**
	 * Calculates the shortest difference between two given angles given in degrees.
	 */
	static function DeltaAngle(current:Float, target:Float) : Float;
	/**
	 * PingPongs the value t, so that it is never larger than length and never smaller than 0.
	 * 
	 * The returned value will move back and forth between 0 and length
	 */
	static function PingPong(tx:Float, length:Float) : Float;
	/**
	 * Interpolates between min and max with smoothing at the limits.
	 * 
	 * This function interpolates between min and max in a similar way to Lerp. However, the interpolation will gradually speed up
	 * from the start and slow down toward the end. This is useful for creating natural-looking animation, fading and other transitions.
	 */
	static function SmoothStep(from:Float, to:Float, tx:Float) : Float;
	/**
	 * Moves a value current towards target.
	 * 
	 * This is essentially the same as Mathf.Lerp but instead the function will ensure that the speed never exceeds maxDelta.
	 * Negative values of maxDelta pushes the value away from target.
	 */
	static function MoveTowards(current:Float, target:Float, maxDelta:Float) : Float;
	/**
	 * Same as MoveTowards but makes sure the values interpolate correctly when they wrap around 360 degrees.
	 * 
	 * Variables current and target are assumed to be in degrees. For optimization reasons, negative values of maxDelta
	 *  are not supported and may cause oscillation. To push current away from a target angle, add 180 to that angle instead.
	 */
	static function MoveTowardsAngle(current:Float, target:Float, maxDelta:Float) : Float;
	/**
	 * Creates a new scalar with values linearly interpolated of "amount" between the start scalar and the end scalar.
	 */
	static function Lerp(start:Float, end:Float, amount:Float) : Float;
	/**
	 * Same as Lerp but makes sure the values interpolate correctly when they wrap around 360 degrees.
	 * The parameter t is clamped to the range [0, 1]. Variables a and b are assumed to be in degrees.
	 */
	static function LerpAngle(start:Float, end:Float, amount:Float) : Float;
	/**
	 * Calculates the linear parameter t that produces the interpolant value within the range [a, b].
	 */
	static function InverseLerp(a:Float, b:Float, value:Float) : Float;
	/**
	 * Returns a new scalar located for "amount" (float) on the Hermite spline defined by the scalars "value1", "value3", "tangent1", "tangent2".
	 */
	static function Hermite(value1:Float, tangent1:Float, value2:Float, tangent2:Float, amount:Float) : Float;
	/**
	 * Returns a random float number between and min and max values
	 */
	static function RandomRange(min:Float, max:Float) : Float;
	/**
	 * This function returns percentage of a number in a given range.
	 * 
	 * RangeToPercent(40,20,60) will return 0.5 (50%)
	 * RangeToPercent(34,0,100) will return 0.34 (34%)
	 */
	static function RangeToPercent(number:Float, min:Float, max:Float) : Float;
	/**
	 * This function returns number that corresponds to the percentage in a given range.
	 * 
	 * PercentToRange(0.34,0,100) will return 34.
	 */
	static function PercentToRange(percent:Float, min:Float, max:Float) : Float;
	/**
	 * Returns the angle converted to equivalent value between -Math.PI and Math.PI radians.
	 * @return The converted angle.
	 */
	static function NormalizeRadians(angle:Float) : Float;
}