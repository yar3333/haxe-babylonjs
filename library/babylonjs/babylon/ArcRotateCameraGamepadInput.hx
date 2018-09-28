package babylonjs.babylon;

@:native("BABYLON.ArcRotateCameraGamepadInput")
extern class ArcRotateCameraGamepadInput
	implements ICameraInput<ArcRotateCamera>
{
	var camera : ArcRotateCamera;
	var gamepad : Null<Gamepad>;
	private var _onGamepadConnectedObserver : Dynamic;
	private var _onGamepadDisconnectedObserver : Dynamic;
	var gamepadRotationSensibility : Float;
	var gamepadMoveSensibility : Float;

	function attachControl(element:js.html.Element, ?noPreventDefault:Bool) : Void;
	function detachControl(element:Null<js.html.Element>) : Void;
	function checkInputs() : Void;
	function getClassName() : String;
	function getSimpleName() : String;
}