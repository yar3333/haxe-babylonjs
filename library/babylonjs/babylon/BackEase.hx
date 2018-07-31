package babylon;

extern class BackEase extends EasingFunction implements IEasingFunction
{
	var amplitude : Float;
	function new(?amplitude:Float) : Void;
	function easeInCore(gradient:Float) : Float;
}