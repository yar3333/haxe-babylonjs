package babylonjs.babylon;

/**
 * Helper class that provides a small promise polyfill
 */
@:native("BABYLON.PromisePolyfill")
extern class PromisePolyfill
{
	/**
	 * Static function used to check if the polyfill is required
	 * If this is the case then the function will inject the polyfill to window.Promise
	 */
	static function Apply(?force:Bool) : Void;
}