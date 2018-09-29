package babylonjs;

@:native("BABYLON.VRDeviceOrientationArcRotateCamera")
extern class VRDeviceOrientationArcRotateCamera extends ArcRotateCamera
{
	@:overload(function(name:String, alpha:Float, beta:Float, radius:Float, target:Vector3, scene:Scene,?compensateDistortion:Bool,?vrCameraMetrics:VRCameraMetrics): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	override function getClassName() : String;
}