package babylonjs;

/**
 * This class is used to store pointer related info for the onPrePointerObservable event.
 * Set the skipOnPointerObservable property to true if you want the engine to stop any process after this event is triggered, even not calling onPointerObservable
 */
@:native("BABYLON.PointerInfoPre")
extern class PointerInfoPre extends PointerInfoBase
{
	var localPosition : Vector2;
	var skipOnPointerObservable : Bool;

	/**
	 * This class is used to store pointer related info for the onPrePointerObservable event.
	 * Set the skipOnPointerObservable property to true if you want the engine to stop any process after this event is triggered, even not calling onPointerObservable
	 */
	@:overload(function(type:Float, event:haxe.extern.EitherType<js.html.PointerEvent, js.html.WheelEvent>, localX:Float, localY:Float): Void{})
	function new(type:Float, event:haxe.extern.EitherType<js.html.PointerEvent, js.html.WheelEvent>) : Void;
}