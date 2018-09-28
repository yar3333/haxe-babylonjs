package babylonjs.babylon;

extern interface IAssetsProgressEvent
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
}