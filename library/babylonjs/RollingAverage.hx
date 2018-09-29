package babylonjs;

/**
 * RollingAverage
 * 
 * Utility to efficiently compute the rolling average and variance over a sliding window of samples
 */
@:native("BABYLON.RollingAverage")
extern class RollingAverage
{
	/**
	 * Current average
	 */
	var average : Float;
	/**
	 * Current variance
	 */
	var variance : Float;
	private var _samples : Array<Float>;
	private var _sampleCount : Float;
	private var _pos : Float;
	private var _m2 : Float;

	/**
	 * RollingAverage
	 * 
	 * Utility to efficiently compute the rolling average and variance over a sliding window of samples
	 */
	function new(length:Float) : Void;
	/**
	 * Adds a sample to the sample set
	 */
	function add(v:Float) : Void;
	/**
	 * Returns previously added values or null if outside of history or outside the sliding window domain
	 * @return Value previously recorded with add() or null if outside of range
	 */
	function history(i:Int) : Float;
	/**
	 * Returns true if enough samples have been taken to completely fill the sliding window
	 * @return true if sample-set saturated
	 */
	function isSaturated() : Bool;
	/**
	 * Resets the rolling average (equivalent to 0 samples taken so far)
	 */
	function reset() : Void;
	/**
	 * Wraps a value around the sample range boundaries
	 * @return Wrapped position in sample range
	 */
	function _wrapPosition(i:Int) : Float;
}