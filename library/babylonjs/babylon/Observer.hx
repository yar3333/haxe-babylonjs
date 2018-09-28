package babylonjs.babylon;

/**
 * Represent an Observer registered to a given Observable object.
 */
@:native("BABYLON.Observer")
extern class Observer<T:Dynamic>
{
	/**
	 * Defines the callback to call when the observer is notified
	 */
	var callback : T->EventState->Void;
	/**
	 * Defines the mask of the observer (used to filter notifications)
	 */
	var mask : Float;
	/**
	 * Defines the current scope used to restore the JS context
	 */
	var scope : Dynamic;
	/**
	 * @hidden 
	 */
	var _willBeUnregistered : Bool;
	/**
	 * Gets or sets a property defining that the observer as to be unregistered after the next notification
	 */
	var unregisterOnNextCall : Bool;

	/**
	 * Represent an Observer registered to a given Observable object.
	 */
	function new(callback:T->EventState->Void, mask:Float, ?scope:Dynamic) : Void;
}