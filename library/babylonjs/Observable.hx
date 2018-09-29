package babylonjs;

/**
 * The Observable class is a simple implementation of the Observable pattern.
 * 
 * There's one slight particularity though: a given Observable can notify its observer using a particular mask value, only the Observers registered with this mask value will be notified.
 * This enable a more fine grained execution without having to rely on multiple different Observable objects.
 * For instance you may have a given Observable that have four different types of notifications: Move (mask = 0x01), Stop (mask = 0x02), Turn Right (mask = 0X04), Turn Left (mask = 0X08).
 * A given observer can register itself with only Move and Stop (mask = 0x03), then it will only be notified when one of these two occurs and will never be for Turn Left/Right.
 */
@:native("BABYLON.Observable")
extern class Observable<T:Dynamic>
{
	private var _observers : Dynamic;
	private var _eventState : Dynamic;
	private var _onObserverAdded : Dynamic;

	/**
	 * The Observable class is a simple implementation of the Observable pattern.
	 * 
	 * There's one slight particularity though: a given Observable can notify its observer using a particular mask value, only the Observers registered with this mask value will be notified.
	 * This enable a more fine grained execution without having to rely on multiple different Observable objects.
	 * For instance you may have a given Observable that have four different types of notifications: Move (mask = 0x01), Stop (mask = 0x02), Turn Right (mask = 0X04), Turn Left (mask = 0X08).
	 * A given observer can register itself with only Move and Stop (mask = 0x03), then it will only be notified when one of these two occurs and will never be for Turn Left/Right.
	 */
	function new(?onObserverAdded:Observer<T>->Void) : Void;
	/**
	 * Create a new Observer with the specified callback
	 * @returns the new observer created for the callback
	 */
	function add(callback:T->EventState->Void, ?mask:Float, ?insertFirst:Bool, ?scope:Dynamic, ?unregisterOnFirstCall:Bool) : Null<Observer<T>>;
	/**
	 * Remove an Observer from the Observable object
	 * @returns false if it doesn't belong to this Observable
	 */
	function remove(observer:Null<Observer<T>>) : Bool;
	/**
	 * Remove a callback from the Observable object
	 * @returns false if it doesn't belong to this Observable
	 */
	function removeCallback(callback:T->EventState->Void, ?scope:Dynamic) : Bool;
	private function _deferUnregister(observer:Dynamic) : Dynamic;
	/**
	 * Notify all Observers by calling their respective callback with the given data
	 * Will return true if all observers were executed, false if an observer set skipNextObservers to true, then prevent the subsequent ones to execute
	 * @returns false if the complete observer chain was not processed (because one observer set the skipNextObservers to true)
	 */
	function notifyObservers(eventData:T, ?mask:Float, ?target:Dynamic, ?currentTarget:Dynamic) : Bool;
	/**
	 * Calling this will execute each callback, expecting it to be a promise or return a value.
	 * If at any point in the chain one function fails, the promise will fail and the execution will not continue.
	 * This is useful when a chain of events (sometimes async events) is needed to initialize a certain object
	 * and it is crucial that all callbacks will be executed.
	 * The order of the callbacks is kept, callbacks are not executed parallel.
	 * 
	 * @returns {Promise<T>} will return a Promise than resolves when all callbacks executed successfully.
	 */
	function notifyObserversWithPromise(eventData:T, ?mask:Float, ?target:Dynamic, ?currentTarget:Dynamic) : js.Promise<T>;
	/**
	 * Notify a specific observer
	 */
	function notifyObserver(observer:Observer<T>, eventData:T, ?mask:Float) : Void;
	/**
	 * Gets a boolean indicating if the observable has at least one observer
	 * @returns true is the Observable has at least one Observer registered
	 */
	function hasObservers() : Bool;
	/**
	 * Clear the list of observers
	 */
	function clear() : Void;
	/**
	 * Clone the current observable
	 * @returns a new observable
	 */
	function clone() : Observable<T>;
	/**
	 * Does this observable handles observer registered with a given mask
	 * @return whether or not one observer registered with the given mask is handeled
	 */
	function hasSpecificMask(?mask:Float) : Bool;
}