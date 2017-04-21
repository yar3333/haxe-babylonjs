package babylon;

extern class FreeCameraVirtualJoystickInput implements ICameraInput<FreeCamera>
{
	var camera : FreeCamera;
	private var _leftjoystick : Dynamic/*UNKNOW_TYPE*/;
	private var _rightjoystick : Dynamic/*UNKNOW_TYPE*/;
	function getLeftJoystick() : VirtualJoystick;
	function getRightJoystick() : VirtualJoystick;
	function checkInputs() : Void;
	function attachControl(element:HtmlElement, ?noPreventDefault:Bool) : Void;
	function detachControl(element:HtmlElement) : Void;
	function getTypeName() : String;
	function getSimpleName() : String;
}