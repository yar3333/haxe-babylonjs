package babylonjs.babylon;

/**
 * Defines a list of options used by SceneOptimizer
 * @description More details at http://doc.babylonjs.com/how_to/how_to_use_sceneoptimizer
 */
@:native("BABYLON.SceneOptimizerOptions")
extern class SceneOptimizerOptions
{
	/**
	 * Defines the target frame rate to reach (60 by default)
	 */
	var targetFrameRate : Float;
	/**
	 * Defines the interval between two checkes (2000ms by default)
	 */
	var trackerDuration : Float;
	/**
	 * Gets the list of optimizations to apply
	 */
	var optimizations : Array<SceneOptimization>;

	/**
	 * Defines a list of options used by SceneOptimizer
	 * @description More details at http://doc.babylonjs.com/how_to/how_to_use_sceneoptimizer
	 */
	function new(?targetFrameRate:Float, ?trackerDuration:Float) : Void;
	/**
	 * Add a new optimization
	 * @returns the current SceneOptimizerOptions
	 */
	function addOptimization(optimization:SceneOptimization) : SceneOptimizerOptions;
	/**
	 * Add a new custom optimization
	 * @returns the current SceneOptimizerOptions
	 */
	function addCustomOptimization(onApply:Scene->Bool, onGetDescription:Void->String, ?priority:Float) : SceneOptimizerOptions;
	/**
	 * Creates a list of pre-defined optimizations aimed to reduce the visual impact on the scene
	 * @returns a SceneOptimizerOptions object
	 */
	static function LowDegradationAllowed(?targetFrameRate:Float) : SceneOptimizerOptions;
	/**
	 * Creates a list of pre-defined optimizations aimed to have a moderate impact on the scene visual
	 * @returns a SceneOptimizerOptions object
	 */
	static function ModerateDegradationAllowed(?targetFrameRate:Float) : SceneOptimizerOptions;
	/**
	 * Creates a list of pre-defined optimizations aimed to have a big impact on the scene visual
	 * @returns a SceneOptimizerOptions object
	 */
	static function HighDegradationAllowed(?targetFrameRate:Float) : SceneOptimizerOptions;
}