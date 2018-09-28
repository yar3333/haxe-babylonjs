package babylonjs.babylon;

@:native("BABYLON.FreeCameraVirtualJoystickInput")
extern class FreeCameraVirtualJoystickInput
	implements ICameraInput<FreeCamera>
{
	var camera : FreeCamera;
	private var _leftjoystick : Dynamic;
	private var _rightjoystick : Dynamic;

	function getLeftJoystick() : VirtualJoystick;
	function getRightJoystick() : VirtualJoystick;
	function checkInputs() : Void;
	function attachControl(element:js.html.Element, ?noPreventDefault:Bool) : Void;
	function detachControl(element:Null<js.html.Element>) : Void;
	function getClassName() : String;
	function getSimpleName() : String;
}