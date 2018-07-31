package babylon;

extern class TextureOptimization extends SceneOptimization
{
	var priority : Float;
	var maximumSize : Float;
	function new(?priority:Float, ?maximumSize:Float) : Void;
	var apply : Scene->Bool;
}