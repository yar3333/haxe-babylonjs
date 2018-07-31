package babylon;

extern class PointerInfo extends PointerInfoBase
{
	var pickInfo : PickingInfo;
	function new(type:Float, event:haxe.extern.EitherType<PointerEvent, MouseWheelEvent>, pickInfo:PickingInfo) : Void;
}