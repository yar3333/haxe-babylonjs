package babylon;

extern class AnimationRange
{
	var name : String;
	var from : Float;
	var to : Float;
	function new(name:String, from:Float, to:Float) : Void;
	function clone() : AnimationRange;
}