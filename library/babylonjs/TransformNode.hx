package babylonjs;

@:native("BABYLON.TransformNode")
extern class TransformNode extends Node
{
	static var BILLBOARDMODE_NONE : Float;
	static var BILLBOARDMODE_X : Float;
	static var BILLBOARDMODE_Y : Float;
	static var BILLBOARDMODE_Z : Float;
	static var BILLBOARDMODE_ALL : Float;
	private var _forward : Dynamic;
	private var _forwardInverted : Dynamic;
	private var _up : Dynamic;
	private var _right : Dynamic;
	private var _rightInverted : Dynamic;
	private var _rotation : Dynamic;
	private var _rotationQuaternion : Dynamic;
	private var _scaling : Vector3;
	private var _isDirty : Bool;
	private var _transformToBoneReferal : Dynamic;
	var billboardMode : Float;
	var scalingDeterminant : Float;
	var infiniteDistance : Bool;
	var position : Vector3;
	var _poseMatrix : Matrix;
	private var _localWorld : Dynamic;
	var _worldMatrix : Matrix;
	var _worldMatrixDeterminant : Float;
	private var _absolutePosition : Dynamic;
	private var _pivotMatrix : Dynamic;
	private var _pivotMatrixInverse : Dynamic;
	private var _postMultiplyPivotMatrix : Dynamic;
	private var _isWorldMatrixFrozen : Bool;
	/**
	 * An event triggered after the world matrix is updated
	 */
	var onAfterWorldMatrixUpdateObservable : Observable<TransformNode>;
	/**
	 * Rotation property : a Vector3 depicting the rotation value in radians around each local axis X, Y, Z.
	 * If rotation quaternion is set, this Vector3 will (almost always) be the Zero vector!
	 * Default : (0.0, 0.0, 0.0)
	 */
	var rotation : Vector3;
	/**
	 * Scaling property : a Vector3 depicting the mesh scaling along each local axis X, Y, Z.
	 * Default : (1.0, 1.0, 1.0)
	 * Scaling property : a Vector3 depicting the mesh scaling along each local axis X, Y, Z.
	 * Default : (1.0, 1.0, 1.0)
	 */
	var scaling : Vector3;
	/**
	 * Rotation Quaternion property : this a Quaternion object depicting the mesh rotation by using a unit quaternion.
	 * It's null by default.
	 * If set, only the rotationQuaternion is then used to compute the mesh rotation and its property `.rotation\ is then ignored and set to (0.0, 0.0, 0.0)
	 */
	var rotationQuaternion : Null<Quaternion>;
	/**
	 * The forward direction of that transform in world space.
	 */
	var forward(default, null) : Vector3;
	/**
	 * The up direction of that transform in world space.
	 */
	var up(default, null) : Vector3;
	/**
	 * The right direction of that transform in world space.
	 */
	var right(default, null) : Vector3;
	/**
	 * Returns directly the latest state of the mesh World matrix.
	 * A Matrix is returned.
	 */
	var worldMatrixFromCache(default, null) : Matrix;
	/**
	 * Returns the current mesh absolute position.
	 * Retuns a Vector3.
	 */
	var absolutePosition(default, null) : Vector3;
	/**
	 * True if the World matrix has been frozen.
	 * Returns a boolean.
	 */
	var isWorldMatrixFrozen(default, null) : Bool;
	private static var _lookAtVectorCache : Dynamic;
	private var _nonUniformScaling : Dynamic;
	var nonUniformScaling(default, null) : Bool;
	private static var _rotationAxisCache : Dynamic;

	@:overload(function(name:String,?scene:Null<Scene>,?isPure:Bool): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	/**
	 * Gets a string idenfifying the name of the class
	 * @returns "TransformNode" string
	 */
	override function getClassName() : String;
	/**
	 * Returns the latest update of the World matrix
	 * Returns a Matrix.
	 */
	override function getWorldMatrix() : Matrix;
	/**
	 * @hidden 
	 */
	override function _getWorldMatrixDeterminant() : Float;
	/**
	 * Copies the paramater passed Matrix into the mesh Pose matrix.
	 * Returns the TransformNode.
	 */
	function updatePoseMatrix(matrix:Matrix) : TransformNode;
	/**
	 * Returns the mesh Pose matrix.
	 * Returned object : Matrix
	 */
	function getPoseMatrix() : Matrix;
	override function _isSynchronized() : Bool;
	override function _initCache() : Void;
	function markAsDirty(property:String) : TransformNode;
	/**
	 * Sets a new matrix to apply before all other transformation
	 * @returns the current TransformNode
	 */
	function setPreTransformMatrix(matrix:Matrix) : TransformNode;
	/**
	 * Sets a new pivot matrix to the current node
	 * @returns the current TransformNode
	 */
	function setPivotMatrix(matrix:Matrix, ?postMultiplyPivotMatrix:Bool) : TransformNode;
	/**
	 * Returns the mesh pivot matrix.
	 * Default : Identity.
	 * A Matrix is returned.
	 */
	function getPivotMatrix() : Matrix;
	/**
	 * Prevents the World matrix to be computed any longer.
	 * Returns the TransformNode.
	 */
	function freezeWorldMatrix() : TransformNode;
	/**
	 * Allows back the World matrix computation.
	 * Returns the TransformNode.
	 */
	function unfreezeWorldMatrix() : TransformNode;
	/**
	 * Retuns the mesh absolute position in the World.
	 * Returns a Vector3.
	 */
	function getAbsolutePosition() : Vector3;
	/**
	 * Sets the mesh absolute position in the World from a Vector3 or an Array(3).
	 * Returns the TransformNode.
	 */
	function setAbsolutePosition(absolutePosition:Vector3) : TransformNode;
	/**
	 * Sets the mesh position in its local space.
	 * Returns the TransformNode.
	 */
	function setPositionWithLocalVector(vector3:Vector3) : TransformNode;
	/**
	 * Returns the mesh position in the local space from the current World matrix values.
	 * Returns a new Vector3.
	 */
	function getPositionExpressedInLocalSpace() : Vector3;
	/**
	 * Translates the mesh along the passed Vector3 in its local space.
	 * Returns the TransformNode.
	 */
	function locallyTranslate(vector3:Vector3) : TransformNode;
	/**
	 * Orients a mesh towards a target point. Mesh must be drawn facing user.
	 * @returns the TransformNode.
	 */
	function lookAt(targetPoint:Vector3, ?yawCor:Float, ?pitchCor:Float, ?rollCor:Float, ?space:Space) : TransformNode;
	/**
	 * Returns a new Vector3 what is the localAxis, expressed in the mesh local space, rotated like the mesh.
	 * This Vector3 is expressed in the World space.
	 */
	function getDirection(localAxis:Vector3) : Vector3;
	/**
	 * Sets the Vector3 "result" as the rotated Vector3 "localAxis" in the same rotation than the mesh.
	 * localAxis is expressed in the mesh local space.
	 * result is computed in the Wordl space from the mesh World matrix.
	 * Returns the TransformNode.
	 */
	function getDirectionToRef(localAxis:Vector3, result:Vector3) : TransformNode;
	/**
	 * Sets a new pivot point to the current node
	 * @returns the current TransformNode
	 */
	function setPivotPoint(point:Vector3, ?space:Space) : TransformNode;
	/**
	 * Returns a new Vector3 set with the mesh pivot point coordinates in the local space.
	 */
	function getPivotPoint() : Vector3;
	/**
	 * Sets the passed Vector3 "result" with the coordinates of the mesh pivot point in the local space.
	 * Returns the TransformNode.
	 */
	function getPivotPointToRef(result:Vector3) : TransformNode;
	/**
	 * Returns a new Vector3 set with the mesh pivot point World coordinates.
	 */
	function getAbsolutePivotPoint() : Vector3;
	/**
	 * Sets the Vector3 "result" coordinates with the mesh pivot point World coordinates.
	 * Returns the TransformNode.
	 */
	function getAbsolutePivotPointToRef(result:Vector3) : TransformNode;
	/**
	 * Defines the passed node as the parent of the current node.
	 * The node will remain exactly where it is and its position / rotation will be updated accordingly
	 * Returns the TransformNode.
	 */
	function setParent(node:Null<Node>) : TransformNode;
	function _updateNonUniformScalingState(value:Bool) : Bool;
	/**
	 * Attach the current TransformNode to another TransformNode associated with a bone
	 */
	function attachToBone(bone:Bone, affectedTransformNode:TransformNode) : TransformNode;
	function detachFromBone() : TransformNode;
	/**
	 * Rotates the mesh around the axis vector for the passed angle (amount) expressed in radians, in the given space.
	 * space (default LOCAL) can be either BABYLON.Space.LOCAL, either BABYLON.Space.WORLD.
	 * Note that the property `rotationQuaternion` is then automatically updated and the property `rotation` is set to (0,0,0) and no longer used.
	 * The passed axis is also normalized.
	 * Returns the TransformNode.
	 */
	function rotate(axis:Vector3, amount:Float, ?space:Space) : TransformNode;
	/**
	 * Rotates the mesh around the axis vector for the passed angle (amount) expressed in radians, in world space.
	 * Note that the property `rotationQuaternion` is then automatically updated and the property `rotation` is set to (0,0,0) and no longer used.
	 * The passed axis is also normalized.
	 * Returns the TransformNode.
	 * Method is based on http://www.euclideanspace.com/maths/geometry/affine/aroundPoint/index.htm
	 */
	function rotateAround(point:Vector3, axis:Vector3, amount:Float) : TransformNode;
	/**
	 * Translates the mesh along the axis vector for the passed distance in the given space.
	 * space (default LOCAL) can be either BABYLON.Space.LOCAL, either BABYLON.Space.WORLD.
	 * Returns the TransformNode.
	 */
	function translate(axis:Vector3, distance:Float, ?space:Space) : TransformNode;
	/**
	 * Adds a rotation step to the mesh current rotation.
	 * x, y, z are Euler angles expressed in radians.
	 * This methods updates the current mesh rotation, either mesh.rotation, either mesh.rotationQuaternion if it's set.
	 * This means this rotation is made in the mesh local space only.
	 * It's useful to set a custom rotation order different from the BJS standard one YXZ.
	 * Example : this rotates the mesh first around its local X axis, then around its local Z axis, finally around its local Y axis.
	 * ```javascript
	 * mesh.addRotation(x1, 0, 0).addRotation(0, 0, z2).addRotation(0, 0, y3);
	 * ```
	 * Note that `addRotation()` accumulates the passed rotation values to the current ones and computes the .rotation or .rotationQuaternion updated values.
	 * Under the hood, only quaternions are used. So it's a little faster is you use .rotationQuaternion because it doesn't need to translate them back to Euler angles.
	 * Returns the TransformNode.
	 */
	function addRotation(x:Float, y:Float, z:Float) : TransformNode;
	/**
	 * Computes the mesh World matrix and returns it.
	 * If the mesh world matrix is frozen, this computation does nothing more than returning the last frozen values.
	 * If the parameter `force` is let to `false` (default), the current cached World matrix is returned.
	 * If the parameter `force`is set to `true`, the actual computation is done.
	 * Returns the mesh World Matrix.
	 */
	override function computeWorldMatrix(?force:Bool) : Matrix;
	function _afterComputeWorldMatrix() : Void;
	/**
	 * If you'd like to be called back after the mesh position, rotation or scaling has been updated.
	 */
	function registerAfterWorldMatrixUpdate(func:TransformNode->Void) : TransformNode;
	/**
	 * Removes a registered callback function.
	 * Returns the TransformNode.
	 */
	function unregisterAfterWorldMatrixUpdate(func:TransformNode->Void) : TransformNode;
	/**
	 * Clone the current transform node
	 * Returns the new transform node
	 */
	function clone(name:String, newParent:Node, ?doNotCloneChildren:Bool) : Null<TransformNode>;
	function serialize(?currentSerializationObject:Dynamic) : Dynamic;
	/**
	 * Returns a new TransformNode object parsed from the source provided.
	 * The parameter `parsedMesh` is the source.
	 * The parameter `rootUrl` is a string, it's the root URL to prefix the `delayLoadingFile` property with
	 */
	static function Parse(parsedTransformNode:Dynamic, scene:Scene, rootUrl:String) : TransformNode;
	/**
	 * Releases resources associated with this transform node.
	 */
	@:overload(function(doNotRecurse:Bool, ?disposeMaterialAndTextures:Bool):Void{})
	override function dispose() : Void;
}