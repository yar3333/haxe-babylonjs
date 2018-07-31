package babylon;

extern class DeviceOrientationCamera extends FreeCamera
{
	private var _initialQuaternion : Dynamic/*UNKNOW_TYPE*/;
	private var _quaternionCache : Dynamic/*UNKNOW_TYPE*/;
	function new(name:String, position:Vector3, scene:Scene) : Void;
	function getTypeName() : String;
	function _checkInputs() : Void;
	function resetToCurrentRotation(?axis:Axis) : Void;
}