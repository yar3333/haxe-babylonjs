package babylonjs;

@:native("BABYLON.CircleEase")
extern class CircleEase extends EasingFunction
	implements IEasingFunction
{
	override function easeInCore(gradient:Float) : Float;
}