package babylonjs.babylon;

/**
 * This is a camera specifically designed to react to device orientation events such as a modern mobile device
 * being tilted forward or back and left or right.
 */
@:native("BABYLON.DeviceOrientationCamera")
extern class DeviceOrientationCamera extends FreeCamera
{
	private var _initialQuaternion : Dynamic;
	private var _quaternionCache : Dynamic;

	/**
	 * This is a camera specifically designed to react to device orientation events such as a modern mobile device
	 * being tilted forward or back and left or right.
	 */
	@:overload(function(name:String, position:Vector3, scene:Scene): Void{})
	function new(name:String, ?scene:Null<Scene>) : Void;
	/**
	 * Gets the current instance class name ("DeviceOrientationCamera").
	 * This helps avoiding instanceof at run time.
	 * @returns the class name
	 */
	override function getClassName() : String;
	/**
	 * Checks and applies the current values of the inputs to the camera. (Internal use only)
	 */
	override function _checkInputs() : Void;
	/**
	 * Reset the camera to its default orientation on the specified axis only.
	 */
	function resetToCurrentRotation(?axis:Axis) : Void;
}