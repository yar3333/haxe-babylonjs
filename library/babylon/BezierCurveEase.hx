package babylon;

extern class BezierCurveEase extends EasingFunction implements IEasingFunction
{
	var x1 : Float;
	var y1 : Float;
	var x2 : Float;
	var y2 : Float;
	function new(?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float) : Void;
	function easeInCore(gradient:Float) : Float;
}