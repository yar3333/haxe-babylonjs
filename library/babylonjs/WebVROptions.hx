package babylonjs;

extern interface WebVROptions
{
	/**
	 * Sets if the webVR camera should be tracked to the vrDevice. (default: true)
	 */
	@:optional var trackPosition : Bool;
	/**
	 * Sets the scale of the vrDevice in babylon space. (default: 1)
	 */
	@:optional var positionScale : Float;
	/**
	 * If there are more than one VRDisplays, this will choose the display matching this name. (default: pick first vrDisplay)
	 */
	@:optional var displayName : String;
	/**
	 * Should the native controller meshes be initialized. (default: true)
	 */
	@:optional var controllerMeshes : Bool;
	/**
	 * Creating a default HemiLight only on controllers. (default: true)
	 */
	@:optional var defaultLightingOnControllers : Bool;
	/**
	 * If you don't want to use the default VR button of the helper. (default: false)
	 */
	@:optional var useCustomVRButton : Bool;
	/**
	 * If you'd like to provide your own button to the VRHelper. (default: standard babylon vr button)
	 */
	@:optional var customVRButton : js.html.ButtonElement;
	/**
	 * To change the length of the ray for gaze/controllers. Will be scaled by positionScale. (default: 100)
	 */
	@:optional var rayLength : Float;
	/**
	 * To change the default offset from the ground to account for user's height in meters. Will be scaled by positionScale. (default: 1.7)
	 */
	@:optional var defaultHeight : Float;
}