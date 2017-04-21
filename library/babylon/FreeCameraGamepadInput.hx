package babylon;

extern class FreeCameraGamepadInput implements ICameraInput<FreeCamera>
{
	var camera : FreeCamera;
	var gamepad : Gamepad;
	private var _gamepads : Dynamic/*UNKNOW_TYPE*/;
	var gamepadAngularSensibility : Float;
	var gamepadMoveSensibility : Float;
	function attachControl(element:HtmlElement, ?noPreventDefault:Bool) : Void;
	function detachControl(element:HtmlElement) : Void;
	function checkInputs() : Void;
	private function _onNewGameConnected(gamepad);
	function getTypeName() : String;
	function getSimpleName() : String;
}