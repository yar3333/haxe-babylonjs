package babylonjs.babylon;

/**
 * Defines the list of states available for a task inside a {BABYLON.AssetsManager}
 */
@:native("BABYLON.AssetTaskState")
@:enum abstract AssetTaskState(Dynamic)
{
	/**
	 * Initialization
	 */
	var INIT = 0;
	/**
	 * Running
	 */
	var RUNNING = 1;
	/**
	 * Done
	 */
	var DONE = 2;
	/**
	 * Error
	 */
	var ERROR = 3;
}