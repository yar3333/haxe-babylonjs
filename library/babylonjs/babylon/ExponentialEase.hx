package babylon;

extern class ExponentialEase extends EasingFunction implements IEasingFunction
{
	var exponent : Float;
	function new(?exponent:Float) : Void;
	function easeInCore(gradient:Float) : Float;
}