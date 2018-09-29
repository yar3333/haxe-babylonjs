package babylonjs;

/**
 * Define a task used by {BABYLON.AssetsManager} to load text content
 */
@:native("BABYLON.TextFileAssetTask")
extern class TextFileAssetTask extends AbstractAssetTask
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
	 * Gets the loaded text string
	 */
	var text : String;
	/**
	 * Callback called when the task is successful
	 */
	//var onSuccess : TextFileAssetTask->Void;
	/**
	 * Callback called when the task is successful
	 */
	//var onError : TextFileAssetTask->String->Dynamic->Void;

	/**
	 * Define a task used by {BABYLON.AssetsManager} to load text content
	 */
	@:overload(function(name:String, url:String): Void{})
	function new(name:String) : Void;
	/**
	 * Execute the current task
	 */
	override function runTask(scene:Scene, onSuccess:Void->Void, onError:String->Dynamic->Void) : Void;
}