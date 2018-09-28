package babylonjs.babylon;

@:native("BABYLON.ElasticEase")
extern class ElasticEase extends EasingFunction
	implements IEasingFunction
{
	var oscillations : Float;
	var springiness : Float;

	function new(?oscillations:Float, ?springiness:Float) : Void;
	override function easeInCore(gradient:Float) : Float;
}