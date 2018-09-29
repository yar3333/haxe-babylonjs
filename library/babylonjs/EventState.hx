package babylonjs;

/**
 * A class serves as a medium between the observable and its observers
 */
@:native("BABYLON.EventState")
extern class EventState
{
	/**
	 * An Observer can set this property to true to prevent subsequent observers of being notified
	 */
	var skipNextObservers : Bool;
	/**
	 * Get the mask value that were used to trigger the event corresponding to this EventState object
	 */
	var mask : Float;
	/**
	 * The object that originally notified the event
	 */
	@:optional var target : Dynamic;
	/**
	 * The current object in the bubbling phase
	 */
	@:optional var currentTarget : Dynamic;
	/**
	 * This will be populated with the return value of the last function that was executed.
	 * If it is the first function in the callback chain it will be the event data.
	 */
	@:optional var lastReturnValue : Dynamic;

	/**
	 * A class serves as a medium between the observable and its observers
	 */
	function new(mask:Float, ?skipNextObservers:Bool, ?target:Dynamic, ?currentTarget:Dynamic) : Void;
	/**
	 * Initialize the current event state
	 * @returns the current event state
	 */
	function initalize(mask:Float, ?skipNextObservers:Bool, ?target:Dynamic, ?currentTarget:Dynamic) : EventState;
}