package babylonjs.babylon;

@:native("BABYLON.ExponentialEase")
extern class ExponentialEase extends EasingFunction
	implements IEasingFunction
{
	var exponent : Float;

	function new(?exponent:Float) : Void;
	override function easeInCore(gradient:Float) : Float;
}