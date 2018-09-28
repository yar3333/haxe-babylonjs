package babylonjs.babylon;

/**
 * Helper class to push actions to a pool of workers.
 */
@:native("BABYLON.WorkerPool")
extern class WorkerPool
	implements IDisposable
{
	private var _workerInfos : Dynamic;
	private var _pendingActions : Dynamic;

	/**
	 * Helper class to push actions to a pool of workers.
	 */
	function new(workers:Array<js.html.Worker>) : Void;
	/**
	 * Terminates all workers and clears any pending actions.
	 */
	function dispose(?deep:Bool) : Void;
	/**
	 * Pushes an action to the worker pool. If all the workers are active, the action will be
	 * pended until a worker has completed its action.
	 */
	function push(action:js.html.Worker->Void->Void->Void) : Void;
	private function _execute(workerInfo:Dynamic, action:Dynamic) : Dynamic;
}