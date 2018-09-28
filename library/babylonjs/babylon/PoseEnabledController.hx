package babylonjs.babylon;

/**
 * Defines the PoseEnabledController object that contains state of a vr capable controller
 */
@:native("BABYLON.PoseEnabledController")
extern class PoseEnabledController extends Gamepad
	implements PoseControlled
{
	private var _deviceRoomPosition : Dynamic;
	private var _deviceRoomRotationQuaternion : Dynamic;
	/**
	 * The device position in babylon space
	 */
	var devicePosition : Vector3;
	/**
	 * The device rotation in babylon space
	 */
	var deviceRotationQuaternion : Quaternion;
	/**
	 * The scale factor of the device in babylon space
	 */
	var deviceScaleFactor : Float;
	/**
	 * (Likely devicePosition should be used instead) The device position in its room space
	 */
	var position : Vector3;
	/**
	 * (Likely deviceRotationQuaternion should be used instead) The device rotation in its room space
	 */
	var rotationQuaternion : Quaternion;
	/**
	 * The type of controller (Eg. Windows mixed reality)
	 */
	var controllerType : PoseEnabledControllerType;
	private var _calculatedPosition : Dynamic;
	private var _calculatedRotation : Dynamic;
	/**
	 * The raw pose from the device
	 */
	//var rawPose : DevicePose

	var rawPose : Null<DevicePose>;
	/**
	 * Internal, the mesh attached to the controller
	 */
	var _mesh : Null<AbstractMesh>;
	private var _poseControlledCamera : Dynamic;
	private var _leftHandSystemQuaternion : Dynamic;
	/**
	 * Internal, matrix used to convert room space to babylon space
	 */
	var _deviceToWorld : Matrix;
	/**
	 * Node to be used when casting a ray from the controller
	 */
	var _pointingPoseNode : Null<AbstractMesh>;
	/**
	 * Name of the child mesh that can be used to cast a ray from the controller
	 */
	static var POINTING_POSE(default, null) : String;
	private var _workingMatrix : Dynamic;
	/**
	 * @hidden
	 */
	var _meshAttachedObservable : Observable<AbstractMesh>;
	/**
	 * The mesh that is attached to the controller
	 */
	var mesh(default, null) : Null<AbstractMesh>;

	/**
	 * Defines the PoseEnabledController object that contains state of a vr capable controller
	 */
	@:overload(function(browserGamepad:Dynamic): Void{})
	function new(id:String, index:Float, browserGamepad:Dynamic, ?leftStickX:Float, ?leftStickY:Float, ?rightStickX:Float, ?rightStickY:Float) : Void;
	/**
	 * Updates the state of the pose enbaled controller and mesh based on the current position and rotation of the controller
	 */
	override function update() : Void;
	/**
	 * Updates the state of the pose enbaled controller based on the raw pose data from the device
	 */
	function updateFromDevice(poseData:DevicePose) : Void;
	/**
	 * Attaches a mesh to the controller
	 */
	function attachToMesh(mesh:AbstractMesh) : Void;
	/**
	 * Attaches the controllers mesh to a camera
	 */
	function attachToPoseControlledCamera(camera:TargetCamera) : Void;
	/**
	 * Disposes of the controller
	 */
	override function dispose() : Void;
	/**
	 * Gets the ray of the controller in the direction the controller is pointing
	 * @returns a ray in the direction the controller is pointing
	 */
	function getForwardRay(?length:Float) : Ray;
}