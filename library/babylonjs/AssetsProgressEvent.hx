package babylonjs;

/**
 * Class used to share progress information about assets loading
 */
@:native("BABYLON.AssetsProgressEvent")
extern class AssetsProgressEvent
	implements IAssetsProgressEvent
{
	/**
	 * Defines the number of remaining tasks to process
	 */
	var remainingCount : Float;
	/**
	 * Defines the total number of tasks
	 */
	var totalCount : Float;
	/**
	 * Defines the task that was just processed
	 */
	var task : AbstractAssetTask;

	/**
	 * Class used to share progress information about assets loading
	 */
	function new(remainingCount:Float, totalCount:Float, task:AbstractAssetTask) : Void;
}