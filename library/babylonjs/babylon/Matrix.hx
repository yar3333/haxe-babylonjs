package babylonjs.babylon;

/**
 * Class used to store matrix data (4x4)
 */
@:native("BABYLON.Matrix")
extern class Matrix
{
	private static var _tempQuaternion : Dynamic;
	private static var _xAxis : Dynamic;
	private static var _yAxis : Dynamic;
	private static var _zAxis : Dynamic;
	private static var _updateFlagSeed : Dynamic;
	private static var _identityReadOnly : Dynamic;
	private var _isIdentity : Dynamic;
	private var _isIdentityDirty : Dynamic;
	/**
	 * Gets the update flag of the matrix which is an unique number for the matrix.
	 * It will be incremented every time the matrix data change.
	 * You can use it to speed the comparison between two versions of the same matrix.
	 */
	var updateFlag : Float;
	/**
	 * Gets or sets the internal data of the matrix
	 */
	var m : js.html.Float32Array;
	/**
	 * Gets an identity matrix that must not be updated
	 */
	static var IdentityReadOnly(default, null) : Matrix;

	/**
	 * @hidden 
	 */
	function _markAsUpdated() : Void;
	/**
	 * Class used to store matrix data (4x4)
	 */
	function new() : Void;
	/**
	 * Check if the current matrix is indentity
	 * @returns true is the matrix is the identity matrix
	 */
	function isIdentity(?considerAsTextureMatrix:Bool) : Bool;
	/**
	 * Gets the determinant of the matrix
	 * @returns the matrix determinant
	 */
	function determinant() : Float;
	/**
	 * Returns the matrix as a Float32Array
	 * @returns the matrix underlying array
	 */
	function toArray() : js.html.Float32Array;
	/**
	 * Returns the matrix as a Float32Array
	 * @returns the matrix underlying array.
	 */
	function asArray() : js.html.Float32Array;
	/**
	 * Inverts the current matrix in place
	 * @returns the current inverted matrix
	 */
	function invert() : Matrix;
	/**
	 * Sets all the matrix elements to zero
	 * @returns the current matrix
	 */
	function reset() : Matrix;
	/**
	 * Adds the current matrix with a second one
	 * @returns a new matrix as the addition of the current matrix and the given one
	 */
	function add(other:Matrix) : Matrix;
	/**
	 * Sets the given matrix "result" to the addition of the current matrix and the given one
	 * @returns the current matrix
	 */
	function addToRef(other:Matrix, result:Matrix) : Matrix;
	/**
	 * Adds in place the given matrix to the current matrix
	 * @returns the current updated matrix
	 */
	function addToSelf(other:Matrix) : Matrix;
	/**
	 * Sets the given matrix to the current inverted Matrix
	 * @returns the unmodified current matrix
	 */
	function invertToRef(other:Matrix) : Matrix;
	/**
	 * Inserts the translation vector (using 3 floats) in the current matrix
	 * @returns the current updated matrix
	 */
	function setTranslationFromFloats(x:Float, y:Float, z:Float) : Matrix;
	/**
	 * Inserts the translation vector in the current matrix
	 * @returns the current updated matrix
	 */
	function setTranslation(vector3:Vector3) : Matrix;
	/**
	 * Gets the translation value of the current matrix
	 * @returns a new Vector3 as the extracted translation from the matrix
	 */
	function getTranslation() : Vector3;
	/**
	 * Fill a Vector3 with the extracted translation from the matrix
	 * @returns the current matrix
	 */
	function getTranslationToRef(result:Vector3) : Matrix;
	/**
	 * Remove rotation and scaling part from the matrix
	 * @returns the updated matrix
	 */
	function removeRotationAndScaling() : Matrix;
	/**
	 * Multiply two matrices
	 * @returns a new matrix set with the multiplication result of the current Matrix and the given one
	 */
	function multiply(other:Matrix) : Matrix;
	/**
	 * Copy the current matrix from the given one
	 * @returns the current updated matrix
	 */
	function copyFrom(other:Matrix) : Matrix;
	/**
	 * Populates the given array from the starting index with the current matrix values
	 * @returns the current matrix
	 */
	function copyToArray(array:js.html.Float32Array, ?offset:Float) : Matrix;
	/**
	 * Sets the given matrix "result" with the multiplication result of the current Matrix and the given one
	 * @returns the current matrix
	 */
	function multiplyToRef(other:Matrix, result:Matrix) : Matrix;
	/**
	 * Sets the Float32Array "result" from the given index "offset" with the multiplication of the current matrix and the given one
	 * @returns the current matrix
	 */
	function multiplyToArray(other:Matrix, result:js.html.Float32Array, offset:Float) : Matrix;
	/**
	 * Check equality between this matrix and a second one
	 * @returns true is the current matrix and the given one values are strictly equal
	 */
	function equals(value:Matrix) : Bool;
	/**
	 * Clone the current matrix
	 * @returns a new matrix from the current matrix
	 */
	function clone() : Matrix;
	/**
	 * Returns the name of the current matrix class
	 * @returns the string "Matrix"
	 */
	function getClassName() : String;
	/**
	 * Gets the hash code of the current matrix
	 * @returns the hash code
	 */
	function getHashCode() : Float;
	/**
	 * Decomposes the current Matrix into a translation, rotation and scaling components
	 * @returns true if operation was successful
	 */
	function decompose(?scale:Vector3, ?rotation:Quaternion, ?translation:Vector3) : Bool;
	/**
	 * Gets specific row of the matrix
	 * @returns the index-th row of the current matrix as a new Vector4
	 */
	function getRow(index:Float) : Null<Vector4>;
	/**
	 * Sets the index-th row of the current matrix to the vector4 values
	 * @returns the updated current matrix
	 */
	function setRow(index:Float, row:Vector4) : Matrix;
	/**
	 * Compute the transpose of the matrix
	 * @returns the new transposed matrix
	 */
	function transpose() : Matrix;
	/**
	 * Compute the transpose of the matrix and store it in a given matrix
	 * @returns the current matrix
	 */
	function transposeToRef(result:Matrix) : Matrix;
	/**
	 * Sets the index-th row of the current matrix with the given 4 x float values
	 * @returns the updated current matrix
	 */
	function setRowFromFloats(index:Float, x:Float, y:Float, z:Float, w:Float) : Matrix;
	/**
	 * Compute a new matrix set with the current matrix values multiplied by scale (float)
	 * @returns a new matrix
	 */
	function scale(scale:Float) : Matrix;
	/**
	 * Scale the current matrix values by a factor to a given result matrix
	 * @returns the current matrix
	 */
	function scaleToRef(scale:Float, result:Matrix) : Matrix;
	/**
	 * Scale the current matrix values by a factor and add the result to a given matrix
	 * @returns the current matrix
	 */
	function scaleAndAddToRef(scale:Float, result:Matrix) : Matrix;
	/**
	 * Writes to the given matrix a normal matrix, computed from this one (using values from identity matrix for fourth row and column).
	 */
	function toNormalMatrix(ref:Matrix) : Void;
	/**
	 * Gets only rotation part of the current matrix
	 * @returns a new matrix sets to the extracted rotation matrix from the current one
	 */
	function getRotationMatrix() : Matrix;
	/**
	 * Extracts the rotation matrix from the current one and sets it as the given "result"
	 * @returns the current matrix
	 */
	function getRotationMatrixToRef(result:Matrix) : Matrix;
	/**
	 * Creates a matrix from an array
	 * @returns a new Matrix set from the starting index of the given array
	 */
	static function FromArray(array:ArrayLike<Float>, ?offset:Float) : Matrix;
	/**
	 * Copy the content of an array into a given matrix
	 */
	static function FromArrayToRef(array:ArrayLike<Float>, offset:Float, result:Matrix) : Void;
	/**
	 * Stores an array into a matrix after having multiplied each component by a given factor
	 */
	static function FromFloat32ArrayToRefScaled(array:js.html.Float32Array, offset:Float, scale:Float, result:Matrix) : Void;
	/**
	 * Stores a list of values (16) inside a given matrix
	 */
	static function FromValuesToRef(initialM11:Float, initialM12:Float, initialM13:Float, initialM14:Float, initialM21:Float, initialM22:Float, initialM23:Float, initialM24:Float, initialM31:Float, initialM32:Float, initialM33:Float, initialM34:Float, initialM41:Float, initialM42:Float, initialM43:Float, initialM44:Float, result:Matrix) : Void;
	/**
	 * Creates new matrix from a list of values (16)
	 * @returns the new matrix
	 */
	static function FromValues(initialM11:Float, initialM12:Float, initialM13:Float, initialM14:Float, initialM21:Float, initialM22:Float, initialM23:Float, initialM24:Float, initialM31:Float, initialM32:Float, initialM33:Float, initialM34:Float, initialM41:Float, initialM42:Float, initialM43:Float, initialM44:Float) : Matrix;
	/**
	 * Creates a new matrix composed by merging scale (vector3), rotation (quaternion) and translation (vector3)
	 * @returns a new matrix
	 */
	static function Compose(scale:Vector3, rotation:Quaternion, translation:Vector3) : Matrix;
	/**
	 * Sets a matrix to a value composed by merging scale (vector3), rotation (quaternion) and translation (vector3)
	 */
	static function ComposeToRef(scale:Vector3, rotation:Quaternion, translation:Vector3, result:Matrix) : Void;
	/**
	 * Creates a new identity matrix
	 * @returns a new identity matrix
	 */
	static function Identity() : Matrix;
	/**
	 * Creates a new identity matrix and stores the result in a given matrix
	 */
	static function IdentityToRef(result:Matrix) : Void;
	/**
	 * Creates a new zero matrix
	 * @returns a new zero matrix
	 */
	static function Zero() : Matrix;
	/**
	 * Creates a new rotation matrix for "angle" radians around the X axis
	 * @return the new matrix
	 */
	static function RotationX(angle:Float) : Matrix;
	/**
	 * Creates a new matrix as the invert of a given matrix
	 * @returns the new matrix
	 */
	static function Invert(source:Matrix) : Matrix;
	/**
	 * Creates a new rotation matrix for "angle" radians around the X axis and stores it in a given matrix
	 */
	static function RotationXToRef(angle:Float, result:Matrix) : Void;
	/**
	 * Creates a new rotation matrix for "angle" radians around the Y axis
	 * @return the new matrix
	 */
	static function RotationY(angle:Float) : Matrix;
	/**
	 * Creates a new rotation matrix for "angle" radians around the Y axis and stores it in a given matrix
	 */
	static function RotationYToRef(angle:Float, result:Matrix) : Void;
	/**
	 * Creates a new rotation matrix for "angle" radians around the Z axis
	 * @return the new matrix
	 */
	static function RotationZ(angle:Float) : Matrix;
	/**
	 * Creates a new rotation matrix for "angle" radians around the Z axis and stores it in a given matrix
	 */
	static function RotationZToRef(angle:Float, result:Matrix) : Void;
	/**
	 * Creates a new rotation matrix for "angle" radians around the given axis
	 * @return the new matrix
	 */
	static function RotationAxis(axis:Vector3, angle:Float) : Matrix;
	/**
	 * Creates a new rotation matrix for "angle" radians around the given axis and stores it in a given matrix
	 */
	static function RotationAxisToRef(axis:Vector3, angle:Float, result:Matrix) : Void;
	/**
	 * Creates a rotation matrix
	 * @returns the new rotation matrix
	 */
	static function RotationYawPitchRoll(yaw:Float, pitch:Float, roll:Float) : Matrix;
	/**
	 * Creates a rotation matrix and stores it in a given matrix
	 */
	static function RotationYawPitchRollToRef(yaw:Float, pitch:Float, roll:Float, result:Matrix) : Void;
	/**
	 * Creates a scaling matrix
	 * @returns the new matrix
	 */
	static function Scaling(x:Float, y:Float, z:Float) : Matrix;
	/**
	 * Creates a scaling matrix and stores it in a given matrix
	 */
	static function ScalingToRef(x:Float, y:Float, z:Float, result:Matrix) : Void;
	/**
	 * Creates a translation matrix
	 * @returns the new matrix
	 */
	static function Translation(x:Float, y:Float, z:Float) : Matrix;
	/**
	 * Creates a translation matrix and stores it in a given matrix
	 */
	static function TranslationToRef(x:Float, y:Float, z:Float, result:Matrix) : Void;
	/**
	 * Returns a new Matrix whose values are the interpolated values for "gradient" (float) between the ones of the matrices "startValue" and "endValue".
	 * @returns the new matrix
	 */
	static function Lerp(startValue:Matrix, endValue:Matrix, gradient:Float) : Matrix;
	/**
	 * Set the given matrix "result" as the interpolated values for "gradient" (float) between the ones of the matrices "startValue" and "endValue".
	 */
	static function LerpToRef(startValue:Matrix, endValue:Matrix, gradient:Float, result:Matrix) : Void;
	/**
	 * Builds a new matrix whose values are computed by:
	 * * decomposing the the "startValue" and "endValue" matrices into their respective scale, rotation and translation matrices
	 * * interpolating for "gradient" (float) the values between each of these decomposed matrices between the start and the end
	 * * recomposing a new matrix from these 3 interpolated scale, rotation and translation matrices
	 * @returns the new matrix
	 */
	static function DecomposeLerp(startValue:Matrix, endValue:Matrix, gradient:Float) : Matrix;
	/**
	 * Update a matrix to values which are computed by:
	 * * decomposing the the "startValue" and "endValue" matrices into their respective scale, rotation and translation matrices
	 * * interpolating for "gradient" (float) the values between each of these decomposed matrices between the start and the end
	 * * recomposing a new matrix from these 3 interpolated scale, rotation and translation matrices
	 */
	static function DecomposeLerpToRef(startValue:Matrix, endValue:Matrix, gradient:Float, result:Matrix) : Void;
	/**
	 * Gets a new rotation matrix used to rotate an entity so as it looks at the target vector3, from the eye vector3 position, the up vector3 being oriented like "up"
	 * This function works in left handed mode
	 * @returns the new matrix
	 */
	static function LookAtLH(eye:Vector3, target:Vector3, up:Vector3) : Matrix;
	/**
	 * Sets the given "result" Matrix to a rotation matrix used to rotate an entity so that it looks at the target vector3, from the eye vector3 position, the up vector3 being oriented like "up".
	 * This function works in left handed mode
	 */
	static function LookAtLHToRef(eye:Vector3, target:Vector3, up:Vector3, result:Matrix) : Void;
	/**
	 * Gets a new rotation matrix used to rotate an entity so as it looks at the target vector3, from the eye vector3 position, the up vector3 being oriented like "up"
	 * This function works in right handed mode
	 * @returns the new matrix
	 */
	static function LookAtRH(eye:Vector3, target:Vector3, up:Vector3) : Matrix;
	/**
	 * Sets the given "result" Matrix to a rotation matrix used to rotate an entity so that it looks at the target vector3, from the eye vector3 position, the up vector3 being oriented like "up".
	 * This function works in right handed mode
	 */
	static function LookAtRHToRef(eye:Vector3, target:Vector3, up:Vector3, result:Matrix) : Void;
	/**
	 * Create a left-handed orthographic projection matrix
	 * @returns a new matrix as a left-handed orthographic projection matrix
	 */
	static function OrthoLH(width:Float, height:Float, znear:Float, zfar:Float) : Matrix;
	/**
	 * Store a left-handed orthographic projection to a given matrix
	 */
	static function OrthoLHToRef(width:Float, height:Float, znear:Float, zfar:Float, result:Matrix) : Void;
	/**
	 * Create a left-handed orthographic projection matrix
	 * @returns a new matrix as a left-handed orthographic projection matrix
	 */
	static function OrthoOffCenterLH(left:Float, right:Float, bottom:Float, top:Float, znear:Float, zfar:Float) : Matrix;
	/**
	 * Stores a left-handed orthographic projection into a given matrix
	 */
	static function OrthoOffCenterLHToRef(left:Float, right:Float, bottom:Float, top:Float, znear:Float, zfar:Float, result:Matrix) : Void;
	/**
	 * Creates a right-handed orthographic projection matrix
	 * @returns a new matrix as a right-handed orthographic projection matrix
	 */
	static function OrthoOffCenterRH(left:Float, right:Float, bottom:Float, top:Float, znear:Float, zfar:Float) : Matrix;
	/**
	 * Stores a right-handed orthographic projection into a given matrix
	 */
	static function OrthoOffCenterRHToRef(left:Float, right:Float, bottom:Float, top:Float, znear:Float, zfar:Float, result:Matrix) : Void;
	/**
	 * Creates a left-handed perspective projection matrix
	 * @returns a new matrix as a left-handed perspective projection matrix
	 */
	static function PerspectiveLH(width:Float, height:Float, znear:Float, zfar:Float) : Matrix;
	/**
	 * Creates a left-handed perspective projection matrix
	 * @returns a new matrix as a left-handed perspective projection matrix
	 */
	static function PerspectiveFovLH(fov:Float, aspect:Float, znear:Float, zfar:Float) : Matrix;
	/**
	 * Stores a left-handed perspective projection into a given matrix
	 */
	static function PerspectiveFovLHToRef(fov:Float, aspect:Float, znear:Float, zfar:Float, result:Matrix, ?isVerticalFovFixed:Bool) : Void;
	/**
	 * Creates a right-handed perspective projection matrix
	 * @returns a new matrix as a right-handed perspective projection matrix
	 */
	static function PerspectiveFovRH(fov:Float, aspect:Float, znear:Float, zfar:Float) : Matrix;
	/**
	 * Stores a right-handed perspective projection into a given matrix
	 */
	static function PerspectiveFovRHToRef(fov:Float, aspect:Float, znear:Float, zfar:Float, result:Matrix, ?isVerticalFovFixed:Bool) : Void;
	/**
	 * Stores a perspective projection for WebVR info a given matrix
	 */
	static function PerspectiveFovWebVRToRef(fov:{ var upDegrees : Float; var downDegrees : Float; var leftDegrees : Float; var rightDegrees : Float; }, znear:Float, zfar:Float, result:Matrix, ?rightHanded:Bool) : Void;
	/**
	 * Computes a complete transformation matrix
	 * @returns the transformation matrix
	 */
	static function GetFinalMatrix(viewport:Viewport, world:Matrix, view:Matrix, projection:Matrix, zmin:Float, zmax:Float) : Matrix;
	/**
	 * Extracts a 2x2 matrix from a given matrix and store the result in a Float32Array
	 * @returns a new Float32Array array with 4 elements : the 2x2 matrix extracted from the given matrix
	 */
	static function GetAsMatrix2x2(matrix:Matrix) : js.html.Float32Array;
	/**
	 * Extracts a 3x3 matrix from a given matrix and store the result in a Float32Array
	 * @returns a new Float32Array array with 9 elements : the 3x3 matrix extracted from the given matrix
	 */
	static function GetAsMatrix3x3(matrix:Matrix) : js.html.Float32Array;
	/**
	 * Compute the transpose of a given matrix
	 * @returns the new matrix
	 */
	static function Transpose(matrix:Matrix) : Matrix;
	/**
	 * Compute the transpose of a matrix and store it in a target matrix
	 */
	static function TransposeToRef(matrix:Matrix, result:Matrix) : Void;
	/**
	 * Computes a reflection matrix from a plane
	 * @returns a new matrix
	 */
	static function Reflection(plane:Plane) : Matrix;
	/**
	 * Computes a reflection matrix from a plane
	 */
	static function ReflectionToRef(plane:Plane, result:Matrix) : Void;
	/**
	 * Sets the given matrix as a rotation matrix composed from the 3 left handed axes
	 */
	static function FromXYZAxesToRef(xaxis:Vector3, yaxis:Vector3, zaxis:Vector3, result:Matrix) : Void;
	/**
	 * Creates a rotation matrix from a quaternion and stores it in a target matrix
	 */
	static function FromQuaternionToRef(quat:Quaternion, result:Matrix) : Void;
}