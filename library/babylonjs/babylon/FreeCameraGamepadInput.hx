package babylonjs.babylon;

@:native("BABYLON.FreeCameraGamepadInput")
extern class FreeCameraGamepadInput
	implements ICameraInput<FreeCamera>
{
	var camera : FreeCamera;
	var gamepad : Null<Gamepad>;
	private var _onGamepadConnectedObserver : Dynamic;
	private var _onGamepadDisconnectedObserver : Dynamic;
	var gamepadAngularSensibility : Float;
	var gamepadMoveSensibility : Float;
	private var _cameraTransform : Dynamic;
	private var _deltaTransform : Dynamic;
	private var _vector3 : Dynamic;
	private var _vector2 : Dynamic;

	function attachControl(element:js.html.Element, ?noPreventDefault:Bool) : Void;
	function detachControl(element:Null<js.html.Element>) : Void;
	function checkInputs() : Void;
	function getClassName() : String;
	function getSimpleName() : String;
}