package babylon;

extern class VRDeviceOrientationFreeCamera extends DeviceOrientationCamera
{
	function new(name:String, position:Vector3, scene:Scene, ?compensateDistortion:Bool, ?vrCameraMetrics:VRCameraMetrics) : Void;
	function getTypeName() : String;
}