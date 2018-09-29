package babylonjs;

@:native("BABYLON.Camera")
extern class Camera extends Node
{
	var inputs : CameraInputsManager<Camera>;
	private static var _PERSPECTIVE_CAMERA : Dynamic;
	private static var _ORTHOGRAPHIC_CAMERA : Dynamic;
	private static var _FOVMODE_VERTICAL_FIXED : Dynamic;
	private static var _FOVMODE_HORIZONTAL_FIXED : Dynamic;
	private static var _RIG_MODE_NONE : Dynamic;
	private static var _RIG_MODE_STEREOSCOPIC_ANAGLYPH : Dynamic;
	private static var _RIG_MODE_STEREOSCOPIC_SIDEBYSIDE_PARALLEL : Dynamic;
	private static var _RIG_MODE_STEREOSCOPIC_SIDEBYSIDE_CROSSEYED : Dynamic;
	private static var _RIG_MODE_STEREOSCOPIC_OVERUNDER : Dynamic;
	private static var _RIG_MODE_VR : Dynamic;
	private static var _RIG_MODE_WEBVR : Dynamic;
	static var PERSPECTIVE_CAMERA(default, null) : Float;
	static var ORTHOGRAPHIC_CAMERA(default, null) : Float;
	/**
	 * This is the default FOV mode for perspective cameras.
	 * This setting aligns the upper and lower bounds of the viewport to the upper and lower bounds of the camera frustum.
	 */
	static var FOVMODE_VERTICAL_FIXED(default, null) : Float;
	/**
	 * This setting aligns the left and right bounds of the viewport to the left and right bounds of the camera frustum.
	 */
	static var FOVMODE_HORIZONTAL_FIXED(default, null) : Float;
	static var RIG_MODE_NONE(default, null) : Float;
	static var RIG_MODE_STEREOSCOPIC_ANAGLYPH(default, null) : Float;
	static var RIG_MODE_STEREOSCOPIC_SIDEBYSIDE_PARALLEL(default, null) : Float;
	static var RIG_MODE_STEREOSCOPIC_SIDEBYSIDE_CROSSEYED(default, null) : Float;
	static var RIG_MODE_STEREOSCOPIC_OVERUNDER(default, null) : Float;
	static var RIG_MODE_VR(default, null) : Float;
	static var RIG_MODE_WEBVR(default, null) : Float;
	static var ForceAttachControlToAlwaysPreventDefault : Bool;
	static var UseAlternateWebVRRendering : Bool;
	var position : Vector3;
	/**
	 * The vector the camera should consider as up.
	 * (default is Vector3(0, 1, 0) aka Vector3.Up())
	 */
	var upVector : Vector3;
	var orthoLeft : Null<Float>;
	var orthoRight : Null<Float>;
	var orthoBottom : Null<Float>;
	var orthoTop : Null<Float>;
	/**
	 * FOV is set in Radians. (default is 0.8)
	 */
	var fov : Float;
	var minZ : Float;
	var maxZ : Float;
	var inertia : Float;
	var mode : Float;
	var isIntermediate : Bool;
	var viewport : Viewport;
	/**
	 * Restricts the camera to viewing objects with the same layerMask.
	 * A camera with a layerMask of 1 will render mesh.layerMask & camera.layerMask!== 0
	 */
	var layerMask : Float;
	/**
	 * fovMode sets the camera frustum bounds to the viewport bounds. (default is FOVMODE_VERTICAL_FIXED)
	 */
	var fovMode : Float;
	var cameraRigMode : Float;
	var interaxialDistance : Float;
	var isStereoscopicSideBySide : Bool;
	var _cameraRigParams : Dynamic;
	var _rigCameras : Array<Camera>;
	var _rigPostProcess : Null<PostProcess>;
	private var _webvrViewMatrix : Matrix;
	var _skipRendering : Bool;
	var _alternateCamera : Camera;
	var customRenderTargets : Array<RenderTargetTexture>;
	var onViewMatrixChangedObservable : Observable<Camera>;
	var onProjectionMatrixChangedObservable : Observable<Camera>;
	var onAfterCheckInputsObservable : Observable<Camera>;
	var onRestoreStateObservable : Observable<Camera>;
	private var _computedViewMatrix : Dynamic;
	var _projectionMatrix : Matrix;
	private var _doNotComputeProjectionMatrix : Dynamic;
	private var _worldMatrix : Dynamic;
	var _postProcesses : Array<Null<PostProcess>>;
	private var _transformMatrix : Dynamic;
	var _activeMeshes : SmartArray<AbstractMesh>;
	private var _globalPosition : Vector3;
	private var _frustumPlanes : Dynamic;
	private var _refreshFrustumPlanes : Dynamic;
	private var _storedFov : Dynamic;
	private var _stateStored : Dynamic;
	var globalPosition(default, null) : Vector3;
	var rigCameras(default, null) : Array<Camera>;
	var rigPostProcess(default, null) : Null<PostProcess>;
	var leftCamera(default, null) : Null<FreeCamera>;
	var rightCamera(default, null) : Null<FreeCamera>;

	@:overload(function(name:String, position:Vector3, scene:Scene,?setActiveOnSceneIfNoneActive:Bool): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	/**
	 * Store current camera state (fov, position, etc..)
	 */
	function storeState() : Camera;
	/**
	 * Restores the camera state values if it has been stored. You must call storeState() first
	 */
	function _restoreStateValues() : Bool;
	/**
	 * Restored camera state. You must call storeState() first
	 */
	function restoreState() : Bool;
	override function getClassName() : String;
	function toString(?fullDetails:Bool) : String;
	function getActiveMeshes() : SmartArray<AbstractMesh>;
	function isActiveMesh(mesh:Mesh) : Bool;
	/**
	 * Is this camera ready to be used/rendered
	 * @return true if the camera is ready
	 */
	override function isReady(?completeCheck:Bool) : Bool;
	override function _initCache() : Void;
	override function _updateCache(?ignoreParentClass:Bool) : Void;
	override function _isSynchronized() : Bool;
	function _isSynchronizedViewMatrix() : Bool;
	function _isSynchronizedProjectionMatrix() : Bool;
	function attachControl(element:js.html.Element, ?noPreventDefault:Bool) : Void;
	function detachControl(element:js.html.Element) : Void;
	function update() : Void;
	function _checkInputs() : Void;
	/**
	 * Internal, gets the first post proces.
	 * @returns the first post process to be run on this camera.
	 */
	function _getFirstPostProcess() : Null<PostProcess>;
	private function _cascadePostProcessesToRigCams() : Dynamic;
	function attachPostProcess(postProcess:PostProcess, ?insertAt:Null<Float>) : Float;
	function detachPostProcess(postProcess:PostProcess) : Void;
	override function getWorldMatrix() : Matrix;
	function _getViewMatrix() : Matrix;
	function getViewMatrix(?force:Bool) : Matrix;
	function freezeProjectionMatrix(?projection:Matrix) : Void;
	function unfreezeProjectionMatrix() : Void;
	function getProjectionMatrix(?force:Bool) : Matrix;
	function getTranformationMatrix() : Matrix;
	private function updateFrustumPlanes() : Dynamic;
	function isInFrustum(target:ICullable) : Bool;
	function isCompletelyInFrustum(target:ICullable) : Bool;
	function getForwardRay(?length:Float, ?transform:Matrix, ?origin:Vector3) : Ray;
	/**
	 * Releases resources associated with this node.
	 */
	@:overload(function(doNotRecurse:Bool, ?disposeMaterialAndTextures:Bool):Void{})
	override function dispose() : Void;
	function getLeftTarget() : Null<Vector3>;
	function getRightTarget() : Null<Vector3>;
	function setCameraRigMode(mode:Float, rigParams:Dynamic) : Void;
	private function _getVRProjectionMatrix() : Dynamic;
	function _updateCameraRotationMatrix() : Void;
	function _updateWebVRCameraRotationMatrix() : Void;
	/**
	 * This function MUST be overwritten by the different WebVR cameras available.
	 * The context in which it is running is the RIG camera. So 'this' is the TargetCamera, left or right.
	 */
	function _getWebVRProjectionMatrix() : Matrix;
	/**
	 * This function MUST be overwritten by the different WebVR cameras available.
	 * The context in which it is running is the RIG camera. So 'this' is the TargetCamera, left or right.
	 */
	function _getWebVRViewMatrix() : Matrix;
	function setCameraRigParameter(name:String, value:Dynamic) : Void;
	/**
	 * needs to be overridden by children so sub has required properties to be copied
	 */
	function createRigCamera(name:String, cameraIndex:Float) : Null<Camera>;
	/**
	 * May need to be overridden by children
	 */
	function _updateRigCameras() : Void;
	function _setupInputs() : Void;
	function serialize() : Dynamic;
	function clone(name:String) : Camera;
	function getDirection(localAxis:Vector3) : Vector3;
	function getDirectionToRef(localAxis:Vector3, result:Vector3) : Void;
	static function GetConstructorFromName(type:String, name:String, scene:Scene, ?interaxial_distance:Float, ?isStereoscopicSideBySide:Bool) : Void->Camera;
	@:overload(function(): Matrix{})
	override function computeWorldMatrix(?force:Bool) : Matrix;
	static function Parse(parsedCamera:Dynamic, scene:Scene) : Camera;
}