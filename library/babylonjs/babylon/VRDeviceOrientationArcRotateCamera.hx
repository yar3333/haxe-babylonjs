package babylon;

extern class VRDeviceOrientationArcRotateCamera extends ArcRotateCamera
{
	function new(name:String, alpha:Float, beta:Float, radius:Float, target:Vector3, scene:Scene, ?compensateDistortion:Bool, ?vrCameraMetrics:VRCameraMetrics) : Void;
	function getTypeName() : String;
}