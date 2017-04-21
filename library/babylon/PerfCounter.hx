package babylon;

extern class PerfCounter
{
	/**
	 * Returns the smallest value ever
	 */
	var min : Float;
	/**
	 * Returns the biggest value ever
	 */
	var max : Float;
	/**
	 * Returns the average value since the performance counter is running
	 */
	var average : Float;
	/**
	 * Returns the average value of the last second the counter was monitored
	 */
	var lastSecAverage : Float;
	/**
	 * Returns the current value
	 */
	var current : Float;
	var total : Float;
	function new() : Void;
	/**
	 * Call this method to start monitoring a new frame.
	 * This scenario is typically used when you accumulate monitoring time many times for a single frame, you call this method at the start of the frame, then beginMonitoring to start recording and endMonitoring(false) to accumulated the recorded time to the PerfCounter or addCount() to accumulate a monitored count.
	 */
	function fetchNewFrame() : Void;
	/**
	 * Call this method to monitor a count of something (e.g. mesh drawn in viewport count)
	 * @param newCount the count value to add to the monitored count
	 * @param fetchResult true when it's the last time in the frame you add to the counter and you wish to update the statistics properties (min/max/average), false if you only want to update statistics.
	 */
	function addCount(newCount:Float, fetchResult:Bool) : Void;
	/**
	 * Start monitoring this performance counter
	 */
	function beginMonitoring() : Void;
	/**
	 * Compute the time lapsed since the previous beginMonitoring() call.
	 * @param newFrame true by default to fetch the result and monitor a new frame, if false the time monitored will be added to the current frame counter
	 */
	function endMonitoring(?newFrame:Bool) : Void;
	private function _fetchResult();
	private var _startMonitoringTime : Dynamic/*UNKNOW_TYPE*/;
	private var _min : Dynamic/*UNKNOW_TYPE*/;
	private var _max : Dynamic/*UNKNOW_TYPE*/;
	private var _average : Dynamic/*UNKNOW_TYPE*/;
	private var _current : Dynamic/*UNKNOW_TYPE*/;
	private var _totalValueCount : Dynamic/*UNKNOW_TYPE*/;
	private var _totalAccumulated : Dynamic/*UNKNOW_TYPE*/;
	private var _lastSecAverage : Dynamic/*UNKNOW_TYPE*/;
	private var _lastSecAccumulated : Dynamic/*UNKNOW_TYPE*/;
	private var _lastSecTime : Dynamic/*UNKNOW_TYPE*/;
	private var _lastSecValueCount : Dynamic/*UNKNOW_TYPE*/;
}