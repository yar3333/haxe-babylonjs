package babylonjs;

/**
 * Define a task used by {BABYLON.AssetsManager} to load binary data
 */
@:native("BABYLON.BinaryFileAssetTask")
extern class BinaryFileAssetTask extends AbstractAssetTask
{
	/**
	 * Defines the name of the task
	 */
	//var name : String;
	/**
	 * Defines the location of the file to load
	 */
	var url : String;
	/**
	 * Gets the lodaded data (as an array buffer)
	 */
	var data : js.html.ArrayBuffer;
	/**
	 * Callback called when the task is successful
	 */
	//var onSuccess : BinaryFileAssetTask->Void;
	/**
	 * Callback called when the task is successful
	 */
	//var onError : BinaryFileAssetTask->String->Dynamic->Void;

	/**
	 * Define a task used by {BABYLON.AssetsManager} to load binary data
	 */
	@:overload(function(name:String, url:String): Void{})
	function new(name:String) : Void;
	/**
	 * Execute the current task
	 */
	override function runTask(scene:Scene, onSuccess:Void->Void, onError:String->Dynamic->Void) : Void;
}