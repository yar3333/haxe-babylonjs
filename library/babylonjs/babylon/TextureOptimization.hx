package babylonjs.babylon;

/**
 * Defines an optimization used to reduce the size of render target textures
 * @description More details at http://doc.babylonjs.com/how_to/how_to_use_sceneoptimizer
 */
@:native("BABYLON.TextureOptimization")
extern class TextureOptimization extends SceneOptimization
{
	/**
	 * Defines the priority of this optimization (0 by default which means first in the list)
	 */
	//var priority : Float;
	/**
	 * Defines the maximum sized allowed for textures (1024 is the default value). If a texture is bigger, it will be scaled down using a factor defined by the step parameter
	 */
	var maximumSize : Float;
	/**
	 * Defines the factor (0.5 by default) used to scale down textures bigger than maximum sized allowed.
	 */
	var step : Float;

	/**
	 * Gets a string describing the action executed by the current optimization
	 * @returns description string
	 */
	override function getDescription() : String;
	/**
	 * Defines an optimization used to reduce the size of render target textures
	 * @description More details at http://doc.babylonjs.com/how_to/how_to_use_sceneoptimizer
	 */
	@:overload(function(?priority:Float,?maximumSize:Float,?step:Float): Void{})
	function new(?priority:Float) : Void;
	/**
	 * This function will be called by the SceneOptimizer when its priority is reached in order to apply the change required by the current optimization
	 * @returns true if everything that can be done was applied
	 */
	override function apply(scene:Scene, optimizer:SceneOptimizer) : Bool;
}