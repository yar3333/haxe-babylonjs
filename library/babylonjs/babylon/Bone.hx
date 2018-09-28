package babylonjs.babylon;

/**
 * Class used to store bone information
 * @see http://doc.babylonjs.com/how_to/how_to_use_bones_and_skeletons
 */
@:native("BABYLON.Bone")
extern class Bone extends Node
{
	/**
	 * defines the bone name
	 */
	//var name : String;
	private static var _tmpVecs : Dynamic;
	private static var _tmpQuat : Dynamic;
	private static var _tmpMats : Dynamic;
	/**
	 * Gets the list of child bones
	 */
	var children : Array<Bone>;
	/**
	 * Gets the animations associated with this bone 
	 */
	//var animations : Array<Animation>;
	/**
	 * Gets or sets bone length
	 */
	var length : Float;
	/**
	 * @hidden Internal only
	 * Set this value to map this bone to a different index in the transform matrices
	 * Set this value to -1 to exclude the bone from the transform matrices
	 */
	var _index : Null<Float>;
	private var _skeleton : Dynamic;
	private var _localMatrix : Dynamic;
	private var _restPose : Dynamic;
	private var _baseMatrix : Dynamic;
	private var _absoluteTransform : Dynamic;
	private var _invertedAbsoluteTransform : Dynamic;
	private var _parent : Dynamic;
	private var _scalingDeterminant : Dynamic;
	private var _worldTransform : Dynamic;
	private var _localScaling : Dynamic;
	private var _localRotation : Dynamic;
	private var _localPosition : Dynamic;
	private var _needToDecompose : Dynamic;
	private var _needToCompose : Dynamic;
	/**
	 * @hidden 
	 * @hidden 
	 */
	var _matrix : Matrix;
	/**
	 * Gets or sets current position (in local space) 
	 */
	var position : Vector3;
	/**
	 * Gets or sets current rotation (in local space) 
	 */
	var rotation : Vector3;
	/**
	 * Gets or sets current rotation quaternion (in local space) 
	 */
	var rotationQuaternion : Quaternion;
	/**
	 * Gets or sets current scaling (in local space) 
	 */
	var scaling : Vector3;
	/**
	 * Gets the animation properties override
	 */
	//var animationPropertiesOverride(default, null) : Null<AnimationPropertiesOverride>;

	/**
	 * Class used to store bone information
	 * @see http://doc.babylonjs.com/how_to/how_to_use_bones_and_skeletons
	 */
	@:overload(function(name:String, skeleton:Skeleton,?parentBone:Null<Bone>,?localMatrix:Null<Matrix>,?restPose:Null<Matrix>,?baseMatrix:Null<Matrix>,?index:Null<Float>): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	/**
	 * Gets the parent skeleton
	 * @returns a skeleton
	 */
	function getSkeleton() : Skeleton;
	/**
	 * Gets parent bone
	 * @returns a bone or null if the bone is the root of the bone hierarchy
	 */
	function getParent() : Null<Bone>;
	/**
	 * Sets the parent bone
	 */
	function setParent(parent:Null<Bone>, ?updateDifferenceMatrix:Bool) : Void;
	/**
	 * Gets the local matrix
	 * @returns a matrix
	 */
	function getLocalMatrix() : Matrix;
	/**
	 * Gets the base matrix (initial matrix which remains unchanged)
	 * @returns a matrix
	 */
	function getBaseMatrix() : Matrix;
	/**
	 * Gets the rest pose matrix
	 * @returns a matrix
	 */
	function getRestPose() : Matrix;
	/**
	 * Gets a matrix used to store world matrix (ie. the matrix sent to shaders)
	 */
	override function getWorldMatrix() : Matrix;
	/**
	 * Sets the local matrix to rest pose matrix
	 */
	function returnToRest() : Void;
	/**
	 * Gets the inverse of the absolute transform matrix.
	 * This matrix will be multiplied by local matrix to get the difference matrix (ie. the difference between original state and current state)
	 * @returns a matrix
	 */
	function getInvertedAbsoluteTransform() : Matrix;
	/**
	 * Gets the absolute transform matrix (ie base matrix * parent world matrix)
	 * @returns a matrix
	 */
	function getAbsoluteTransform() : Matrix;
	private function _decompose() : Dynamic;
	private function _compose() : Dynamic;
	/**
	 * Update the base and local matrices
	 */
	function updateMatrix(matrix:Matrix, ?updateDifferenceMatrix:Bool, ?updateLocalMatrix:Bool) : Void;
	/**
	 * @hidden 
	 */
	function _updateDifferenceMatrix(?rootMatrix:Matrix, ?updateChildren:Bool) : Void;
	/**
	 * Flag the bone as dirty (Forcing it to update everything)
	 */
	function markAsDirty() : Void;
	private function _markAsDirtyAndCompose() : Dynamic;
	private function _markAsDirtyAndDecompose() : Dynamic;
	/**
	 * Copy an animation range from another bone
	 * @returns true if operation was successful
	 */
	function copyAnimationRange(source:Bone, rangeName:String, frameOffset:Float, ?rescaleAsRequired:Bool, ?skelDimensionsRatio:Null<Vector3>) : Bool;
	/**
	 * Translate the bone in local or world space
	 */
	function translate(vec:Vector3, ?space:Space, ?mesh:AbstractMesh) : Void;
	/**
	 * Set the postion of the bone in local or world space
	 */
	function setPosition(position:Vector3, ?space:Space, ?mesh:AbstractMesh) : Void;
	/**
	 * Set the absolute position of the bone (world space)
	 */
	function setAbsolutePosition(position:Vector3, ?mesh:AbstractMesh) : Void;
	/**
	 * Scale the bone on the x, y and z axes (in local space)
	 */
	function scale(x:Float, y:Float, z:Float, ?scaleChildren:Bool) : Void;
	/**
	 * Set the bone scaling in local space
	 */
	function setScale(scale:Vector3) : Void;
	/**
	 * Gets the current scaling in local space
	 * @returns the current scaling vector
	 */
	function getScale() : Vector3;
	/**
	 * Gets the current scaling in local space and stores it in a target vector
	 */
	function getScaleToRef(result:Vector3) : Void;
	/**
	 * Set the yaw, pitch, and roll of the bone in local or world space
	 */
	function setYawPitchRoll(yaw:Float, pitch:Float, roll:Float, ?space:Space, ?mesh:AbstractMesh) : Void;
	/**
	 * Add a rotation to the bone on an axis in local or world space
	 */
	function rotate(axis:Vector3, amount:Float, ?space:Space, ?mesh:AbstractMesh) : Void;
	/**
	 * Set the rotation of the bone to a particular axis angle in local or world space
	 */
	function setAxisAngle(axis:Vector3, angle:Float, ?space:Space, ?mesh:AbstractMesh) : Void;
	/**
	 * Set the euler rotation of the bone in local of world space
	 */
	function setRotation(rotation:Vector3, ?space:Space, ?mesh:AbstractMesh) : Void;
	/**
	 * Set the quaternion rotation of the bone in local of world space
	 */
	function setRotationQuaternion(quat:Quaternion, ?space:Space, ?mesh:AbstractMesh) : Void;
	/**
	 * Set the rotation matrix of the bone in local of world space
	 */
	function setRotationMatrix(rotMat:Matrix, ?space:Space, ?mesh:AbstractMesh) : Void;
	private function _rotateWithMatrix(rmat:Dynamic, ?space:Dynamic, ?mesh:Dynamic) : Dynamic;
	private function _getNegativeRotationToRef(rotMatInv:Dynamic, ?mesh:Dynamic) : Dynamic;
	/**
	 * Get the position of the bone in local or world space
	 * @returns The position of the bone
	 */
	function getPosition(?space:Space, ?mesh:Null<AbstractMesh>) : Vector3;
	/**
	 * Copy the position of the bone to a vector3 in local or world space
	 */
	function getPositionToRef(space:haxe.extern.EitherType<Space, {}>, mesh:Null<AbstractMesh>, result:Vector3) : Void;
	/**
	 * Get the absolute position of the bone (world space)
	 * @returns The absolute position of the bone
	 */
	function getAbsolutePosition(?mesh:Null<AbstractMesh>) : Vector3;
	/**
	 * Copy the absolute position of the bone (world space) to the result param
	 */
	function getAbsolutePositionToRef(mesh:AbstractMesh, result:Vector3) : Void;
	/**
	 * Compute the absolute transforms of this bone and its children
	 */
	function computeAbsoluteTransforms() : Void;
	/**
	 * Get the world direction from an axis that is in the local space of the bone
	 * @returns The world direction
	 */
	function getDirection(localAxis:Vector3, ?mesh:Null<AbstractMesh>) : Vector3;
	/**
	 * Copy the world direction to a vector3 from an axis that is in the local space of the bone
	 */
	function getDirectionToRef(localAxis:Vector3, mesh:haxe.extern.EitherType<AbstractMesh, {}>, result:Vector3) : Void;
	/**
	 * Get the euler rotation of the bone in local or world space
	 * @returns The euler rotation
	 */
	function getRotation(?space:Space, ?mesh:Null<AbstractMesh>) : Vector3;
	/**
	 * Copy the euler rotation of the bone to a vector3.  The rotation can be in either local or world space
	 */
	function getRotationToRef(space:haxe.extern.EitherType<Space, {}>, mesh:haxe.extern.EitherType<AbstractMesh, {}>, result:Vector3) : Void;
	/**
	 * Get the quaternion rotation of the bone in either local or world space
	 * @returns The quaternion rotation
	 */
	function getRotationQuaternion(?space:Space, ?mesh:Null<AbstractMesh>) : Quaternion;
	/**
	 * Copy the quaternion rotation of the bone to a quaternion.  The rotation can be in either local or world space
	 */
	function getRotationQuaternionToRef(space:haxe.extern.EitherType<Space, {}>, mesh:haxe.extern.EitherType<AbstractMesh, {}>, result:Quaternion) : Void;
	/**
	 * Get the rotation matrix of the bone in local or world space
	 * @returns The rotation matrix
	 */
	function getRotationMatrix(space:haxe.extern.EitherType<Space, {}>, mesh:AbstractMesh) : Matrix;
	/**
	 * Copy the rotation matrix of the bone to a matrix.  The rotation can be in either local or world space
	 */
	function getRotationMatrixToRef(space:haxe.extern.EitherType<Space, {}>, mesh:AbstractMesh, result:Matrix) : Void;
	/**
	 * Get the world position of a point that is in the local space of the bone
	 * @returns The world position
	 */
	function getAbsolutePositionFromLocal(position:Vector3, ?mesh:Null<AbstractMesh>) : Vector3;
	/**
	 * Get the world position of a point that is in the local space of the bone and copy it to the result param
	 */
	function getAbsolutePositionFromLocalToRef(position:Vector3, mesh:haxe.extern.EitherType<AbstractMesh, {}>, result:Vector3) : Void;
	/**
	 * Get the local position of a point that is in world space
	 * @returns The local position
	 */
	function getLocalPositionFromAbsolute(position:Vector3, ?mesh:Null<AbstractMesh>) : Vector3;
	/**
	 * Get the local position of a point that is in world space and copy it to the result param
	 */
	function getLocalPositionFromAbsoluteToRef(position:Vector3, mesh:haxe.extern.EitherType<AbstractMesh, {}>, result:Vector3) : Void;
}