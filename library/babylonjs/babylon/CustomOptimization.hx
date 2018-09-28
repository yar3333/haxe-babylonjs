package babylonjs.babylon;

/**
 * Defines an optimization based on user defined callback.
 * @description More details at http://doc.babylonjs.com/how_to/how_to_use_sceneoptimizer
 */
@:native("BABYLON.CustomOptimization")
extern class CustomOptimization extends SceneOptimization
{
	/**
	 * Callback called to apply the custom optimization.
	 */
	var onApply : Scene->SceneOptimizer->Bool;
	/**
	 * Callback called to get custom description
	 */
	var onGetDescription : Void->String;

	/**
	 * Gets a string describing the action executed by the current optimization
	 * @returns description string
	 */
	override function getDescription() : String;
	/**
	 * This function will be called by the SceneOptimizer when its priority is reached in order to apply the change required by the current optimization
	 * @returns true if everything that can be done was applied
	 */
	override function apply(scene:Scene, optimizer:SceneOptimizer) : Bool;
}