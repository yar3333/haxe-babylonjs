package babylonjs;

@:native("BABYLON.QuarticEase")
extern class QuarticEase extends EasingFunction
	implements IEasingFunction
{
	override function easeInCore(gradient:Float) : Float;
}