package babylon;

extern class SceneOptimization
{
	var priority : Float;
	var apply : Scene->Bool;
	function new(?priority:Float) : Void;
}