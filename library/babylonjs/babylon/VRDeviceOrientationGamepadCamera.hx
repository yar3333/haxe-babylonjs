package babylonjs.babylon;

@:native("BABYLON.VRDeviceOrientationGamepadCamera")
extern class VRDeviceOrientationGamepadCamera extends VRDeviceOrientationFreeCamera
{
	@:overload(function(name:String, position:Vector3, scene:Scene,?compensateDistortion:Bool,?vrCameraMetrics:VRCameraMetrics): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	override function getClassName() : String;
}