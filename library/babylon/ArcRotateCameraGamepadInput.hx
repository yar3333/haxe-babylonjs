package babylon;

extern class ArcRotateCameraGamepadInput implements ICameraInput<ArcRotateCamera>
{
	var camera : ArcRotateCamera;
	var gamepad : Gamepad;
	private var _gamepads : Dynamic/*UNKNOW_TYPE*/;
	var gamepadRotationSensibility : Float;
	var gamepadMoveSensibility : Float;
	function attachControl(element:HtmlElement, ?noPreventDefault:Bool) : Void;
	function detachControl(element:HtmlElement) : Void;
	function checkInputs() : Void;
	private function _onNewGameConnected(gamepad);
	function getTypeName() : String;
	function getSimpleName() : String;
}