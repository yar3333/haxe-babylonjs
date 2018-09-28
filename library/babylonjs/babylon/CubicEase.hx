package babylonjs.babylon;

@:native("BABYLON.CubicEase")
extern class CubicEase extends EasingFunction
	implements IEasingFunction
{
	override function easeInCore(gradient:Float) : Float;
}