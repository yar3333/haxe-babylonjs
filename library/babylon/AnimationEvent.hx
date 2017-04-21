package babylon;

extern class AnimationEvent
{
	var frame : Float;
	var action : Void->Void;
	var onlyOnce : Bool;
	var isDone : Bool;
	function new(frame:Float, action:Void->Void, ?onlyOnce:Bool) : Void;
}