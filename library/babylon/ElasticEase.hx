package babylon;

extern class ElasticEase extends EasingFunction implements IEasingFunction
{
	var oscillations : Float;
	var springiness : Float;
	function new(?oscillations:Float, ?springiness:Float) : Void;
	function easeInCore(gradient:Float) : Float;
}