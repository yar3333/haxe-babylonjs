package babylonjs.babylon;

@:native("BABYLON.QuadraticEase")
extern class QuadraticEase extends EasingFunction
	implements IEasingFunction
{
	override function easeInCore(gradient:Float) : Float;
}