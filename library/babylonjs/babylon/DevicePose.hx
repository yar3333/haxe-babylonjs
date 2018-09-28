package babylonjs.babylon;

extern interface DevicePose
{
	/**
	 * The position of the device, values in array are [x,y,z].
	 */
	var position(default, null) : Null<js.html.Float32Array>;
	/**
	 * The linearVelocity of the device, values in array are [x,y,z].
	 */
	var linearVelocity(default, null) : Null<js.html.Float32Array>;
	/**
	 * The linearAcceleration of the device, values in array are [x,y,z].
	 */
	var linearAcceleration(default, null) : Null<js.html.Float32Array>;
	/**
	 * The orientation of the device in a quaternion array, values in array are [x,y,z,w].
	 */
	var orientation(default, null) : Null<js.html.Float32Array>;
	/**
	 * The angularVelocity of the device, values in array are [x,y,z].
	 */
	var angularVelocity(default, null) : Null<js.html.Float32Array>;
	/**
	 * The angularAcceleration of the device, values in array are [x,y,z].
	 */
	var angularAcceleration(default, null) : Null<js.html.Float32Array>;
}