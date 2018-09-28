package babylonjs.babylon;

extern interface VRExperienceHelperOptions extends WebVROptions
{
	/**
	 * Create a DeviceOrientationCamera to be used as your out of vr camera.
	 */
	@:optional var createDeviceOrientationCamera : Bool;
	/**
	 * Create a VRDeviceOrientationFreeCamera to be used for VR when no external HMD is found.
	 */
	@:optional var createFallbackVRDeviceOrientationFreeCamera : Bool;
}