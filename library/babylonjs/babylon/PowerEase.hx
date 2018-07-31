package babylon;

extern class PowerEase extends EasingFunction implements IEasingFunction
{
	var power : Float;
	function new(?power:Float) : Void;
	function easeInCore(gradient:Float) : Float;
}