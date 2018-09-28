package babylonjs.babylon;

extern interface PoseControlled
{
	/**
	 * The position of the object in babylon space.
	 */
	var position : Vector3;
	/**
	 * The rotation quaternion of the object in babylon space.
	 */
	var rotationQuaternion : Quaternion;
	/**
	 * The position of the device in babylon space.
	 */
	@:optional var devicePosition : Vector3;
	/**
	 * The rotation quaternion of the device in babylon space.
	 */
	var deviceRotationQuaternion : Quaternion;
	/**
	 * The raw pose coming from the device.
	 */
	var rawPose : Null<DevicePose>;
	/**
	 * The scale of the device to be used when translating from device space to babylon space.
	 */
	var deviceScaleFactor : Float;

	/**
	 * Updates the poseControlled values based on the input device pose.
	 */
	function updateFromDevice(poseData:DevicePose) : Void;
}