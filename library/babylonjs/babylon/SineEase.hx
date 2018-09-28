package babylonjs.babylon;

@:native("BABYLON.SineEase")
extern class SineEase extends EasingFunction
	implements IEasingFunction
{
	override function easeInCore(gradient:Float) : Float;
}