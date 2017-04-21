package babylon;

extern class EventState
{
	/**
	* If the callback of a given Observer set skipNextObservers to true the following observers will be ignored
	*/
	function new(mask:Float, ?skipNextObservers:Bool) : Void;
	function initalize(mask:Float, ?skipNextObservers:Bool) : EventState;
	/**
	 * An Observer can set this property to true to prevent subsequent observers of being notified
	 */
	var skipNextObservers : Bool;
	/**
	 * Get the mask value that were used to trigger the event corresponding to this EventState object
	 */
	var mask : Float;
}