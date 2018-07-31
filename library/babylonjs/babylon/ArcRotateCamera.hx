package babylon;

extern class ArcRotateCamera extends TargetCamera
{
	var alpha : Float;
	var beta : Float;
	var radius : Float;
	var target : Vector3;
	var inertialAlphaOffset : Float;
	var inertialBetaOffset : Float;
	var inertialRadiusOffset : Float;
	var lowerAlphaLimit : Dynamic;
	var upperAlphaLimit : Dynamic;
	var lowerBetaLimit : Float;
	var upperBetaLimit : Float;
	var lowerRadiusLimit : Dynamic;
	var upperRadiusLimit : Dynamic;
	var inertialPanningX : Float;
	var inertialPanningY : Float;
	var angularSensibilityX : Float;
	var angularSensibilityY : Float;
	var pinchPrecision : Float;
	var panningSensibility : Float;
	var keysUp : Array<Float>;
	var keysDown : Array<Float>;
	var keysLeft : Array<Float>;
	var keysRight : Array<Float>;
	var wheelPrecision : Float;
	var zoomOnFactor : Float;
	var targetScreenOffset : Vector2;
	var allowUpsideDown : Bool;
	var _viewMatrix : Matrix;
	var _useCtrlForPanning : Bool;
	var _panningMouseButton : Float;
	var inputs : ArcRotateCameraInputsManager;
	var _reset : Void->Void;
	var panningAxis : Vector3;
	private var _localDirection : Dynamic/*UNKNOW_TYPE*/;
	private var _transformedDirection : Dynamic/*UNKNOW_TYPE*/;
	var onCollide : AbstractMesh->Void;
	var checkCollisions : Bool;
	var collisionRadius : Vector3;
	private var _collider : Dynamic/*UNKNOW_TYPE*/;
	private var _previousPosition : Dynamic/*UNKNOW_TYPE*/;
	private var _collisionVelocity : Dynamic/*UNKNOW_TYPE*/;
	private var _newPosition : Dynamic/*UNKNOW_TYPE*/;
	private var _previousAlpha : Dynamic/*UNKNOW_TYPE*/;
	private var _previousBeta : Dynamic/*UNKNOW_TYPE*/;
	private var _previousRadius : Dynamic/*UNKNOW_TYPE*/;
	private var _collisionTriggered : Dynamic/*UNKNOW_TYPE*/;
	private var _targetBoundingCenter : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, alpha:Float, beta:Float, radius:Float, target:Vector3, scene:Scene) : Void;
	function _initCache() : Void;
	function _updateCache(?ignoreParentClass:Bool) : Void;
	private function _getTargetPosition();
	function _isSynchronizedViewMatrix() : Bool;
	function attachControl(element:HtmlElement, ?noPreventDefault:Bool, ?useCtrlForPanning:Bool, ?panningMouseButton:Float) : Void;
	function detachControl(element:HtmlElement) : Void;
	function _checkInputs() : Void;
	private function _checkLimits();
	function rebuildAnglesAndRadius() : Void;
	function setPosition(position:Vector3) : Void;
	function setTarget(target:Vector3, ?toBoundingCenter:Bool) : Void;
	function _getViewMatrix() : Matrix;
	private var _onCollisionPositionChange : Dynamic/*UNKNOW_TYPE*/;
	function zoomOn(?meshes:Array<AbstractMesh>, ?doNotUpdateMaxZ:Bool) : Void;
	function focusOn(meshesOrMinMaxVectorAndDistance:Dynamic, ?doNotUpdateMaxZ:Bool) : Void;
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
	function dispose() : Void;
	function getTypeName() : String;
}