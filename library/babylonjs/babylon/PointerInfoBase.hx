package babylonjs.babylon;

@:native("BABYLON.PointerInfoBase")
extern class PointerInfoBase
{
	var type : Float;
	var event : haxe.extern.EitherType<js.html.PointerEvent, js.html.WheelEvent>;

	function new(type:Float, event:haxe.extern.EitherType<js.html.PointerEvent, js.html.WheelEvent>) : Void;
}