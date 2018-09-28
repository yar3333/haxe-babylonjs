package babylonjs.babylon;

/**
 * This represents a WebVR camera.
 * The WebVR camera is Babylon's simple interface to interaction with Windows Mixed Reality, HTC Vive and Oculus Rift.
 * @example http://doc.babylonjs.com/how_to/webvr_camera
 */
@:native("BABYLON.WebVRFreeCamera")
extern class WebVRFreeCamera extends FreeCamera
	implements PoseControlled
{
	private var webVROptions : Dynamic;
	/**
	 * The vrDisplay tied to the camera. See https://developer.mozilla.org/en-US/docs/Web/API/VRDisplay
	 */
	var _vrDevice : Dynamic;
	/**
	 * The rawPose of the vrDevice.
	 */
	var rawPose : Null<DevicePose>;
	private var _onVREnabled : Dynamic;
	private var _specsVersion : Dynamic;
	private var _attached : Dynamic;
	private var _frameData : Dynamic;
	private var _descendants : Array<Node>;
	private var _deviceRoomPosition : Dynamic;
	private var _deviceRoomRotationQuaternion : Dynamic;
	private var _standingMatrix : Dynamic;
	/**
	 * Represents device position in babylon space.
	 */
	var devicePosition : Vector3;
	/**
	 * Represents device rotation in babylon space.
	 */
	var deviceRotationQuaternion : Quaternion;
	/**
	 * The scale of the device to be used when translating from device space to babylon space.
	 */
	var deviceScaleFactor : Float;
	private var _deviceToWorld : Dynamic;
	private var _worldToDevice : Dynamic;
	/**
	 * References to the webVR controllers for the vrDevice.
	 */
	var controllers : Array<WebVRController>;
	/**
	 * Emits an event when a controller is attached.
	 */
	var onControllersAttachedObservable : Observable<Array<WebVRController>>;
	/**
	 * Emits an event when a controller's mesh has been loaded;
	 */
	var onControllerMeshLoadedObservable : Observable<WebVRController>;
	/**
	 * If the rig cameras be used as parent instead of this camera.
	 */
	var rigParenting : Bool;
	private var _lightOnControllers : Dynamic;
	@:optional private var _defaultHeight : Dynamic;
	private var _leftController : Dynamic;
	/**
	 * The controller corrisponding to the users left hand.
	 */
	var leftController(default, null) : Null<WebVRController>;
	private var _rightController : Dynamic;
	/**
	 * The controller corrisponding to the users right hand.
	 */
	var rightController(default, null) : Null<WebVRController>;
	private var _workingVector : Dynamic;
	private var _oneVector : Dynamic;
	private var _workingMatrix : Dynamic;
	private var updateCacheCalled : Dynamic;
	private var _onGamepadConnectedObserver : Dynamic;
	private var _onGamepadDisconnectedObserver : Dynamic;

	/**
	 * This represents a WebVR camera.
	 * The WebVR camera is Babylon's simple interface to interaction with Windows Mixed Reality, HTC Vive and Oculus Rift.
	 * @example http://doc.babylonjs.com/how_to/webvr_camera
	 */
	@:overload(function(name:String, position:Vector3, scene:Scene,?webVROptions:WebVROptions): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	/**
	 * Gets the device distance from the ground in meters.
	 * @returns the distance in meters from the vrDevice to ground in device space. If standing matrix is not supported for the vrDevice 0 is returned.
	 */
	function deviceDistanceToRoomGround() : Float;
	/**
	 * Enables the standing matrix when supported. This can be used to position the user's view the correct height from the ground.
	 */
	function useStandingMatrix(?callback:Bool->Void) : Void;
	/**
	 * Enables the standing matrix when supported. This can be used to position the user's view the correct height from the ground.
	 * @returns A promise with a boolean set to if the standing matrix is supported.
	 */
	function useStandingMatrixAsync() : js.Promise<Bool>;
	/**
	 * Disposes the camera
	 */
	@:overload(function(): Void{})
	override function dispose(?doNotRecurse:Bool, ?disposeMaterialAndTextures:Bool) : Void;
	/**
	 * Gets a vrController by name.
	 * @returns the controller matching the name specified or null if not found
	 */
	function getControllerByName(name:String) : Null<WebVRController>;
	/**
	 * Casts a ray forward from the vrCamera's gaze.
	 * @returns the ray corrisponding to the gaze
	 */
	@:overload(function(?length:Float): Ray{})
	override function getForwardRay(?length:Float, ?transform:Matrix, ?origin:Vector3) : Ray;
	/**
	 * Updates the camera based on device's frame data
	 */
	override function _checkInputs() : Void;
	/**
	 * Updates the poseControlled values based on the input device pose.
	 */
	function updateFromDevice(poseData:DevicePose) : Void;
	/**
	 * WebVR's attach control will start broadcasting frames to the device.
	 * Note that in certain browsers (chrome for example) this function must be called
	 * within a user-interaction callback. Example:
	 * <pre> scene.onPointerDown = function() { camera.attachControl(canvas); }</pre>
	 */
	override function attachControl(element:js.html.Element, ?noPreventDefault:Bool) : Void;
	/**
	 * Detaches the camera from the html element and disables VR
	 */
	override function detachControl(element:js.html.Element) : Void;
	/**
	 * @returns the name of this class
	 */
	override function getClassName() : String;
	/**
	 * Calls resetPose on the vrDisplay
	 * See: https://developer.mozilla.org/en-US/docs/Web/API/VRDisplay/resetPose
	 */
	function resetToCurrentRotation() : Void;
	/**
	 * Updates the rig cameras (left and right eye)
	 */
	override function _updateRigCameras() : Void;
	/**
	 * Updates the cached values of the camera
	 */
	override function _updateCache(?ignoreParentClass:Bool) : Void;
	/**
	 * Updates the current device position and rotation in the babylon world
	 */
	override function update() : Void;
	/**
	 * Gets the view matrix of this camera (Always set to identity as left and right eye cameras contain the actual view matrix)
	 * @returns an identity matrix
	 */
	override function _getViewMatrix() : Matrix;
	/**
	 * This function is called by the two RIG cameras.
	 * 'this' is the left or right camera (and NOT (!!!) the WebVRFreeCamera instance)
	 */
	override function _getWebVRViewMatrix() : Matrix;
	override function _getWebVRProjectionMatrix() : Matrix;
	/**
	 * Initializes the controllers and their meshes
	 */
	function initControllers() : Void;
}