package babylonjs;

/**
 * Class representing a vector containing 2 coordinates
 */
@:native("BABYLON.Vector2")
extern class Vector2
{
	/**
	 * defines the first coordinate 
	 */
	var x : Float;
	/**
	 * defines the second coordinate 
	 */
	var y : Float;

	/**
	 * Class representing a vector containing 2 coordinates
	 */
	function new(x:Float, y:Float) : Void;
	/**
	 * Gets a string with the Vector2 coordinates
	 * @returns a string with the Vector2 coordinates
	 */
	function toString() : String;
	/**
	 * Gets class name
	 * @returns the string "Vector2"
	 */
	function getClassName() : String;
	/**
	 * Gets current vector hash code
	 * @returns the Vector2 hash code as a number
	 */
	function getHashCode() : Float;
	/**
	 * Sets the Vector2 coordinates in the given array or Float32Array from the given index.
	 * @returns the current Vector2
	 */
	function toArray(array:FloatArray, ?index:Float) : Vector2;
	/**
	 * Copy the current vector to an array
	 * @returns a new array with 2 elements: the Vector2 coordinates.
	 */
	function asArray() : Array<Float>;
	/**
	 * Sets the Vector2 coordinates with the given Vector2 coordinates
	 * @returns the current updated Vector2
	 */
	function copyFrom(source:Vector2) : Vector2;
	/**
	 * Sets the Vector2 coordinates with the given floats
	 * @returns the current updated Vector2
	 */
	function copyFromFloats(x:Float, y:Float) : Vector2;
	/**
	 * Sets the Vector2 coordinates with the given floats
	 * @returns the current updated Vector2
	 */
	function set(x:Float, y:Float) : Vector2;
	/**
	 * Add another vector with the current one
	 * @returns a new Vector2 set with the addition of the current Vector2 and the given one coordinates
	 */
	function add(otherVector:Vector2) : Vector2;
	/**
	 * Sets the "result" coordinates with the addition of the current Vector2 and the given one coordinates
	 * @returns the unmodified current Vector2
	 */
	function addToRef(otherVector:Vector2, result:Vector2) : Vector2;
	/**
	 * Set the Vector2 coordinates by adding the given Vector2 coordinates
	 * @returns the current updated Vector2
	 */
	function addInPlace(otherVector:Vector2) : Vector2;
	/**
	 * Gets a new Vector2 by adding the current Vector2 coordinates to the given Vector3 x, y coordinates
	 * @returns a new Vector2
	 */
	function addVector3(otherVector:Vector3) : Vector2;
	/**
	 * Gets a new Vector2 set with the subtracted coordinates of the given one from the current Vector2
	 * @returns a new Vector2
	 */
	function subtract(otherVector:Vector2) : Vector2;
	/**
	 * Sets the "result" coordinates with the subtraction of the given one from the current Vector2 coordinates.
	 * @returns the unmodified current Vector2
	 */
	function subtractToRef(otherVector:Vector2, result:Vector2) : Vector2;
	/**
	 * Sets the current Vector2 coordinates by subtracting from it the given one coordinates
	 * @returns the current updated Vector2
	 */
	function subtractInPlace(otherVector:Vector2) : Vector2;
	/**
	 * Multiplies in place the current Vector2 coordinates by the given ones
	 * @returns the current updated Vector2
	 */
	function multiplyInPlace(otherVector:Vector2) : Vector2;
	/**
	 * Returns a new Vector2 set with the multiplication of the current Vector2 and the given one coordinates
	 * @returns a new Vector2
	 */
	function multiply(otherVector:Vector2) : Vector2;
	/**
	 * Sets "result" coordinates with the multiplication of the current Vector2 and the given one coordinates
	 * @returns the unmodified current Vector2
	 */
	function multiplyToRef(otherVector:Vector2, result:Vector2) : Vector2;
	/**
	 * Gets a new Vector2 set with the Vector2 coordinates multiplied by the given floats
	 * @returns a new Vector2
	 */
	function multiplyByFloats(x:Float, y:Float) : Vector2;
	/**
	 * Returns a new Vector2 set with the Vector2 coordinates divided by the given one coordinates
	 * @returns a new Vector2
	 */
	function divide(otherVector:Vector2) : Vector2;
	/**
	 * Sets the "result" coordinates with the Vector2 divided by the given one coordinates
	 * @returns the unmodified current Vector2
	 */
	function divideToRef(otherVector:Vector2, result:Vector2) : Vector2;
	/**
	 * Divides the current Vector3 coordinates by the given ones
	 * @returns the current updated Vector2
	 */
	function divideInPlace(otherVector:Vector2) : Vector2;
	/**
	 * Gets a new Vector2 with current Vector2 negated coordinates
	 * @returns a new Vector2
	 */
	function negate() : Vector2;
	/**
	 * Multiply the Vector2 coordinates by scale
	 * @returns the current updated Vector2
	 */
	function scaleInPlace(scale:Float) : Vector2;
	/**
	 * Returns a new Vector2 scaled by "scale" from the current Vector2
	 * @returns a new Vector2
	 */
	function scale(scale:Float) : Vector2;
	/**
	 * Scale the current Vector2 values by a factor to a given Vector2
	 * @returns the unmodified current Vector2
	 */
	function scaleToRef(scale:Float, result:Vector2) : Vector2;
	/**
	 * Scale the current Vector2 values by a factor and add the result to a given Vector2
	 * @returns the unmodified current Vector2
	 */
	function scaleAndAddToRef(scale:Float, result:Vector2) : Vector2;
	/**
	 * Gets a boolean if two vectors are equals
	 * @returns true if the given vector coordinates strictly equal the current Vector2 ones
	 */
	function equals(otherVector:Vector2) : Bool;
	/**
	 * Gets a boolean if two vectors are equals (using an epsilon value)
	 * @returns true if the given vector coordinates are close to the current ones by a distance of epsilon.
	 */
	function equalsWithEpsilon(otherVector:Vector2, ?epsilon:Float) : Bool;
	/**
	 * Gets the length of the vector
	 * @returns the vector length (float)
	 */
	function length() : Float;
	/**
	 * Gets the vector squared length
	 * @returns the vector squared length (float)
	 */
	function lengthSquared() : Float;
	/**
	 * Normalize the vector
	 * @returns the current updated Vector2
	 */
	function normalize() : Vector2;
	/**
	 * Gets a new Vector2 copied from the Vector2
	 * @returns a new Vector2
	 */
	function clone() : Vector2;
	/**
	 * Gets a new Vector2(0, 0)
	 * @returns a new Vector2
	 */
	static function Zero() : Vector2;
	/**
	 * Gets a new Vector2(1, 1)
	 * @returns a new Vector2
	 */
	static function One() : Vector2;
	/**
	 * Gets a new Vector2 set from the given index element of the given array
	 * @returns a new Vector2
	 */
	static function FromArray(array:ArrayLike<Float>, ?offset:Float) : Vector2;
	/**
	 * Sets "result" from the given index element of the given array
	 */
	static function FromArrayToRef(array:ArrayLike<Float>, offset:Float, result:Vector2) : Void;
	/**
	 * Gets a new Vector2 located for "amount" (float) on the CatmullRom spline defined by the given four Vector2
	 * @returns a new Vector2
	 */
	static function CatmullRom(value1:Vector2, value2:Vector2, value3:Vector2, value4:Vector2, amount:Float) : Vector2;
	/**
	 * Returns a new Vector2 set with same the coordinates than "value" ones if the vector "value" is in the square defined by "min" and "max".
	 * If a coordinate of "value" is lower than "min" coordinates, the returned Vector2 is given this "min" coordinate.
	 * If a coordinate of "value" is greater than "max" coordinates, the returned Vector2 is given this "max" coordinate
	 * @returns a new Vector2
	 */
	static function Clamp(value:Vector2, min:Vector2, max:Vector2) : Vector2;
	/**
	 * Returns a new Vector2 located for "amount" (float) on the Hermite spline defined by the vectors "value1", "value3", "tangent1", "tangent2"
	 * @returns a new Vector2
	 */
	static function Hermite(value1:Vector2, tangent1:Vector2, value2:Vector2, tangent2:Vector2, amount:Float) : Vector2;
	/**
	 * Returns a new Vector2 located for "amount" (float) on the linear interpolation between the vector "start" adn the vector "end".
	 * @returns a new Vector2
	 */
	static function Lerp(start:Vector2, end:Vector2, amount:Float) : Vector2;
	/**
	 * Gets the dot product of the vector "left" and the vector "right"
	 * @returns the dot product (float)
	 */
	static function Dot(left:Vector2, right:Vector2) : Float;
	/**
	 * Returns a new Vector2 equal to the normalized given vector
	 * @returns a new Vector2
	 */
	static function Normalize(vector:Vector2) : Vector2;
	/**
	 * Gets a new Vector2 set with the minimal coordinate values from the "left" and "right" vectors
	 * @returns a new Vector2
	 */
	static function Minimize(left:Vector2, right:Vector2) : Vector2;
	/**
	 * Gets a new Vecto2 set with the maximal coordinate values from the "left" and "right" vectors
	 * @returns a new Vector2
	 */
	static function Maximize(left:Vector2, right:Vector2) : Vector2;
	/**
	 * Gets a new Vector2 set with the transformed coordinates of the given vector by the given transformation matrix
	 * @returns a new Vector2
	 */
	static function Transform(vector:Vector2, transformation:Matrix) : Vector2;
	/**
	 * Transforms the given vector coordinates by the given transformation matrix and stores the result in the vector "result" coordinates
	 */
	static function TransformToRef(vector:Vector2, transformation:Matrix, result:Vector2) : Void;
	/**
	 * Determines if a given vector is included in a triangle
	 * @returns true if the point "p" is in the triangle defined by the vertors "p0", "p1", "p2"
	 */
	static function PointInTriangle(p:Vector2, p0:Vector2, p1:Vector2, p2:Vector2) : Bool;
	/**
	 * Gets the distance between the vectors "value1" and "value2"
	 * @returns the distance between vectors
	 */
	static function Distance(value1:Vector2, value2:Vector2) : Float;
	/**
	 * Returns the squared distance between the vectors "value1" and "value2"
	 * @returns the squared distance between vectors
	 */
	static function DistanceSquared(value1:Vector2, value2:Vector2) : Float;
	/**
	 * Gets a new Vector2 located at the center of the vectors "value1" and "value2"
	 * @returns a new Vector2
	 */
	static function Center(value1:Vector2, value2:Vector2) : Vector2;
	/**
	 * Gets the shortest distance (float) between the point "p" and the segment defined by the two points "segA" and "segB".
	 * @returns the shortest distance
	 */
	static function DistanceOfPointFromSegment(p:Vector2, segA:Vector2, segB:Vector2) : Float;
}