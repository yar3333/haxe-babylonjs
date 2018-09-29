package babylonjs;

@:native("BABYLON.ArcRotateCameraVRDeviceOrientationInput")
extern class ArcRotateCameraVRDeviceOrientationInput
	implements ICameraInput<ArcRotateCamera>
{
	var camera : ArcRotateCamera;
	var alphaCorrection : Float;
	var betaCorrection : Float;
	var gammaCorrection : Float;
	private var _alpha : Dynamic;
	private var _gamma : Dynamic;
	private var _dirty : Dynamic;
	private var _deviceOrientationHandler : Dynamic;

	function new() : Void;
	function attachControl(element:js.html.Element, ?noPreventDefault:Bool) : Void;
	function _onOrientationEvent(evt:js.html.DeviceOrientationEvent) : Void;
	function checkInputs() : Void;
	function detachControl(element:Null<js.html.Element>) : Void;
	function getClassName() : String;
	function getSimpleName() : String;
}