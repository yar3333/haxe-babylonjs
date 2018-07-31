package babylon;

extern class WebVRFreeCamera extends FreeCamera
{
	private var webVROptions : Dynamic/*UNKNOW_TYPE*/;
	var _vrDevice : Dynamic;
	private var _cacheState : Dynamic/*UNKNOW_TYPE*/;
	private var _vrEnabled : Dynamic/*UNKNOW_TYPE*/;
	private var _attached : Dynamic/*UNKNOW_TYPE*/;
	private var _oldSize : Dynamic/*UNKNOW_TYPE*/;
	private var _oldHardwareScaleFactor : Dynamic/*UNKNOW_TYPE*/;
	private var _frameData : Dynamic/*UNKNOW_TYPE*/;
	private var _quaternionCache : Dynamic/*UNKNOW_TYPE*/;
	private var _positionOffset : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, position:Vector3, scene:Scene, ?compensateDistortion:Bool, ?webVROptions:WebVROptions) : Void;
	function _checkInputs() : Void;
	function attachControl(element:HtmlElement, ?noPreventDefault:Bool) : Void;
	function detachControl(element:HtmlElement) : Void;
	function requestVRFullscreen(requestPointerlock:Bool) : Void;
	function getTypeName() : String;
	function resetToCurrentRotation() : Void;
	/**
	 *
	 * Set the position offset of the VR camera
	 * The offset will be added to the WebVR pose, after scaling it (if set).
	 *
	 * @param {Vector3} [newPosition] an optional new position. if not provided, the current camera position will be used.
	 *
	 * @memberOf WebVRFreeCamera
	 */
	function setPositionOffset(?newPosition:Vector3) : Void;
}