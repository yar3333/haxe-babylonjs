package babylonjs;

/**
 * Define a task used by {BABYLON.AssetsManager} to load images
 */
@:native("BABYLON.ImageAssetTask")
extern class ImageAssetTask extends AbstractAssetTask
{
	/**
	 * Defines the name of the task
	 */
	//var name : String;
	/**
	 * Defines the location of the image to load
	 */
	var url : String;
	/**
	 * Gets the loaded images
	 */
	var image : js.html.ImageElement;
	/**
	 * Callback called when the task is successful
	 */
	//var onSuccess : ImageAssetTask->Void;
	/**
	 * Callback called when the task is successful
	 */
	//var onError : ImageAssetTask->String->Dynamic->Void;

	/**
	 * Define a task used by {BABYLON.AssetsManager} to load images
	 */
	@:overload(function(name:String, url:String): Void{})
	function new(name:String) : Void;
	/**
	 * Execute the current task
	 */
	override function runTask(scene:Scene, onSuccess:Void->Void, onError:String->Dynamic->Void) : Void;
}