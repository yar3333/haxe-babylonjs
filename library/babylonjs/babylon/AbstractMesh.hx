package babylon;

import js.html.*;

extern class AbstractMesh extends Node implements IDisposable implements ICullable
{
	private static var _BILLBOARDMODE_NONE : Dynamic/*UNKNOW_TYPE*/;
	private static var _BILLBOARDMODE_X : Dynamic/*UNKNOW_TYPE*/;
	private static var _BILLBOARDMODE_Y : Dynamic/*UNKNOW_TYPE*/;
	private static var _BILLBOARDMODE_Z : Dynamic/*UNKNOW_TYPE*/;
	private static var _BILLBOARDMODE_ALL : Dynamic/*UNKNOW_TYPE*/;
	static var BILLBOARDMODE_NONE : Float;
	static var BILLBOARDMODE_X : Float;
	static var BILLBOARDMODE_Y : Float;
	static var BILLBOARDMODE_Z : Float;
	static var BILLBOARDMODE_ALL : Float;
	/**
	* An event triggered when this mesh collides with another one
	* @type {BABYLON.Observable}
	*/
	var onCollideObservable : Observable<AbstractMesh>;
	private var _onCollideObserver : Dynamic/*UNKNOW_TYPE*/;
	var onCollide : Void->Void;
	/**
	* An event triggered when the collision's position changes
	* @type {BABYLON.Observable}
	*/
	var onCollisionPositionChangeObservable : Observable<Vector3>;
	private var _onCollisionPositionChangeObserver : Dynamic/*UNKNOW_TYPE*/;
	var onCollisionPositionChange : Void->Void;
	/**
	* An event triggered after the world matrix is updated
	* @type {BABYLON.Observable}
	*/
	var onAfterWorldMatrixUpdateObservable : Observable<AbstractMesh>;
	var definedFacingForward : Bool;
	var position : Vector3;
	private var _rotation : Dynamic/*UNKNOW_TYPE*/;
	var _rotationQuaternion : Quaternion;
	private var _scaling : Dynamic/*UNKNOW_TYPE*/;
	var billboardMode : Float;
	var visibility : Float;
	var alphaIndex : Float;
	var infiniteDistance : Bool;
	var isVisible : Bool;
	var isPickable : Bool;
	var showBoundingBox : Bool;
	var showSubMeshesBoundingBox : Bool;
	var isBlocker : Bool;
	var renderingGroupId : Float;
	var material : Material;
	var receiveShadows : Bool;
	var renderOutline : Bool;
	var outlineColor : Color3;
	var outlineWidth : Float;
	var renderOverlay : Bool;
	var overlayColor : Color3;
	var overlayAlpha : Float;
	var hasVertexAlpha : Bool;
	var useVertexColors : Bool;
	var applyFog : Bool;
	var computeBonesUsingShaders : Bool;
	var scalingDeterminant : Float;
	var numBoneInfluencers : Float;
	var useOctreeForRenderingSelection : Bool;
	var useOctreeForPicking : Bool;
	var useOctreeForCollisions : Bool;
	var layerMask : Float;
	var alwaysSelectAsActiveMesh : Bool;
	/**
	 * This scene's action manager
	 * @type {BABYLON.ActionManager}
	*/
	var actionManager : ActionManager;
	var physicsImpostor : PhysicsImpostor;
	var onPhysicsCollide : AbstractMesh->Dynamic->Void;
	private var _checkCollisions : Dynamic/*UNKNOW_TYPE*/;
	var ellipsoid : Vector3;
	var ellipsoidOffset : Vector3;
	private var _collider : Dynamic/*UNKNOW_TYPE*/;
	private var _oldPositionForCollisions : Dynamic/*UNKNOW_TYPE*/;
	private var _diffPositionForCollisions : Dynamic/*UNKNOW_TYPE*/;
	private var _newPositionForCollisions : Dynamic/*UNKNOW_TYPE*/;
	private var _meshToBoneReferal : Dynamic/*UNKNOW_TYPE*/;
	var edgesWidth : Float;
	var edgesColor : Color4;
	var _edgesRenderer : EdgesRenderer;
	private var _localWorld : Dynamic/*UNKNOW_TYPE*/;
	var _worldMatrix : Matrix;
	private var _rotateYByPI : Dynamic/*UNKNOW_TYPE*/;
	private var _absolutePosition : Dynamic/*UNKNOW_TYPE*/;
	private var _collisionsTransformMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _collisionsScalingMatrix : Dynamic/*UNKNOW_TYPE*/;
	var _positions : Array<Vector3>;
	private var _isDirty : Dynamic/*UNKNOW_TYPE*/;
	var _masterMesh : AbstractMesh;
	var _materialDefines : MaterialDefines;
	var _boundingInfo : BoundingInfo;
	private var _pivotMatrix : Dynamic/*UNKNOW_TYPE*/;
	var _isDisposed : Bool;
	var _renderId : Float;
	var subMeshes : Array<SubMesh>;
	var _submeshesOctree : Octree<SubMesh>;
	var _intersectionsInProgress : Array<AbstractMesh>;
	private var _isWorldMatrixFrozen : Dynamic/*UNKNOW_TYPE*/;
	var _unIndexed : Bool;
	var _poseMatrix : Matrix;
	var _waitingActions : Dynamic;
	var _waitingFreezeWorldMatrix : Bool;
	private var _skeleton : Dynamic/*UNKNOW_TYPE*/;
	var _bonesTransformMatrices : Float32Array;
	var skeleton : Skeleton;
	function new(name:String, scene:Scene) : Void;
	/**
	 * @param {boolean} fullDetails - support for multiple levels of logging within scene loading
	 */
	function toString(?fullDetails:Bool) : String;
	/**
	 * Getting the rotation object.
	 * If rotation quaternion is set, this vector will (almost always) be the Zero vector!
	 */
	var rotation : Vector3;
	var scaling : Vector3;
	var rotationQuaternion : Quaternion;
	function updatePoseMatrix(matrix:Matrix) : Void;
	function getPoseMatrix() : Matrix;
	function disableEdgesRendering() : Void;
	function enableEdgesRendering(?epsilon:Float, ?checkVerticesInsteadOfIndices:Bool) : Void;
	var isBlocked : Bool;
	function getLOD(camera:Camera) : AbstractMesh;
	function getTotalVertices() : Float;
	function getIndices() : haxe.extern.EitherType<Array<Float>, Int32Array>;
	function getVerticesData(kind:String) : haxe.extern.EitherType<Array<Float>, Float32Array>;
	function isVerticesDataPresent(kind:String) : Bool;
	function getBoundingInfo() : BoundingInfo;
	function setBoundingInfo(boundingInfo:BoundingInfo) : Void;
	var useBones : Bool;
	function _preActivate() : Void;
	function _preActivateForIntermediateRendering(renderId:Float) : Void;
	function _activate(renderId:Float) : Void;
	function getWorldMatrix() : Matrix;
	var worldMatrixFromCache : Matrix;
	var absolutePosition : Vector3;
	function freezeWorldMatrix() : Void;
	function unfreezeWorldMatrix() : Void;
	var isWorldMatrixFrozen : Bool;
	private static var _rotationAxisCache : Dynamic/*UNKNOW_TYPE*/;
	function rotate(axis:Vector3, amount:Float, ?space:Space) : Void;
	function translate(axis:Vector3, distance:Float, ?space:Space) : Void;
	function getAbsolutePosition() : Vector3;
	function setAbsolutePosition(absolutePosition:Vector3) : Void;
	/**
	 * Perform relative position change from the point of view of behind the front of the mesh.
	 * This is performed taking into account the meshes current rotation, so you do not have to care.
	 * Supports definition of mesh facing forward or backward.
	 * @param {number} amountRight
	 * @param {number} amountUp
	 * @param {number} amountForward
	 */
	function movePOV(amountRight:Float, amountUp:Float, amountForward:Float) : Void;
	/**
	 * Calculate relative position change from the point of view of behind the front of the mesh.
	 * This is performed taking into account the meshes current rotation, so you do not have to care.
	 * Supports definition of mesh facing forward or backward.
	 * @param {number} amountRight
	 * @param {number} amountUp
	 * @param {number} amountForward
	 */
	function calcMovePOV(amountRight:Float, amountUp:Float, amountForward:Float) : Vector3;
	/**
	 * Perform relative rotation change from the point of view of behind the front of the mesh.
	 * Supports definition of mesh facing forward or backward.
	 * @param {number} flipBack
	 * @param {number} twirlClockwise
	 * @param {number} tiltRight
	 */
	function rotatePOV(flipBack:Float, twirlClockwise:Float, tiltRight:Float) : Void;
	/**
	 * Calculate relative rotation change from the point of view of behind the front of the mesh.
	 * Supports definition of mesh facing forward or backward.
	 * @param {number} flipBack
	 * @param {number} twirlClockwise
	 * @param {number} tiltRight
	 */
	function calcRotatePOV(flipBack:Float, twirlClockwise:Float, tiltRight:Float) : Vector3;
	function setPivotMatrix(matrix:Matrix) : Void;
	function getPivotMatrix() : Matrix;
	function _isSynchronized() : Bool;
	function _initCache() : Void;
	function markAsDirty(property:String) : Void;
	function _updateBoundingInfo() : Void;
	function _updateSubMeshesBoundingInfo(matrix:Matrix) : Void;
	function computeWorldMatrix(?force:Bool) : Matrix;
	/**
	* If you'd like to be callbacked after the mesh position, rotation or scaling has been updated
	* @param func: callback function to add
	*/
	function registerAfterWorldMatrixUpdate(func:AbstractMesh->Void) : Void;
	function unregisterAfterWorldMatrixUpdate(func:AbstractMesh->Void) : Void;
	function setPositionWithLocalVector(vector3:Vector3) : Void;
	function getPositionExpressedInLocalSpace() : Vector3;
	function locallyTranslate(vector3:Vector3) : Void;
	private static var _lookAtVectorCache : Dynamic/*UNKNOW_TYPE*/;
	function lookAt(targetPoint:Vector3, ?yawCor:Float, ?pitchCor:Float, ?rollCor:Float, ?space:Space) : Void;
	function attachToBone(bone:Bone, affectedMesh:AbstractMesh) : Void;
	function detachFromBone() : Void;
	function isInFrustum(frustumPlanes:Array<Plane>) : Bool;
	function isCompletelyInFrustum(frustumPlanes:Array<Plane>) : Bool;
	function intersectsMesh(mesh:haxe.extern.EitherType<AbstractMesh, SolidParticle>, ?precise:Bool) : Bool;
	function intersectsPoint(point:Vector3) : Bool;
	/**
	 *  @Deprecated. Use new PhysicsImpostor instead.
	 * */
	function setPhysicsState(?impostor:Dynamic, ?options:PhysicsImpostorParameters) : Dynamic;
	function getPhysicsImpostor() : PhysicsImpostor;
	/**
	 * @Deprecated. Use getPhysicsImpostor().getParam("mass");
	 */
	function getPhysicsMass() : Float;
	/**
	 * @Deprecated. Use getPhysicsImpostor().getParam("friction");
	 */
	function getPhysicsFriction() : Float;
	/**
	 * @Deprecated. Use getPhysicsImpostor().getParam("restitution");
	 */
	function getPhysicsRestitution() : Float;
	function getPositionInCameraSpace(?camera:Camera) : Vector3;
	function getDistanceToCamera(?camera:Camera) : Float;
	function applyImpulse(force:Vector3, contactPoint:Vector3) : Void;
	function setPhysicsLinkWith(otherMesh:Mesh, pivot1:Vector3, pivot2:Vector3, ?options:Dynamic) : Void;
	/**
	 * @Deprecated
	 */
	function updatePhysicsBodyPosition() : Void;
	/**
	 * @Deprecated
	 * Calling this function is not needed anymore.
	 * The physics engine takes care of transofmration automatically.
	 */
	function updatePhysicsBody() : Void;
	var checkCollisions : Bool;
	function moveWithCollisions(velocity:Vector3) : Void;
	private var _onCollisionPositionChange : Dynamic/*UNKNOW_TYPE*/;
	/**
	* This function will create an octree to help select the right submeshes for rendering, picking and collisions
	* Please note that you must have a decent number of submeshes to get performance improvements when using octree
	*/
	function createOrUpdateSubmeshesOctree(?maxCapacity:Float, ?maxDepth:Float) : Octree<SubMesh>;
	function _collideForSubMesh(subMesh:SubMesh, transformMatrix:Matrix, collider:Collider) : Void;
	function _processCollisionsForSubMeshes(collider:Collider, transformMatrix:Matrix) : Void;
	function _checkCollision(collider:Collider) : Void;
	function _generatePointsArray() : Bool;
	function intersects(ray:Ray, ?fastCheck:Bool) : PickingInfo;
	function clone(name:String, newParent:Node, ?doNotCloneChildren:Bool) : AbstractMesh;
	function releaseSubMeshes() : Void;
	function dispose(?doNotRecurse:Bool) : Void;
	function getDirection(localAxis:Vector3) : Vector3;
	function getDirectionToRef(localAxis:Vector3, result:Vector3) : Void;
	function setPivotPoint(point:Vector3, ?space:Space) : Void;
	function getPivotPoint() : Vector3;
	function getPivotPointToRef(result:Vector3) : Void;
	function getAbsolutePivotPoint() : Vector3;
	function getAbsolutePivotPointToRef(result:Vector3) : Void;
}