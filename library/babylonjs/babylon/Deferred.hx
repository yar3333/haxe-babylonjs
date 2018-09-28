package babylonjs.babylon;

/**
 * Wrapper class for promise with external resolve and reject.
 */
@:native("BABYLON.Deferred")
extern class Deferred<T:Dynamic>
{
	/**
	 * The promise associated with this deferred object.
	 */
	var promise(default, null) : js.Promise<T>;
	private var _resolve : Dynamic;
	private var _reject : Dynamic;
	/**
	 * The resolve method of the promise associated with this deferred object.
	 */
	var resolve(default, null) : haxe.extern.EitherType<T, haxe.extern.EitherType<PromiseLike<T>, {}>>->Void;
	/**
	 * The reject method of the promise associated with this deferred object.
	 */
	var reject(default, null) : Dynamic->Void;

	/**
	 * Wrapper class for promise with external resolve and reject.
	 */
	function new() : Void;
}