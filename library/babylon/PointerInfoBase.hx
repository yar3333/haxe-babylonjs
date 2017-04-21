package babylon;

extern class PointerInfoBase
{
	var type : Float;
	event: haxe.extern.EitherType<PointerEvent, MouseWheelEvent>;
	function new(type:Float, event:haxe.extern.EitherType<PointerEvent, MouseWheelEvent>) : Void;
}