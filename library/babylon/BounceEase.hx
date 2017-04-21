package babylon;

extern class BounceEase extends EasingFunction implements IEasingFunction
{
	var bounces : Float;
	var bounciness : Float;
	function new(?bounces:Float, ?bounciness:Float) : Void;
	function easeInCore(gradient:Float) : Float;
}