package babylonjs.babylon;

/**
 * Performance monitor tracks rolling average frame-time and frame-time variance over a user defined sliding-window
 */
@:native("BABYLON.PerformanceMonitor")
extern class PerformanceMonitor
{
	private var _enabled : Dynamic;
	private var _rollingFrameTime : Dynamic;
	private var _lastFrameTimeMs : Dynamic;
	/**
	 * Returns the average frame time in milliseconds over the sliding window (or the subset of frames sampled so far)
	 * @return Average frame time in milliseconds
	 */
	var averageFrameTime(default, null) : Float;
	/**
	 * Returns the variance frame time in milliseconds over the sliding window (or the subset of frames sampled so far)
	 * @return Frame time variance in milliseconds squared
	 */
	var averageFrameTimeVariance(default, null) : Float;
	/**
	 * Returns the frame time of the most recent frame
	 * @return Frame time in milliseconds
	 */
	var instantaneousFrameTime(default, null) : Float;
	/**
	 * Returns the average framerate in frames per second over the sliding window (or the subset of frames sampled so far)
	 * @return Framerate in frames per second
	 */
	var averageFPS(default, null) : Float;
	/**
	 * Returns the average framerate in frames per second using the most recent frame time
	 * @return Framerate in frames per second
	 */
	var instantaneousFPS(default, null) : Float;
	/**
	 * Returns true if enough samples have been taken to completely fill the sliding window
	 * @return true if saturated
	 */
	var isSaturated(default, null) : Bool;
	/**
	 * Returns true if sampling is enabled
	 * @return true if enabled
	 */
	var isEnabled(default, null) : Bool;

	/**
	 * Performance monitor tracks rolling average frame-time and frame-time variance over a user defined sliding-window
	 */
	function new(?frameSampleSize:Float) : Void;
	/**
	 * Samples current frame
	 */
	function sampleFrame(?timeMs:Float) : Void;
	/**
	 * Enables contributions to the sliding window sample set
	 */
	function enable() : Void;
	/**
	 * Disables contributions to the sliding window sample set
	 * Samples will not be interpolated over the disabled period
	 */
	function disable() : Void;
	/**
	 * Resets performance monitor
	 */
	function reset() : Void;
}