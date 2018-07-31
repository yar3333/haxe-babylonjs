package babylon;

extern class ArcRotateCameraVRDeviceOrientationInput implements ICameraInput<ArcRotateCamera>
{
	var camera : ArcRotateCamera;
	var alphaCorrection : Float;
	var betaCorrection : Float;
	var gammaCorrection : Float;
	private var _alpha : Dynamic/*UNKNOW_TYPE*/;
	private var _beta : Dynamic/*UNKNOW_TYPE*/;
	private var _gamma : Dynamic/*UNKNOW_TYPE*/;
	private var _dirty : Dynamic/*UNKNOW_TYPE*/;
	private var _offsetOrientation : Dynamic/*UNKNOW_TYPE*/;
	private var _deviceOrientationHandler : Dynamic/*UNKNOW_TYPE*/;
	function new() : Void;
	function attachControl(element:HtmlElement, ?noPreventDefault:Bool) : Void;
	function _onOrientationEvent(evt:DeviceOrientationEvent) : Void;
	function checkInputs() : Void;
	function detachControl(element:HtmlElement) : Void;
	function getTypeName() : String;
	function getSimpleName() : String;
}