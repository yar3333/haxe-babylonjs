package babylonjs.babylon;

/**
 * Defines an optimization used to increase or decrease the rendering resolution
 * @description More details at http://doc.babylonjs.com/how_to/how_to_use_sceneoptimizer
 */
@:native("BABYLON.HardwareScalingOptimization")
extern class HardwareScalingOptimization extends SceneOptimization
{
	/**
	 * Defines the priority of this optimization (0 by default which means first in the list)
	 */
	//var priority : Float;
	/**
	 * Defines the maximum scale to use (2 by default)
	 */
	var maximumScale : Float;
	/**
	 * Defines the step to use between two passes (0.5 by default)
	 */
	var step : Float;
	private var _currentScale : Dynamic;
	private var _directionOffset : Dynamic;

	/**
	 * Gets a string describing the action executed by the current optimization
	 * @return description string
	 */
	override function getDescription() : String;
	/**
	 * Defines an optimization used to increase or decrease the rendering resolution
	 * @description More details at http://doc.babylonjs.com/how_to/how_to_use_sceneoptimizer
	 */
	@:overload(function(?priority:Float,?maximumScale:Float,?step:Float): Void{})
	function new(?priority:Float) : Void;
	/**
	 * This function will be called by the SceneOptimizer when its priority is reached in order to apply the change required by the current optimization
	 * @returns true if everything that can be done was applied
	 */
	override function apply(scene:Scene, optimizer:SceneOptimizer) : Bool;
}