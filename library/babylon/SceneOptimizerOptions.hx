package babylon;

extern class SceneOptimizerOptions
{
	var targetFrameRate : Float;
	var trackerDuration : Float;
	var optimizations : Array<SceneOptimization>;
	function new(?targetFrameRate:Float, ?trackerDuration:Float) : Void;
	static function LowDegradationAllowed(?targetFrameRate:Float) : SceneOptimizerOptions;
	static function ModerateDegradationAllowed(?targetFrameRate:Float) : SceneOptimizerOptions;
	static function HighDegradationAllowed(?targetFrameRate:Float) : SceneOptimizerOptions;
}