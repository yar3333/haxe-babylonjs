package babylonjs;

@:native("BABYLON.Vector4")
extern class Vector4
{
	var x : Float;
	var y : Float;
	var z : Float;
	var w : Float;

	function new(x:Float, y:Float, z:Float, w:Float) : Void;
	/**
	 * Returns the string with the Vector4 coordinates.
	 */
	function toString() : String;
	/**
	 * Returns the string "Vector4".
	 */
	function getClassName() : String;
	/**
	 * Returns the Vector4 hash code.
	 */
	function getHashCode() : Float;
	/**
	 * Returns a new array populated with 4 elements : the Vector4 coordinates.
	 */
	function asArray() : Array<Float>;
	/**
	 * Populates the given array from the given index with the Vector4 coordinates.
	 * Returns the Vector4.
	 */
	function toArray(array:FloatArray, ?index:Float) : Vector4;
	/**
	 * Adds the given vector to the current Vector4.
	 * Returns the updated Vector4.
	 */
	function addInPlace(otherVector:Vector4) : Vector4;
	/**
	 * Returns a new Vector4 as the result of the addition of the current Vector4 and the given one.
	 */
	function add(otherVector:Vector4) : Vector4;
	/**
	 * Updates the given vector "result" with the result of the addition of the current Vector4 and the given one.
	 * Returns the current Vector4.
	 */
	function addToRef(otherVector:Vector4, result:Vector4) : Vector4;
	/**
	 * Subtract in place the given vector from the current Vector4.
	 * Returns the updated Vector4.
	 */
	function subtractInPlace(otherVector:Vector4) : Vector4;
	/**
	 * Returns a new Vector4 with the result of the subtraction of the given vector from the current Vector4.
	 */
	function subtract(otherVector:Vector4) : Vector4;
	/**
	 * Sets the given vector "result" with the result of the subtraction of the given vector from the current Vector4.
	 * Returns the current Vector4.
	 */
	function subtractToRef(otherVector:Vector4, result:Vector4) : Vector4;
	/**
	 * Returns a new Vector4 set with the result of the subtraction of the given floats from the current Vector4 coordinates.
	 */
	function subtractFromFloats(x:Float, y:Float, z:Float, w:Float) : Vector4;
	/**
	 * Sets the given vector "result" set with the result of the subtraction of the given floats from the current Vector4 coordinates.
	 * Returns the current Vector4.
	 */
	function subtractFromFloatsToRef(x:Float, y:Float, z:Float, w:Float, result:Vector4) : Vector4;
	/**
	 * Returns a new Vector4 set with the current Vector4 negated coordinates.
	 */
	function negate() : Vector4;
	/**
	 * Multiplies the current Vector4 coordinates by scale (float).
	 * Returns the updated Vector4.
	 */
	function scaleInPlace(scale:Float) : Vector4;
	/**
	 * Returns a new Vector4 set with the current Vector4 coordinates multiplied by scale (float).
	 */
	function scale(scale:Float) : Vector4;
	/**
	 * Sets the given vector "result" with the current Vector4 coordinates multiplied by scale (float).
	 * Returns the current Vector4.
	 */
	function scaleToRef(scale:Float, result:Vector4) : Vector4;
	/**
	 * Scale the current Vector4 values by a factor and add the result to a given Vector4
	 * @returns the unmodified current Vector4
	 */
	function scaleAndAddToRef(scale:Float, result:Vector4) : Vector4;
	/**
	 * Boolean : True if the current Vector4 coordinates are stricly equal to the given ones.
	 */
	function equals(otherVector:Vector4) : Bool;
	/**
	 * Boolean : True if the current Vector4 coordinates are each beneath the distance "epsilon" from the given vector ones.
	 */
	function equalsWithEpsilon(otherVector:Vector4, ?epsilon:Float) : Bool;
	/**
	 * Boolean : True if the given floats are strictly equal to the current Vector4 coordinates.
	 */
	function equalsToFloats(x:Float, y:Float, z:Float, w:Float) : Bool;
	/**
	 * Multiplies in place the current Vector4 by the given one.
	 * Returns the updated Vector4.
	 */
	function multiplyInPlace(otherVector:Vector4) : Vector4;
	/**
	 * Returns a new Vector4 set with the multiplication result of the current Vector4 and the given one.
	 */
	function multiply(otherVector:Vector4) : Vector4;
	/**
	 * Updates the given vector "result" with the multiplication result of the current Vector4 and the given one.
	 * Returns the current Vector4.
	 */
	function multiplyToRef(otherVector:Vector4, result:Vector4) : Vector4;
	/**
	 * Returns a new Vector4 set with the multiplication result of the given floats and the current Vector4 coordinates.
	 */
	function multiplyByFloats(x:Float, y:Float, z:Float, w:Float) : Vector4;
	/**
	 * Returns a new Vector4 set with the division result of the current Vector4 by the given one.
	 */
	function divide(otherVector:Vector4) : Vector4;
	/**
	 * Updates the given vector "result" with the division result of the current Vector4 by the given one.
	 * Returns the current Vector4.
	 */
	function divideToRef(otherVector:Vector4, result:Vector4) : Vector4;
	/**
	 * Divides the current Vector3 coordinates by the given ones.
	 * @returns the updated Vector3.
	 */
	function divideInPlace(otherVector:Vector4) : Vector4;
	/**
	 * Updates the Vector4 coordinates with the minimum values between its own and the given vector ones
	 * @returns the current updated Vector4
	 */
	function minimizeInPlace(other:Vector4) : Vector4;
	/**
	 * Updates the Vector4 coordinates with the maximum values between its own and the given vector ones
	 * @returns the current updated Vector4
	 */
	function maximizeInPlace(other:Vector4) : Vector4;
	/**
	 * Returns the Vector4 length (float).
	 */
	function length() : Float;
	/**
	 * Returns the Vector4 squared length (float).
	 */
	function lengthSquared() : Float;
	/**
	 * Normalizes in place the Vector4.
	 * Returns the updated Vector4.
	 */
	function normalize() : Vector4;
	/**
	 * Returns a new Vector3 from the Vector4 (x, y, z) coordinates.
	 */
	function toVector3() : Vector3;
	/**
	 * Returns a new Vector4 copied from the current one.
	 */
	function clone() : Vector4;
	/**
	 * Updates the current Vector4 with the given one coordinates.
	 * Returns the updated Vector4.
	 */
	function copyFrom(source:Vector4) : Vector4;
	/**
	 * Updates the current Vector4 coordinates with the given floats.
	 * Returns the updated Vector4.
	 */
	function copyFromFloats(x:Float, y:Float, z:Float, w:Float) : Vector4;
	/**
	 * Updates the current Vector4 coordinates with the given floats.
	 * Returns the updated Vector4.
	 */
	function set(x:Float, y:Float, z:Float, w:Float) : Vector4;
	/**
	 * Returns a new Vector4 set from the starting index of the given array.
	 */
	static function FromArray(array:ArrayLike<Float>, ?offset:Float) : Vector4;
	/**
	 * Updates the given vector "result" from the starting index of the given array.
	 */
	static function FromArrayToRef(array:ArrayLike<Float>, offset:Float, result:Vector4) : Void;
	/**
	 * Updates the given vector "result" from the starting index of the given Float32Array.
	 */
	static function FromFloatArrayToRef(array:js.html.Float32Array, offset:Float, result:Vector4) : Void;
	/**
	 * Updates the given vector "result" coordinates from the given floats.
	 */
	static function FromFloatsToRef(x:Float, y:Float, z:Float, w:Float, result:Vector4) : Void;
	/**
	 * Returns a new Vector4 set to (0.0, 0.0, 0.0, 0.0)
	 */
	static function Zero() : Vector4;
	/**
	 * Returns a new Vector4 set to (1.0, 1.0, 1.0, 1.0)
	 */
	static function One() : Vector4;
	/**
	 * Returns a new normalized Vector4 from the given one.
	 */
	static function Normalize(vector:Vector4) : Vector4;
	/**
	 * Updates the given vector "result" from the normalization of the given one.
	 */
	static function NormalizeToRef(vector:Vector4, result:Vector4) : Void;
	static function Minimize(left:Vector4, right:Vector4) : Vector4;
	static function Maximize(left:Vector4, right:Vector4) : Vector4;
	/**
	 * Returns the distance (float) between the vectors "value1" and "value2".
	 */
	static function Distance(value1:Vector4, value2:Vector4) : Float;
	/**
	 * Returns the squared distance (float) between the vectors "value1" and "value2".
	 */
	static function DistanceSquared(value1:Vector4, value2:Vector4) : Float;
	/**
	 * Returns a new Vector4 located at the center between the vectors "value1" and "value2".
	 */
	static function Center(value1:Vector4, value2:Vector4) : Vector4;
	/**
	 * Returns a new Vector4 set with the result of the normal transformation by the given matrix of the given vector.
	 * This methods computes transformed normalized direction vectors only.
	 */
	static function TransformNormal(vector:Vector4, transformation:Matrix) : Vector4;
	/**
	 * Sets the given vector "result" with the result of the normal transformation by the given matrix of the given vector.
	 * This methods computes transformed normalized direction vectors only.
	 */
	static function TransformNormalToRef(vector:Vector4, transformation:Matrix, result:Vector4) : Void;
	/**
	 * Sets the given vector "result" with the result of the normal transformation by the given matrix of the given floats (x, y, z, w).
	 * This methods computes transformed normalized direction vectors only.
	 */
	static function TransformNormalFromFloatsToRef(x:Float, y:Float, z:Float, w:Float, transformation:Matrix, result:Vector4) : Void;
}