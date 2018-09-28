package babylonjs.babylon;

/**
 * Defines an optimization used to turn render targets off
 * @description More details at http://doc.babylonjs.com/how_to/how_to_use_sceneoptimizer
 */
@:native("BABYLON.RenderTargetsOptimization")
extern class RenderTargetsOptimization extends SceneOptimization
{
	/**
	 * Gets a string describing the action executed by the current optimization
	 * @return description string
	 */
	override function getDescription() : String;
	/**
	 * This function will be called by the SceneOptimizer when its priority is reached in order to apply the change required by the current optimization
	 * @returns true if everything that can be done was applied
	 */
	override function apply(scene:Scene, optimizer:SceneOptimizer) : Bool;
}