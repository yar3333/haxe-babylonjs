package babylonjs;

/**
 * Defines the types of pose enabled controllers that are supported
 */
@:native("BABYLON.PoseEnabledControllerType")
@:enum abstract PoseEnabledControllerType(Dynamic)
{
	/**
	 * HTC Vive
	 */
	var VIVE = 0;
	/**
	 * Oculus Rift
	 */
	var OCULUS = 1;
	/**
	 * Windows mixed reality
	 */
	var WINDOWS = 2;
	/**
	 * Samsung gear VR
	 */
	var GEAR_VR = 3;
	/**
	 * Google Daydream
	 */
	var DAYDREAM = 4;
	/**
	 * Generic
	 */
	var GENERIC = 5;
}