package babylonjs.babylon;

/**
 * Classed used to store (x,y,z) vector representation
 * A Vector3 is the main object used in 3D geometry
 * It can represent etiher the coordinates of a point the space, either a direction
 * Reminder: Babylon.js uses a left handed forward facing system
 */
@:native("BABYLON.Vector3")
extern class Vector3
{
	/**
	 * Defines the first coordinates (on X axis)
	 */
	var x : Float;
	/**
	 * Defines the second coordinates (on Y axis)
	 */
	var y : Float;
	/**
	 * Defines the third coordinates (on Z axis)
	 */
	var z : Float;
	/**
	 * Gets a boolean indicating that the vector is non uniform meaning x, y or z are not all the same
	 */
	var isNonUniform(default, null) : Bool;
	private static var _viewportMatrixCache : Dynamic;

	/**
	 * Classed used to store (x,y,z) vector representation
	 * A Vector3 is the main object used in 3D geometry
	 * It can represent etiher the coordinates of a point the space, either a direction
	 * Reminder: Babylon.js uses a left handed forward facing system
	 */
	function new(x:Float, y:Float, z:Float) : Void;
	/**
	 * Creates a string representation of the Vector3
	 * @returns a string with the Vector3 coordinates.
	 */
	function toString() : String;
	/**
	 * Gets the class name
	 * @returns the string "Vector3"
	 */
	function getClassName() : String;
	/**
	 * Creates the Vector3 hash code
	 * @returns a number which tends to be unique between Vector3 instances
	 */
	function getHashCode() : Float;
	/**
	 * Creates an array containing three elements : the coordinates of the Vector3
	 * @returns a new array of numbers
	 */
	function asArray() : Array<Float>;
	/**
	 * Populates the given array or Float32Array from the given index with the successive coordinates of the Vector3
	 * @returns the current Vector3
	 */
	function toArray(array:FloatArray, ?index:Float) : Vector3;
	/**
	 * Converts the current Vector3 into a quaternion (considering that the Vector3 contains Euler angles representation of a rotation)
	 * @returns a new Quaternion object, computed from the Vector3 coordinates
	 */
	function toQuaternion() : Quaternion;
	/**
	 * Adds the given vector to the current Vector3
	 * @returns the current updated Vector3
	 */
	function addInPlace(otherVector:Vector3) : Vector3;
	/**
	 * Gets a new Vector3, result of the addition the current Vector3 and the given vector
	 * @returns the resulting Vector3
	 */
	function add(otherVector:Vector3) : Vector3;
	/**
	 * Adds the current Vector3 to the given one and stores the result in the vector "result"
	 * @returns the current Vector3
	 */
	function addToRef(otherVector:Vector3, result:Vector3) : Vector3;
	/**
	 * Subtract the given vector from the current Vector3
	 * @returns the current updated Vector3
	 */
	function subtractInPlace(otherVector:Vector3) : Vector3;
	/**
	 * Returns a new Vector3, result of the subtraction of the given vector from the current Vector3
	 * @returns the resulting Vector3
	 */
	function subtract(otherVector:Vector3) : Vector3;
	/**
	 * Subtracts the given vector from the current Vector3 and stores the result in the vector "result".
	 * @returns the current Vector3
	 */
	function subtractToRef(otherVector:Vector3, result:Vector3) : Vector3;
	/**
	 * Returns a new Vector3 set with the subtraction of the given floats from the current Vector3 coordinates
	 * @returns the resulting Vector3
	 */
	function subtractFromFloats(x:Float, y:Float, z:Float) : Vector3;
	/**
	 * Subtracts the given floats from the current Vector3 coordinates and set the given vector "result" with this result
	 * @returns the current Vector3
	 */
	function subtractFromFloatsToRef(x:Float, y:Float, z:Float, result:Vector3) : Vector3;
	/**
	 * Gets a new Vector3 set with the current Vector3 negated coordinates
	 * @returns a new Vector3
	 */
	function negate() : Vector3;
	/**
	 * Multiplies the Vector3 coordinates by the float "scale"
	 * @returns the current updated Vector3
	 */
	function scaleInPlace(scale:Float) : Vector3;
	/**
	 * Returns a new Vector3 set with the current Vector3 coordinates multiplied by the float "scale"
	 * @returns a new Vector3
	 */
	function scale(scale:Float) : Vector3;
	/**
	 * Multiplies the current Vector3 coordinates by the float "scale" and stores the result in the given vector "result" coordinates
	 * @returns the current Vector3
	 */
	function scaleToRef(scale:Float, result:Vector3) : Vector3;
	/**
	 * Scale the current Vector3 values by a factor and add the result to a given Vector3
	 * @returns the unmodified current Vector3
	 */
	function scaleAndAddToRef(scale:Float, result:Vector3) : Vector3;
	/**
	 * Returns true if the current Vector3 and the given vector coordinates are strictly equal
	 * @returns true if both vectors are equals
	 */
	function equals(otherVector:Vector3) : Bool;
	/**
	 * Returns true if the current Vector3 and the given vector coordinates are distant less than epsilon
	 * @returns true if both vectors are distant less than epsilon
	 */
	function equalsWithEpsilon(otherVector:Vector3, ?epsilon:Float) : Bool;
	/**
	 * Returns true if the current Vector3 coordinates equals the given floats
	 * @returns true if both vectors are equals
	 */
	function equalsToFloats(x:Float, y:Float, z:Float) : Bool;
	/**
	 * Multiplies the current Vector3 coordinates by the given ones
	 * @returns the current updated Vector3
	 */
	function multiplyInPlace(otherVector:Vector3) : Vector3;
	/**
	 * Returns a new Vector3, result of the multiplication of the current Vector3 by the given vector
	 * @returns the new Vector3
	 */
	function multiply(otherVector:Vector3) : Vector3;
	/**
	 * Multiplies the current Vector3 by the given one and stores the result in the given vector "result"
	 * @returns the current Vector3
	 */
	function multiplyToRef(otherVector:Vector3, result:Vector3) : Vector3;
	/**
	 * Returns a new Vector3 set with the result of the mulliplication of the current Vector3 coordinates by the given floats
	 * @returns the new Vector3
	 */
	function multiplyByFloats(x:Float, y:Float, z:Float) : Vector3;
	/**
	 * Returns a new Vector3 set with the result of the division of the current Vector3 coordinates by the given ones
	 * @returns the new Vector3
	 */
	function divide(otherVector:Vector3) : Vector3;
	/**
	 * Divides the current Vector3 coordinates by the given ones and stores the result in the given vector "result"
	 * @returns the current Vector3
	 */
	function divideToRef(otherVector:Vector3, result:Vector3) : Vector3;
	/**
	 * Divides the current Vector3 coordinates by the given ones.
	 * @returns the current updated Vector3
	 */
	function divideInPlace(otherVector:Vector3) : Vector3;
	/**
	 * Updates the current Vector3 with the minimal coordinate values between its and the given vector ones
	 * @returns the current updated Vector3
	 */
	function minimizeInPlace(other:Vector3) : Vector3;
	/**
	 * Updates the current Vector3 with the maximal coordinate values between its and the given vector ones.
	 * @returns the current updated Vector3
	 */
	function maximizeInPlace(other:Vector3) : Vector3;
	/**
	 * Gets the length of the Vector3
	 * @returns the length of the Vecto3
	 */
	function length() : Float;
	/**
	 * Gets the squared length of the Vector3
	 * @returns squared length of the Vector3
	 */
	function lengthSquared() : Float;
	/**
	 * Normalize the current Vector3.
	 * Please note that this is an in place operation.
	 * @returns the current updated Vector3
	 */
	function normalize() : Vector3;
	/**
	 * Normalize the current Vector3 to a new vector
	 * @returns the new Vector3
	 */
	function normalizeToNew() : Vector3;
	/**
	 * Normalize the current Vector3 to the reference
	 * @returns the updated Vector3
	 */
	function normalizeToRef(reference:Vector3) : Vector3;
	/**
	 * Creates a new Vector3 copied from the current Vector3
	 * @returns the new Vector3
	 */
	function clone() : Vector3;
	/**
	 * Copies the given vector coordinates to the current Vector3 ones
	 * @returns the current updated Vector3
	 */
	function copyFrom(source:Vector3) : Vector3;
	/**
	 * Copies the given floats to the current Vector3 coordinates
	 * @returns the current updated Vector3
	 */
	function copyFromFloats(x:Float, y:Float, z:Float) : Vector3;
	/**
	 * Copies the given floats to the current Vector3 coordinates
	 * @returns the current updated Vector3
	 */
	function set(x:Float, y:Float, z:Float) : Vector3;
	/**
	 * Get the clip factor between two vectors
	 * @returns the clip factor
	 */
	static function GetClipFactor(vector0:Vector3, vector1:Vector3, axis:Vector3, size:Float) : Float;
	/**
	 * Get angle between two vectors
	 * @return the angle between vector0 and vector1
	 */
	static function GetAngleBetweenVectors(vector0:Vector3, vector1:Vector3, normal:Vector3) : Float;
	/**
	 * Returns a new Vector3 set from the index "offset" of the given array
	 * @returns the new Vector3
	 */
	static function FromArray(array:ArrayLike<Float>, ?offset:Float) : Vector3;
	/**
	 * Returns a new Vector3 set from the index "offset" of the given Float32Array
	 * This function is deprecated.  Use FromArray instead
	 * @returns the new Vector3
	 */
	static function FromFloatArray(array:js.html.Float32Array, ?offset:Float) : Vector3;
	/**
	 * Sets the given vector "result" with the element values from the index "offset" of the given array
	 */
	static function FromArrayToRef(array:ArrayLike<Float>, offset:Float, result:Vector3) : Void;
	/**
	 * Sets the given vector "result" with the element values from the index "offset" of the given Float32Array
	 * This function is deprecated.  Use FromArrayToRef instead.
	 */
	static function FromFloatArrayToRef(array:js.html.Float32Array, offset:Float, result:Vector3) : Void;
	/**
	 * Sets the given vector "result" with the given floats.
	 */
	static function FromFloatsToRef(x:Float, y:Float, z:Float, result:Vector3) : Void;
	/**
	 * Returns a new Vector3 set to (0.0, 0.0, 0.0)
	 * @returns a new empty Vector3
	 */
	static function Zero() : Vector3;
	/**
	 * Returns a new Vector3 set to (1.0, 1.0, 1.0)
	 * @returns a new unit Vector3
	 */
	static function One() : Vector3;
	/**
	 * Returns a new Vector3 set to (0.0, 1.0, 0.0)
	 * @returns a new up Vector3
	 */
	static function Up() : Vector3;
	/**
	 * Returns a new Vector3 set to (0.0, 0.0, 1.0)
	 * @returns a new forward Vector3
	 */
	static function Forward() : Vector3;
	/**
	 * Returns a new Vector3 set to (1.0, 0.0, 0.0)
	 * @returns a new right Vector3
	 */
	static function Right() : Vector3;
	/**
	 * Returns a new Vector3 set to (-1.0, 0.0, 0.0)
	 * @returns a new left Vector3
	 */
	static function Left() : Vector3;
	/**
	 * Returns a new Vector3 set with the result of the transformation by the given matrix of the given vector.
	 * This method computes tranformed coordinates only, not transformed direction vectors (ie. it takes translation in account)
	 * @returns the transformed Vector3
	 */
	static function TransformCoordinates(vector:Vector3, transformation:Matrix) : Vector3;
	/**
	 * Sets the given vector "result" coordinates with the result of the transformation by the given matrix of the given vector
	 * This method computes tranformed coordinates only, not transformed direction vectors (ie. it takes translation in account)
	 */
	static function TransformCoordinatesToRef(vector:Vector3, transformation:Matrix, result:Vector3) : Void;
	/**
	 * Sets the given vector "result" coordinates with the result of the transformation by the given matrix of the given floats (x, y, z)
	 * This method computes tranformed coordinates only, not transformed direction vectors
	 */
	static function TransformCoordinatesFromFloatsToRef(x:Float, y:Float, z:Float, transformation:Matrix, result:Vector3) : Void;
	/**
	 * Returns a new Vector3 set with the result of the normal transformation by the given matrix of the given vector
	 * This methods computes transformed normalized direction vectors only (ie. it does not apply translation)
	 * @returns the new Vector3
	 */
	static function TransformNormal(vector:Vector3, transformation:Matrix) : Vector3;
	/**
	 * Sets the given vector "result" with the result of the normal transformation by the given matrix of the given vector
	 * This methods computes transformed normalized direction vectors only (ie. it does not apply translation)
	 */
	static function TransformNormalToRef(vector:Vector3, transformation:Matrix, result:Vector3) : Void;
	/**
	 * Sets the given vector "result" with the result of the normal transformation by the given matrix of the given floats (x, y, z)
	 * This methods computes transformed normalized direction vectors only (ie. it does not apply translation)
	 */
	static function TransformNormalFromFloatsToRef(x:Float, y:Float, z:Float, transformation:Matrix, result:Vector3) : Void;
	/**
	 * Returns a new Vector3 located for "amount" on the CatmullRom interpolation spline defined by the vectors "value1", "value2", "value3", "value4"
	 * @returns the new Vector3
	 */
	static function CatmullRom(value1:Vector3, value2:Vector3, value3:Vector3, value4:Vector3, amount:Float) : Vector3;
	/**
	 * Returns a new Vector3 set with the coordinates of "value", if the vector "value" is in the cube defined by the vectors "min" and "max"
	 * If a coordinate value of "value" is lower than one of the "min" coordinate, then this "value" coordinate is set with the "min" one
	 * If a coordinate value of "value" is greater than one of the "max" coordinate, then this "value" coordinate is set with the "max" one
	 * @returns the new Vector3
	 */
	static function Clamp(value:Vector3, min:Vector3, max:Vector3) : Vector3;
	/**
	 * Returns a new Vector3 located for "amount" (float) on the Hermite interpolation spline defined by the vectors "value1", "tangent1", "value2", "tangent2"
	 * @returns the new Vector3
	 */
	static function Hermite(value1:Vector3, tangent1:Vector3, value2:Vector3, tangent2:Vector3, amount:Float) : Vector3;
	/**
	 * Returns a new Vector3 located for "amount" (float) on the linear interpolation between the vectors "start" and "end"
	 * @returns the new Vector3
	 */
	static function Lerp(start:Vector3, end:Vector3, amount:Float) : Vector3;
	/**
	 * Sets the given vector "result" with the result of the linear interpolation from the vector "start" for "amount" to the vector "end"
	 */
	static function LerpToRef(start:Vector3, end:Vector3, amount:Float, result:Vector3) : Void;
	/**
	 * Returns the dot product (float) between the vectors "left" and "right"
	 * @returns the dot product
	 */
	static function Dot(left:Vector3, right:Vector3) : Float;
	/**
	 * Returns a new Vector3 as the cross product of the vectors "left" and "right"
	 * The cross product is then orthogonal to both "left" and "right"
	 * @returns the cross product
	 */
	static function Cross(left:Vector3, right:Vector3) : Vector3;
	/**
	 * Sets the given vector "result" with the cross product of "left" and "right"
	 * The cross product is then orthogonal to both "left" and "right"
	 */
	static function CrossToRef(left:Vector3, right:Vector3, result:Vector3) : Void;
	/**
	 * Returns a new Vector3 as the normalization of the given vector
	 * @returns the new Vector3
	 */
	static function Normalize(vector:Vector3) : Vector3;
	/**
	 * Sets the given vector "result" with the normalization of the given first vector
	 */
	static function NormalizeToRef(vector:Vector3, result:Vector3) : Void;
	/**
	 * Project a Vector3 onto screen space
	 * @returns the new Vector3
	 */
	static function Project(vector:Vector3, world:Matrix, transform:Matrix, viewport:Viewport) : Vector3;
	/**
	 * Unproject from screen space to object space
	 * @returns the new Vector3
	 */
	static function UnprojectFromTransform(source:Vector3, viewportWidth:Float, viewportHeight:Float, world:Matrix, transform:Matrix) : Vector3;
	/**
	 * Unproject from screen space to object space
	 * @returns the new Vector3
	 */
	static function Unproject(source:Vector3, viewportWidth:Float, viewportHeight:Float, world:Matrix, view:Matrix, projection:Matrix) : Vector3;
	/**
	 * Unproject from screen space to object space
	 */
	static function UnprojectToRef(source:Vector3, viewportWidth:Float, viewportHeight:Float, world:Matrix, view:Matrix, projection:Matrix, result:Vector3) : Void;
	/**
	 * Unproject from screen space to object space
	 */
	static function UnprojectFloatsToRef(sourceX:Float, sourceY:Float, sourceZ:Float, viewportWidth:Float, viewportHeight:Float, world:Matrix, view:Matrix, projection:Matrix, result:Vector3) : Void;
	/**
	 * Gets the minimal coordinate values between two Vector3
	 * @returns the new Vector3
	 */
	static function Minimize(left:Vector3, right:Vector3) : Vector3;
	/**
	 * Gets the maximal coordinate values between two Vector3
	 * @returns the new Vector3
	 */
	static function Maximize(left:Vector3, right:Vector3) : Vector3;
	/**
	 * Returns the distance between the vectors "value1" and "value2"
	 * @returns the distance
	 */
	static function Distance(value1:Vector3, value2:Vector3) : Float;
	/**
	 * Returns the squared distance between the vectors "value1" and "value2"
	 * @returns the squared distance
	 */
	static function DistanceSquared(value1:Vector3, value2:Vector3) : Float;
	/**
	 * Returns a new Vector3 located at the center between "value1" and "value2"
	 * @returns the new Vector3
	 */
	static function Center(value1:Vector3, value2:Vector3) : Vector3;
	/**
	 * Given three orthogonal normalized left-handed oriented Vector3 axis in space (target system),
	 * RotationFromAxis() returns the rotation Euler angles (ex : rotation.x, rotation.y, rotation.z) to apply
	 * to something in order to rotate it from its local system to the given target system
	 * Note: axis1, axis2 and axis3 are normalized during this operation
	 * @returns a new Vector3
	 */
	static function RotationFromAxis(axis1:Vector3, axis2:Vector3, axis3:Vector3) : Vector3;
	/**
	 * The same than RotationFromAxis but updates the given ref Vector3 parameter instead of returning a new Vector3
	 */
	static function RotationFromAxisToRef(axis1:Vector3, axis2:Vector3, axis3:Vector3, ref:Vector3) : Void;
}