package babylonjs.babylon;

/**
 * Define an abstract asset task used with a {BABYLON.AssetsManager} class to load assets into a scene
 */
@:native("BABYLON.AbstractAssetTask")
extern class AbstractAssetTask
{
	/**
	 * Task name
	 */
	var name : String;
	/**
	 * Callback called when the task is successful
	 */
	var onSuccess : Dynamic->Void;
	/**
	 * Callback called when the task is not successful
	 */
	var onError : Dynamic->String->Dynamic->Void;
	private var _isCompleted : Dynamic;
	private var _taskState : Dynamic;
	private var _errorObject : Dynamic;
	/**
	 * Get if the task is completed
	 */
	var isCompleted(default, null) : Bool;
	/**
	 * Gets the current state of the task
	 */
	var taskState(default, null) : AssetTaskState;
	/**
	 * Gets the current error object (if task is in error)
	 */
	var errorObject(default, null) : { @:optional var message : String; @:optional var exception : Dynamic; };

	/**
	 * Define an abstract asset task used with a {BABYLON.AssetsManager} class to load assets into a scene
	 */
	function new(name:String) : Void;
	/**
	 * Internal only
	 * @hidden
	 */
	function _setErrorObject(?message:String, ?exception:Dynamic) : Void;
	/**
	 * Execute the current task
	 */
	function run(scene:Scene, onSuccess:Void->Void, onError:String->Dynamic->Void) : Void;
	/**
	 * Execute the current task
	 */
	function runTask(scene:Scene, onSuccess:Void->Void, onError:String->Dynamic->Void) : Void;
	private function onErrorCallback(onError:Dynamic, ?message:Dynamic, ?exception:Dynamic) : Dynamic;
	private function onDoneCallback(onSuccess:Dynamic, onError:Dynamic) : Dynamic;
}