package babylonjs.babylon;

/**
 * Defines the root class used to create scene optimization to use with SceneOptimizer
 * @description More details at http://doc.babylonjs.com/how_to/how_to_use_sceneoptimizer
 */
@:native("BABYLON.SceneOptimization")
extern class SceneOptimization
{
	/**
	 * Defines the priority of this optimization (0 by default which means first in the list)
	 */
	var priority : Float;

	/**
	 * Gets a string describing the action executed by the current optimization
	 * @returns description string
	 */
	function getDescription() : String;
	/**
	 * This function will be called by the SceneOptimizer when its priority is reached in order to apply the change required by the current optimization
	 * @returns true if everything that can be done was applied
	 */
	function apply(scene:Scene, optimizer:SceneOptimizer) : Bool;
	/**
	 * Defines the root class used to create scene optimization to use with SceneOptimizer
	 * @description More details at http://doc.babylonjs.com/how_to/how_to_use_sceneoptimizer
	 */
	function new(?priority:Float) : Void;
}