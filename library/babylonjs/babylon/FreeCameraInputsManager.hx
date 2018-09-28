package babylonjs.babylon;

@:native("BABYLON.FreeCameraInputsManager")
extern class FreeCameraInputsManager extends CameraInputsManager<FreeCamera>
{
	function new(camera:FreeCamera) : Void;
	function addKeyboard() : FreeCameraInputsManager;
	function addMouse(?touchEnabled:Bool) : FreeCameraInputsManager;
	function addGamepad() : FreeCameraInputsManager;
	function addDeviceOrientation() : FreeCameraInputsManager;
	function addTouch() : FreeCameraInputsManager;
	function addVirtualJoystick() : FreeCameraInputsManager;
}