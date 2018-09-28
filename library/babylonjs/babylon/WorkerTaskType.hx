package babylonjs.babylon;

/**
 * Defines supported task for worker process 
 */
@:native("BABYLON.WorkerTaskType")
@:enum abstract WorkerTaskType(Dynamic)
{
	/**
	 * Initialization 
	 */
	var INIT = 0;
	/**
	 * Update of geometry 
	 */
	var UPDATE = 1;
	/**
	 * Evaluate collision 
	 */
	var COLLIDE = 2;
}