package babylonjs.babylon;

/**
 * Class used to store quaternion data
 * @see https://en.wikipedia.org/wiki/Quaternion
 * @see http://doc.babylonjs.com/features/position,_rotation,_scaling
 */
@:native("BABYLON.Quaternion")
extern class Quaternion
{
	/**
	 * defines the first component (0 by default) 
	 */
	var x : Float;
	/**
	 * defines the second component (0 by default) 
	 */
	var y : Float;
	/**
	 * defines the third component (0 by default) 
	 */
	var z : Float;
	/**
	 * defines the fourth component (1.0 by default) 
	 */
	var w : Float;

	/**
	 * Class used to store quaternion data
	 * @see https://en.wikipedia.org/wiki/Quaternion
	 * @see http://doc.babylonjs.com/features/position,_rotation,_scaling
	 */
	function new(?x:Float, ?y:Float, ?z:Float, ?w:Float) : Void;
	/**
	 * Gets a string representation for the current quaternion
	 * @returns a string with the Quaternion coordinates
	 */
	function toString() : String;
	/**
	 * Gets the class name of the quaternion
	 * @returns the string "Quaternion"
	 */
	function getClassName() : String;
	/**
	 * Gets a hash code for this quaternion
	 * @returns the quaternion hash code
	 */
	function getHashCode() : Float;
	/**
	 * Copy the quaternion to an array
	 * @returns a new array populated with 4 elements from the quaternion coordinates
	 */
	function asArray() : Array<Float>;
	/**
	 * Check if two quaternions are equals
	 * @return true if the current quaternion and the given one coordinates are strictly equals
	 */
	function equals(otherQuaternion:Quaternion) : Bool;
	/**
	 * Clone the current quaternion
	 * @returns a new quaternion copied from the current one
	 */
	function clone() : Quaternion;
	/**
	 * Copy a quaternion to the current one
	 * @returns the updated current quaternion
	 */
	function copyFrom(other:Quaternion) : Quaternion;
	/**
	 * Updates the current quaternion with the given float coordinates
	 * @returns the updated current quaternion
	 */
	function copyFromFloats(x:Float, y:Float, z:Float, w:Float) : Quaternion;
	/**
	 * Updates the current quaternion from the given float coordinates
	 * @returns the updated current quaternion
	 */
	function set(x:Float, y:Float, z:Float, w:Float) : Quaternion;
	/**
	 * Adds two quaternions
	 * @returns a new quaternion as the addition result of the given one and the current quaternion
	 */
	function add(other:Quaternion) : Quaternion;
	/**
	 * Add a quaternion to the current one
	 * @returns the current quaternion
	 */
	function addInPlace(other:Quaternion) : Quaternion;
	/**
	 * Subtract two quaternions
	 * @returns a new quaternion as the subtraction result of the given one from the current one
	 */
	function subtract(other:Quaternion) : Quaternion;
	/**
	 * Multiplies the current quaternion by a scale factor
	 * @returns a new quaternion set by multiplying the current quaternion coordinates by the float "scale"
	 */
	function scale(value:Float) : Quaternion;
	/**
	 * Scale the current quaternion values by a factor and stores the result to a given quaternion
	 * @returns the unmodified current quaternion
	 */
	function scaleToRef(scale:Float, result:Quaternion) : Quaternion;
	/**
	 * Multiplies in place the current quaternion by a scale factor
	 * @returns the current modified quaternion
	 */
	function scaleInPlace(value:Float) : Quaternion;
	/**
	 * Scale the current quaternion values by a factor and add the result to a given quaternion
	 * @returns the unmodified current quaternion
	 */
	function scaleAndAddToRef(scale:Float, result:Quaternion) : Quaternion;
	/**
	 * Multiplies two quaternions
	 * @returns a new quaternion set as the multiplication result of the current one with the given one "q1"
	 */
	function multiply(q1:Quaternion) : Quaternion;
	/**
	 * Sets the given "result" as the the multiplication result of the current one with the given one "q1"
	 * @returns the current quaternion
	 */
	function multiplyToRef(q1:Quaternion, result:Quaternion) : Quaternion;
	/**
	 * Updates the current quaternion with the multiplication of itself with the given one "q1"
	 * @returns the currentupdated quaternion
	 */
	function multiplyInPlace(q1:Quaternion) : Quaternion;
	/**
	 * Conjugates (1-q) the current quaternion and stores the result in the given quaternion
	 * @returns the current quaternion
	 */
	function conjugateToRef(ref:Quaternion) : Quaternion;
	/**
	 * Conjugates in place (1-q) the current quaternion
	 * @returns the current updated quaternion
	 */
	function conjugateInPlace() : Quaternion;
	/**
	 * Conjugates in place (1-q) the current quaternion
	 * @returns a new quaternion
	 */
	function conjugate() : Quaternion;
	/**
	 * Gets length of current quaternion
	 * @returns the quaternion length (float)
	 */
	function length() : Float;
	/**
	 * Normalize in place the current quaternion
	 * @returns the current updated quaternion
	 */
	function normalize() : Quaternion;
	/**
	 * Returns a new Vector3 set with the Euler angles translated from the current quaternion
	 * @returns a new Vector3 containing the Euler angles
	 */
	function toEulerAngles(?order:String) : Vector3;
	/**
	 * Sets the given vector3 "result" with the Euler angles translated from the current quaternion
	 * @returns the current unchanged quaternion
	 */
	function toEulerAnglesToRef(result:Vector3, ?order:String) : Quaternion;
	/**
	 * Updates the given rotation matrix with the current quaternion values
	 * @returns the current unchanged quaternion
	 */
	function toRotationMatrix(result:Matrix) : Quaternion;
	/**
	 * Updates the current quaternion from the given rotation matrix values
	 * @returns the current updated quaternion
	 */
	function fromRotationMatrix(matrix:Matrix) : Quaternion;
	/**
	 * Creates a new quaternion from a rotation matrix
	 * @returns a new quaternion created from the given rotation matrix values
	 */
	static function FromRotationMatrix(matrix:Matrix) : Quaternion;
	/**
	 * Updates the given quaternion with the given rotation matrix values
	 */
	static function FromRotationMatrixToRef(matrix:Matrix, result:Quaternion) : Void;
	/**
	 * Returns the dot product (float) between the quaternions "left" and "right"
	 * @returns the dot product
	 */
	static function Dot(left:Quaternion, right:Quaternion) : Float;
	/**
	 * Checks if the two quaternions are close to each other
	 * @returns true if the two quaternions are close to each other
	 */
	static function AreClose(quat0:Quaternion, quat1:Quaternion) : Bool;
	/**
	 * Creates an empty quaternion
	 * @returns a new quaternion set to (0.0, 0.0, 0.0)
	 */
	static function Zero() : Quaternion;
	/**
	 * Inverse a given quaternion
	 * @returns a new quaternion as the inverted current quaternion
	 */
	static function Inverse(q:Quaternion) : Quaternion;
	/**
	 * Creates an identity quaternion
	 * @returns the identity quaternion
	 */
	static function Identity() : Quaternion;
	/**
	 * Gets a boolean indicating if the given quaternion is identity
	 * @returns true if the quaternion is identity
	 */
	static function IsIdentity(quaternion:Quaternion) : Bool;
	/**
	 * Creates a quaternion from a rotation around an axis
	 * @returns a new quaternion created from the given axis (Vector3) and angle in radians (float)
	 */
	static function RotationAxis(axis:Vector3, angle:Float) : Quaternion;
	/**
	 * Creates a rotation around an axis and stores it into the given quaternion
	 * @returns the target quaternion
	 */
	static function RotationAxisToRef(axis:Vector3, angle:Float, result:Quaternion) : Quaternion;
	/**
	 * Creates a new quaternion from data stored into an array
	 * @returns a new quaternion
	 */
	static function FromArray(array:ArrayLike<Float>, ?offset:Float) : Quaternion;
	/**
	 * Creates a new quaternion from the given Euler float angles (y, x, z)
	 * @returns the new quaternion
	 */
	static function RotationYawPitchRoll(yaw:Float, pitch:Float, roll:Float) : Quaternion;
	/**
	 * Creates a new rotation from the given Euler float angles (y, x, z) and stores it in the target quaternion
	 */
	static function RotationYawPitchRollToRef(yaw:Float, pitch:Float, roll:Float, result:Quaternion) : Void;
	/**
	 * Creates a new quaternion from the given Euler float angles expressed in z-x-z orientation
	 * @returns the new quaternion
	 */
	static function RotationAlphaBetaGamma(alpha:Float, beta:Float, gamma:Float) : Quaternion;
	/**
	 * Creates a new quaternion from the given Euler float angles expressed in z-x-z orientation and stores it in the target quaternion
	 */
	static function RotationAlphaBetaGammaToRef(alpha:Float, beta:Float, gamma:Float, result:Quaternion) : Void;
	/**
	 * Creates a new quaternion containing the rotation value to reach the target (axis1, axis2, axis3) orientation as a rotated XYZ system (axis1, axis2 and axis3 are normalized during this operation)
	 * @returns the new quaternion
	 */
	static function RotationQuaternionFromAxis(axis1:Vector3, axis2:Vector3, axis3:Vector3) : Quaternion;
	/**
	 * Creates a rotation value to reach the target (axis1, axis2, axis3) orientation as a rotated XYZ system (axis1, axis2 and axis3 are normalized during this operation) and stores it in the target quaternion
	 */
	static function RotationQuaternionFromAxisToRef(axis1:Vector3, axis2:Vector3, axis3:Vector3, ref:Quaternion) : Void;
	/**
	 * Interpolates between two quaternions
	 * @returns the new interpolated quaternion
	 */
	static function Slerp(left:Quaternion, right:Quaternion, amount:Float) : Quaternion;
	/**
	 * Interpolates between two quaternions and stores it into a target quaternion
	 */
	static function SlerpToRef(left:Quaternion, right:Quaternion, amount:Float, result:Quaternion) : Void;
	/**
	 * Interpolate between two quaternions using Hermite interpolation
	 * @returns the new interpolated quaternion
	 */
	static function Hermite(value1:Quaternion, tangent1:Quaternion, value2:Quaternion, tangent2:Quaternion, amount:Float) : Quaternion;
}