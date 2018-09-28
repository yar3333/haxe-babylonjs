package babylonjs.babylon;

/**
 * Class used to run optimizations in order to reach a target frame rate
 * @description More details at http://doc.babylonjs.com/how_to/how_to_use_sceneoptimizer
 */
@:native("BABYLON.SceneOptimizer")
extern class SceneOptimizer
	implements IDisposable
{
	private var _isRunning : Dynamic;
	private var _options : Dynamic;
	private var _scene : Dynamic;
	private var _currentPriorityLevel : Dynamic;
	private var _targetFrameRate : Dynamic;
	private var _trackerDuration : Dynamic;
	private var _currentFrameRate : Dynamic;
	private var _sceneDisposeObserver : Dynamic;
	private var _improvementMode : Dynamic;
	/**
	 * Defines an observable called when the optimizer reaches the target frame rate
	 */
	var onSuccessObservable : Observable<SceneOptimizer>;
	/**
	 * Defines an observable called when the optimizer enables an optimization
	 */
	var onNewOptimizationAppliedObservable : Observable<SceneOptimization>;
	/**
	 * Defines an observable called when the optimizer is not able to reach the target frame rate
	 */
	var onFailureObservable : Observable<SceneOptimizer>;
	/**
	 * Gets a boolean indicating if the optimizer is in improvement mode
	 */
	var isInImprovementMode(default, null) : Bool;
	/**
	 * Gets the current priority level (0 at start)
	 */
	var currentPriorityLevel(default, null) : Float;
	/**
	 * Gets the current frame rate checked by the SceneOptimizer
	 */
	var currentFrameRate(default, null) : Float;
	/**
	 * Gets or sets the current target frame rate (60 by default)
	 * Gets or sets the current target frame rate (60 by default)
	 */
	var targetFrameRate : Float;
	/**
	 * Gets or sets the current interval between two checks (every 2000ms by default)
	 * Gets or sets the current interval between two checks (every 2000ms by default)
	 */
	var trackerDuration : Float;
	/**
	 * Gets the list of active optimizations
	 */
	var optimizations(default, null) : Array<SceneOptimization>;

	/**
	 * Class used to run optimizations in order to reach a target frame rate
	 * @description More details at http://doc.babylonjs.com/how_to/how_to_use_sceneoptimizer
	 */
	function new(scene:Scene, ?options:SceneOptimizerOptions, ?autoGeneratePriorities:Bool, ?improvementMode:Bool) : Void;
	/**
	 * Stops the current optimizer
	 */
	function stop() : Void;
	/**
	 * Reset the optimizer to initial step (current priority level = 0)
	 */
	function reset() : Void;
	/**
	 * Start the optimizer. By default it will try to reach a specific framerate
	 * but if the optimizer is set with improvementMode === true then it will run all optimiatiation while frame rate is above the target frame rate
	 */
	function start() : Void;
	private function _checkCurrentState() : Dynamic;
	/**
	 * Release all resources
	 */
	function dispose() : Void;
	/**
	 * Helper function to create a SceneOptimizer with one single line of code
	 * @returns the new SceneOptimizer object
	 */
	static function OptimizeAsync(scene:Scene, ?options:SceneOptimizerOptions, ?onSuccess:Void->Void, ?onFailure:Void->Void) : SceneOptimizer;
}