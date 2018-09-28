package babylonjs.babylon;

@:native("BABYLON.QuinticEase")
extern class QuinticEase extends EasingFunction
	implements IEasingFunction
{
	override function easeInCore(gradient:Float) : Float;
}