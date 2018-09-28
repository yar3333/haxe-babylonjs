package babylonjs.babylon;

@:native("BABYLON.ArcRotateCamera")
extern class ArcRotateCamera extends TargetCamera
{
	var alpha : Float;
	var beta : Float;
	var radius : Float;
	private var _target : Vector3;
	private var _targetHost : Null<AbstractMesh>;
	var target : Vector3;
	var inertialAlphaOffset : Float;
	var inertialBetaOffset : Float;
	var inertialRadiusOffset : Float;
	var lowerAlphaLimit : Null<Float>;
	var upperAlphaLimit : Null<Float>;
	var lowerBetaLimit : Float;
	var upperBetaLimit : Float;
	var lowerRadiusLimit : Null<Float>;
	var upperRadiusLimit : Null<Float>;
	var inertialPanningX : Float;
	var inertialPanningY : Float;
	var pinchToPanMaxDistance : Float;
	var panningDistanceLimit : Null<Float>;
	var panningOriginTarget : Vector3;
	var panningInertia : Float;
	var angularSensibilityX : Float;
	var angularSensibilityY : Float;
	var pinchPrecision : Float;
	var pinchDeltaPercentage : Float;
	var panningSensibility : Float;
	var keysUp : Array<Float>;
	var keysDown : Array<Float>;
	var keysLeft : Array<Float>;
	var keysRight : Array<Float>;
	var wheelPrecision : Float;
	var wheelDeltaPercentage : Float;
	var zoomOnFactor : Float;
	var targetScreenOffset : Vector2;
	var allowUpsideDown : Bool;
	//var _viewMatrix : Matrix;
	var _useCtrlForPanning : Bool;
	var _panningMouseButton : Float;
	//var inputs : ArcRotateCameraInputsManager;
	//var _reset : Void->Void;
	var panningAxis : Vector3;
	private var _localDirection : Vector3;
	private var _transformedDirection : Vector3;
	private var _bouncingBehavior : Dynamic;
	var bouncingBehavior(default, null) : Null<BouncingBehavior>;
	var useBouncingBehavior : Bool;
	private var _framingBehavior : Dynamic;
	var framingBehavior(default, null) : Null<FramingBehavior>;
	var useFramingBehavior : Bool;
	private var _autoRotationBehavior : Dynamic;
	var autoRotationBehavior(default, null) : Null<AutoRotationBehavior>;
	var useAutoRotationBehavior : Bool;
	var onMeshTargetChangedObservable : Observable<Null<AbstractMesh>>;
	var onCollide : AbstractMesh->Void;
	var checkCollisions : Bool;
	var collisionRadius : Vector3;
	private var _collider : Collider;
	private var _previousPosition : Vector3;
	private var _collisionVelocity : Vector3;
	private var _newPosition : Vector3;
	private var _previousAlpha : Float;
	private var _previousBeta : Float;
	private var _previousRadius : Float;
	private var _collisionTriggered : Bool;
	private var _targetBoundingCenter : Null<Vector3>;
	private var _computationVector : Dynamic;
	/**
	 * Store current camera state (fov, position, etc..)
	 */
	private var _storedAlpha : Dynamic;
	private var _storedBeta : Dynamic;
	private var _storedRadius : Dynamic;
	private var _storedTarget : Dynamic;
	private var _onCollisionPositionChange : Float->Vector3->Null<AbstractMesh>->Void;

	@:overload(function(name:String, alpha:Float, beta:Float, radius:Float, target:Vector3, scene:Scene,?setActiveOnSceneIfNoneActive:Bool): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	override function _initCache() : Void;
	override function _updateCache(?ignoreParentClass:Bool) : Void;
	function _getTargetPosition() : Vector3;
	override function storeState() : Camera;
	/**
	 * Restored camera state. You must call storeState() first
	 */
	override function _restoreStateValues() : Bool;
	override function _isSynchronizedViewMatrix() : Bool;
	@:overload(function(element:js.html.Element,?noPreventDefault:Bool,?useCtrlForPanning:Bool,?panningMouseButton:Float): Void{})
	override function attachControl(element:js.html.Element, ?noPreventDefault:Bool) : Void;
	override function detachControl(element:js.html.Element) : Void;
	override function _checkInputs() : Void;
	function _checkLimits() : Void;
	function rebuildAnglesAndRadius() : Void;
	function setPosition(position:Vector3) : Void;
	@:overload(function(target:haxe.extern.EitherType<AbstractMesh, Vector3>,?toBoundingCenter:Bool,?allowSamePosition:Bool): Void{})
	override function setTarget(target:Vector3) : Void;
	override function _getViewMatrix() : Matrix;
	function zoomOn(?meshes:Array<AbstractMesh>, ?doNotUpdateMaxZ:Bool) : Void;
	function focusOn(meshesOrMinMaxVectorAndDistance:haxe.extern.EitherType<Array<AbstractMesh>, { var min : Vector3; var max : Vector3; var distance : Float; }>, ?doNotUpdateMaxZ:Bool) : Void;
	/**
	 * @override
	 * Override Camera.createRigCamera
	 */
	@:overload(function(name:String, cameraIndex:Float): Camera{})
	override function createRigCamera(name:String, cameraIndex:Float) : Null<Camera>;
	/**
	 * @override
	 * Override Camera._updateRigCameras
	 */
	override function _updateRigCameras() : Void;
	@:overload(function(): Void{})
	override function dispose(?doNotRecurse:Bool, ?disposeMaterialAndTextures:Bool) : Void;
	override function getClassName() : String;
}