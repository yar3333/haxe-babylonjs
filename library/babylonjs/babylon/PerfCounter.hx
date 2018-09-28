package babylonjs.babylon;

/**
 * This class is used to track a performance counter which is number based.
 * The user has access to many properties which give statistics of different nature
 * 
 * The implementer can track two kinds of Performance Counter: time and count
 * For time you can optionally call fetchNewFrame() to notify the start of a new frame to monitor, then call beginMonitoring() to start and endMonitoring() to record the lapsed time. endMonitoring takes a newFrame parameter for you to specify if the monitored time should be set for a new frame or accumulated to the current frame being monitored.
 * For count you first have to call fetchNewFrame() to notify the start of a new frame to monitor, then call addCount() how many time required to increment the count value you monitor.
 */
@:native("BABYLON.PerfCounter")
extern class PerfCounter
{
	static var Enabled : Bool;
	/**
	 * Returns the smallest value ever
	 */
	var min(default, null) : Float;
	/**
	 * Returns the biggest value ever
	 */
	var max(default, null) : Float;
	/**
	 * Returns the average value since the performance counter is running
	 */
	var average(default, null) : Float;
	/**
	 * Returns the average value of the last second the counter was monitored
	 */
	var lastSecAverage(default, null) : Float;
	/**
	 * Returns the current value
	 */
	var current(default, null) : Float;
	var total(default, null) : Float;
	var count(default, null) : Float;
	private var _startMonitoringTime : Dynamic;
	private var _min : Dynamic;
	private var _max : Dynamic;
	private var _average : Dynamic;
	private var _current : Dynamic;
	private var _totalValueCount : Dynamic;
	private var _totalAccumulated : Dynamic;
	private var _lastSecAverage : Dynamic;
	private var _lastSecAccumulated : Dynamic;
	private var _lastSecTime : Dynamic;
	private var _lastSecValueCount : Dynamic;

	/**
	 * This class is used to track a performance counter which is number based.
	 * The user has access to many properties which give statistics of different nature
	 * 
	 * The implementer can track two kinds of Performance Counter: time and count
	 * For time you can optionally call fetchNewFrame() to notify the start of a new frame to monitor, then call beginMonitoring() to start and endMonitoring() to record the lapsed time. endMonitoring takes a newFrame parameter for you to specify if the monitored time should be set for a new frame or accumulated to the current frame being monitored.
	 * For count you first have to call fetchNewFrame() to notify the start of a new frame to monitor, then call addCount() how many time required to increment the count value you monitor.
	 */
	function new() : Void;
	/**
	 * Call this method to start monitoring a new frame.
	 * This scenario is typically used when you accumulate monitoring time many times for a single frame, you call this method at the start of the frame, then beginMonitoring to start recording and endMonitoring(false) to accumulated the recorded time to the PerfCounter or addCount() to accumulate a monitored count.
	 */
	function fetchNewFrame() : Void;
	/**
	 * Call this method to monitor a count of something (e.g. mesh drawn in viewport count)
	 */
	function addCount(newCount:Float, fetchResult:Bool) : Void;
	/**
	 * Start monitoring this performance counter
	 */
	function beginMonitoring() : Void;
	/**
	 * Compute the time lapsed since the previous beginMonitoring() call.
	 */
	function endMonitoring(?newFrame:Bool) : Void;
	private function _fetchResult() : Dynamic;
}