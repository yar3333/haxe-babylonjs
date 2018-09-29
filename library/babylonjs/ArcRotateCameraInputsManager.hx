package babylonjs;

@:native("BABYLON.ArcRotateCameraInputsManager")
extern class ArcRotateCameraInputsManager extends CameraInputsManager<ArcRotateCamera>
{
	function new(camera:ArcRotateCamera) : Void;
	function addMouseWheel() : ArcRotateCameraInputsManager;
	function addPointers() : ArcRotateCameraInputsManager;
	function addKeyboard() : ArcRotateCameraInputsManager;
	function addGamepad() : ArcRotateCameraInputsManager;
	function addVRDeviceOrientation() : ArcRotateCameraInputsManager;
}