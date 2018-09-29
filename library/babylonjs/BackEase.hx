package babylonjs;

@:native("BABYLON.BackEase")
extern class BackEase extends EasingFunction
	implements IEasingFunction
{
	var amplitude : Float;

	function new(?amplitude:Float) : Void;
	override function easeInCore(gradient:Float) : Float;
}