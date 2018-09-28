package babylonjs.babylon;

/**
 * Takes information about the orientation of the device as reported by the deviceorientation event to orient the camera.
 * Screen rotation is taken into account.
 */
@:native("BABYLON.FreeCameraDeviceOrientationInput")
extern class FreeCameraDeviceOrientationInput
	implements ICameraInput<FreeCamera>
{
	private var _camera : Dynamic;
	private var _screenOrientationAngle : Dynamic;
	private var _constantTranform : Dynamic;
	private var _screenQuaternion : Dynamic;
	private var _alpha : Dynamic;
	private var _beta : Dynamic;
	private var _gamma : Dynamic;
	var camera : FreeCamera;
	private var _orientationChanged : Dynamic;
	private var _deviceOrientation : Dynamic;

	/**
	 * Takes information about the orientation of the device as reported by the deviceorientation event to orient the camera.
	 * Screen rotation is taken into account.
	 */
	function new() : Void;
	function attachControl(element:js.html.Element, ?noPreventDefault:Bool) : Void;
	function detachControl(element:Null<js.html.Element>) : Void;
	function checkInputs() : Void;
	function getClassName() : String;
	function getSimpleName() : String;
}