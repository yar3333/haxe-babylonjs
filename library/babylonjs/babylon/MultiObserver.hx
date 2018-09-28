package babylonjs.babylon;

/**
 * Represent a list of observers registered to multiple Observables object.
 */
@:native("BABYLON.MultiObserver")
extern class MultiObserver<T:Dynamic>
{
	private var _observers : Dynamic;
	private var _observables : Dynamic;

	/**
	 * Release associated resources
	 */
	function dispose() : Void;
	/**
	 * Raise a callback when one of the observable will notify
	 * @returns the new MultiObserver
	 */
	static function Watch<T:Dynamic>(observables:Array<Observable<T>>, callback:T->EventState->Void, ?mask:Float, ?scope:Dynamic) : MultiObserver<T>;
}