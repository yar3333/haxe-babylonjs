package babylonjs;

/**
 * An implementation of a loop for asynchronous functions.
 */
@:native("BABYLON.AsyncLoop")
extern class AsyncLoop
{
	var iterations : Float;
	private var _fn : Dynamic;
	private var _successCallback : Dynamic;
	var index : Float;
	private var _done : Dynamic;

	/**
	 * An implementation of a loop for asynchronous functions.
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
	 * @constructor
	 */
	static function SyncAsyncForLoop(iterations:Float, syncedIterations:Float, fn:Float->Void, callback:Void->Void, ?breakFunction:Void->Bool, ?timeout:Float) : Void;
}