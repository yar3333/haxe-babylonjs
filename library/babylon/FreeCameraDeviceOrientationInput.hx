package babylon;

extern class FreeCameraDeviceOrientationInput implements ICameraInput<FreeCamera>
{
	private var _camera : Dynamic/*UNKNOW_TYPE*/;
	private var _screenOrientationAngle : Dynamic/*UNKNOW_TYPE*/;
	private var _constantTranform : Dynamic/*UNKNOW_TYPE*/;
	private var _screenQuaternion : Dynamic/*UNKNOW_TYPE*/;
	private var _alpha : Dynamic/*UNKNOW_TYPE*/;
	private var _beta : Dynamic/*UNKNOW_TYPE*/;
	private var _gamma : Dynamic/*UNKNOW_TYPE*/;
	function new() : Void;
	var camera : FreeCamera;
	function attachControl(element:HtmlElement, ?noPreventDefault:Bool) : Void;
	private var _orientationChanged : Dynamic/*UNKNOW_TYPE*/;
	private var _deviceOrientation : Dynamic/*UNKNOW_TYPE*/;
	function detachControl(element:HtmlElement) : Void;
	function checkInputs() : Void;
	function getTypeName() : String;
	function getSimpleName() : String;
}