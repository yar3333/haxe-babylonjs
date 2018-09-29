package babylonjs;

@:native("BABYLON.PowerEase")
extern class PowerEase extends EasingFunction
	implements IEasingFunction
{
	var power : Float;

	function new(?power:Float) : Void;
	override function easeInCore(gradient:Float) : Float;
}