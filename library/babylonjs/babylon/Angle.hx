package babylonjs.babylon;

/**
 * Defines angle representation
 */
@:native("BABYLON.Angle")
extern class Angle
{
	private var _radians : Dynamic;

	/**
	 * Defines angle representation
	 */
	function new(radians:Float) : Void;
	/**
	 * Get value in degrees
	 * @returns the Angle value in degrees (float)
	 */
	function degrees() : Float;
	/**
	 * Get value in radians
	 * @returns the Angle value in radians (float)
	 */
	function radians() : Float;
	/**
	 * Gets a new Angle object valued with the angle value in radians between the two given vectors
	 * @returns a new Angle
	 */
	static function BetweenTwoPoints(a:Vector2, b:Vector2) : Angle;
	/**
	 * Gets a new Angle object from the given float in radians
	 * @returns a new Angle
	 */
	static function FromRadians(radians:Float) : Angle;
	/**
	 * Gets a new Angle object from the given float in degrees
	 * @returns a new Angle
	 */
	static function FromDegrees(degrees:Float) : Angle;
}