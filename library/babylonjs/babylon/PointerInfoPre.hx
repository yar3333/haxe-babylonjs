package babylon;

extern class PointerInfoPre extends PointerInfoBase
{
	function new(type:Float, event:haxe.extern.EitherType<PointerEvent, MouseWheelEvent>, localX:Dynamic, localY:Dynamic) : Void;
	var localPosition : Vector2;
	var skipOnPointerObservable : Bool;
}