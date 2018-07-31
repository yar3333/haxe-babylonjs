package babylon;

extern class SceneOptimizer
{
	static function _CheckCurrentState(scene:Scene, options:SceneOptimizerOptions, currentPriorityLevel:Float, ?onSuccess:Void->Void, ?onFailure:Void->Void) : Void;
	static function OptimizeAsync(scene:Scene, ?options:SceneOptimizerOptions, ?onSuccess:Void->Void, ?onFailure:Void->Void) : Void;
}