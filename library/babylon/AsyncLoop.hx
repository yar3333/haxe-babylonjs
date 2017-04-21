package babylon;

extern class AsyncLoop
{
	var iterations : Float;
	private var _fn : Dynamic/*UNKNOW_TYPE*/;
	private var _successCallback : Dynamic/*UNKNOW_TYPE*/;
	var index : Float;
	private var _done : Dynamic/*UNKNOW_TYPE*/;
	/**
	 * Constroctor.
	 * @param iterations the number of iterations.
	 * @param _fn the function to run each iteration
	 * @param _successCallback the callback that will be called upon succesful execution
	 * @param offset starting offset.
	 */
	function new(iterations:Float, _fn:AsyncLoop->Void, _successCallback:Void->Void, ?offset:Float) : Void;
	/**
	 * Execute the next iteration. Must be called after the last iteration was finished.
	 */
	function executeNext() : Void;
	/**
	 * Break the loop and run the success callback.
	 */
	function breakLoop() : Void;
	/**
	 * Helper function
	 */
	static function Run(iterations:Float, _fn:AsyncLoop->Void, _successCallback:Void->Void, ?offset:Float) : AsyncLoop;
	/**
	 * A for-loop that will run a given number of iterations synchronous and the rest async.
	 * @param iterations total number of iterations
	 * @param syncedIterations number of synchronous iterations in each async iteration.
	 * @param fn the function to call each iteration.
	 * @param callback a success call back that will be called when iterating stops.
	 * @param breakFunction a break condition (optional)
	 * @param timeout timeout settings for the setTimeout function. default - 0.
	 * @constructor
	 */
	static function SyncAsyncForLoop(iterations:Float, syncedIterations:Float, fn:Float->Void, callback:Void->Void, ?breakFunction:Void->Bool, ?timeout:Float) : Void;
}