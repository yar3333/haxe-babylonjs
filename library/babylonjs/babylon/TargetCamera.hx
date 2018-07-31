package babylon;

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
	private var _rigCamTransformMatrix : Dynamic/*UNKNOW_TYPE*/;
	var _referencePoint : Vector3;
	private var _defaultUpVector : Dynamic/*UNKNOW_TYPE*/;
	var _transformedReferencePoint : Vector3;
	var _lookAtTemp : Matrix;
	var _tempMatrix : Matrix;
	var _reset : Void->Void;
	function new(name:String, position:Vector3, scene:Scene) : Void;
	function getFrontPosition(distance:Float) : Vector3;
	function _getLockedTargetPosition() : Vector3;
	function _initCache() : Void;
	function _updateCache(?ignoreParentClass:Bool) : Void;
	function _isSynchronizedViewMatrix() : Bool;
	function _computeLocalCameraSpeed() : Float;
	function setTarget(target:Vector3) : Void;
	function getTarget() : Vector3;
	function _decideIfNeedsToMove() : Bool;
	function _updatePosition() : Void;
	function _checkInputs() : Void;
	private function _updateCameraRotationMatrix();
	function _getViewMatrix() : Matrix;
	/**
	 * @override
	 * Override Camera.createRigCamera
	 */
	function createRigCamera(name:String, cameraIndex:Float) : Camera;
	/**
	 * @override
	 * Override Camera._updateRigCameras
	 */
	function _updateRigCameras() : Void;
	private function _getRigCamPosition(halfSpace, result);
	function getTypeName() : String;
}