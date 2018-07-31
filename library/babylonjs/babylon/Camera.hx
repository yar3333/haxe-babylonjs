package babylon;

extern class Camera extends Node
{
	var inputs : CameraInputsManager<Camera>;
	private static var _PERSPECTIVE_CAMERA : Dynamic/*UNKNOW_TYPE*/;
	private static var _ORTHOGRAPHIC_CAMERA : Dynamic/*UNKNOW_TYPE*/;
	private static var _FOVMODE_VERTICAL_FIXED : Dynamic/*UNKNOW_TYPE*/;
	private static var _FOVMODE_HORIZONTAL_FIXED : Dynamic/*UNKNOW_TYPE*/;
	private static var _RIG_MODE_NONE : Dynamic/*UNKNOW_TYPE*/;
	private static var _RIG_MODE_STEREOSCOPIC_ANAGLYPH : Dynamic/*UNKNOW_TYPE*/;
	private static var _RIG_MODE_STEREOSCOPIC_SIDEBYSIDE_PARALLEL : Dynamic/*UNKNOW_TYPE*/;
	private static var _RIG_MODE_STEREOSCOPIC_SIDEBYSIDE_CROSSEYED : Dynamic/*UNKNOW_TYPE*/;
	private static var _RIG_MODE_STEREOSCOPIC_OVERUNDER : Dynamic/*UNKNOW_TYPE*/;
	private static var _RIG_MODE_VR : Dynamic/*UNKNOW_TYPE*/;
	private static var _RIG_MODE_WEBVR : Dynamic/*UNKNOW_TYPE*/;
	static var PERSPECTIVE_CAMERA : Float;
	static var ORTHOGRAPHIC_CAMERA : Float;
	static var FOVMODE_VERTICAL_FIXED : Float;
	static var FOVMODE_HORIZONTAL_FIXED : Float;
	static var RIG_MODE_NONE : Float;
	static var RIG_MODE_STEREOSCOPIC_ANAGLYPH : Float;
	static var RIG_MODE_STEREOSCOPIC_SIDEBYSIDE_PARALLEL : Float;
	static var RIG_MODE_STEREOSCOPIC_SIDEBYSIDE_CROSSEYED : Float;
	static var RIG_MODE_STEREOSCOPIC_OVERUNDER : Float;
	static var RIG_MODE_VR : Float;
	static var RIG_MODE_WEBVR : Float;
	static var ForceAttachControlToAlwaysPreventDefault : Bool;
	var position : Vector3;
	var upVector : Vector3;
	var orthoLeft : Dynamic;
	var orthoRight : Dynamic;
	var orthoBottom : Dynamic;
	var orthoTop : Dynamic;
	var fov : Float;
	var minZ : Float;
	var maxZ : Float;
	var inertia : Float;
	var mode : Float;
	var isIntermediate : Bool;
	var viewport : Viewport;
	var layerMask : Float;
	var fovMode : Float;
	var cameraRigMode : Float;
	var interaxialDistance : Float;
	var isStereoscopicSideBySide : Bool;
	var _cameraRigParams : Dynamic;
	var _rigCameras : Array<Camera>;
	var _rigPostProcess : PostProcess;
	private var _computedViewMatrix : Dynamic/*UNKNOW_TYPE*/;
	var _projectionMatrix : Matrix;
	private var _doNotComputeProjectionMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _worldMatrix : Dynamic/*UNKNOW_TYPE*/;
	var _postProcesses : Array<PostProcess>;
	private var _transformMatrix : Dynamic/*UNKNOW_TYPE*/;
	private var _webvrViewMatrix : Dynamic/*UNKNOW_TYPE*/;
	var _activeMeshes : SmartArray<Mesh>;
	private var _globalPosition : Dynamic/*UNKNOW_TYPE*/;
	private var _frustumPlanes : Dynamic/*UNKNOW_TYPE*/;
	private var _refreshFrustumPlanes : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, position:Vector3, scene:Scene) : Void;
	/**
	 * @param {boolean} fullDetails - support for multiple levels of logging within scene loading
	 */
	function toString(?fullDetails:Bool) : String;
	var globalPosition : Vector3;
	function getActiveMeshes() : SmartArray<Mesh>;
	function isActiveMesh(mesh:Mesh) : Bool;
	function _initCache() : Void;
	function _updateCache(?ignoreParentClass:Bool) : Void;
	function _updateFromScene() : Void;
	function _isSynchronized() : Bool;
	function _isSynchronizedViewMatrix() : Bool;
	function _isSynchronizedProjectionMatrix() : Bool;
	function attachControl(element:HtmlElement, ?noPreventDefault:Bool) : Void;
	function detachControl(element:HtmlElement) : Void;
	function update() : Void;
	function _checkInputs() : Void;
	private function _cascadePostProcessesToRigCams();
	function attachPostProcess(postProcess:PostProcess, ?insertAt:Float) : Float;
	function detachPostProcess(postProcess:PostProcess, ?atIndices:Dynamic) : Array<Float>;
	function getWorldMatrix() : Matrix;
	function _getViewMatrix() : Matrix;
	function getViewMatrix(?force:Bool) : Matrix;
	function _computeViewMatrix(?force:Bool) : Matrix;
	function freezeProjectionMatrix(?projection:Matrix) : Void;
	function unfreezeProjectionMatrix() : Void;
	function getProjectionMatrix(?force:Bool) : Matrix;
	function getTranformationMatrix() : Matrix;
	private function updateFrustumPlanes();
	function isInFrustum(target:ICullable) : Bool;
	function isCompletelyInFrustum(target:ICullable) : Bool;
	function dispose() : Void;
	function setCameraRigMode(mode:Float, rigParams:Dynamic) : Void;
	private function _getVRProjectionMatrix();
	private function _getWebVRProjectionMatrix();
	private function _getWebVRViewMatrix();
	function setCameraRigParameter(name:String, value:Dynamic) : Void;
	/**
	 * needs to be overridden by children so sub has required properties to be copied
	 */
	function createRigCamera(name:String, cameraIndex:Float) : Camera;
	/**
	 * May need to be overridden by children
	 */
	function _updateRigCameras() : Void;
	function _setupInputs() : Void;
	function serialize() : Dynamic;
	function getTypeName() : String;
	function clone(name:String) : Camera;
	function getDirection(localAxis:Vector3) : Vector3;
	function getDirectionToRef(localAxis:Vector3, result:Vector3) : Void;
	static function GetConstructorFromName(type:String, name:String, scene:Scene, ?interaxial_distance:Float, ?isStereoscopicSideBySide:Bool) : Void->Camera;
	static function Parse(parsedCamera:Dynamic, scene:Scene) : Camera;
}