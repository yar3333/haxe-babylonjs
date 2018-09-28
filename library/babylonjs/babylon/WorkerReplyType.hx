package babylonjs.babylon;

/**
 * Defines kind of replies returned by worker 
 */
@:native("BABYLON.WorkerReplyType")
@:enum abstract WorkerReplyType(Dynamic)
{
	/**
	 * Success 
	 */
	var SUCCESS = 0;
	/**
	 * Unkown error 
	 */
	var UNKNOWN_ERROR = 1;
}