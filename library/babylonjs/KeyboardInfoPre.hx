package babylonjs;

/**
 * This class is used to store keyboard related info for the onPreKeyboardObservable event.
 * Set the skipOnKeyboardObservable property to true if you want the engine to stop any process after this event is triggered, even not calling onKeyboardObservable
 */
@:native("BABYLON.KeyboardInfoPre")
extern class KeyboardInfoPre extends KeyboardInfo
{
	var skipOnPointerObservable : Bool;

	/**
	 * This class is used to store keyboard related info for the onPreKeyboardObservable event.
	 * Set the skipOnKeyboardObservable property to true if you want the engine to stop any process after this event is triggered, even not calling onKeyboardObservable
	 */
	function new(type:Float, event:js.html.KeyboardEvent) : Void;
}