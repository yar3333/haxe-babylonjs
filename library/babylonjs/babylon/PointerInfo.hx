package babylonjs.babylon;

/**
 * This type contains all the data related to a pointer event in Babylon.js.
 * The event member is an instance of PointerEvent for all types except PointerWheel and is of type MouseWheelEvent when type equals PointerWheel. The different event types can be found in the PointerEventTypes class.
 */
@:native("BABYLON.PointerInfo")
extern class PointerInfo extends PointerInfoBase
{
	var pickInfo : Null<PickingInfo>;

	/**
	 * This type contains all the data related to a pointer event in Babylon.js.
	 * The event member is an instance of PointerEvent for all types except PointerWheel and is of type MouseWheelEvent when type equals PointerWheel. The different event types can be found in the PointerEventTypes class.
	 */
	@:overload(function(type:Float, event:haxe.extern.EitherType<js.html.PointerEvent, js.html.WheelEvent>, pickInfo:Null<PickingInfo>): Void{})
	function new(type:Float, event:haxe.extern.EitherType<js.html.PointerEvent, js.html.WheelEvent>) : Void;
}