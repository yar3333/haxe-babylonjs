package babylon;

extern class Observable<T>
{
	var _observers : Array<Observer<T>>;
	private var _eventState : Dynamic/*UNKNOW_TYPE*/;
	function new() : Void;
	/**
	 * Create a new Observer with the specified callback
	 * @param callback the callback that will be executed for that Observer
	 * @param mask the mask used to filter observers
	 * @param insertFirst if true the callback will be inserted at the first position, hence executed before the others ones. If false (default behavior) the callback will be inserted at the last position, executed after all the others already present.
	 */
	function add(callback:T->EventState->Void, ?mask:Float, ?insertFirst:Bool) : Observer<T>;
	/**
	 * Remove an Observer from the Observable object
	 * @param observer the instance of the Observer to remove. If it doesn't belong to this Observable, false will be returned.
	 */
	function remove(observer:Observer<T>) : Bool;
	/**
	 * Remove a callback from the Observable object
	 * @param callback the callback to remove. If it doesn't belong to this Observable, false will be returned.
	*/
	function removeCallback(callback:T->EventState->Void) : Bool;
	/**
	 * Notify all Observers by calling their respective callback with the given data
	 * Will return true if all observers were executed, false if an observer set skipNextObservers to true, then prevent the subsequent ones to execute
	 * @param eventData
	 * @param mask
	 */
	function notifyObservers(eventData:T, ?mask:Float) : Bool;
	/**
	 * return true is the Observable has at least one Observer registered
	 */
	function hasObservers() : Bool;
	/**
	* Clear the list of observers
	*/
	function clear() : Void;
	/**
	* Clone the current observable
	*/
	function clone() : Observable<T>;
}