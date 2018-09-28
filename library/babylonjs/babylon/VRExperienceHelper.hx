package babylonjs.babylon;

/**
 * Helps to quickly add VR support to an existing scene.
 * See http://doc.babylonjs.com/how_to/webvr_helper
 */
@:native("BABYLON.VRExperienceHelper")
extern class VRExperienceHelper
{
	/**
	 * Options to modify the vr experience helper's behavior. 
	 */
	var webVROptions : VRExperienceHelperOptions;
	private var _scene : Dynamic;
	private var _position : Dynamic;
	private var _btnVR : Dynamic;
	private var _btnVRDisplayed : Dynamic;
	private var _webVRsupported : Dynamic;
	private var _webVRready : Dynamic;
	private var _webVRrequesting : Dynamic;
	private var _webVRpresenting : Dynamic;
	private var _fullscreenVRpresenting : Dynamic;
	private var _canvas : Dynamic;
	private var _webVRCamera : Dynamic;
	private var _vrDeviceOrientationCamera : Dynamic;
	private var _deviceOrientationCamera : Dynamic;
	private var _existingCamera : Dynamic;
	private var _onKeyDown : Dynamic;
	private var _onVrDisplayPresentChange : Dynamic;
	private var _onVRDisplayChanged : Dynamic;
	private var _onVRRequestPresentStart : Dynamic;
	private var _onVRRequestPresentComplete : Dynamic;
	/**
	 * Observable raised when entering VR.
	 */
	var onEnteringVRObservable : Observable<VRExperienceHelper>;
	/**
	 * Observable raised when exiting VR.
	 */
	var onExitingVRObservable : Observable<VRExperienceHelper>;
	/**
	 * Observable raised when controller mesh is loaded.
	 */
	var onControllerMeshLoadedObservable : Observable<WebVRController>;
	/**
	 * Return this.onEnteringVRObservable
	 * Note: This one is for backward compatibility. Please use onEnteringVRObservable directly
	 */
	var onEnteringVR(default, null) : Observable<VRExperienceHelper>;
	/**
	 * Return this.onExitingVRObservable
	 * Note: This one is for backward compatibility. Please use onExitingVRObservable directly
	 */
	var onExitingVR(default, null) : Observable<VRExperienceHelper>;
	/**
	 * Return this.onControllerMeshLoadedObservable
	 * Note: This one is for backward compatibility. Please use onControllerMeshLoadedObservable directly
	 */
	var onControllerMeshLoaded(default, null) : Observable<WebVRController>;
	private var _rayLength : Dynamic;
	private var _useCustomVRButton : Dynamic;
	private var _teleportationRequested : Dynamic;
	private var _teleportActive : Dynamic;
	private var _floorMeshName : Dynamic;
	private var _floorMeshesCollection : Dynamic;
	private var _rotationAllowed : Dynamic;
	private var _teleportBackwardsVector : Dynamic;
	private var _teleportationTarget : Dynamic;
	private var _isDefaultTeleportationTarget : Dynamic;
	private var _postProcessMove : Dynamic;
	private var _teleportationFillColor : Dynamic;
	private var _teleportationBorderColor : Dynamic;
	private var _rotationAngle : Dynamic;
	private var _haloCenter : Dynamic;
	private var _cameraGazer : Dynamic;
	private var _padSensibilityUp : Dynamic;
	private var _padSensibilityDown : Dynamic;
	private var leftController : Dynamic;
	private var rightController : Dynamic;
	/**
	 * Observable raised when a new mesh is selected based on meshSelectionPredicate
	 */
	var onNewMeshSelected : Observable<AbstractMesh>;
	/**
	 * Observable raised when a new mesh is picked based on meshSelectionPredicate
	 */
	var onNewMeshPicked : Observable<PickingInfo>;
	private var _circleEase : Dynamic;
	/**
	 * Observable raised before camera teleportation
	 */
	var onBeforeCameraTeleport : Observable<Vector3>;
	/**
	 * Observable raised after camera teleportation
	 */
	var onAfterCameraTeleport : Observable<Vector3>;
	/**
	 * Observable raised when current selected mesh gets unselected
	 */
	var onSelectedMeshUnselected : Observable<AbstractMesh>;
	private var _raySelectionPredicate : Dynamic;
	/**
	 * To be optionaly changed by user to define custom ray selection
	 */
	var raySelectionPredicate : AbstractMesh->Bool;
	/**
	 * To be optionaly changed by user to define custom selection logic (after ray selection)
	 */
	var meshSelectionPredicate : AbstractMesh->Bool;
	/**
	 * Set teleportation enabled. If set to false camera teleportation will be disabled but camera rotation will be kept.
	 */
	var teleportationEnabled : Bool;
	private var _defaultHeight : Dynamic;
	private var _teleportationInitialized : Dynamic;
	private var _interactionsEnabled : Dynamic;
	private var _interactionsRequested : Dynamic;
	private var _displayGaze : Dynamic;
	private var _displayLaserPointer : Dynamic;
	/**
	 * The mesh used to display where the user is going to teleport.
	 * Sets the mesh to be used to display where the user is going to teleport.
	 */
	var teleportationTarget : Mesh;
	/**
	 * The mesh used to display where the user is selecting,
	 * when set bakeCurrentTransformIntoVertices will be called on the mesh.
	 * See http://doc.babylonjs.com/resources/baking_transformations
	 */
	var gazeTrackerMesh : Mesh;
	/**
	 * If the ray of the gaze should be displayed.
	 * Sets if the ray of the gaze should be displayed.
	 */
	var displayGaze : Bool;
	/**
	 * If the ray of the LaserPointer should be displayed.
	 * Sets if the ray of the LaserPointer should be displayed.
	 */
	var displayLaserPointer : Bool;
	/**
	 * The deviceOrientationCamera used as the camera when not in VR.
	 */
	var deviceOrientationCamera(default, null) : Null<DeviceOrientationCamera>;
	/**
	 * Based on the current WebVR support, returns the current VR camera used.
	 */
	var currentVRCamera(default, null) : Null<Camera>;
	/**
	 * The webVRCamera which is used when in VR.
	 */
	var webVRCamera(default, null) : WebVRFreeCamera;
	/**
	 * The deviceOrientationCamera that is used as a fallback when vr device is not connected.
	 */
	var vrDeviceOrientationCamera(default, null) : Null<VRDeviceOrientationFreeCamera>;
	private var _teleportationRequestInitiated(default, null) : Dynamic;
	private var _onResize : Dynamic;
	private var _onFullscreenChange : Dynamic;
	/**
	 * Gets a value indicating if we are currently in VR mode.
	 */
	var isInVRMode(default, null) : Bool;
	/**
	 * The position of the vr experience helper.
	 * Sets the position of the vr experience helper.
	 */
	var position : Vector3;
	private var beforeRender : Dynamic;
	private var _onNewGamepadConnected : Dynamic;
	private var _tryEnableInteractionOnController : Dynamic;
	private var _onNewGamepadDisconnected : Dynamic;
	private var _workingVector : Dynamic;
	private var _workingQuaternion : Dynamic;
	private var _workingMatrix : Dynamic;

	/**
	 * Helps to quickly add VR support to an existing scene.
	 * See http://doc.babylonjs.com/how_to/webvr_helper
	 */
	function new(scene:Scene, ?webVROptions:VRExperienceHelperOptions) : Void;
	private function _onDefaultMeshLoaded(webVRController:Dynamic) : Dynamic;
	private function onVrDisplayPresentChange() : Dynamic;
	private function onVRDisplayChanged(eventArgs:Dynamic) : Dynamic;
	private function moveButtonToBottomRight() : Dynamic;
	private function displayVRButton() : Dynamic;
	private function updateButtonVisibility() : Dynamic;
	/**
	 * Attempt to enter VR. If a headset is connected and ready, will request present on that.
	 * Otherwise, will use the fullscreen API.
	 */
	function enterVR() : Void;
	/**
	 * Attempt to exit VR, or fullscreen.
	 */
	function exitVR() : Void;
	/**
	 * Enables controllers and user interactions suck as selecting and object or clicking on an object.
	 */
	function enableInteractions() : Void;
	private function _isTeleportationFloor(mesh:Dynamic) : Dynamic;
	/**
	 * Adds a floor mesh to be used for teleportation.
	 */
	function addFloorMesh(floorMesh:Mesh) : Void;
	/**
	 * Removes a floor mesh from being used for teleportation.
	 */
	function removeFloorMesh(floorMesh:Mesh) : Void;
	/**
	 * Enables interactions and teleportation using the VR controllers and gaze.
	 */
	function enableTeleportation(?vrTeleportationOptions:VRTeleportationOptions) : Void;
	private function _enableInteractionOnController(controller:Dynamic) : Dynamic;
	private function _checkTeleportWithRay(stateObject:Dynamic, gazer:Dynamic) : Dynamic;
	private function _checkRotate(stateObject:Dynamic, gazer:Dynamic) : Dynamic;
	private function _checkTeleportBackwards(stateObject:Dynamic, gazer:Dynamic) : Dynamic;
	private function _enableTeleportationOnController(controller:Dynamic) : Dynamic;
	private function _createTeleportationCircles() : Dynamic;
	private function _displayTeleportationTarget() : Dynamic;
	private function _hideTeleportationTarget() : Dynamic;
	private function _rotateCamera(right:Dynamic) : Dynamic;
	private function _moveTeleportationSelectorTo(hit:Dynamic, gazer:Dynamic, ray:Dynamic) : Dynamic;
	private function _teleportCamera(location:Dynamic) : Dynamic;
	private function _convertNormalToDirectionOfRay(normal:Dynamic, ray:Dynamic) : Dynamic;
	private function _castRayAndSelectObject(gazer:Dynamic) : Dynamic;
	private function _notifySelectedMeshUnselected(mesh:Dynamic) : Dynamic;
	/**
	 * Sets the color of the laser ray from the vr controllers.
	 */
	function changeLaserColor(color:Color3) : Void;
	/**
	 * Sets the color of the ray from the vr headsets gaze.
	 */
	function changeGazeColor(color:Color3) : Void;
	/**
	 * Exits VR and disposes of the vr experience helper
	 */
	function dispose() : Void;
	/**
	 * Gets the name of the VRExperienceHelper class
	 * @returns "VRExperienceHelper"
	 */
	function getClassName() : String;
}