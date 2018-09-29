package babylonjs;

@:native("BABYLON.TargetCamera")
extern class TargetCamera extends Camera
{
	var cameraDirection : Vector3;
	var cameraRotation : Vector2;
	var rotation : Vector3;
	var rotationQuaternion : Quaternion;
	var speed : Float;
	var noRotationConstraint : Bool;
	var lockedTarget : Dynamic;
	var _currentTarget : Vector3;
	var _viewMatrix : Matrix;
	var _camMatrix : Matrix;
	var _cameraTransformMatrix : Matrix;
	var _cameraRotationMatrix : Matrix;
	private var _rigCamTransformMatrix : Dynamic;
	var _referencePoint : Vector3;
	private var _currentUpVector : Dynamic;
	var _transformedReferencePoint : Vector3;
	private var _globalCurrentTarget : Vector3;
	private var _globalCurrentUpVector : Vector3;
	var _reset : Void->Void;
	/**
	 * Store current camera state (fov, position, etc..)
	 */
	private var _storedPosition : Dynamic;
	private var _storedRotation : Dynamic;
	private var _storedRotationQuaternion : Dynamic;

	@:overload(function(name:String, position:Vector3, scene:Scene,?setActiveOnSceneIfNoneActive:Bool): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	function getFrontPosition(distance:Float) : Vector3;
	function _getLockedTargetPosition() : Null<Vector3>;
	override function storeState() : Camera;
	/**
	 * Restored camera state. You must call storeState() first
	 */
	override function _restoreStateValues() : Bool;
	override function _initCache() : Void;
	override function _updateCache(?ignoreParentClass:Bool) : Void;
	override function _isSynchronizedViewMatrix() : Bool;
	function _computeLocalCameraSpeed() : Float;
	function setTarget(target:Vector3) : Void;
	/**
	 * Return the current target position of the camera. This value is expressed in local space.
	 */
	function getTarget() : Vector3;
	function _decideIfNeedsToMove() : Bool;
	function _updatePosition() : Void;
	override function _checkInputs() : Void;
	override function _updateCameraRotationMatrix() : Void;
	override function _getViewMatrix() : Matrix;
	function _computeViewMatrix(position:Vector3, target:Vector3, up:Vector3) : Void;
	/**
	 * @override
	 * Override Camera.createRigCamera
	 */
	override function createRigCamera(name:String, cameraIndex:Float) : Null<Camera>;
	/**
	 * @override
	 * Override Camera._updateRigCameras
	 */
	override function _updateRigCameras() : Void;
	private function _getRigCamPosition(halfSpace:Dynamic, result:Dynamic) : Dynamic;
	override function getClassName() : String;
}